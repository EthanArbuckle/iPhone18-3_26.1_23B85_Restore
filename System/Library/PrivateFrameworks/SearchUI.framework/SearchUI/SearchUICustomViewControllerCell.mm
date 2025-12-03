@interface SearchUICustomViewControllerCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setEmbeddedViewController:(id)controller;
@end

@implementation SearchUICustomViewControllerCell

- (void)setEmbeddedViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_embeddedViewController != controllerCopy)
  {
    v11 = controllerCopy;
    hostedView = [(SearchUICustomViewControllerCell *)self hostedView];
    [hostedView removeFromSuperview];

    if (v11)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD410]);
      view = [(UIViewController *)v11 view];
      v9 = [v7 initWithHostedView:view];

      contentView = [(SearchUICustomViewControllerCell *)self contentView];
      [contentView addSubview:v9];

      [(SearchUICollectionViewCell *)self setUseSystemSizing:1];
      [(SearchUICustomViewControllerCell *)self setHostedView:v9];
    }

    objc_storeStrong(&self->_embeddedViewController, controller);
    controllerCopy = v11;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  hostedView = [(SearchUICustomViewControllerCell *)self hostedView];
  [hostedView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SearchUICustomViewControllerCell;
  [(SearchUICollectionViewCell *)&v13 layoutSubviews];
  contentView = [(SearchUICustomViewControllerCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  hostedView = [(SearchUICustomViewControllerCell *)self hostedView];
  [hostedView setFrame:{v5, v7, v9, v11}];
}

@end