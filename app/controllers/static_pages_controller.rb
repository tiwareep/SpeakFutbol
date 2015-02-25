class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
  else
    @topuserpost = Micropost.take(5)
  end
  end

  def news
  end

  def about
  end
  
  def contact
  end
end
