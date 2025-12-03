@interface SBFluidSwitcherSpaceOverlayAccessoryView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)contentViewOffset;
- (SBFluidSwitcherSpaceOverlayAccessoryView)initWithDelegate:(id)delegate;
- (SBFluidSwitcherSpaceOverlayAccessoryViewDelegate)delegate;
- (double)_inverseContentScale;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_configureDebugBorder;
- (void)_updateContentViewLayout;
- (void)_updateFocusIndicator;
- (void)_updateFooterAnimated:(BOOL)animated;
- (void)_updateFooterVisibility;
- (void)configureOverlayForAppLayout:(id)layout iconZoomWithView:(id)view crossfadeViews:(id)views;
- (void)dealloc;
- (void)genieEffectViewDidInvalidate:(id)invalidate;
- (void)itemContainerFooterView:(id)view didSelectTitleItem:(id)item;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)removeIconOverlay;
- (void)setContentScale:(double)scale;
- (void)setContentViewOffset:(CGPoint)offset;
- (void)setContentViewScale:(double)scale;
- (void)setCornerRadius:(double)radius;
- (void)setDrawsFocusIndicator:(BOOL)indicator;
- (void)setDrawsFooter:(BOOL)footer;
- (void)setFooterStyle:(unint64_t)style;
- (void)setGenieAttributes:(id)attributes mode:(int64_t)mode completion:(id)completion;
- (void)setHomeGrabberView:(id)view;
- (void)setIconOpacity:(double)opacity;
- (void)setShelfViewController:(id)controller;
- (void)setTitleAndIconOpacity:(double)opacity;
- (void)setTitleItems:(id)items animated:(BOOL)animated;
- (void)setTitleOpacity:(double)opacity;
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
  traitCollection = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self traitCollection];
  [traitCollection displayScale];

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
    view = [(SBSwitcherShelfViewController *)shelfViewController view];
    [(SBFTouchPassThroughView *)contentView bringSubviewToFront:view];
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

- (SBFluidSwitcherSpaceOverlayAccessoryView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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
    objc_storeWeak(&v9->_delegate, delegateCopy);
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBFTouchPassThroughView *)v15 setBackgroundColor:clearColor];

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

- (void)setDrawsFocusIndicator:(BOOL)indicator
{
  if (self->_drawsFocusIndicator != indicator)
  {
    self->_drawsFocusIndicator = indicator;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFocusIndicator];
  }
}

- (void)setDrawsFooter:(BOOL)footer
{
  if (self->_drawsFooter != footer)
  {
    self->_drawsFooter = footer;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterVisibility];
  }
}

- (void)setTitleItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  titleItems = self->_titleItems;
  if (titleItems != itemsCopy)
  {
    v11 = itemsCopy;
    v8 = [(NSArray *)titleItems isEqual:itemsCopy];
    itemsCopy = v11;
    if ((v8 & 1) == 0)
    {
      v9 = [(NSArray *)v11 copy];
      v10 = self->_titleItems;
      self->_titleItems = v9;

      [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:animatedCopy];
      itemsCopy = v11;
    }
  }
}

- (void)setTitleAndIconOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleAndIconOpacity = opacity;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:1];
  }
}

- (void)setTitleOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_titleOpacity = opacity;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:1];
  }
}

- (void)setIconOpacity:(double)opacity
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconOpacity = opacity;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self _updateFooterAnimated:1];
  }
}

- (void)setContentScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentScale = scale;

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  [(SBFTouchPassThroughClippingView *)&v5 _setContinuousCornerRadius:?];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerRadius = radius;
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
  }
}

- (void)setHomeGrabberView:(id)view
{
  viewCopy = view;
  homeGrabberView = self->_homeGrabberView;
  if (homeGrabberView != viewCopy)
  {
    if (homeGrabberView)
    {
      [(SBHomeGrabberRotationView *)homeGrabberView removeFromSuperview];
    }

    objc_storeStrong(&self->_homeGrabberView, view);
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

- (void)configureOverlayForAppLayout:(id)layout iconZoomWithView:(id)view crossfadeViews:(id)views
{
  layoutCopy = layout;
  viewCopy = view;
  viewsCopy = views;
  delegate = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self delegate];
  v10 = 1;
  [delegate overlayAccessoryViewFrameForIconOverlayView:self fullPresented:1];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [delegate overlayAccessoryViewHomeScreenInterfaceOrientation:self];
  v20 = [delegate overlayAccessoryViewSwitcherInterfaceOrientation:self];
  iconView = [(SBFluidSwitcherIconOverlayView *)self->_iconOverlayView iconView];
  v22 = [iconView hasSameOriginatingIconAsForIconZoomingView:viewCopy];

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

  if (viewCopy && (v10 || (v24 & v22 & v25 & 1) == 0))
  {
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self removeIconOverlay];
    v26 = viewsCopy;
    v27 = [[SBFluidSwitcherIconOverlayView alloc] initWithIconView:viewCopy crossfadeViews:viewsCopy crossfadeViewFrame:v19 contentOrientation:v20 containerOrientation:v12, v14, v16, v18];
    v28 = self->_iconOverlayView;
    self->_iconOverlayView = v27;

    [(SBFTouchPassThroughView *)self->_contentView addSubview:self->_iconOverlayView];
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layoutIfNeeded];
    objc_storeStrong(&self->_appLayoutForIconOverlay, layout);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained overlayAccessoryView:self didUpdateShowingIconOverlay:1];
  }

  else
  {
    WeakRetained = self->_appLayoutForIconOverlay;
    self->_appLayoutForIconOverlay = 0;
    v26 = viewsCopy;
  }
}

- (void)setShelfViewController:(id)controller
{
  controllerCopy = controller;
  shelfViewController = self->_shelfViewController;
  if (shelfViewController != controllerCopy)
  {
    v12 = controllerCopy;
    v7 = shelfViewController;
    v8 = v7;
    if (v7)
    {
      view = [(SBSwitcherShelfViewController *)v7 view];
      [view removeFromSuperview];
    }

    objc_storeStrong(&self->_shelfViewController, controller);
    contentView = self->_contentView;
    view2 = [(SBSwitcherShelfViewController *)self->_shelfViewController view];
    [(SBFTouchPassThroughView *)contentView addSubview:view2];

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
    controllerCopy = v12;
  }
}

- (void)setContentViewScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentViewScale = scale;
    contentView = self->_contentView;
    CGAffineTransformMakeScale(&v6, scale, scale);
    [(SBFTouchPassThroughView *)contentView setTransform:&v6];
  }
}

- (void)setContentViewOffset:(CGPoint)offset
{
  if (offset.x != self->_contentViewOffset.x || offset.y != self->_contentViewOffset.y)
  {
    self->_contentViewOffset = offset;
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
    view = [(SBSwitcherShelfViewController *)shelfViewController view];
    [view removeFromSuperview];

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

- (void)setFooterStyle:(unint64_t)style
{
  if (self->_footerStyle != style)
  {
    self->_footerStyle = style;
    [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setFooterStyle:?];

    [(SBFluidSwitcherSpaceOverlayAccessoryView *)self setNeedsLayout];
  }
}

- (void)setGenieAttributes:(id)attributes mode:(int64_t)mode completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  genieEffectView = self->_genieEffectView;
  if (attributesCopy && !genieEffectView)
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
    bs_reverse = [v16 bs_reverse];
    [v14 addObjectsFromArray:bs_reverse];

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
    [(SBSwitcherGenieEffectView *)genieEffectView setAttributes:attributesCopy mode:mode completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

uint64_t __79__SBFluidSwitcherSpaceOverlayAccessoryView_setGenieAttributes_mode_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)itemContainerFooterView:(id)view didSelectTitleItem:(id)item
{
  v5 = [(NSArray *)self->_titleItems indexOfObject:item];
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

- (void)genieEffectViewDidInvalidate:(id)invalidate
{
  genieEffectView = self->_genieEffectView;
  self->_genieEffectView = 0;
  invalidateCopy = invalidate;

  [invalidateCopy removeFromSuperview];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  if ([(SBFluidSwitcherSpaceOverlayAccessoryView *)&v12 pointInside:eventCopy withEvent:x, y])
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
      v8 = [(SBFluidSwitcherItemContainerFooterView *)v10 pointInside:eventCopy withEvent:?];
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
  v13.receiver = self;
  v13.super_class = SBFluidSwitcherSpaceOverlayAccessoryView;
  v8 = [(SBFTouchPassThroughView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (v8 || (footerView = self->_footerView) != 0 && ([(SBFluidSwitcherItemContainerFooterView *)footerView alpha], BSFloatGreaterThanFloat()) && (v11 = self->_footerView, [(SBFluidSwitcherSpaceOverlayAccessoryView *)self convertPoint:v11 toView:x, y], [(SBFTouchPassThroughView *)v11 hitTest:eventCopy withEvent:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor = [clearColor CGColor];

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

      [(CAShapeLayer *)self->_focusIndicatorLayer setFillColor:cGColor];
      [(CAShapeLayer *)self->_focusIndicatorLayer setFrame:v14, v16, v18, v20];
      [(CAShapeLayer *)self->_focusIndicatorLayer setLineWidth:0.0];
      v23 = self->_focusIndicatorLayer;
      v24 = [MEMORY[0x277D75208] _bezierPathWithPillRect:v14 cornerRadius:{v16, v18, v20, self->_cornerRadius}];
      -[CAShapeLayer setPath:](v23, "setPath:", [v24 CGPath]);

      v25 = self->_focusIndicatorLayer;
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      -[CAShapeLayer setStrokeColor:](v25, "setStrokeColor:", [systemWhiteColor CGColor]);

      layer = [(SBFTouchPassThroughView *)self->_contentView layer];
      [layer addSublayer:self->_focusIndicatorLayer];

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

- (void)_updateFooterAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setAlpha:self->_titleAndIconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setIconAlpha:self->_iconOpacity];
  [(SBFluidSwitcherItemContainerFooterView *)self->_footerView setTextAlpha:self->_titleOpacity];
  footerView = self->_footerView;
  titleItems = self->_titleItems;

  [(SBFluidSwitcherItemContainerFooterView *)footerView setTitleItems:titleItems animated:animatedCopy];
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
  layer = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layer];
  [layer setBorderColor:{objc_msgSend(v11, "cgColor")}];

  layer2 = [(SBFluidSwitcherSpaceOverlayAccessoryView *)self layer];
  [layer2 setBorderWidth:8.0];
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