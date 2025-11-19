@interface PLKLegibilityView
- (BOOL)_shouldBeBackdropAware;
- (BOOL)_updateTraitBasedBackdropAwareness;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (PLKLegibilityView)init;
- (PLKLegibilityView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_setLegibilityNeedsUpdate:(id)a3;
- (void)_updateContentViewForLegibilityChanges;
- (void)_updateShadowViewForLegibilityChanges;
- (void)layoutSubviews;
- (void)noteBackdropAwarenessTraitDidUpdate;
- (void)setBackdropAware:(BOOL)a3;
- (void)setContent:(id)a3;
- (void)setHideForegroundContent:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setShadowImage:(id)a3;
- (void)setTraitBasedBackdropAwarenessEnabled:(BOOL)a3;
- (void)sizeToFit;
@end

@implementation PLKLegibilityView

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PLKLegibilityView;
  [(PLKLegibilityView *)&v14 layoutSubviews];
  [(PLKLegibilityView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PLKLegibilityView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  [(_PFTImageView *)self->_contentView bounds];
  [(_PFTImageView *)self->_shadowView bounds];
  [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_contentView plk_setBoundsAndPositionFromFrame:v13];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_shadowView plk_setBoundsAndPositionFromFrame:v13];
}

- (void)_updateContentViewForLegibilityChanges
{
  v3 = [(PLKLegibilityView *)self _currentOptions];
  v11 = [(PLKLegibilityContent *)self->_content legibilityDescriptor];
  if (self->_hideForegroundContent || !self->_content)
  {
    p_contentView = &self->_contentView;
    v8 = 1;
    v7 = 4;
LABEL_9:
    [(_PFTImageView *)*p_contentView setHidden:v8];
    goto LABEL_10;
  }

  p_contentView = &self->_contentView;
  v5 = [(_PFTImageView *)self->_contentView image];

  if (v5)
  {
    v6 = [(_PFTImageView *)*p_contentView image];
    if ([v6 plk_isAlphaMask])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    v8 = 0;
    goto LABEL_9;
  }

  v7 = 4;
LABEL_10:
  v9 = [v11 foreground];
  v10 = [(_PFTImageView *)self->_contentView layer];
  [v9 configureCALayer:v10 forContentRenderedWithContextType:v7 options:v3];
}

- (void)_updateShadowViewForLegibilityChanges
{
  v9 = [(PLKLegibilityContent *)self->_content legibilityDescriptor];
  v3 = [(PLKLegibilityView *)self _currentOptions];
  v4 = [(_PFTImageView *)self->_shadowView image];

  if (v4)
  {
    v5 = [(_PFTImageView *)self->_shadowView image];
    if ([v5 plk_isAlphaMask])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 4;
  }

  v7 = [v9 background];
  v8 = [(_PFTImageView *)self->_shadowView layer];
  [v7 configureCALayer:v8 forContentRenderedWithContextType:v6 options:v3];
}

- (PLKLegibilityView)init
{
  v5.receiver = self;
  v5.super_class = PLKLegibilityView;
  v2 = [(PLKLegibilityView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLKLegibilityView *)v2 _commonInit];
  }

  return v3;
}

- (PLKLegibilityView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityView;
  v3 = [(PLKLegibilityView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLKLegibilityView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  containerView = self->_containerView;
  self->_containerView = v3;

  v5 = self->_containerView;
  [(PLKLegibilityView *)self bounds];
  [(_PLKLegibilityContainerView *)v5 setFrame:?];
  [(_PLKLegibilityContainerView *)self->_containerView setAutoresizingMask:18];
  [(PLKLegibilityView *)self addSubview:self->_containerView];
  v6 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v6;

  v8 = objc_opt_new();
  shadowView = self->_shadowView;
  self->_shadowView = v8;

  [(_PLKLegibilityContainerView *)self->_containerView addSubview:self->_shadowView];
  [(_PLKLegibilityContainerView *)self->_containerView addSubview:self->_contentView];
  self->_isTraitBasedBackdropAwarenessEnabled = [objc_opt_class() defaultsToTraitBasedBackdropAwarenessEnabled];

  [(PLKLegibilityView *)self _updateTraitBasedBackdropAwareness];
}

- (void)sizeToFit
{
  [(_PFTImageView *)self->_contentView sizeToFit];
  v3 = [(_PFTImageView *)self->_contentView image];
  [v3 size];
  BSRectWithSize();
  [(PLKLegibilityView *)self center];
  v4 = [(PLKLegibilityView *)self traitCollection];
  [v4 displayScale];
  UIRectCenteredAboutPointScale();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UIView *)self plk_setBoundsAndPositionFromFrame:v6, v8, v10, v12];

  [(PLKLegibilityView *)self layoutIfNeeded];
}

- (void)setHideForegroundContent:(BOOL)a3
{
  if (self->_hideForegroundContent != a3)
  {
    self->_hideForegroundContent = a3;
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
  }
}

- (void)setBackdropAware:(BOOL)a3
{
  if (self->_isBackdropAware != a3)
  {
    self->_isBackdropAware = a3;
    [(PLKLegibilityView *)self noteBackdropAwarenessTraitDidUpdate];
  }
}

- (void)setTraitBasedBackdropAwarenessEnabled:(BOOL)a3
{
  if (self->_isTraitBasedBackdropAwarenessEnabled != a3)
  {
    self->_isTraitBasedBackdropAwarenessEnabled = a3;
    [(PLKLegibilityView *)self noteBackdropAwarenessTraitDidUpdate];
  }
}

- (void)setImage:(id)a3
{
  v10 = a3;
  v4 = [(_PFTImageView *)self->_contentView image];
  v5 = v4;
  if (v4 == v10 || [v10 isEqual:v4])
  {
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
  }

  else
  {
    [(_PFTImageView *)self->_contentView setImage:v10];
    v6 = [(PLKLegibilityView *)self traitCollection];
    [v6 displayScale];
    v8 = v7;

    [(PLKLegibilityView *)self bounds];
    [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:?];
    [v10 size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [(UIView *)self->_contentView plk_setBoundsAndPositionFromFrame:v8];
    [(PLKLegibilityView *)self invalidateIntrinsicContentSize];
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
    activeContentImageFuture = self->_activeContentImageFuture;
    self->_activeContentImageFuture = 0;
  }
}

- (void)setShadowImage:(id)a3
{
  v27 = a3;
  v4 = [(_PFTImageView *)self->_shadowView image];
  v5 = v4;
  if (v4 == v27 || [v27 isEqual:v4])
  {
    [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
  }

  else
  {
    [(_PFTImageView *)self->_shadowView setImage:v27];
    v6 = [(PLKLegibilityView *)self traitCollection];
    [v6 displayScale];
    v8 = v7;

    [(PLKLegibilityView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v27 size];
    BSRectWithSize();
    v26 = v8;
    UIRectCenteredIntegralRectScale();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:v10, v12, v14, v16, v26];
    [(UIView *)self->_shadowView plk_setBoundsAndPositionFromFrame:v18, v20, v22, v24];
    [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
    activeLegibilityImageFuture = self->_activeLegibilityImageFuture;
    self->_activeLegibilityImageFuture = 0;
  }
}

- (void)setContent:(id)a3
{
  if (self->_content != a3)
  {
    [(PLKLegibilityView *)self _setLegibilityNeedsUpdate:?];
  }
}

- (BOOL)_shouldBeBackdropAware
{
  if (!self->_isTraitBasedBackdropAwarenessEnabled)
  {
    return self->_isBackdropAware;
  }

  v3 = [(PLKLegibilityView *)self traitCollection];
  v4 = [v3 plk_shouldBeBackdropAware];

  if (!v4)
  {
    return self->_isBackdropAware;
  }

  v5 = [v4 BOOLValue];

  return v5;
}

- (void)_setLegibilityNeedsUpdate:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  if (([v5 isEqualToLegibilityContent:self->_content] & 1) == 0)
  {
    v6 = PLKLogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v8 = PLKLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(PLKLegibilityView *)self _setLegibilityNeedsUpdate:v5, v8];
      }
    }

    v9 = (self->_asyncUpdateCounter + 1);
    self->_asyncUpdateCounter = v9;
    objc_storeStrong(&self->_content, a3);
    if (!self->_content || (+[PLKLegibilityContent noContent], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v5))
    {
      activeLegibilityImageFuture = self->_activeLegibilityImageFuture;
      self->_activeLegibilityImageFuture = 0;

      activeContentImageFuture = self->_activeContentImageFuture;
      self->_activeContentImageFuture = 0;

      [(PLKLegibilityView *)self setImage:0];
      [(PLKLegibilityView *)self setShadowImage:0];
    }

    else
    {
      objc_initWeak(location, self);
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v26 = 0;
      v11 = [v5 contentImageFuture];
      if (v11 == self->_activeContentImageFuture)
      {
        [(PLKLegibilityView *)self setImage:0];
      }

      else
      {
        objc_storeStrong(&self->_activeContentImageFuture, v11);
        v12 = self->_activeContentImageFuture;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke;
        v23[3] = &unk_27835B708;
        objc_copyWeak(v24, location);
        v24[1] = v9;
        v23[4] = v25;
        v13 = [MEMORY[0x277D3EC60] mainThreadScheduler];
        [(PFTFuture *)v12 addCompletionBlock:v23 scheduler:v13];

        objc_destroyWeak(v24);
      }

      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v22 = 0;
      v16 = [v5 legibilityImageFuture];
      if (v16 == self->_activeLegibilityImageFuture)
      {
        [(PLKLegibilityView *)self setShadowImage:0];
      }

      else
      {
        objc_storeStrong(&self->_activeLegibilityImageFuture, v16);
        v17 = self->_activeLegibilityImageFuture;
        v19 = MEMORY[0x277D85DD0];
        objc_copyWeak(v20, location);
        v20[1] = v9;
        v18 = [MEMORY[0x277D3EC60] mainThreadScheduler];
        [(PFTFuture *)v17 addCompletionBlock:&v19 scheduler:v18];

        objc_destroyWeak(v20);
      }

      _Block_object_dispose(v21, 8);
      _Block_object_dispose(v25, 8);
      objc_destroyWeak(location);
    }
  }
}

void __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 48) == WeakRetained[57])
  {
    [WeakRetained setImage:v5];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && *(a1 + 48) == WeakRetained[57])
  {
    [WeakRetained setShadowImage:v5];
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)noteBackdropAwarenessTraitDidUpdate
{
  [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];

  [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
}

- (BOOL)_updateTraitBasedBackdropAwareness
{
  v12[1] = *MEMORY[0x277D85DE8];
  backdropAwarenessTraitRegistration = self->_backdropAwarenessTraitRegistration;
  if (!self->_isTraitBasedBackdropAwarenessEnabled)
  {
    if (backdropAwarenessTraitRegistration)
    {
      [(PLKLegibilityView *)self unregisterForTraitChanges:?];
      v9 = self->_backdropAwarenessTraitRegistration;
      self->_backdropAwarenessTraitRegistration = 0;

      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  if (backdropAwarenessTraitRegistration)
  {
    goto LABEL_6;
  }

  v4 = objc_opt_self();
  v12[0] = v4;
  v5 = 1;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [(PLKLegibilityView *)self registerForTraitChanges:v6 withTarget:self action:sel_noteBackdropAwarenessTraitDidUpdate];
  v8 = self->_backdropAwarenessTraitRegistration;
  self->_backdropAwarenessTraitRegistration = v7;

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(_PFTImageView *)self->_contentView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(_PFTImageView *)self->_contentView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_setLegibilityNeedsUpdate:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_21E5D5000, log, OS_LOG_TYPE_DEBUG, "<PLKLegiblityView:%p _setLegibilityNeedsUpdate:%@>", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end