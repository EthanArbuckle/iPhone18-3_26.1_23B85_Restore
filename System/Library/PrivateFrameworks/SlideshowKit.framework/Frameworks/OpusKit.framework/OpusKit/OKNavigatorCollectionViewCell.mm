@interface OKNavigatorCollectionViewCell
- (OKNavigatorCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPageViewController:(id)controller;
@end

@implementation OKNavigatorCollectionViewCell

- (OKNavigatorCollectionViewCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = OKNavigatorCollectionViewCell;
  result = [(OKNavigatorCollectionViewCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setPageViewController:(id)controller
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

  if (controller)
  {
    self->_pageViewController = controller;
  }
}

@end