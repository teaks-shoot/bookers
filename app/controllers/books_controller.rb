class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
