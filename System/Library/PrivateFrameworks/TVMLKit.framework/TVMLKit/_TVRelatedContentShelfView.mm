@interface _TVRelatedContentShelfView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIView)shelfView;
- (_TVRelatedContentShelfView)initWithFrame:(CGRect)frame;
- (id)preferredFocusEnvironments;
- (void)_layoutRelatedView;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setRelatedView:(id)view;
- (void)setShelfView:(id)view;
@end

@implementation _TVRelatedContentShelfView

- (_TVRelatedContentShelfView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _TVRelatedContentShelfView;
  v3 = [(_TVRelatedContentShelfView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [_TVRelatedWrappingView alloc];
    v5 = [(_TVFocusRedirectView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    relatedWrappingView = v3->_relatedWrappingView;
    v3->_relatedWrappingView = v5;

    [(_TVRelatedContentShelfView *)v3 addSubview:v3->_relatedWrappingView];
  }

  return v3;
}

- (void)setShelfView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_shelfView);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_shelfView);
    [v5 removeFromSuperview];

    v6 = objc_storeWeak(&self->_shelfView, obj);
    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_shelfView);
      [(_TVRelatedContentShelfView *)self addSubview:v7];
    }
  }

  [(_TVRelatedContentShelfView *)self setNeedsLayout];
}

- (void)setRelatedView:(id)view
{
  viewCopy = view;
  if (self->_relatedView != viewCopy)
  {
    v15 = viewCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containerGuide = [(UIView *)v15 containerGuide];
      [containerGuide setEnabled:0];
    }

    objc_storeStrong(&self->_relatedView, view);
    if (self->_relatedView)
    {
      [(_TVRelatedContentShelfView *)self bounds];
      v8 = v7;
      v10 = v9;
      WeakRetained = objc_loadWeakRetained(&self->_shelfView);
      [WeakRetained bounds];
      v13 = v12;

      if (v8 <= 0.0 || v10 <= 0.0 || v13 <= 0.0)
      {
        [(_TVRelatedContentShelfView *)self setNeedsLayout];
      }

      else
      {
        [(_TVRelatedContentShelfView *)self _layoutRelatedView];
      }
    }

    else
    {
      relatedView = [(_TVRelatedWrappingView *)self->_relatedWrappingView relatedView];
      [relatedView removeFromSuperview];

      [(_TVRelatedWrappingView *)self->_relatedWrappingView setRelatedView:0];
    }

    viewCopy = v15;
  }
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x277D85DE8];
  lastFocusedView = self->_lastFocusedView;
  if (lastFocusedView)
  {
    WeakRetained = lastFocusedView;
LABEL_4:
    v6[0] = WeakRetained;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained(&self->_shelfView);
  if (WeakRetained)
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  focusedView = [mainScreen focusedView];

  WeakRetained = objc_loadWeakRetained(&self->_shelfView);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_shelfView);
    v9 = [v8 isDescendantOfView:focusedView];

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_shelfView);
      lastFocusedView = self->_lastFocusedView;
      self->_lastFocusedView = v10;
LABEL_7:

      goto LABEL_8;
    }
  }

  relatedView = self->_relatedView;
  if (relatedView && [(UIView *)relatedView isDescendantOfView:focusedView])
  {
    v13 = self->_relatedView;
    lastFocusedView = self->_lastFocusedView;
    self->_lastFocusedView = v13;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _TVRelatedContentShelfView;
  [(_TVRelatedContentShelfView *)&v15 layoutSubviews];
  [(_TVRelatedContentShelfView *)self bounds];
  v4 = v3;
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_shelfView);
  [WeakRetained sizeThatFits:{v4, v6}];
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_shelfView);
  [v12 setFrame:{0.0, 0.0, v9, v11}];

  relatedView = self->_relatedView;
  if (relatedView)
  {
    superview = [(UIView *)relatedView superview];

    if (!superview)
    {
      [(_TVRelatedContentShelfView *)self _layoutRelatedView];
    }
  }
}

- (void)_layoutRelatedView
{
  [(_TVRelatedContentShelfView *)self bounds];
  v39 = v4;
  v40 = v3;
  v37 = v6;
  v38 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_shelfView);
  [WeakRetained bounds];
  v9 = v8;

  relatedView = [(_TVRelatedWrappingView *)self->_relatedWrappingView relatedView];
  [(_TVRelatedWrappingView *)self->_relatedWrappingView setRelatedView:self->_relatedView];
  containerGuide = [(_TVFocusRedirectView *)self->_relatedWrappingView containerGuide];
  [containerGuide setEnabled:1];

  [(_TVRelatedWrappingView *)self->_relatedWrappingView addSubview:self->_relatedView];
  if (relatedView)
  {
    [(UIView *)self->_relatedView setAlpha:0.0];
    v12 = MEMORY[0x277D75D18];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48___TVRelatedContentShelfView__layoutRelatedView__block_invoke;
    v43[3] = &unk_279D6E2F8;
    v44 = relatedView;
    selfCopy = self;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __48___TVRelatedContentShelfView__layoutRelatedView__block_invoke_2;
    v41[3] = &unk_279D6EBD0;
    v42 = v44;
    [v12 animateWithDuration:5244932 delay:v43 options:v41 animations:0.3 completion:0.0];
  }

  [(UIView *)self->_relatedView tv_itemWidth];
  v14 = v13;
  [(UIView *)self->_relatedView tv_maxHeight];
  v16 = v15;
  [(UIView *)self->_relatedView tv_margin];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v35 = v23;
  v24 = MEMORY[0x277CBF3A0];
  v25 = *MEMORY[0x277CBF3A0];
  v26 = v9 + v17;
  v46.origin.y = v39;
  v46.origin.x = v40;
  v46.size.height = v37;
  v46.size.width = v38;
  Width = CGRectGetWidth(v46);
  v28 = fmin(v16, self->_relatedHeight - v22 - v18);
  if (v16 <= 0.0)
  {
    v29 = self->_relatedHeight - v22 - v18;
  }

  else
  {
    v29 = v28;
  }

  [(_TVRelatedWrappingView *)self->_relatedWrappingView setFrame:v25, v26, Width, v29, v35];
  effectiveUserInterfaceLayoutDirection = [(_TVRelatedContentShelfView *)self effectiveUserInterfaceLayoutDirection];
  if (v14 == 0.0)
  {
    v47.origin.x = v25;
    v47.origin.y = v26;
    v47.size.width = Width;
    v47.size.height = v29;
    v14 = CGRectGetWidth(v47) - v20 - v36;
  }

  v31 = *(v24 + 8);
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v48.origin.y = v39;
    v48.origin.x = v40;
    v48.size.height = v37;
    v48.size.width = v38;
    v32 = CGRectGetWidth(v48);
    v49.origin.x = v25;
    v49.origin.y = v31;
    v49.size.width = v14;
    v49.size.height = v29;
    v20 = v32 - CGRectGetWidth(v49) - v36;
  }

  [(UIView *)self->_relatedView setFrame:v20, v31, v14, v29];
  v50.origin.x = v25;
  v50.origin.y = v26;
  v50.size.width = Width;
  v50.size.height = v29;
  v33 = CGRectGetWidth(v50);
  containerGuide2 = [(_TVFocusRedirectView *)self->_relatedWrappingView containerGuide];
  [containerGuide2 _setManualLayoutFrame:{0.0, v31, v33, v29}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  WeakRetained = objc_loadWeakRetained(&self->_shelfView);
  [WeakRetained sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v10 + self->_relatedHeight;
  v12 = v8;
  result.height = v11;
  result.width = v12;
  return result;
}

- (UIView)shelfView
{
  WeakRetained = objc_loadWeakRetained(&self->_shelfView);

  return WeakRetained;
}

@end