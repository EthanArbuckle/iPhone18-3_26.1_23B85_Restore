@interface _TVProductCollectionViewCell
- (BOOL)canBecomeFocused;
- (UIEdgeInsets)margins;
- (UIEdgeInsets)partialMargins;
- (UIViewController)viewController;
- (id)preferredFocusEnvironments;
- (void)disableMargins;
- (void)enableWithMargins:(UIEdgeInsets)margins;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTitleView:(id)view margins:(UIEdgeInsets)margins show:(BOOL)show;
- (void)setViewController:(id)controller;
- (void)showTitleView:(BOOL)view;
@end

@implementation _TVProductCollectionViewCell

- (void)setTitleView:(id)view margins:(UIEdgeInsets)margins show:(BOOL)show
{
  showCopy = show;
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  viewCopy = view;
  titleView = self->_titleView;
  v15 = viewCopy;
  if (titleView != viewCopy)
  {
    [(UIView *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, view);
    if (self->_titleView)
    {
      [(_TVProductCollectionViewCell *)self addSubview:?];
      v14 = 0.0;
      if (showCopy)
      {
        v14 = 1.0;
      }

      [(UIView *)self->_titleView setAlpha:v14];
      self->_activeMargins.top = top;
      self->_activeMargins.left = left;
      self->_activeMargins.bottom = bottom;
      self->_activeMargins.right = right;
    }
  }

  [(_TVProductCollectionViewCell *)self setNeedsLayout];
}

- (void)showTitleView:(BOOL)view
{
  viewCopy = view;
  [(UIView *)self->_titleView alpha];
  v6 = 0.0;
  if (viewCopy)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (self->_titleView)
  {
    v8 = v5 == v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    view = [WeakRetained view];
    [view frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;

    if (v7 != 0.0)
    {
      v6 = self->_activeMargins.top + 70.0 + self->_activeMargins.bottom;
    }

    v17 = 0.2;
    if (viewCopy)
    {
      v17 = 0.3;
    }

    v18 = 0.12;
    if (!viewCopy)
    {
      v18 = 0.0;
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46___TVProductCollectionViewCell_showTitleView___block_invoke;
    v21[3] = &unk_279D6E8B8;
    v21[4] = self;
    *&v21[5] = v7;
    [MEMORY[0x277D75D18] animateWithDuration:2084 delay:v21 options:0 animations:v17 completion:v18];
    v19 = objc_loadWeakRetained(&self->_viewController);
    view2 = [v19 view];
    [view2 setFrame:{v12, v6, v14, v16}];
  }
}

- (void)enableWithMargins:(UIEdgeInsets)margins
{
  self->_activeMargins = margins;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  view = [WeakRetained view];

  [view frame];
  [view setFrame:?];
}

- (void)disableMargins
{
  v2 = *(MEMORY[0x277D768C8] + 16);
  *&self->_activeMargins.top = *MEMORY[0x277D768C8];
  *&self->_activeMargins.bottom = v2;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  view = [WeakRetained view];

  [view frame];
  [view setFrame:?];
}

- (void)setViewController:(id)controller
{
  objc_storeWeak(&self->_viewController, controller);

  [(_TVProductCollectionViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _TVProductCollectionViewCell;
  [(_TVProductCollectionViewCell *)&v31 layoutSubviews];
  [(_TVProductCollectionViewCell *)self bounds];
  v7 = v5;
  v8 = v6;
  if (self->_titleView)
  {
    v9 = v3;
    v10 = v4;
    v11 = CGRectGetWidth(*&v3) - self->_activeMargins.left - self->_activeMargins.right;
    v30 = self->_activeMargins.top + self->_activeMargins.bottom;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_titleView sizeThatFits:v11, 70.0];
      v14 = v13;
      if (v11 >= v12)
      {
        v11 = v12;
      }
    }

    else
    {
      v14 = 70.0;
    }

    v26 = 70.0 - v14 + self->_activeMargins.top;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v26 + 14.0;
    }

    v32.origin.x = v9;
    v32.origin.y = v10;
    v32.size.width = v7;
    v32.size.height = v8;
    [(UIView *)self->_titleView setFrame:floor((CGRectGetWidth(v32) - v11) * 0.5), v26, v11, v14];
    [(UIView *)self->_titleView alpha];
    if (v27 == 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v30 + 70.0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    view = [WeakRetained view];
    v33.origin.x = v9;
    v33.origin.y = v10;
    v33.size.width = v7;
    v33.size.height = v8;
    Width = CGRectGetWidth(v33);
    v34.origin.x = v9;
    v34.origin.y = v10;
    v34.size.width = v7;
    v34.size.height = v8;
    v25 = CGRectGetHeight(v34) + -70.0 - v30;
    v22 = 0.0;
    view2 = view;
    v23 = v28;
    v24 = Width;
  }

  else
  {
    v15 = v5 - self->_margins.left - self->_margins.right;
    top = self->_activeMargins.top;
    left = self->_activeMargins.left;
    v18 = v6 - self->_margins.top - self->_margins.bottom;
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    view2 = [WeakRetained view];
    view = view2;
    v22 = left;
    v23 = top;
    v24 = v15;
    v25 = v18;
  }

  [view2 setFrame:{v22, v23, v24, v25}];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = _TVProductCollectionViewCell;
  [(_TVProductCollectionViewCell *)&v8 prepareForReuse];
  [(_TVProductCollectionViewCell *)self setViewController:0];
  [(UIView *)self->_titleView removeFromSuperview];
  titleView = self->_titleView;
  self->_titleView = 0;

  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *&self->_margins.top = *MEMORY[0x277D768C8];
  *&self->_margins.bottom = v5;
  *&self->_partialMargins.top = v4;
  *&self->_partialMargins.bottom = v5;
  *&self->_activeMargins.top = v4;
  *&self->_activeMargins.bottom = v5;
  self->_marginActive = 0;
  contentView = [(_TVProductCollectionViewCell *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (BOOL)canBecomeFocused
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  if (([(_TVProductCollectionViewCell *)self containsView:focusedView]& 1) != 0)
  {
    canBecomeFocused = 0;
  }

  else
  {
    viewController = [(_TVProductCollectionViewCell *)self viewController];
    view = [viewController view];
    canBecomeFocused = [view canBecomeFocused];
  }

  return canBecomeFocused;
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(_TVProductCollectionViewCell *)self layoutBelowIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_viewController);
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (UIEdgeInsets)partialMargins
{
  top = self->_partialMargins.top;
  left = self->_partialMargins.left;
  bottom = self->_partialMargins.bottom;
  right = self->_partialMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end