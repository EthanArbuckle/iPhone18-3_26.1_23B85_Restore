@interface SBFluidSwitcherSpaceOverlayAccessoryView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)contentViewOffset;
- (SBFluidSwitcherSpaceOverlayAccessoryView)initWithDelegate:(id)a3;
- (SBFluidSwitcherSpaceOverlayAccessoryViewDelegate)delegate;
- (double)_inverseContentScale;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_configureDebugBorder;
- (void)_updateContentViewLayout;
- (void)_updateFocusIndicator;
- (void)_updateFooterAnimated:(BOOL)a3;
- (void)_updateFooterVisibility;
- (void)configureOverlayForAppLayout:(id)a3 iconZoomWithView:(id)a4 crossfadeViews:(id)a5;
- (void)dealloc;
- (void)genieEffectViewDidInvalidate:(id)a3;
- (void)itemContainerFooterView:(id)a3 didSelectTitleItem:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeIconOverlay;
- (void)setContentScale:(double)a3;
- (void)setContentViewOffset:(CGPoint)a3;
- (void)setContentViewScale:(double)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDrawsFocusIndicator:(BOOL)a3;
- (void)setDrawsFooter:(BOOL)a3;
- (void)setFooterStyle:(unint64_t)a3;
- (void)setGenieAttributes:(id)a3 mode:(int64_t)a4 completion:(id)a5;
- (void)setHomeGrabberView:(id)a3;
- (void)setIconOpacity:(double)a3;
- (void)setShelfViewController:(id)a3;
- (void)setTitleAndIconOpacity:(double)a3;
- (void)setTitleItems:(id)a3 animated:(BOOL)a4;
- (void)setTitleOpacity:(double)a3;
@end

@implementation SBFluidSwitcherSpaceOverlayAccessoryView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  [(SBFTouchPassThroughClippingView *)&v28 layoutSubviews];
  [(SBFluidSwitcherSpaceOverlayAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self traitCollection];
  [v11 displayScale];

  [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateContentViewLayout];
  genieEffectView = self->_genieEffectView;
  if (genieEffectView)
  {
    [(SBSwitcherGenieEffectView *)genieEffectView setBounds:v4, v6, v8, v10];
    v13 = self->_genieEffectView;
    UIRectGetCenter();
    [(SBSwitcherGenieEffectView *)v13 setCenter:?];
  }

  homeGrabberView = self->_homeGrabberView;
  if (homeGrabberView)
  {
    [(SBHomeGrabberRotationView *)homeGrabberView setFrame:v4, v6, v8, v10];
  }

  focusIndicatorLayer = self->_focusIndicatorLayer;
  if (focusIndicatorLayer)
  {
    [(CAShapeLayer *)focusIndicatorLayer setFrame:v4, v6, v8, v10];
    v16 = self->_focusIndicatorLayer;
    v17 = [MEMORY[0x277D75208] _bezierPathWithPillRect:v4 cornerRadius:{v6, v8, v10, self->_cornerRadius}];
    -[CAShapeLayer setPath:](v16, "setPath:", [v17 CGPath]);
  }

  if (self->_footerView)
  {
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _inverseContentScale];
    v19 = v18;
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    CGRectGetWidth(v29);
    [(SBFluidSwitcherItemContainerFooterView *)self->_footerView intrinsicContentSize];
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    CGRectGetMidX(v30);
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    CGRectGetMaxY(v31);
    UIRectIntegralWithScale();
    [(SBFluidSwitcherItemContainerFooterView *)self->_footerView sb_setBoundsAndPositionFromFrame:?];
    footerView = self->_footerView;
    CGAffineTransformMakeScale(&v27, v19, v19);
    [(SBFluidSwitcherItemContainerFooterView *)footerView setTransform:&v27];
  }

  iconOverlayView = self->_iconOverlayView;
  if (iconOverlayView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained overlayAccessoryViewFrameForIconOverlayView:self fullPresented:0];
    [(BSUIOrientationTransformWrapperView *)iconOverlayView setFrame:?];

    v23 = self->_iconOverlayView;
    if (v23)
    {
      [(SBFluidSwitcherIconOverlayView *)v23 setCornerRadius:self->_cornerRadius];
    }
  }

  if (self->_genieEffectView)
  {
    [(SBFTouchPassThroughClippingView *)self bringSubviewToFront:?];
  }

  if (self->_footerView)
  {
    [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:?];
  }

  shelfViewController = self->_shelfViewController;
  if (shelfViewController)
  {
    contentView = self->_contentView;
    v26 = [(SBSwitcherShelfViewController *)shelfViewController view];
    [(SBFTouchPassThroughView *)contentView bringSubviewToFront:v26];
  }

  if (self->_homeGrabberView)
  {
    [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:?];
  }

  if (self->_iconOverlayView)
  {
    [(SBFTouchPassThroughView *)self->_contentView bringSubviewToFront:?];
  }
}

- (void)_updateContentViewLayout
{
  [(SBFluidSwitcherSpaceOverlayAccessoryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  v12 = v11 + self->_contentViewOffset.x;
  v14 = v13 + self->_contentViewOffset.y;
  [(SBFTouchPassThroughView *)self->_contentView setBounds:v4, v6, v8, v10];
  contentView = self->_contentView;

  [(SBFTouchPassThroughView *)contentView setCenter:v12, v14];
}

- (SBFluidSwitcherSpaceOverlayAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)removeIconOverlay
{
  iconOverlayView = self->_iconOverlayView;
  if (iconOverlayView)
  {
    [(SBFluidSwitcherIconOverlayView *)iconOverlayView invalidate];
    [(SBFluidSwitcherIconOverlayView *)self->_iconOverlayView removeFromSuperview];
    v4 = self->_iconOverlayView;
    self->_iconOverlayView = 0;

    appLayoutForIconOverlay = self->_appLayoutForIconOverlay;
    self->_appLayoutForIconOverlay = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained overlayAccessoryView:self didUpdateShowingIconOverlay:0];
  }
}

- (SBFluidSwitcherSpaceOverlayAccessoryView)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(SBFTouchPassThroughClippingView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v4);
    v11 = +[SBAppSwitcherDomain rootSettings];
    settings = v10->_settings;
    v10->_settings = v11;

    v10->_iconOpacity = 1.0;
    v10->_titleAndIconOpacity = 1.0;
    v10->_titleOpacity = 1.0;
    v10->_contentViewScale = 1.0;
    v10->_footerStyle = 0;
    v13 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v5, v6, v7, v8}];
    contentView = v10->_contentView;
    v10->_contentView = v13;

    v15 = v10->_contentView;
    v16 = [MEMORY[0x277D75348] clearColor];
    [(SBFTouchPassThroughView *)v15 setBackgroundColor:v16];

    [(SBFTouchPassThroughClippingView *)v10 addSubview:v10->_contentView];
  }

  return v10;
}

- (void)dealloc
{
  [(SBFluidSwitcherSpaceOverlayAccessoryView *)self prepareForReuse];
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  [(SBFluidSwitcherSpaceOverlayAccessoryView *)&v3 dealloc];
}

- (void)setDrawsFocusIndicator:(BOOL)a3
{
  if (self->_drawsFocusIndicator != a3)
  {
    self->_drawsFocusIndicator = a3;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFocusIndicator];
  }
}

- (void)setDrawsFooter:(BOOL)a3
{
  if (self->_drawsFooter != a3)
  {
    self->_drawsFooter = a3;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterVisibility];
  }
}

- (void)setTitleItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  titleItems = self->_titleItems;
  if (titleItems != v6)
  {
    v11 = v6;
    v8 = [(NSArray *)titleItems isEqual:v6];
    v6 = v11;
    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)v11 copy];
      v10 = self->_titleItems;
      self->_titleItems = v9;

      [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:v4];
      v6 = v11;
    }
  }
}

- (void)setTitleAndIconOpacity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleAndIconOpacity = a3;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:1];
  }
}

- (void)setTitleOpacity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleOpacity = a3;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:1];
  }
}

- (void)setIconOpacity:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconOpacity = a3;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:1];
  }
}

- (void)setContentScale:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentScale = a3;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  [(SBFTouchPassThroughClippingView *)&v5 _setContinuousCornerRadius:?];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerRadius = a3;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
  }
}

- (void)setHomeGrabberView:(id)a3
{
  v5 = a3;
  homeGrabberView = self->_homeGrabberView;
  if (homeGrabberView != v5)
  {
    if (homeGrabberView)
    {
      [(SBHomeGrabberRotationView *)homeGrabberView removeFromSuperview];
    }

    objc_storeStrong(&self->_homeGrabberView, a3);
    if (self->_homeGrabberView)
    {
      [(SBFTouchPassThroughView *)self->_contentView addSubview:?];
    }

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __63__SBFluidSwitcherSpaceOverlayAccessoryView_setHomeGrabberView___block_invoke;
      v7[3] = &unk_2783A8C18;
      v7[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v7];
    }

    else
    {
      [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layoutIfNeeded];
    }
  }
}

- (void)configureOverlayForAppLayout:(id)a3 iconZoomWithView:(id)a4 crossfadeViews:(id)a5
{
  v32 = a3;
  v8 = a4;
  v31 = a5;
  v9 = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self delegate];
  v10 = 1;
  [v9 overlayAccessoryViewFrameForIconOverlayView:self fullPresented:1];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v9 overlayAccessoryViewHomeScreenInterfaceOrientation:self];
  v20 = [v9 overlayAccessoryViewSwitcherInterfaceOrientation:self];
  v21 = [(SBFluidSwitcherIconOverlayView *)self->_iconOverlayView iconView];
  v22 = [v21 hasSameOriginatingIconAsForIconZoomingView:v8];

  iconOverlayView = self->_iconOverlayView;
  v24 = iconOverlayView != 0;
  [(SBFluidSwitcherIconOverlayView *)iconOverlayView crossfadeViewFrame];
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  v25 = CGRectEqualToRect(v34, v35);
  if ([(BSUIOrientationTransformWrapperView *)self->_iconOverlayView contentOrientation]== v19)
  {
    v10 = [(BSUIOrientationTransformWrapperView *)self->_iconOverlayView containerOrientation]!= v20;
  }

  if (v8 && (v10 || (v24 & v22 & v25 & 1) == 0))
  {
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self removeIconOverlay];
    v26 = v31;
    v27 = [[SBFluidSwitcherIconOverlayView alloc] initWithIconView:v8 crossfadeViews:v31 crossfadeViewFrame:v19 contentOrientation:v20 containerOrientation:v12, v14, v16, v18];
    v28 = self->_iconOverlayView;
    self->_iconOverlayView = v27;

    [(SBFTouchPassThroughView *)self->_contentView addSubview:self->_iconOverlayView];
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layoutIfNeeded];
    objc_storeStrong(&self->_appLayoutForIconOverlay, a3);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained overlayAccessoryView:self didUpdateShowingIconOverlay:1];
  }

  else
  {
    WeakRetained = self->_appLayoutForIconOverlay;
    self->_appLayoutForIconOverlay = 0;
    v26 = v31;
  }
}

- (void)setShelfViewController:(id)a3
{
  v5 = a3;
  shelfViewController = self->_shelfViewController;
  if (shelfViewController != v5)
  {
    v12 = v5;
    v7 = shelfViewController;
    v8 = v7;
    if (v7)
    {
      v9 = [(SBSwitcherShelfViewController *)v7 view];
      [v9 removeFromSuperview];
    }

    objc_storeStrong(&self->_shelfViewController, a3);
    contentView = self->_contentView;
    v11 = [(SBSwitcherShelfViewController *)self->_shelfViewController view];
    [(SBFTouchPassThroughView *)contentView addSubview:v11];

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
    v5 = v12;
  }
}

- (void)setContentViewScale:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentViewScale = a3;
    contentView = self->_contentView;
    CGAffineTransformMakeScale(&v6, a3, a3);
    [(SBFTouchPassThroughView *)contentView setTransform:&v6];
  }
}

- (void)setContentViewOffset:(CGPoint)a3
{
  if (a3.x != self->_contentViewOffset.x || a3.y != self->_contentViewOffset.y)
  {
    self->_contentViewOffset = a3;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateContentViewLayout];
  }
}

- (void)prepareForReuse
{
  homeGrabberView = self->_homeGrabberView;
  if (homeGrabberView)
  {
    [(SBHomeGrabberRotationView *)homeGrabberView removeFromSuperview];
    v4 = self->_homeGrabberView;
    self->_homeGrabberView = 0;
  }

  shelfViewController = self->_shelfViewController;
  if (shelfViewController)
  {
    v6 = [(SBSwitcherShelfViewController *)shelfViewController view];
    [v6 removeFromSuperview];

    v7 = self->_shelfViewController;
    self->_shelfViewController = 0;
  }

  if (self->_footerView)
  {
    self->_drawsFooter = 0;
    [(SBFluidSwitcherItemContainerFooterView *)self->_footerView removeFromSuperview];
    footerView = self->_footerView;
    self->_footerView = 0;
  }

  if (self->_iconOverlayView)
  {
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self removeIconOverlay];
  }

  if (self->_wantsPointerInteractions)
  {
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setWantsPointerInteractions:0];
  }

  genieEffectView = self->_genieEffectView;

  [(SBSwitcherGenieEffectView *)genieEffectView invalidate];
}

- (void)setFooterStyle:(unint64_t)a3
{
  if (self->_footerStyle != a3)
  {
    self->_footerStyle = a3;
    [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setFooterStyle:?];

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
  }
}

- (void)setGenieAttributes:(id)a3 mode:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  genieEffectView = self->_genieEffectView;
  if (v8 && !genieEffectView)
  {
    v11 = [SBSwitcherGenieEffectView alloc];
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self bounds];
    v12 = [(SBSwitcherGenieEffectView *)v11 initWithFrame:self delegate:?];
    v13 = self->_genieEffectView;
    self->_genieEffectView = v12;

    [(SBSwitcherGenieEffectView *)self->_genieEffectView setPortaledContentShouldMatchSource:1];
    v14 = objc_opt_new();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [WeakRetained overlayAccessoryViewAdditionalGenieContentViews:self];
    v17 = [v16 bs_reverse];
    [v14 addObjectsFromArray:v17];

    [v14 addObject:self->_contentView];
    [(SBSwitcherGenieEffectView *)self->_genieEffectView setPortaledContentViews:v14];
    [(SBFTouchPassThroughClippingView *)self addSubview:self->_genieEffectView];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __79__SBFluidSwitcherSpaceOverlayAccessoryView_setGenieAttributes_mode_completion___block_invoke;
    v18[3] = &unk_2783A8C18;
    v18[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v18];

    genieEffectView = self->_genieEffectView;
  }

  if (genieEffectView)
  {
    [(SBSwitcherGenieEffectView *)genieEffectView setAttributes:v8 mode:a4 completion:v9];
  }

  else if (v9)
  {
    v9[2](v9, 1, 0);
  }
}

uint64_t __79__SBFluidSwitcherSpaceOverlayAccessoryView_setGenieAttributes_mode_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)itemContainerFooterView:(id)a3 didSelectTitleItem:(id)a4
{
  v5 = [(NSArray *)self->_titleItems indexOfObject:a4];
  switch(v5)
  {
    case 0uLL:
      goto LABEL_4;
    case 1uLL:
      v6 = &SBLayoutRoleSide;
      goto LABEL_6;
    case 0x7FFFFFFFFFFFFFFFuLL:
LABEL_4:
      v6 = &SBLayoutRolePrimary;
LABEL_6:
      v7 = *v6;
      goto LABEL_8;
  }

  v7 = v5 + 3;
LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained overlayAccessoryView:self didSelectHeaderForRole:v7];
}

- (void)genieEffectViewDidInvalidate:(id)a3
{
  genieEffectView = self->_genieEffectView;
  self->_genieEffectView = 0;
  v4 = a3;

  [v4 removeFromSuperview];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  if ([(SBFluidSwitcherSpaceOverlayAccessoryView *)&v12 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    footerView = self->_footerView;
    if (footerView && ([(SBFluidSwitcherItemContainerFooterView *)footerView alpha], BSFloatGreaterThanFloat()))
    {
      v10 = self->_footerView;
      [(SBFluidSwitcherSpaceOverlayAccessoryView *)self convertPoint:v10 toView:x, y];
      v8 = [(SBFluidSwitcherItemContainerFooterView *)v10 pointInside:v7 withEvent:?];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  v8 = [(SBFTouchPassThroughView *)&v13 hitTest:v7 withEvent:x, y];
  if (v8 || (footerView = self->_footerView) != 0 && ([(SBFluidSwitcherItemContainerFooterView *)footerView alpha], BSFloatGreaterThanFloat()) && (v11 = self->_footerView, [(SBFluidSwitcherSpaceOverlayAccessoryView *)self convertPoint:v11 toView:x, y], [(SBFTouchPassThroughView *)v11 hitTest:v7 withEvent:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateFocusIndicator
{
  drawsFocusIndicator = self->_drawsFocusIndicator;
  focusIndicatorLayer = self->_focusIndicatorLayer;
  [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _inverseContentScale];
  v6 = v5;
  IsZero = BSFloatIsZero();
  v8 = v6 + v6;
  v9 = 0.0;
  if (IsZero)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = [MEMORY[0x277D75348] clearColor];
  v12 = [v11 CGColor];

  if (drawsFocusIndicator)
  {
    if (!focusIndicatorLayer)
    {
      [(SBFluidSwitcherSpaceOverlayAccessoryView *)self bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = objc_alloc_init(MEMORY[0x277CD9F90]);
      v22 = self->_focusIndicatorLayer;
      self->_focusIndicatorLayer = v21;

      [(CAShapeLayer *)self->_focusIndicatorLayer setFillColor:v12];
      [(CAShapeLayer *)self->_focusIndicatorLayer setFrame:v14, v16, v18, v20];
      [(CAShapeLayer *)self->_focusIndicatorLayer setLineWidth:0.0];
      v23 = self->_focusIndicatorLayer;
      v24 = [MEMORY[0x277D75208] _bezierPathWithPillRect:v14 cornerRadius:{v16, v18, v20, self->_cornerRadius}];
      -[CAShapeLayer setPath:](v23, "setPath:", [v24 CGPath]);

      v25 = self->_focusIndicatorLayer;
      v26 = [MEMORY[0x277D75348] systemWhiteColor];
      -[CAShapeLayer setStrokeColor:](v25, "setStrokeColor:", [v26 CGColor]);

      v27 = [(SBFTouchPassThroughView *)self->_contentView layer];
      [v27 addSublayer:self->_focusIndicatorLayer];

      [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
    }

    v9 = v10;
  }

  v28 = self->_focusIndicatorLayer;

  [(CAShapeLayer *)v28 setLineWidth:v9];
}

- (void)_updateFooterVisibility
{
  v3 = ![(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:8]&& self->_drawsFooter;
  footerView = self->_footerView;
  if (v3 || !footerView)
  {
    if (v3 && footerView == 0)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __67__SBFluidSwitcherSpaceOverlayAccessoryView__updateFooterVisibility__block_invoke;
      v7[3] = &unk_2783A8C18;
      v7[4] = self;
      v6 = MEMORY[0x223D6F7F0](v7);
      if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
      {
        [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v6];
      }

      else
      {
        v6[2](v6);
      }
    }
  }

  else
  {
    [(SBFluidSwitcherItemContainerFooterView *)footerView removeFromSuperview];
    v5 = self->_footerView;
    self->_footerView = 0;
  }
}

uint64_t __67__SBFluidSwitcherSpaceOverlayAccessoryView__updateFooterVisibility__block_invoke(uint64_t a1)
{
  v2 = [SBFluidSwitcherItemContainerFooterView alloc];
  v3 = [(SBFluidSwitcherItemContainerFooterView *)v2 initWithFrame:*(a1 + 32) delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 480);
  *(v4 + 480) = v3;

  [*(*(a1 + 32) + 480) setIconAlignment:*(*(a1 + 32) + 576)];
  [*(*(a1 + 32) + 480) setFooterStyle:*(*(a1 + 32) + 608)];
  [*(*(a1 + 32) + 480) setUniqueIconsOnly:*(*(a1 + 32) + 521)];
  [*(*(a1 + 32) + 480) setIconHitTestOutset:*(*(a1 + 32) + 568)];
  v6 = [*(*(a1 + 32) + 480) layer];
  [v6 setAnchorPoint:{0.5, 0.0}];

  [*(*(a1 + 32) + 464) insertSubview:*(*(a1 + 32) + 480) atIndex:0];
  [*(a1 + 32) _updateFooterAnimated:0];
  [*(a1 + 32) setNeedsLayout];
  v7 = *(a1 + 32);

  return [v7 layoutIfNeeded];
}

- (void)_updateFooterAnimated:(BOOL)a3
{
  v3 = a3;
  [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setAlpha:self->_titleAndIconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setIconAlpha:self->_iconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setTextAlpha:self->_titleOpacity];
  footerView = self->_footerView;
  titleItems = self->_titleItems;

  [(SBFluidSwitcherItemContainerFooterView *)footerView setTitleItems:titleItems animated:v3];
}

- (double)_inverseContentScale
{
  IsZero = BSFloatIsZero();
  result = 1.0;
  if ((IsZero & 1) == 0)
  {
    return 1.0 / self->_contentScale;
  }

  return result;
}

- (void)_configureDebugBorder
{
  v14[7] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] systemRedColor];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v14[1] = v4;
  v5 = [MEMORY[0x277D75348] systemYellowColor];
  v14[2] = v5;
  v6 = [MEMORY[0x277D75348] systemMintColor];
  v14[3] = v6;
  v7 = [MEMORY[0x277D75348] systemPurpleColor];
  v14[4] = v7;
  v8 = [MEMORY[0x277D75348] systemOrangeColor];
  v14[5] = v8;
  v9 = [MEMORY[0x277D75348] systemIndigoColor];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];

  v11 = [v10 objectAtIndex:{arc4random() % objc_msgSend(v10, "count")}];
  v12 = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layer];
  [v12 setBorderColor:{objc_msgSend(v11, "cgColor")}];

  v13 = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layer];
  [v13 setBorderWidth:8.0];
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