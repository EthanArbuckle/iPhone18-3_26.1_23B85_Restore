@interface VUILibraryCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTopSeparatorView:(id)a3;
- (void)setViewController:(id)a3;
@end

@implementation VUILibraryCollectionViewCell

- (void)setViewController:(id)a3
{
  v5 = a3;
  if (self->_viewController != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_viewController, a3);
    v6 = [(VUILibraryCollectionViewCell *)self contentView];
    v7 = [(UIViewController *)self->_viewController view];
    [v6 addSubview:v7];

    [(VUILibraryCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = VUILibraryCollectionViewCell;
  [(VUILibraryCollectionViewCell *)&v6 prepareForReuse];
  viewController = self->_viewController;
  self->_viewController = 0;

  v4 = [(VUILibraryCollectionViewCell *)self contentView];
  v5 = [v4 subviews];
  [v5 makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)setTopSeparatorView:(id)a3
{
  v5 = a3;
  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView != v5)
  {
    v8 = v5;
    [(VUISeparatorView *)topSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_topSeparatorView, a3);
    if (self->_topSeparatorView)
    {
      v7 = [(VUILibraryCollectionViewCell *)self contentView];
      [v7 addSubview:self->_topSeparatorView];
    }

    [(VUILibraryCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = VUILibraryCollectionViewCell;
  [(VUILibraryCollectionViewCell *)&v20 layoutSubviews];
  [MEMORY[0x1E69DD2E8] vui_padding];
  v4 = v3;
  v6 = v5;
  v7 = [(VUILibraryCollectionViewCell *)self contentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView)
  {
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    [(VUIBaseView *)topSeparatorView sizeThatFits:CGRectGetWidth(v21) - v4 - v6, 1.79769313e308];
    [(VUISeparatorView *)self->_topSeparatorView setFrame:v4, 0.0, v17, v18];
  }

  v19 = [(UIViewController *)self->_viewController view];
  [v19 setFrame:{v9, v11, v13, v15}];
}

@end