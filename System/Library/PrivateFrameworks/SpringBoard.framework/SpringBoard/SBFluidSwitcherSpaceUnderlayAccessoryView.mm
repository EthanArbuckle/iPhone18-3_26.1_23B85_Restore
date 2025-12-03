@interface SBFluidSwitcherSpaceUnderlayAccessoryView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldBeginPointerInteractionRequest:(id)request atLocation:(CGPoint)location forView:(id)view;
- (CGPoint)contentViewOffset;
- (CGPoint)resizeGrabberCenter;
- (CGRect)resizeGrabberBounds;
- (SBFluidSwitcherSpaceUnderlayAccessoryView)initWithDelegate:(id)delegate systemPointerInteractionManager:(id)manager;
- (SBFluidSwitcherSpaceUnderlayAccessoryViewDelegate)delegate;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)styleForRegion:(id)region forView:(id)view;
- (void)_configureDebugBorder;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewVisibility;
- (void)_updateContentView;
- (void)_updateHeaderAnimated:(BOOL)animated;
- (void)_updateResizeGrabber;
- (void)_updateResizeGrabberVisibility;
- (void)_updateShadowView;
- (void)_updateShadowVisibility;
- (void)dealloc;
- (void)itemContainerHeaderView:(id)view didSelectTitleItem:(id)item;
- (void)layoutSubviews;
- (void)setBackgroundOpacity:(double)opacity;
- (void)setContentScale:(double)scale;
- (void)setContentViewOffset:(CGPoint)offset;
- (void)setContentViewScale:(double)scale;
- (void)setCornerRadius:(double)radius;
- (void)setHeaderOpacity:(double)opacity updateMode:(int64_t)mode settings:(id)settings completion:(id)completion;
- (void)setKeyboardHeight:(double)height;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setResizeGrabberBounds:(CGRect)bounds;
- (void)setResizeGrabberCenter:(CGPoint)center;
- (void)setResizeGrabberOpacity:(double)opacity;
- (void)setShadowAlpha:(double)alpha;
- (void)setShadowOffset:(double)offset;
- (void)setShadowPath:(id)path;
- (void)setShadowStyle:(int64_t)style;
- (void)setTitleItems:(id)items animated:(BOOL)animated;
- (void)setTitleOpacity:(double)opacity;
@end

@implementation SBFluidSwitcherSpaceUnderlayAccessoryView

- (void)_updateBackgroundView
{
  [(UIView *)self->_backgroundView setAlpha:self->_backgroundOpacity];
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->_cornerRadius];
  layer = [(UIView *)self->_backgroundView layer];
  [layer setMaskedCorners:self->_maskedCorners];
}

- (void)_updateShadowView
{
  [(SBAppSwitcherPageShadowView *)self->_shadowView setStyle:self->_shadowStyle];
  [(SBAppSwitcherPageShadowView *)self->_shadowView setAlpha:self->_shadowAlpha];
  [(SBAppSwitcherPageShadowView *)self->_shadowView setShadowOffset:self->_shadowOffset];
  [(SBAppSwitcherPageShadowView *)self->_shadowView setShadowPath:self->_shadowPath];
  [(SBAppSwitcherPageShadowView *)self->_shadowView _setContinuousCornerRadius:self->_cornerRadius];
  layer = [(SBAppSwitcherPageShadowView *)self->_shadowView layer];
  [layer setMaskedCorners:self->_maskedCorners];

  shadowView = self->_shadowView;
  contentScale = self->_contentScale;

  [(SBAppSwitcherPageShadowView *)shadowView setSwitcherCardScale:contentScale];
}

- (void)_updateResizeGrabber
{
  [(SBSeparatorView *)self->_resizeGrabber setBounds:self->_resizeGrabberBounds.origin.x, self->_resizeGrabberBounds.origin.y, self->_resizeGrabberBounds.size.width, self->_resizeGrabberBounds.size.height];
  [(SBSeparatorView *)self->_resizeGrabber setCenter:self->_resizeGrabberCenter.x, self->_resizeGrabberCenter.y];
  [(SBSeparatorView *)self->_resizeGrabber setAlpha:self->_resizeGrabberOpacity];
  [(SBSeparatorView *)self->_resizeGrabber setKeyboardHeight:self->_keyboardHeight];
  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  nubView = [(SBSeparatorView *)self->_resizeGrabber nubView];
  if (BSFloatIsZero() & 1) != 0 || ([WeakRetained isViewRegistered:nubView])
  {
    if (BSFloatIsZero() && [WeakRetained isViewRegistered:nubView])
    {
      [WeakRetained unregisterView:nubView];
    }
  }

  else
  {
    [WeakRetained registerView:nubView delegate:self];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SBFluidSwitcherSpaceUnderlayAccessoryView;
  [(SBFTouchPassThroughClippingView *)&v28 layoutSubviews];
  [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBFTouchPassThroughView *)self->_contentView setBounds:?];
  UIRectGetCenter();
  [(SBFTouchPassThroughView *)self->_contentView setCenter:v11 + self->_contentViewOffset.x, v12 + self->_contentViewOffset.y];
  IsZero = BSFloatIsZero();
  v14 = 1.0;
  if (!IsZero)
  {
    v14 = 1.0 / self->_contentScale;
  }

  v26 = v14;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  CGRectGetWidth(v29);
  layer = [(SBFluidSwitcherItemContainerHeaderView *)self->_headerView layer];
  [layer anchorPoint];

  [(SBFluidSwitcherItemContainerHeaderView *)self->_headerView preferredHeaderHeight];
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  CGRectGetMinX(v30);
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  CGRectGetMinY(v31);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIRectIntegralWithScale();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(SBFluidSwitcherItemContainerHeaderView *)self->_headerView sb_setBoundsAndPositionFromFrame:v18, v20, v22, v24];
  headerView = self->_headerView;
  CGAffineTransformMakeScale(&v27, v26, v26);
  [(SBFluidSwitcherItemContainerHeaderView *)headerView setTransform:&v27];
  [(UIView *)self->_backgroundView sb_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
  [(SBAppSwitcherPageShadowView *)self->_shadowView sb_setBoundsAndPositionFromFrame:v4, v6, v8, v10];
  [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:self->_shadowView];
  [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:self->_backgroundView];
  [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:self->_resizeGrabber];
  [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:self->_headerView];
}

- (void)_updateBackgroundViewVisibility
{
  if (!self->_backgroundView)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__SBFluidSwitcherSpaceUnderlayAccessoryView__updateBackgroundViewVisibility__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v4];
  }
}

uint64_t __76__SBFluidSwitcherSpaceUnderlayAccessoryView__updateBackgroundViewVisibility__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  [*(a1 + 32) bounds];
  v3 = [v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 504);
  *(v4 + 504) = v3;

  v6 = *(*(a1 + 32) + 504);
  v7 = [MEMORY[0x277D75348] blackColor];
  [v6 setBackgroundColor:v7];

  [*(a1 + 32) _updateBackgroundView];
  [*(*(a1 + 32) + 464) addSubview:*(*(a1 + 32) + 504)];
  [*(a1 + 32) setNeedsLayout];
  v8 = *(a1 + 32);

  return [v8 layoutIfNeeded];
}

- (void)_updateShadowVisibility
{
  v3 = [(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:32];
  shadowView = self->_shadowView;
  if (v3)
  {
    if (shadowView)
    {
      [(SBAppSwitcherPageShadowView *)shadowView removeFromSuperview];
      v5 = self->_shadowView;
      self->_shadowView = 0;
    }
  }

  else if (!shadowView)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__SBFluidSwitcherSpaceUnderlayAccessoryView__updateShadowVisibility__block_invoke;
    v6[3] = &unk_2783A8C18;
    v6[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v6];
  }
}

uint64_t __68__SBFluidSwitcherSpaceUnderlayAccessoryView__updateShadowVisibility__block_invoke(uint64_t a1)
{
  v2 = [SBAppSwitcherPageShadowView alloc];
  [*(a1 + 32) bounds];
  v3 = [(SBAppSwitcherPageShadowView *)v2 initWithFrame:*(*(a1 + 32) + 624) style:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 512);
  *(v4 + 512) = v3;

  [*(a1 + 32) _updateShadowView];
  [*(*(a1 + 32) + 464) addSubview:*(*(a1 + 32) + 512)];
  [*(a1 + 32) setNeedsLayout];
  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

- (void)_updateResizeGrabberVisibility
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2 || self->_resizeGrabber)
    {
      return;
    }

    goto LABEL_7;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    resizeGrabber = self->_resizeGrabber;

    if (resizeGrabber)
    {
      return;
    }

LABEL_7:
    v4 = [SBSeparatorView alloc];
    v5 = [(SBSeparatorView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_resizeGrabber;
    self->_resizeGrabber = v5;

    [(SBSeparatorView *)self->_resizeGrabber setAccessibilityIdentifier:@"SideAppDivider"];
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateResizeGrabber];
    contentView = self->_contentView;
    v8 = self->_resizeGrabber;

    [(SBFTouchPassThroughView *)contentView addSubview:v8];
    return;
  }
}

- (SBFluidSwitcherSpaceUnderlayAccessoryView)initWithDelegate:(id)delegate systemPointerInteractionManager:(id)manager
{
  delegateCopy = delegate;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = SBFluidSwitcherSpaceUnderlayAccessoryView;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [(SBFTouchPassThroughClippingView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], v9, v10, v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = +[SBAppSwitcherDomain rootSettings];
    settings = v13->_settings;
    v13->_settings = v14;

    objc_storeWeak(&v13->_systemPointerInteractionManager, managerCopy);
    v13->_titleOpacity = 1.0;
    v13->_backgroundOpacity = 0.0;
    v13->_shadowStyle = 1;
    v13->_contentViewScale = 1.0;
    v16 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v8, v9, v10, v11}];
    contentView = v13->_contentView;
    v13->_contentView = v16;

    v18 = v13->_contentView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBFTouchPassThroughView *)v18 setBackgroundColor:clearColor];

    [(SBFTouchPassThroughClippingView *)v13 addSubview:v13->_contentView];
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)v13 _updateBackgroundViewVisibility];
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)v13 _updateShadowVisibility];
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)v13 _updateResizeGrabberVisibility];
  }

  return v13;
}

- (void)dealloc
{
  [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self prepareForReuse];
  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  nubView = [(SBSeparatorView *)self->_resizeGrabber nubView];
  [WeakRetained unregisterView:nubView];

  v5.receiver = self;
  v5.super_class = SBFluidSwitcherSpaceUnderlayAccessoryView;
  [(SBFluidSwitcherSpaceUnderlayAccessoryView *)&v5 dealloc];
}

- (void)setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherSpaceUnderlayAccessoryView;
  [(SBFTouchPassThroughClippingView *)&v5 _setContinuousCornerRadius:?];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerRadius = radius;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateBackgroundView];
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
  }
}

- (void)setMaskedCorners:(unint64_t)corners
{
  if (self->_maskedCorners != corners)
  {
    self->_maskedCorners = corners;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateBackgroundView];

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
  }
}

- (void)setContentScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentScale = scale;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self setNeedsLayout];

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self layoutIfNeeded];
  }
}

- (void)setKeyboardHeight:(double)height
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_keyboardHeight = height;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateResizeGrabber];
  }
}

- (void)setHeaderOpacity:(double)opacity updateMode:(int64_t)mode settings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  if (BSFloatEqualToFloat())
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    self->_headerOpacity = opacity;
    IsZero = BSFloatIsZero();
    headerView = self->_headerView;
    if (IsZero)
    {
      if (headerView)
      {
        objc_initWeak(&location, self);
        v14 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __93__SBFluidSwitcherSpaceUnderlayAccessoryView_setHeaderOpacity_updateMode_settings_completion___block_invoke_3;
        v18[3] = &unk_2783A8C18;
        v18[4] = self;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __93__SBFluidSwitcherSpaceUnderlayAccessoryView_setHeaderOpacity_updateMode_settings_completion___block_invoke_4;
        v15[3] = &unk_2783AEC78;
        objc_copyWeak(&v17, &location);
        v16 = completionCopy;
        [v14 sb_animateWithSettings:settingsCopy mode:mode animations:v18 completion:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (!headerView)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __93__SBFluidSwitcherSpaceUnderlayAccessoryView_setHeaderOpacity_updateMode_settings_completion___block_invoke;
        v21[3] = &unk_2783A8C18;
        v21[4] = self;
        [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v21];
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __93__SBFluidSwitcherSpaceUnderlayAccessoryView_setHeaderOpacity_updateMode_settings_completion___block_invoke_2;
      v20[3] = &unk_2783A8C18;
      v20[4] = self;
      [MEMORY[0x277D75D18] sb_animateWithSettings:settingsCopy mode:mode animations:v20 completion:completionCopy];
    }
  }
}

uint64_t __93__SBFluidSwitcherSpaceUnderlayAccessoryView_setHeaderOpacity_updateMode_settings_completion___block_invoke(uint64_t a1)
{
  v2 = [SBFluidSwitcherItemContainerHeaderView alloc];
  v3 = [(SBFluidSwitcherItemContainerHeaderView *)v2 initWithFrame:*(a1 + 32) delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 488);
  *(v4 + 488) = v3;

  [*(*(a1 + 32) + 488) setAlpha:0.0];
  v6 = [*(*(a1 + 32) + 488) layer];
  v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v8 = 1.0;
  if (v7 != 1)
  {
    v8 = 0.0;
  }

  [v6 setAnchorPoint:{v8, 0.0}];

  [*(*(a1 + 32) + 464) addSubview:*(*(a1 + 32) + 488)];
  [*(a1 + 32) _updateHeaderAnimated:0];
  [*(a1 + 32) setNeedsLayout];
  v9 = *(a1 + 32);

  return [v9 layoutIfNeeded];
}

void __93__SBFluidSwitcherSpaceUnderlayAccessoryView_setHeaderOpacity_updateMode_settings_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  --setHeaderOpacity_updateMode_settings_completion__staticHeaderOpacityAnimations;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[61] alpha];
    IsZero = BSFloatIsZero();
    v7 = v12;
    if (IsZero && setHeaderOpacity_updateMode_settings_completion__staticHeaderOpacityAnimations == 0)
    {
      [v12[61] removeFromSuperview];
      v10 = v12[61];
      v12[61] = 0;

      v7 = v12;
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3);
    v7 = v12;
  }
}

- (void)setTitleItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if ((BSEqualArrays() & 1) == 0)
  {
    v6 = [itemsCopy copy];
    titleItems = self->_titleItems;
    self->_titleItems = v6;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateHeaderAnimated:animatedCopy];
  }
}

- (void)setTitleOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleOpacity = opacity;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateHeaderAnimated:0];
  }
}

- (void)setBackgroundOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_backgroundOpacity = opacity;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateBackgroundView];
  }
}

- (void)setShadowStyle:(int64_t)style
{
  if (self->_shadowStyle != style)
  {
    self->_shadowStyle = style;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
  }
}

- (void)setShadowAlpha:(double)alpha
{
  if (self->_shadowAlpha != alpha)
  {
    self->_shadowAlpha = alpha;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
  }
}

- (void)setShadowOffset:(double)offset
{
  if (self->_shadowOffset != offset)
  {
    self->_shadowOffset = offset;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
  }
}

- (void)setShadowPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqual:self->_shadowPath] & 1) == 0)
  {
    objc_storeStrong(&self->_shadowPath, path);
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateShadowView];
  }
}

- (void)setContentViewScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentViewScale = scale;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateContentView];
  }
}

- (void)setContentViewOffset:(CGPoint)offset
{
  if (offset.x != self->_contentViewOffset.x || offset.y != self->_contentViewOffset.y)
  {
    self->_contentViewOffset = offset;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self setNeedsLayout];

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self layoutIfNeeded];
  }
}

- (void)setResizeGrabberBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_resizeGrabberBounds = &self->_resizeGrabberBounds;
  if (!CGRectEqualToRect(bounds, self->_resizeGrabberBounds))
  {
    p_resizeGrabberBounds->origin.x = x;
    p_resizeGrabberBounds->origin.y = y;
    p_resizeGrabberBounds->size.width = width;
    p_resizeGrabberBounds->size.height = height;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateResizeGrabber];
  }
}

- (void)setResizeGrabberCenter:(CGPoint)center
{
  if (center.x != self->_resizeGrabberCenter.x || center.y != self->_resizeGrabberCenter.y)
  {
    self->_resizeGrabberCenter = center;
    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateResizeGrabber];
  }
}

- (void)setResizeGrabberOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_resizeGrabberOpacity = opacity;

    [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self _updateResizeGrabber];
  }
}

- (void)itemContainerHeaderView:(id)view didSelectTitleItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  if (itemCopy)
  {
    v7 = &SBLayoutRolePrimary;
    if ([(NSArray *)self->_titleItems count]>= 2)
    {
      v8 = [(NSArray *)self->_titleItems objectAtIndex:1];

      if (v8 == itemCopy)
      {
        v7 = &SBLayoutRoleSide;
      }
    }

    v9 = *v7;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained underlayAccessoryView:self didSelectHeaderForRole:v9];
  }
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)request atLocation:(CGPoint)location forView:(id)view
{
  viewCopy = view;
  if ([request _isPencilInitiated])
  {
    isKindOfClass = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained underlayAccessoryViewShouldBeginPointerInteraction:self])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)view
{
  v3 = -20.0;
  v4 = -20.0;
  v5 = -20.0;
  v6 = -20.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)styleForRegion:(id)region forView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, viewCopy);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v6];
    v8 = [MEMORY[0x277D75860] effectWithPreview:v7];
    [v6 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = +[SBMedusaDomain rootSettings];
    [v17 medusaSeparatorCursorEdgeInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v30.origin.x = v10 + v21;
    v30.origin.y = v12 + v19;
    v30.size.width = v14 - (v21 + v25);
    v30.size.height = v16 - (v19 + v23);
    v26 = [MEMORY[0x277D75888] shapeWithRoundedRect:v30.origin.x cornerRadius:{v30.origin.y, v30.size.width, v30.size.height, CGRectGetHeight(v30) * 0.5}];
    v27 = [MEMORY[0x277D75890] styleWithEffect:v8 shape:v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBFluidSwitcherSpaceUnderlayAccessoryView;
  if ([(SBFluidSwitcherSpaceUnderlayAccessoryView *)&v11 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    [(SBFluidSwitcherItemContainerHeaderView *)self->_headerView alpha];
    if (BSFloatGreaterThanFloat())
    {
      headerView = self->_headerView;
      [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self convertPoint:headerView toView:x, y];
      v8 = [(SBFluidSwitcherItemContainerHeaderView *)headerView pointInside:eventCopy withEvent:?];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherSpaceUnderlayAccessoryView;
  v8 = [(SBFTouchPassThroughView *)&v12 hitTest:eventCopy withEvent:x, y];
  if (v8 || ([(SBFluidSwitcherItemContainerHeaderView *)self->_headerView alpha], BSFloatGreaterThanFloat()) && (headerView = self->_headerView, [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self convertPoint:headerView toView:x, y], [(SBFluidSwitcherItemContainerHeaderView *)headerView hitTest:eventCopy withEvent:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateContentView
{
  contentView = self->_contentView;
  CGAffineTransformMakeScale(&v3, self->_contentViewScale, self->_contentViewScale);
  [(SBFTouchPassThroughView *)contentView setTransform:&v3];
}

- (void)_updateHeaderAnimated:(BOOL)animated
{
  [(SBFluidSwitcherItemContainerHeaderView *)self->_headerView setTextAlpha:animated, self->_titleOpacity];
  headerView = self->_headerView;
  titleItems = self->_titleItems;

  [(SBFluidSwitcherItemContainerHeaderView *)headerView setTitleItems:titleItems animated:0];
}

- (void)_configureDebugBorder
{
  v14[7] = *MEMORY[0x277D85DE8];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v14[1] = systemBlueColor;
  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  v14[2] = systemYellowColor;
  systemMintColor = [MEMORY[0x277D75348] systemMintColor];
  v14[3] = systemMintColor;
  systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
  v14[4] = systemPurpleColor;
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  v14[5] = systemOrangeColor;
  systemIndigoColor = [MEMORY[0x277D75348] systemIndigoColor];
  v14[6] = systemIndigoColor;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];

  v11 = [v10 objectAtIndex:{arc4random() % objc_msgSend(v10, "count")}];
  layer = [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self layer];
  [layer setBorderColor:{objc_msgSend(v11, "cgColor")}];

  layer2 = [(SBFluidSwitcherSpaceUnderlayAccessoryView *)self layer];
  [layer2 setBorderWidth:8.0];
}

- (SBFluidSwitcherSpaceUnderlayAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)resizeGrabberBounds
{
  x = self->_resizeGrabberBounds.origin.x;
  y = self->_resizeGrabberBounds.origin.y;
  width = self->_resizeGrabberBounds.size.width;
  height = self->_resizeGrabberBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)resizeGrabberCenter
{
  x = self->_resizeGrabberCenter.x;
  y = self->_resizeGrabberCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentViewOffset
{
  x = self->_contentViewOffset.x;
  y = self->_contentViewOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end