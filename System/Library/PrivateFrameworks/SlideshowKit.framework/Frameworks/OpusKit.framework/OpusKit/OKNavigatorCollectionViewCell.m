@interface OKNavigatorCollectionViewCell
- (OKNavigatorCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPageViewController:(id)a3;
@end

@implementation OKNavigatorCollectionViewCell

- (OKNavigatorCollectionViewCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = OKNavigatorCollectionViewCell;
  result = [(OKNavigatorCollectionViewCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_pageViewController = 0;
  }

  return result;
}

- (void)dealloc
{
  pageViewController = self->_pageViewController;
  if (pageViewController)
  {

    self->_pageViewController = 0;
  }

  v4.receiver = self;
  v4.super_class = OKNavigatorCollectionViewCell;
  [(OKNavigatorCollectionViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = OKNavigatorCollectionViewCell;
  [(OKNavigatorCollectionViewCell *)&v7 layoutSubviews];
  [-[OKNavigatorCollectionViewCell contentView](self "contentView")];
  [-[OKPageViewController view](self->_pageViewController "view")];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = OKNavigatorCollectionViewCell;
  [(OKNavigatorCollectionViewCell *)&v5 prepareForReuse];
  pageViewController = self->_pageViewController;
  if (pageViewController)
  {
    [(OKPageViewController *)pageViewController prepareForWarmup];
    [(OKPageViewController *)self->_pageViewController removeFromParentViewControllerInstantly];
    v4 = self->_pageViewController;
    if (v4)
    {

      self->_pageViewController = 0;
    }
  }
}

- (void)setPageViewController:(id)a3
{
  pageViewController = self->_pageViewController;
  if (pageViewController)
  {
    [(OKPageViewController *)pageViewController prepareForWarmup];
    [(OKPageViewController *)self->_pageViewController removeFromParentViewControllerInstantly];
    v6 = self->_pageViewController;
    if (v6)
    {

      self->_pageViewController = 0;
    }
  }

  if (a3)
  {
    self->_pageViewController = a3;
  }
}

@end