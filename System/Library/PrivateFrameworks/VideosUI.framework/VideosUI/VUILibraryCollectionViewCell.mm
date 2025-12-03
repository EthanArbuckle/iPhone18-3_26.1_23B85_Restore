@interface VUILibraryCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTopSeparatorView:(id)view;
- (void)setViewController:(id)controller;
@end

@implementation VUILibraryCollectionViewCell

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_viewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(&self->_viewController, controller);
    contentView = [(VUILibraryCollectionViewCell *)self contentView];
    view = [(UIViewController *)self->_viewController view];
    [contentView addSubview:view];

    [(VUILibraryCollectionViewCell *)self setNeedsLayout];
    controllerCopy = v8;
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = VUILibraryCollectionViewCell;
  [(VUILibraryCollectionViewCell *)&v6 prepareForReuse];
  viewController = self->_viewController;
  self->_viewController = 0;

  contentView = [(VUILibraryCollectionViewCell *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)setTopSeparatorView:(id)view
{
  viewCopy = view;
  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView != viewCopy)
  {
    v8 = viewCopy;
    [(VUISeparatorView *)topSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_topSeparatorView, view);
    if (self->_topSeparatorView)
    {
      contentView = [(VUILibraryCollectionViewCell *)self contentView];
      [contentView addSubview:self->_topSeparatorView];
    }

    [(VUILibraryCollectionViewCell *)self setNeedsLayout];
    viewCopy = v8;
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
  contentView = [(VUILibraryCollectionViewCell *)self contentView];
  [contentView bounds];
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

  view = [(UIViewController *)self->_viewController view];
  [view setFrame:{v9, v11, v13, v15}];
}

@end