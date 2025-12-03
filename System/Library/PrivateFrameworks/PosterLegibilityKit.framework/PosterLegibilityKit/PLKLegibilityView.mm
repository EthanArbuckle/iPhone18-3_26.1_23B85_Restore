@interface PLKLegibilityView
- (BOOL)_shouldBeBackdropAware;
- (BOOL)_updateTraitBasedBackdropAwareness;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (PLKLegibilityView)init;
- (PLKLegibilityView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_setLegibilityNeedsUpdate:(id)update;
- (void)_updateContentViewForLegibilityChanges;
- (void)_updateShadowViewForLegibilityChanges;
- (void)layoutSubviews;
- (void)noteBackdropAwarenessTraitDidUpdate;
- (void)setBackdropAware:(BOOL)aware;
- (void)setContent:(id)content;
- (void)setHideForegroundContent:(BOOL)content;
- (void)setImage:(id)image;
- (void)setShadowImage:(id)image;
- (void)setTraitBasedBackdropAwarenessEnabled:(BOOL)enabled;
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
  traitCollection = [(PLKLegibilityView *)self traitCollection];
  [traitCollection displayScale];
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
  _currentOptions = [(PLKLegibilityView *)self _currentOptions];
  legibilityDescriptor = [(PLKLegibilityContent *)self->_content legibilityDescriptor];
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
  image = [(_PFTImageView *)self->_contentView image];

  if (image)
  {
    image2 = [(_PFTImageView *)*p_contentView image];
    if ([image2 plk_isAlphaMask])
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
  foreground = [legibilityDescriptor foreground];
  layer = [(_PFTImageView *)self->_contentView layer];
  [foreground configureCALayer:layer forContentRenderedWithContextType:v7 options:_currentOptions];
}

- (void)_updateShadowViewForLegibilityChanges
{
  legibilityDescriptor = [(PLKLegibilityContent *)self->_content legibilityDescriptor];
  _currentOptions = [(PLKLegibilityView *)self _currentOptions];
  image = [(_PFTImageView *)self->_shadowView image];

  if (image)
  {
    image2 = [(_PFTImageView *)self->_shadowView image];
    if ([image2 plk_isAlphaMask])
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

  background = [legibilityDescriptor background];
  layer = [(_PFTImageView *)self->_shadowView layer];
  [background configureCALayer:layer forContentRenderedWithContextType:v6 options:_currentOptions];
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

- (PLKLegibilityView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityView;
  v3 = [(PLKLegibilityView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  image = [(_PFTImageView *)self->_contentView image];
  [image size];
  BSRectWithSize();
  [(PLKLegibilityView *)self center];
  traitCollection = [(PLKLegibilityView *)self traitCollection];
  [traitCollection displayScale];
  UIRectCenteredAboutPointScale();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UIView *)self plk_setBoundsAndPositionFromFrame:v6, v8, v10, v12];

  [(PLKLegibilityView *)self layoutIfNeeded];
}

- (void)setHideForegroundContent:(BOOL)content
{
  if (self->_hideForegroundContent != content)
  {
    self->_hideForegroundContent = content;
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
  }
}

- (void)setBackdropAware:(BOOL)aware
{
  if (self->_isBackdropAware != aware)
  {
    self->_isBackdropAware = aware;
    [(PLKLegibilityView *)self noteBackdropAwarenessTraitDidUpdate];
  }
}

- (void)setTraitBasedBackdropAwarenessEnabled:(BOOL)enabled
{
  if (self->_isTraitBasedBackdropAwarenessEnabled != enabled)
  {
    self->_isTraitBasedBackdropAwarenessEnabled = enabled;
    [(PLKLegibilityView *)self noteBackdropAwarenessTraitDidUpdate];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(_PFTImageView *)self->_contentView image];
  v5 = image;
  if (image == imageCopy || [imageCopy isEqual:image])
  {
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
  }

  else
  {
    [(_PFTImageView *)self->_contentView setImage:imageCopy];
    traitCollection = [(PLKLegibilityView *)self traitCollection];
    [traitCollection displayScale];
    v8 = v7;

    [(PLKLegibilityView *)self bounds];
    [(UIView *)self->_containerView plk_setBoundsAndPositionFromFrame:?];
    [imageCopy size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    [(UIView *)self->_contentView plk_setBoundsAndPositionFromFrame:v8];
    [(PLKLegibilityView *)self invalidateIntrinsicContentSize];
    [(PLKLegibilityView *)self _updateContentViewForLegibilityChanges];
    activeContentImageFuture = self->_activeContentImageFuture;
    self->_activeContentImageFuture = 0;
  }
}

- (void)setShadowImage:(id)image
{
  imageCopy = image;
  image = [(_PFTImageView *)self->_shadowView image];
  v5 = image;
  if (image == imageCopy || [imageCopy isEqual:image])
  {
    [(PLKLegibilityView *)self _updateShadowViewForLegibilityChanges];
  }

  else
  {
    [(_PFTImageView *)self->_shadowView setImage:imageCopy];
    traitCollection = [(PLKLegibilityView *)self traitCollection];
    [traitCollection displayScale];
    v8 = v7;

    [(PLKLegibilityView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [imageCopy size];
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

- (void)setContent:(id)content
{
  if (self->_content != content)
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

  traitCollection = [(PLKLegibilityView *)self traitCollection];
  plk_shouldBeBackdropAware = [traitCollection plk_shouldBeBackdropAware];

  if (!plk_shouldBeBackdropAware)
  {
    return self->_isBackdropAware;
  }

  bOOLValue = [plk_shouldBeBackdropAware BOOLValue];

  return bOOLValue;
}

- (void)_setLegibilityNeedsUpdate:(id)update
{
  updateCopy = update;
  BSDispatchQueueAssertMain();
  if (([updateCopy isEqualToLegibilityContent:self->_content] & 1) == 0)
  {
    v6 = PLKLogCommon();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v8 = PLKLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(PLKLegibilityView *)self _setLegibilityNeedsUpdate:updateCopy, v8];
      }
    }

    v9 = (self->_asyncUpdateCounter + 1);
    self->_asyncUpdateCounter = v9;
    objc_storeStrong(&self->_content, update);
    if (!self->_content || (+[PLKLegibilityContent noContent], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == updateCopy))
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
      contentImageFuture = [updateCopy contentImageFuture];
      if (contentImageFuture == self->_activeContentImageFuture)
      {
        [(PLKLegibilityView *)self setImage:0];
      }

      else
      {
        objc_storeStrong(&self->_activeContentImageFuture, contentImageFuture);
        v12 = self->_activeContentImageFuture;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__PLKLegibilityView__setLegibilityNeedsUpdate___block_invoke;
        v23[3] = &unk_27835B708;
        objc_copyWeak(v24, location);
        v24[1] = v9;
        v23[4] = v25;
        mainThreadScheduler = [MEMORY[0x277D3EC60] mainThreadScheduler];
        [(PFTFuture *)v12 addCompletionBlock:v23 scheduler:mainThreadScheduler];

        objc_destroyWeak(v24);
      }

      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v22 = 0;
      legibilityImageFuture = [updateCopy legibilityImageFuture];
      if (legibilityImageFuture == self->_activeLegibilityImageFuture)
      {
        [(PLKLegibilityView *)self setShadowImage:0];
      }

      else
      {
        objc_storeStrong(&self->_activeLegibilityImageFuture, legibilityImageFuture);
        v17 = self->_activeLegibilityImageFuture;
        v19 = MEMORY[0x277D85DD0];
        objc_copyWeak(v20, location);
        v20[1] = v9;
        mainThreadScheduler2 = [MEMORY[0x277D3EC60] mainThreadScheduler];
        [(PFTFuture *)v17 addCompletionBlock:&v19 scheduler:mainThreadScheduler2];

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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(_PFTImageView *)self->_contentView systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
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