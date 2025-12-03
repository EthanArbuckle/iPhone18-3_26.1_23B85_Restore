@interface NCDimmableView
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (NCDimmableView)initWithFrame:(CGRect)frame;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationListStackBackgroundDimmingView)backgroundDimmingView;
- (PLContentSizeManaging)contentView;
- (UIView)viewToFadeWhenDimming;
- (id)_effectiveContentView;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform;
- (void)setBackgroundDimmingView:(id)view;
- (void)setViewToFadeWhenDimming:(id)dimming;
@end

@implementation NCDimmableView

- (PLContentSizeManaging)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (UIView)viewToFadeWhenDimming
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToFadeWhenDimming);

  return WeakRetained;
}

- (id)_effectiveContentView
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (NCNotificationListCellDynamicHeightTraits)currentTraits
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  if (objc_opt_respondsToSelector())
  {
    currentTraits = [WeakRetained currentTraits];
  }

  else
  {
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCDimmableView *)v4 currentTraits];
    }

    currentTraits = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v5 = currentTraits;

  return v5;
}

- (void)setBackgroundDimmingView:(id)view
{
  objc_storeWeak(&self->_backgroundDimmingView, view);
  v4 = *&self->_transform.c;
  v5[0] = *&self->_transform.a;
  v5[1] = v4;
  v5[2] = *&self->_transform.tx;
  [(NCDimmableView *)self configureStackDimmingForTransform:v5];
}

- (void)setViewToFadeWhenDimming:(id)dimming
{
  objc_storeWeak(&self->_viewToFadeWhenDimming, dimming);
  v4 = *&self->_transform.c;
  v5[0] = *&self->_transform.a;
  v5[1] = v4;
  v5[2] = *&self->_transform.tx;
  [(NCDimmableView *)self configureStackDimmingForTransform:v5];
}

- (NCDimmableView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NCDimmableView;
  v3 = [(NCDimmableView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCDimmableView *)v3 _setIgnoresLayerTransformForSafeAreaInsets:1];
    v5 = MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v4->_transform.a = *MEMORY[0x277CBF2C0];
    *&v4->_transform.c = v6;
    *&v4->_transform.tx = *(v5 + 32);
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NCDimmableView *)self contentSizeForSize:fits.width, fits.height];

  [(NCDimmableView *)self sizeThatFitsContentWithSize:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform
{
  v6 = *&transform->c;
  v5 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v6;
  *&self->_transform.tx = v5;
  contentView = [(NCDimmableView *)self contentView];
  v8 = contentView;
  if (!contentView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_backgroundDimmingView);
    v11 = WeakRetained;
    if (transform->a <= 0.94)
    {
      v13 = dbl_21E946550[transform->a < 0.94];
    }

    else
    {
      v13 = 0.0;
    }

    *&v34 = 1.0;
    backgroundColor = [(NCNotificationListStackDimmingOverlayView *)WeakRetained backgroundColor];

    v15 = 1.0;
    if (backgroundColor)
    {
      backgroundColor2 = [(NCNotificationListStackDimmingOverlayView *)v11 backgroundColor];
      [backgroundColor2 getWhite:0 alpha:&v34];

      v15 = *&v34;
    }

    v17 = v13 * (1.0 - v15);
    v18 = *&transform->c;
    v35 = *&transform->a;
    v36 = v18;
    v37 = *&transform->tx;
    [(NCNotificationListStackDimmingOverlayView *)v11 configureStackDimmingForTransform:&v35];
    if (v17 > 0.0 && !self->_stackDimmingOverlayView)
    {
      v19 = [NCNotificationListStackDimmingOverlayView alloc];
      [(NCDimmableView *)self bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      _effectiveContentView = [(NCDimmableView *)self _effectiveContentView];
      [_effectiveContentView _continuousCornerRadius];
      v30 = [(NCNotificationListStackDimmingOverlayView *)v19 initWithFrame:v21 cornerRadius:v23, v25, v27, v29];
      stackDimmingOverlayView = self->_stackDimmingOverlayView;
      self->_stackDimmingOverlayView = v30;

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __52__NCDimmableView_configureStackDimmingForTransform___block_invoke;
      v33[3] = &unk_27836F6A8;
      v33[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v33];
    }

    [(NCNotificationListStackDimmingOverlayView *)self->_stackDimmingOverlayView setAlpha:v17];
    viewToFadeWhenDimming = [(NCDimmableView *)self viewToFadeWhenDimming];
    [viewToFadeWhenDimming setAlpha:{fmax(v13 * -2.0 + 1.0, 0.0)}];

    goto LABEL_13;
  }

  v9 = *&transform->c;
  v35 = *&transform->a;
  v36 = v9;
  v37 = *&transform->tx;
  [contentView configureStackDimmingForTransform:&v35];
  v10 = self->_stackDimmingOverlayView;
  if (v10)
  {
    [(NCNotificationListStackDimmingOverlayView *)v10 removeFromSuperview];
    v11 = self->_stackDimmingOverlayView;
    self->_stackDimmingOverlayView = 0;
LABEL_13:
  }
}

- (CGSize)sizeThatFits:(CGSize)fits withTraits:(id)traits
{
  height = fits.height;
  width = fits.width;
  traitsCopy = traits;
  [(NCDimmableView *)self contentSizeForSize:width, height];
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_contentView);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sizeThatFits:traitsCopy withTraits:{v9, v11}];
  }

  else
  {
    [(NCDimmableView *)self sizeThatFitsContentWithSize:v9, v11];
  }

  v15 = v13;
  v16 = v14;

  v17 = v15;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _effectiveContentView = [(NCDimmableView *)self _effectiveContentView];
  [_effectiveContentView sizeThatFitsContentWithSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (width > 0.0 && height > 0.0)
  {
    [(NCDimmableView *)self sizeThatFitsContentWithSize:width, 0.0];
    v6 = ((height - v7) & ~((height - v7) >> 31));
    v5 = width;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (NCNotificationListStackBackgroundDimmingView)backgroundDimmingView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundDimmingView);

  return WeakRetained;
}

@end