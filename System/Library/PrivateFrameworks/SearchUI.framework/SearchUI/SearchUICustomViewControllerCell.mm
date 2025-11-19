@interface SearchUICustomViewControllerCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setEmbeddedViewController:(id)a3;
@end

@implementation SearchUICustomViewControllerCell

- (void)setEmbeddedViewController:(id)a3
{
  v5 = a3;
  if (self->_embeddedViewController != v5)
  {
    v11 = v5;
    v6 = [(SearchUICustomViewControllerCell *)self hostedView];
    [v6 removeFromSuperview];

    if (v11)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD410]);
      v8 = [(UIViewController *)v11 view];
      v9 = [v7 initWithHostedView:v8];

      v10 = [(SearchUICustomViewControllerCell *)self contentView];
      [v10 addSubview:v9];

      [(SearchUICollectionViewCell *)self setUseSystemSizing:1];
      [(SearchUICustomViewControllerCell *)self setHostedView:v9];
    }

    objc_storeStrong(&self->_embeddedViewController, a3);
    v5 = v11;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SearchUICustomViewControllerCell *)self hostedView];
  [v5 sizeThatFits:{width, height}];
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
  v3 = [(SearchUICustomViewControllerCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SearchUICustomViewControllerCell *)self hostedView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

@end