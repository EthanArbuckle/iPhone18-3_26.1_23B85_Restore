@interface SBFullScreenToHomeIconZoomSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (BOOL)_isIndexZoomAppLayout:(unint64_t)layout;
- (BOOL)shouldAcceleratedHomeButtonPressBegin;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle;
- (CGRect)_homeScreenFrameForZoomingIndex:(unint64_t)index ignoringGenie:(BOOL)genie;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame;
- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout direction:(unint64_t)direction;
- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)d targetFrame:(CGRect)frame appLayout:(id)layout direction:(unint64_t)direction;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)_genieCounterScaleIfNeeded;
- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)bottom;
- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout;
- (double)fadeInDelayForSplitViewHandles;
- (double)homeScreenAlpha;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)wallpaperScale;
- (id)_flexibleAutoLayoutSpaceForZoomingAppLayout;
- (id)_layoutSettings;
- (id)_settingsByInterpolatingBetween:(id)between and:(id)and progress:(double)progress;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)genieAttributesForAppLayout:(id)layout;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)layoutSettingsForTargetCenter:(CGPoint)center;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)item zOrderedItems:(id)items;
- (int64_t)homeScreenBackdropBlurType;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBFullScreenToHomeIconZoomSwitcherModifier

- (id)transitionWillBegin
{
  v96.receiver = self;
  v96.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v96 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  homeScreenBackdropBlurType = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenBackdropBlurType];
  if (([(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenHasOpenFolder]& 1) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenHasWidgetCenterOrLibraryOpen]^ 1;
  }

  if (self->_direction)
  {
    if ((homeScreenBackdropBlurType == 3) | v6 & 1 && !self->_isMinimizing)
    {
      v7 = [SBUpdateLayoutSwitcherEventResponse alloc];
      v8 = 2;
    }

    else
    {
      v7 = [SBUpdateLayoutSwitcherEventResponse alloc];
      v8 = 10;
    }

    v10 = [(SBUpdateLayoutSwitcherEventResponse *)v7 initWithOptions:v8 updateMode:2];
  }

  else
  {
    v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v9];

    v10 = [[SBRequestFolderSnapshotsSwitcherEventResponse alloc] initWithSnapshotRequest:1];
  }

  v11 = v10;
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v10];

  direction = self->_direction;
  v13 = direction != 1;
  homeScreenIconLocationIsFloatingDock = self->_homeScreenIconLocationIsFloatingDock;
  v15 = v13 || !homeScreenIconLocationIsFloatingDock;
  if (direction != 1 || !homeScreenIconLocationIsFloatingDock)
  {
    isFloatingDockFullyPresented = 0;
    v82 = v13 && homeScreenIconLocationIsFloatingDock;
  }

  else
  {
    isFloatingDockFullyPresented = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isFloatingDockFullyPresented];
    v82 = 0;
  }

  switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (isFloatingDockFullyPresented)
  {
    floatingDockIconFadeSettings = [animationSettings floatingDockIconFadeSettings];
  }

  else
  {
    floatingDockIconFadeSettings = 0;
    if (direction != 1 && self->_homeScreenIconLocationIsFloatingDock)
    {
      v20 = [SBTimerEventSwitcherEventResponse alloc];
      floatingDockIconFadeSettings2 = [animationSettings floatingDockIconFadeSettings];
      [floatingDockIconFadeSettings2 response];
      v22 = [(SBTimerEventSwitcherEventResponse *)v20 initWithDelay:0 validator:@"kSBHomeToStageIconFadeInDelay" reason:?];
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v22];

      floatingDockIconFadeSettings = 0;
    }
  }

  if (self->_shouldUpdateIconViewVisibility)
  {
    v23 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v23];

    v24 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:0 animationSettings:floatingDockIconFadeSettings excludedIconLocations:0];
    self->_isHidingDockIcon = 1;
    if (isFloatingDockFullyPresented)
    {
      objc_initWeak(&location, self);
      [animationSettings iconZoomFloatingDockFadeDelay];
      v26 = v25;
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke;
      v93[3] = &unk_2783AD4A0;
      objc_copyWeak(&v94, &location);
      [(SBChainableModifierEventResponse *)v24 setDelay:v93 withValidator:v26];
      objc_destroyWeak(&v94);
      objc_destroyWeak(&location);
    }

    [(SBChainableModifierEventResponse *)v4 addChildResponse:v24];
  }

  if (direction == 1)
  {
    v27 = [[SBNotifyIconWillZoomDownSwitcherEventResponse alloc] initWithAppLayout:self->_appLayout];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v27];
  }

  if (self->_canAddVelocityKickToHurdleDock && direction == 1 && self->_shouldMatchMoveToIconView)
  {
    v28 = [[SBMatchMoveToIconViewSwitcherEventResponse alloc] initWithActivatingAppLayout:self->_appLayout iconFrame:self->_homeScreenIconFrame.origin.x, self->_homeScreenIconFrame.origin.y, self->_homeScreenIconFrame.size.width, self->_homeScreenIconFrame.size.height];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v28];
  }

  if (self->_shouldAcceleratedHomeButtonPressBegin)
  {
    objc_initWeak(&location, self);
    _layoutSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
    [_layoutSettings settlingDuration];
    v31 = v30;
    [animationSettings disallowAcceleratedHomeButtonPressTransitionPercentage];
    v33 = v32;

    v34 = [SBTimerEventSwitcherEventResponse alloc];
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_2;
    v91[3] = &unk_2783AD4A0;
    objc_copyWeak(&v92, &location);
    v35 = [(SBTimerEventSwitcherEventResponse *)v34 initWithDelay:v91 validator:@"kSBIconZoomDisallowAcceleratedHomeButtonPressReason" reason:v31 * v33];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v35];

    objc_destroyWeak(&v92);
    objc_destroyWeak(&location);
  }

  if (!v15 && self->_itemContainerOverlapsDock)
  {
    switcherSettings2 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    animationSettings2 = [switcherSettings2 animationSettings];

    if (self->_canAddVelocityKickToHurdleDock)
    {
      [animationSettings2 dockHurdlingIconZoomInitialVelocity];
      v39 = v38;
      v40 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_appLayout key:@"position"];
      [v40 CGPointValue];
      v42 = v41;
      v44 = v43;

      if (v44 <= v39)
      {
        v39 = v44;
      }

      v45 = [SBInjectVelocitySwitcherEventResponse alloc];
      [MEMORY[0x277CCAE60] valueWithCGPoint:{v42, v39}];
      v46 = direction;
      v47 = v4;
      v49 = v48 = floatingDockIconFadeSettings;
      v50 = [(SBInjectVelocitySwitcherEventResponse *)v45 initWithVelocity:v49 forKey:@"position" appLayout:self->_appLayout];

      floatingDockIconFadeSettings = v48;
      v4 = v47;
      direction = v46;
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v50];
    }

    [animationSettings2 dockHurdlingIconZoomDockToBackTiming];
    v52 = v51;
    UIAnimationDragCoefficient();
    v54 = v53;
    objc_initWeak(&location, self);
    v55 = [SBTimerEventSwitcherEventResponse alloc];
    v56 = v89;
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_3;
    v89[3] = &unk_2783AD4A0;
    objc_copyWeak(&v90, &location);
    v57 = [(SBTimerEventSwitcherEventResponse *)v55 initWithDelay:v89 validator:@"kSBIconZoomSwitcherModifierTakeDockWindowLevelAssertionReason" reason:v52 * v54];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v57];
    goto LABEL_41;
  }

  if (v82 && self->_shouldDockOrderFrontDuringTransition)
  {
    switcherSettings3 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    animationSettings2 = [switcherSettings3 animationSettings];

    [animationSettings2 dockHurdlingIconZoomDockToFrontTiming];
    v60 = v59;
    UIAnimationDragCoefficient();
    v62 = v61;
    objc_initWeak(&location, self);
    v63 = [SBTimerEventSwitcherEventResponse alloc];
    v56 = v87;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_4;
    v87[3] = &unk_2783AD4A0;
    objc_copyWeak(&v88, &location);
    v57 = [(SBTimerEventSwitcherEventResponse *)v63 initWithDelay:v87 validator:@"kSBIconZoomSwitcherModifierRelinquishDockWindowLevelAssertionReason" reason:v60 * v62];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v57];
LABEL_41:

    objc_destroyWeak(v56 + 4);
    objc_destroyWeak(&location);
  }

  coplanarModifier = self->_coplanarModifier;
  peekingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  [(SBCoplanarSwitcherModifier *)coplanarModifier setIgnoredAppLayout:peekingAppLayout];

  if (self->_genieEnabled && ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad]& 1) == 0)
  {
    switcherSettings4 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    animationSettings3 = [switcherSettings4 animationSettings];

    if (direction == 1)
    {
      [animationSettings3 genieCornerRadiusToHomeResetDelay];
    }

    else
    {
      [animationSettings3 genieCornerRadiusToAppResetDelay];
    }

    v69 = v68;
    objc_initWeak(&location, self);
    v70 = [SBTimerEventSwitcherEventResponse alloc];
    UIAnimationDragCoefficient();
    v72 = v69 * v71;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_5;
    v85[3] = &unk_2783AD4A0;
    objc_copyWeak(&v86, &location);
    v73 = [(SBTimerEventSwitcherEventResponse *)v70 initWithDelay:v85 validator:@"kSBFullScreenToHomeCornerRadiusDelayReason" reason:v72];
    v74 = SBAppendSwitcherModifierResponse(v73, transitionWillBegin);

    objc_destroyWeak(&v86);
    objc_destroyWeak(&location);

    transitionWillBegin = v74;
  }

  if (self->_isWaitingForGlassHighlightDelay)
  {
    objc_initWeak(&location, self);
    v75 = [SBTimerEventSwitcherEventResponse alloc];
    UIAnimationDragCoefficient();
    v77 = v76 * 0.125;
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_6;
    v83[3] = &unk_2783AD4A0;
    objc_copyWeak(&v84, &location);
    v78 = [(SBTimerEventSwitcherEventResponse *)v75 initWithDelay:v83 validator:@"kSBFullScreenToHomeGlassHighlightDelayReason" reason:v77];
    v79 = SBAppendSwitcherModifierResponse(v78, transitionWillBegin);

    objc_destroyWeak(&v84);
    objc_destroyWeak(&location);
    transitionWillBegin = v79;
  }

  v80 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

  return v80;
}

- (id)_layoutSettings
{
  if (CGRectIsNull(self->_homeScreenIconFrame))
  {
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
  }

  UIRectGetCenter();

  return [(SBFullScreenToHomeIconZoomSwitcherModifier *)self layoutSettingsForTargetCenter:?];
}

- (int64_t)homeScreenBackdropBlurType
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self hasHomeButton])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)visibleAppLayouts
{
  v9.receiver = self;
  v9.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  visibleAppLayouts = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v9 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_appLayout];

  peekingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  if (peekingAppLayout)
  {
    v6 = [v4 setByAddingObject:peekingAppLayout];

    v4 = v6;
  }

  v7 = [v4 setByAddingObject:self->_appLayout];

  return v7;
}

- (BOOL)_isEffectivelyHome
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 0;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = self->_direction == 1;
  }

  else
  {
    v4 = 0;
  }

  return v3 || v4;
}

- (id)topMostLayoutElements
{
  appLayout = self->_appLayout;
  v7.receiver = self;
  v7.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  topMostLayoutElements = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v7 topMostLayoutElements];
  v5 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:appLayout toTopMostLayoutElements:topMostLayoutElements orderFront:1];

  return v5;
}

- (double)homeScreenAlpha
{
  homeScreenBackdropBlurType = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenBackdropBlurType];
  if (([(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenHasOpenFolder]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenHasWidgetCenterOrLibraryOpen]^ 1;
  }

  if (homeScreenBackdropBlurType == 3 || (result = 1.0, v5))
  {
    v6.receiver = self;
    v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 homeScreenAlpha];
  }

  return result;
}

BOOL __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)transitionDidEnd
{
  v14.receiver = self;
  v14.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v14 transitionDidEnd];
  if (self->_direction)
  {
    if (!self->_shouldUpdateIconViewVisibility)
    {
      goto LABEL_14;
    }

LABEL_3:
    v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
LABEL_6:
    v6 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:0];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v6];

    if (self->_isHidingDockIcon)
    {
      self->_isHidingDockIcon = 0;
      if (self->_homeScreenIconLocationIsFloatingDock && !self->_direction)
      {
        switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
        animationSettings = [switcherSettings animationSettings];
        floatingDockIconFadeSettings = [animationSettings floatingDockIconFadeSettings];
      }

      else
      {
        floatingDockIconFadeSettings = 0;
      }

      v8 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1 animationSettings:floatingDockIconFadeSettings excludedIconLocations:0];
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v8];
    }

    v9 = [[SBMatchMoveToIconViewSwitcherEventResponse alloc] initWithDeactivatingAppLayout:self->_appLayout];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v9];

    goto LABEL_12;
  }

  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [[SBRequestFolderSnapshotsSwitcherEventResponse alloc] initWithSnapshotRequest:0];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v5];

  if (self->_shouldUpdateIconViewVisibility)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_3;
  }

LABEL_12:
  if (v4)
  {
    v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionDidEnd];

    transitionDidEnd = v10;
  }

LABEL_14:

  return transitionDidEnd;
}

- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)d targetFrame:(CGRect)frame appLayout:(id)layout direction:(unint64_t)direction
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  result = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self initWithTransitionID:d appLayout:layout direction:direction];
  if (result)
  {
    result->_homeScreenIconFrame.origin.x = x;
    result->_homeScreenIconFrame.origin.y = y;
    result->_homeScreenIconFrame.size.width = width;
    result->_homeScreenIconFrame.size.height = height;
  }

  return result;
}

- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout direction:(unint64_t)direction
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v13 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, layout);
    v11->_direction = direction;
    v11->_shouldAcceleratedHomeButtonPressBegin = direction == 0;
    v11->_shouldUpdateIconViewVisibility = 1;
    v11->_shouldMatchMoveToIconView = 1;
    v11->_shouldDisableAsyncRendering = 0;
    v11->_canAddVelocityKickToHurdleDock = 1;
    v11->_supportsGlassHighlight = 1;
  }

  return v11;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v12 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = v4;
  if (self->_direction == 1)
  {
    v6 = @"to-home";
  }

  else
  {
    v6 = @"to-fullscreen";
  }

  v7 = [v4 appendObject:v6 withName:@"direction"];
  v8 = [v5 appendBool:self->_homeScreenIconLocationIsFloatingDock withName:@"homeScreenIconLocationIsFloatingDock"];
  v9 = [v5 appendBool:self->_itemContainerOverlapsDock withName:@"itemContainerOverlapsDock"];
  v10 = [v5 appendBool:self->_wantsDockWindowLevelAssertion withName:@"wantsDockWindowLevelAssertion"];

  return v5;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v17.receiver = self;
  v17.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBChainableModifier *)&v17 didMoveToParentModifier:?];
  if (modifier && ![(SBChainableModifier *)self containsChildModifier:self->_coplanarModifier])
  {
    self->_genieEnabled = !self->_genieDisabled;
    self->_hasResetCornerRadius = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad];
    v5 = self->_supportsGlassHighlight && self->_direction == 1;
    self->_isWaitingForGlassHighlightDelay = v5;
    v6 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:self->_appLayout];
    coplanarModifier = self->_coplanarModifier;
    self->_coplanarModifier = v6;

    [(SBCoplanarSwitcherModifier *)self->_coplanarModifier setUsesContainerViewBoundsAsActiveFrame:1];
    [(SBChainableModifier *)self addChildModifier:self->_coplanarModifier];
    if (CGRectEqualToRect(self->_homeScreenIconFrame, *MEMORY[0x277CBF3A0]))
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconFrameForAppLayout:self->_appLayout];
      self->_homeScreenIconFrame.origin.x = v8;
      self->_homeScreenIconFrame.origin.y = v9;
      self->_homeScreenIconFrame.size.width = v10;
      self->_homeScreenIconFrame.size.height = v11;
    }

    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconCornerRadiusForAppLayout:self->_appLayout];
    self->_homeScreenIconCornerRadius = v12;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconScaleForAppLayout:self->_appLayout];
    self->_homeScreenIconScale = v13;
    v14 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconLocationForAppLayout:self->_appLayout];
    self->_homeScreenIconLocationIsFloatingDock = SBIconLocationGroupContainsLocation();
    self->_itemContainerOverlapsDock = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self itemContainerForAppLayoutOverlapsFloatingDock:self->_appLayout];
    v15 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconGridSizeClassForAppLayout:self->_appLayout];
    self->_homeScreenIconIsWidget = BSEqualObjects() ^ 1;

    v16 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconGridSizeClassForAppLayout:self->_appLayout];
    self->_homeScreenIconIsSmallWidget = BSEqualObjects();

    if (self->_homeScreenIconLocationIsFloatingDock && (!self->_direction || !self->_itemContainerOverlapsDock))
    {
      self->_wantsDockWindowLevelAssertion = 1;
    }
  }
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 1)
  {
    fromAppLayout = [eventCopy fromAppLayout];
    fromAppLayout = self->_fromAppLayout;
    self->_fromAppLayout = fromAppLayout;

    toAppLayout = [eventCopy toAppLayout];
    toAppLayout = self->_toAppLayout;
    self->_toAppLayout = toAppLayout;

    v9 = self->_fromAppLayout;
    if (v9)
    {
      LOBYTE(v9) = self->_toAppLayout && ![(SBAppLayout *)v9 containsAllItemsFromAppLayout:?]&& [(SBAppLayout *)self->_toAppLayout containsAllItemsFromAppLayout:self->_fromAppLayout];
    }

    self->_isAddingToStage = v9;
    minimizingDisplayItem = [eventCopy minimizingDisplayItem];
    v11 = minimizingDisplayItem;
    if (minimizingDisplayItem)
    {
      LOBYTE(minimizingDisplayItem) = [(SBAppLayout *)self->_fromAppLayout containsItem:minimizingDisplayItem];
    }

    self->_isMinimizing = minimizingDisplayItem;
  }

  v14.receiver = self;
  v14.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v14 handleTransitionEvent:eventCopy];

  return v12;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  if (self->_direction)
  {
    return 0;
  }

  if (self->_shouldDisableAsyncRendering)
  {
    return 0;
  }

  switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v9 = v8;

  _layoutSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v12 = v9 * v11;
  UIAnimationDragCoefficient();
  *delay = v12 * v13;

  return 1;
}

BOOL __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

BOOL __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

BOOL __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

BOOL __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

BOOL __65__SBFullScreenToHomeIconZoomSwitcherModifier_transitionWillBegin__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)transitionWillUpdate
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v13 transitionWillUpdate];
  coplanarModifier = self->_coplanarModifier;
  peekingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  [(SBCoplanarSwitcherModifier *)coplanarModifier setIgnoredAppLayout:peekingAppLayout];

  if (!self->_canAddVelocityKickToHurdleDock && self->_shouldMatchMoveToIconView && self->_direction == 1)
  {
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconFrameForAppLayout:self->_appLayout];
    self->_homeScreenIconFrame.origin.x = v6;
    self->_homeScreenIconFrame.origin.y = v7;
    self->_homeScreenIconFrame.size.width = v8;
    self->_homeScreenIconFrame.size.height = v9;
    v10 = [[SBMatchMoveToIconViewSwitcherEventResponse alloc] initWithActivatingAppLayout:self->_appLayout iconFrame:self->_homeScreenIconFrame.origin.x, self->_homeScreenIconFrame.origin.y, self->_homeScreenIconFrame.size.width, self->_homeScreenIconFrame.size.height];
    v11 = SBAppendSwitcherModifierResponse(v10, transitionWillUpdate);

    transitionWillUpdate = v11;
  }

  return transitionWillUpdate;
}

- (id)handleTimerEvent:(id)event
{
  eventCopy = event;
  v28.receiver = self;
  v28.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v28 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];
  v7 = [reason isEqualToString:@"kSBIconZoomDisallowAcceleratedHomeButtonPressReason"];

  if (v7)
  {
    v8 = 240;
LABEL_3:
    *(&self->super.super.super.super.super.isa + v8) = 0;
    goto LABEL_17;
  }

  reason2 = [eventCopy reason];
  v10 = [reason2 isEqualToString:@"kSBIconZoomSwitcherModifierTakeDockWindowLevelAssertionReason"];

  if (v10)
  {
    self->_wantsDockWindowLevelAssertion = 1;
    goto LABEL_17;
  }

  reason3 = [eventCopy reason];
  v12 = [reason3 isEqualToString:@"kSBIconZoomSwitcherModifierRelinquishDockWindowLevelAssertionReason"];

  if (v12)
  {
    v8 = 228;
    goto LABEL_3;
  }

  reason4 = [eventCopy reason];
  v14 = [reason4 isEqualToString:@"kSBHomeToStageIconFadeInDelay"];

  if (v14)
  {
    if (!self->_isHidingDockIcon)
    {
      goto LABEL_17;
    }

    self->_isHidingDockIcon = 0;
    switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    floatingDockIconFadeSettings = [animationSettings floatingDockIconFadeSettings];

    v18 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1 animationSettings:floatingDockIconFadeSettings excludedIconLocations:0];
    v19 = SBAppendSwitcherModifierResponse(v18, v5);
  }

  else
  {
    reason5 = [eventCopy reason];
    v21 = [reason5 isEqualToString:@"kSBFullScreenToHomeCornerRadiusDelayReason"];

    if (v21)
    {
      self->_hasResetCornerRadius = 1;
      v22 = [SBUpdateLayoutSwitcherEventResponse alloc];
      v23 = 3;
    }

    else
    {
      reason6 = [eventCopy reason];
      v25 = [reason6 isEqualToString:@"kSBFullScreenToHomeGlassHighlightDelayReason"];

      if (!v25)
      {
        goto LABEL_17;
      }

      self->_isWaitingForGlassHighlightDelay = 0;
      v22 = [SBUpdateLayoutSwitcherEventResponse alloc];
      v23 = 0;
    }

    v26 = [(SBUpdateLayoutSwitcherEventResponse *)v22 initWithOptions:4 updateMode:v23];
    v19 = SBAppendSwitcherModifierResponse(v26, v5);
  }

  v5 = v19;
LABEL_17:

  return v5;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v13 appLayoutsForContinuousExposeIdentifier:identifierCopy];
  windowManagementContext = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    continuousExposeIdentifier = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
    v8 = BSEqualStrings();

    if (v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __86__SBFullScreenToHomeIconZoomSwitcherModifier_appLayoutsForContinuousExposeIdentifier___block_invoke;
      v12[3] = &unk_2783A8CB8;
      v12[4] = self;
      v9 = [v5 bs_filter:v12];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = v5;
LABEL_6:
  v10 = v9;

  return v10;
}

uint64_t __86__SBFullScreenToHomeIconZoomSwitcherModifier_appLayoutsForContinuousExposeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 280) isOrContainsAppLayout:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isOrContainsAppLayout:*(*(a1 + 32) + 280)] ^ 1;
  }

  return v4;
}

- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)index
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& ![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:index]&& self->_shouldMatchMoveToIconView && self->_direction == 1)
  {
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconFrameForAppLayout:self->_appLayout];
    v6 = self->_homeScreenIconFrame.origin.x - v5;
    v8 = self->_homeScreenIconFrame.origin.y - v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v8;
  result.x = v6;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v35.receiver = self;
  v35.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v35 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome])
  {
    if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:index])
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _homeScreenFrameForZoomingIndex:index ignoringGenie:0];
      v6 = v13;
      v8 = v14;
      v10 = v15;
      v12 = v16;
    }

    else if (self->_shouldMatchMoveToIconView && self->_direction == 1)
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconFrameForAppLayout:self->_appLayout];
      v8 = v8 + self->_homeScreenIconFrame.origin.y - v27;
      v6 = v6 + self->_homeScreenIconFrame.origin.x - v28;
    }
  }

  else
  {
    windowManagementContext = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
    if ([windowManagementContext isFlexibleWindowingEnabled] && -[SBFullScreenToHomeIconZoomSwitcherModifier _isIndexZoomAppLayout:](self, "_isIndexZoomAppLayout:", index))
    {
      isAddingToStage = self->_isAddingToStage;

      if (isAddingToStage)
      {
        toAppLayout = self->_toAppLayout;
        v20 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
        v21 = [(SBAppLayout *)toAppLayout layoutRoleForItem:v20];

        v22 = self->_toAppLayout;
        v34.receiver = self;
        v34.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v34 frameForIndex:index];
        SBRectWithSize();
        v33.receiver = self;
        v33.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v33 frameForLayoutRole:v21 inAppLayout:v22 withBounds:?];
        v10 = v23;
        v12 = v24;
        v6 = v6 + v25;
        v8 = v8 + v26;
      }
    }

    else
    {
    }
  }

  v29 = v6;
  v30 = v8;
  v31 = v10;
  v32 = v12;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)_homeScreenFrameForZoomingIndex:(unint64_t)index ignoringGenie:(BOOL)genie
{
  if (self->_genieEnabled && (-[SBFullScreenToHomeIconZoomSwitcherModifier windowManagementContext](self, "windowManagementContext", index, genie), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isFlexibleWindowingEnabled], v6, v7))
  {
    _flexibleAutoLayoutSpaceForZoomingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _flexibleAutoLayoutSpaceForZoomingAppLayout];
    [_flexibleAutoLayoutSpaceForZoomingAppLayout boundingBox];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v13 frameForIndex:index];
  }

  BSFloatGreaterThanFloat();
  UIRectGetCenter();
  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:index], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v8 anchorPointForIndex:index, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  return [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:space];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:space])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  return [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v10 = [layoutCopy itemForLayoutRole:role];
  displayItemInSlideOver = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemInSlideOver];
  if (BSEqualObjects())
  {
    if (self->_direction != 1)
    {

LABEL_8:
      v14 = *MEMORY[0x277CBF348];
      v16 = *(MEMORY[0x277CBF348] + 8);
      goto LABEL_9;
    }

    v12 = [(SBAppLayout *)self->_toAppLayout containsItem:v10];

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19.receiver = self;
  v19.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v19 perspectiveAngleForLayoutRole:role inAppLayout:layoutCopy withPerspectiveAngle:x, y];
  v14 = v13;
  v16 = v15;
LABEL_9:

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v10 = layoutCopy;
  if (self->_shouldForceDefaultAnchorPointForTransition && [layoutCopy isEqual:self->_appLayout])
  {
    appLayouts = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomeIconZoomSwitcherModifier frameForIndex:](self, "frameForIndex:", [appLayouts indexOfObject:self->_appLayout]);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v28 adjustedSpaceAccessoryViewFrame:v10 forAppLayout:x, y, width, height];
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = layoutCopy;
  if (!self->_genieEnabled || ([layoutCopy isEqual:self->_appLayout] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v10 adjustedSpaceAccessoryViewScale:v7 forAppLayout:scale];
    scale = v8;
  }

  return scale;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v8 = layoutCopy;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v9 = 0.5, v10 = 0.5, ([layoutCopy isEqual:self->_appLayout] & 1) == 0))
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v15 adjustedSpaceAccessoryViewAnchorPoint:v8 forAppLayout:x, y];
    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v8 = layoutCopy;
  if (self->_genieEnabled && [layoutCopy isEqual:self->_appLayout])
  {
    v9 = *MEMORY[0x277CBF348];
    v10 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v15 adjustedSpaceAccessoryViewPerspectiveAngle:v8 forAppLayout:x, y];
    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:?];
  if (!self->_genieEnabled || !v10)
  {
    if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& v10)
    {
      v70.receiver = self;
      v70.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v70 frameForIndex:index];
    }

    else
    {
      v69.receiver = self;
      v69.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v69 fullyPresentedFrameForIndex:index frame:x, y, width, height];
    }

    goto LABEL_14;
  }

  windowManagementContext = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
LABEL_14:
    v50 = v12;
    v52 = v13;
    v54 = v14;
    v56 = v15;
    goto LABEL_15;
  }

  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& self->_isAddingToStage)
  {
    toAppLayout = self->_toAppLayout;
    v19 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    v20 = [(SBAppLayout *)toAppLayout layoutRoleForItem:v19];

    displayItemLayoutAttributesCalculator = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemLayoutAttributesCalculator];
    v22 = self->_toAppLayout;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
    v67 = v24;
    v68 = v23;
    v26 = v25;
    v28 = v27;
    switcherInterfaceOrientation = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation];
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self floatingDockHeight];
    v31 = v30;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
    v33 = v32;
    isDisplayEmbedded = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDisplayEmbedded];
    prefersStripHidden = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersStripHidden];
    prefersDockHidden = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersDockHidden];
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
    LOBYTE(v66) = prefersDockHidden;
    [displayItemLayoutAttributesCalculator frameForLayoutRole:v20 inAppLayout:v22 containerBounds:switcherInterfaceOrientation containerOrientation:1 floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:v68 isEmbeddedDisplay:v67 prefersStripHidden:v26 prefersDockHidden:v28 leftStatusBarPartIntersectionRegion:v31 rightStatusBarPartIntersectionRegion:{v33, v66, v38, v40, v42, v44, v45, v46, v47, v48}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
  }

  else
  {
    _flexibleAutoLayoutSpaceForZoomingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _flexibleAutoLayoutSpaceForZoomingAppLayout];
    [_flexibleAutoLayoutSpaceForZoomingAppLayout boundingBox];
    v50 = v62;
    v52 = v63;
    v54 = v64;
    v56 = v65;
  }

LABEL_15:
  v57 = v50;
  v58 = v52;
  v59 = v54;
  v60 = v56;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf
{
  retstr->var3 = 0;
  *&retstr->var1.origin.y = 0u;
  *&retstr->var1.size.height = 0u;
  *&retstr->var0 = 0u;
  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  result = [(SBSwitcherShelfPresentationAttributes *)&v6 presentationAttributesForShelf:a4];
  retstr->var0 = 0;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:index])
  {
    displayItemInSlideOver = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemInSlideOver];
    if (displayItemInSlideOver && [(SBAppLayout *)self->_fromAppLayout containsItem:displayItemInSlideOver])
    {
      appLayouts = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
      v7 = [appLayouts objectAtIndex:index];

      displayItemLayoutAttributesCalculator = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      switcherInterfaceOrientation = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self floatingDockHeight];
      v50 = v10;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
      v49 = v11;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      isDisplayEmbedded = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDisplayEmbedded];
      prefersStripHidden = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersStripHidden];
      prefersDockHidden = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersDockHidden];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
      v35 = [displayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:v7 containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:prefersDockHidden isEmbeddedDisplay:v50 prefersStripHidden:v49 prefersDockHidden:v13 leftStatusBarPartIntersectionRegion:v15 rightStatusBarPartIntersectionRegion:{v17, v19, v24, v26, v28, v30, v31, v32, v33, v34}];

      [v35 boundingBox];
      v37 = v36;
      v39 = v38;
    }

    else
    {
      v52.receiver = self;
      v52.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v52 frameForIndex:index];
      v37 = v42;
      v39 = v43;
    }

    p_homeScreenIconFrame = &self->_homeScreenIconFrame;
    v45 = BSFloatGreaterThanFloat();
    if (v37 <= v39)
    {
      v46 = v37;
    }

    else
    {
      v46 = v39;
    }

    if (v45)
    {
      v46 = v37;
    }

    width = p_homeScreenIconFrame->size.width;
    if (width < p_homeScreenIconFrame->size.height)
    {
      width = p_homeScreenIconFrame->size.height;
    }

    v41 = width / v46;
  }

  else
  {
    v51.receiver = self;
    v51.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v51 scaleForIndex:index];
    return v40;
  }

  return v41;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v18 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  windowManagementContext = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
  if (![windowManagementContext isFlexibleWindowingEnabled] || (objc_msgSend(elementCopy, "isAppLayout") & 1) == 0)
  {

    goto LABEL_6;
  }

  peekingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  appLayout = [elementCopy appLayout];
  v10 = [peekingAppLayout isOrContainsAppLayout:appLayout];

  if (!v10)
  {
LABEL_6:
    _layoutSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
    [v6 setLayoutSettings:_layoutSettings];
    goto LABEL_7;
  }

  _layoutSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  windowingSettings = [_layoutSettings windowingSettings];
  appToPeekLayoutSettings = [windowingSettings appToPeekLayoutSettings];
  [v6 setLayoutSettings:appToPeekLayoutSettings];

LABEL_7:
  if (self->_genieEnabled)
  {
    appLayout2 = [elementCopy appLayout];
    v15 = [appLayout2 isEqual:self->_appLayout];

    if (v15)
    {
      [v6 setCornerRadiusUpdateMode:3];
      _layoutSettings2 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
      [v6 setCornerRadiusSettings:_layoutSettings2];
    }
  }

  return v6;
}

- (id)layoutSettingsForTargetCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (self->_direction)
  {
    iconZoomDownSettings = [animationSettings iconZoomDownSettings];
  }

  else if (([(SBFullScreenToHomeIconZoomSwitcherModifier *)self hasHomeButton]& 1) != 0)
  {
    iconZoomDownSettings = [animationSettings zoomUpSettings];
  }

  else
  {
    if (!self->_genieEnabled || (-[SBFullScreenToHomeIconZoomSwitcherModifier windowManagementContext](self, "windowManagementContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isFlexibleWindowingEnabled], v11, !v12) || (-[SBFullScreenToHomeIconZoomSwitcherModifier maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:](self, "maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:", self->_appLayout, 1, 0), v13 = objc_claimAutoreleasedReturnValue(), -[SBAppLayout itemForLayoutRole:](self->_appLayout, "itemForLayoutRole:", 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v13, v15))
    {
      if (self->_genieEnabled)
      {
        [animationSettings genieFullScreenCenterRowZoomUpSettings];
      }

      else
      {
        [animationSettings homeGestureCenterRowZoomUpSettings];
      }
      v16 = ;
      if (self->_genieEnabled)
      {
        [animationSettings genieFullScreenEdgeRowZoomUpSettings];
      }

      else
      {
        [animationSettings homeGestureEdgeRowZoomUpSettings];
      }
      v17 = ;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _normalizedHomeScreenTargetZoomPercentBetweenCenterAndEdge:x, y];
      v9 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _settingsByInterpolatingBetween:v16 and:v17 progress:?];

      goto LABEL_6;
    }

    iconZoomDownSettings = [animationSettings genieWindowedZoomUpSettings];
  }

  v9 = iconZoomDownSettings;
LABEL_6:

  return v9;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v12 = [layoutCopy itemForLayoutRole:role];
  v40.receiver = self;
  v40.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v40 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([layoutCopy isEqual:self->_appLayout])
  {
    _isEffectivelyHome = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome];
    allItems = [(SBAppLayout *)self->_appLayout allItems];
    v23 = [allItems count];

    if (_isEffectivelyHome)
    {
      if (v23 == 1)
      {
        v16 = *(MEMORY[0x277CBF348] + 8);
        v14 = *MEMORY[0x277CBF348];
      }

      if (v18 > width)
      {
        v18 = width;
      }

      if (v20 > height)
      {
        v20 = height;
      }
    }

    else if (v23 == 1)
    {
      v14 = *MEMORY[0x277CBF348];
      v16 = *(MEMORY[0x277CBF348] + 8);
    }
  }

  else
  {
    peekingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
    v25 = [peekingAppLayout containsItem:v12];

    if (v25)
    {
      switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
      [switcherSettings peekInsetWidth];
      v28 = v27 + -10.0;
      v29 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self zOrderedItemsInAppLayout:layoutCopy];
      v30 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _numberOfPeekingItemsAboveDisplayItem:v12 zOrderedItems:v29];
      [switcherSettings peekCascadingOffset];
      v32 = v31 * v30;

      v33 = v28 - fmax(v32, 0.0);
      switcherSettings2 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
      [switcherSettings2 peekingAbsolutePerspectiveAngle];

      BSDegreesToRadians();
      v16 = v16 + v33 - cos(v35) * v33;
    }
  }

  v36 = v14;
  v37 = v16;
  v38 = v18;
  v39 = v20;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)item zOrderedItems:(id)items
{
  itemCopy = item;
  itemsCopy = items;
  v7 = [itemsCopy indexOfObject:itemCopy];
  if (v7 > 0x7FFFFFFFFFFFFFFELL)
  {
    v9 = 0;
  }

  else
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [itemsCopy objectAtIndex:v8];
      v9 += [(SBDisplayItem *)v10 isEqualToItem:itemCopy]^ 1;

      --v8;
    }

    while (v8 != -1);
  }

  return v9;
}

- (id)genieAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_appLayout isEqual:layoutCopy]&& self->_genieEnabled)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    windowManagementContext = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    if (isFlexibleWindowingEnabled)
    {
      allItems = [(SBAppLayout *)self->_appLayout allItems];
      v8 = [allItems count] == 1;
    }

    else
    {
      v8 = 0;
    }

    v10 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    if (isFlexibleWindowingEnabled)
    {
      _flexibleAutoLayoutSpaceForZoomingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _flexibleAutoLayoutSpaceForZoomingAppLayout];
      [_flexibleAutoLayoutSpaceForZoomingAppLayout boundingBox];
      v13 = v12;
      v15 = v14;
      v16 = [_flexibleAutoLayoutSpaceForZoomingAppLayout flexibleAutoLayoutItemForDisplayItem:v10];
    }

    else
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
      v13 = v17;
      v15 = v18;
      v16 = 0;
      _flexibleAutoLayoutSpaceForZoomingAppLayout = 0;
    }

    width = self->_homeScreenIconFrame.size.width;
    height = self->_homeScreenIconFrame.size.height;
    if (v8)
    {
      [v16 position];
      v63 = v22;
      v64 = v21;
      v60 = *(MEMORY[0x277CBF348] + 8);
      v61 = *MEMORY[0x277CBF348];
      [v16 size];
      v13 = v23;
      v15 = v24;
    }

    else
    {
      UIRectGetCenter();
      v63 = v26;
      v64 = v25;
      v60 = *(MEMORY[0x277CBF348] + 8);
      v61 = *MEMORY[0x277CBF348];
    }

    appLayouts = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomeIconZoomSwitcherModifier _homeScreenFrameForZoomingIndex:ignoringGenie:](self, "_homeScreenFrameForZoomingIndex:ignoringGenie:", [appLayouts indexOfObject:layoutCopy], 1);
    v29 = v28;
    v59 = v30;

    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
    v57 = v32;
    v58 = v31;
    if (width / v13 >= height / v15)
    {
      v33 = width / v13;
    }

    else
    {
      v33 = height / v15;
    }

    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _genieCounterScaleIfNeeded];
    v35 = v34;
    isDevicePad = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad];
    UIRectGetCenter();
    v39 = v38;
    if ((isDevicePad & 1) == 0)
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
      UIPointRoundToScale();
      v39 = v40;
    }

    v56 = v37;
    v62 = v13;
    v41 = v33 * v35;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconBadgeSizeForAppLayout:self->_appLayout];
    v44 = *MEMORY[0x277CBF3A8];
    if (v42 != *MEMORY[0x277CBF3A8] || (v45 = *(MEMORY[0x277CBF3A8] + 8), v43 != v45))
    {
      v46 = v42 / v41 + v42 / v41;
      v47 = v43 / v41 + v43 / v41;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconBadgeOffsetForAppLayout:self->_appLayout];
      v44 = v46 + v48;
      v45 = v47 + v49;
    }

    if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad])
    {
      if (self->_homeScreenIconIsWidget)
      {
        v50 = 0.25;
      }

      else
      {
        v50 = 0.5;
      }
    }

    else if (!self->_homeScreenIconIsWidget || (v50 = 0.25, self->_homeScreenIconIsSmallWidget))
    {
      v50 = 0.5;
    }

    v51 = v33 / v41;
    _isEffectivelyHome = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome];
    if (self->_direction && self->_supportsGlassHighlight && !self->_isWaitingForGlassHighlightDelay)
    {
      if (self->_homeScreenIconIsWidget)
      {
        v53 = SBSwitcherGenieGlassHighlightWidgets(&v68);
      }

      else
      {
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenGlassHighlightForAppLayout:self->_appLayout];
      }
    }

    else
    {
      v53 = SBSwitcherGenieGlassHighlightNone(&v68);
    }

    _layoutSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
    v66[0] = v68;
    v66[1] = v69;
    v67 = v70;
    v9 = [SBSwitcherGenieAttributes genieAttributesForIconPosition:_isEffectivelyHome windowPosition:v66 initialVelocity:_layoutSettings windowSize:v39 minimizedSize:v56 minimizedScale:v64 containerSize:v63 minimumOutsetSize:v61 genieScale:v60 multiplier:v62 active:v15 glassHighlight:v29 layoutSettings:v59, *&v41, v58, v57, *&v44, *&v45, *&v51, *&v50, *&v50];
  }

  else
  {
    v65.receiver = self;
    v65.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    v9 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v65 genieAttributesForAppLayout:layoutCopy];
  }

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:?])
  {
    if (!self->_genieEnabled || self->_hasResetCornerRadius || self->_homeScreenIconIsWidget || [(SBTransitionSwitcherModifier *)self transitionPhase]< 2)
    {
      if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome])
      {
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)self scaleForIndex:index];

        SBRectCornerRadiiForRadius();
      }

      else
      {
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v19 cornerRadiiForIndex:index, v18.receiver, v18.super_class, self, SBFullScreenToHomeIconZoomSwitcherModifier];
      }
    }

    else
    {
      v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self genieAttributesForAppLayout:self->_appLayout];
      [v5 windowSize];
      [v5 windowSize];
      SBRectCornerRadiiForRadius();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = v7;
      v15 = v9;
      v16 = v11;
      v17 = v13;
    }
  }

  else
  {
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v18 cornerRadiiForIndex:index, self, SBFullScreenToHomeIconZoomSwitcherModifier, v19.receiver, v19.super_class];
  }

  result.topRight = v17;
  result.bottomRight = v16;
  result.bottomLeft = v15;
  result.topLeft = v14;
  return result;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index
{
  result = 0;
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad])
  {
    v6.receiver = self;
    v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 frameForIndex:index];
    SBRectWithSize();
    if (BSFloatLessThanFloat())
    {
      return 1;
    }
  }

  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = [layoutCopy itemForLayoutRole:role];
  v10 = 1.0;
  if (![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:index])
  {
    if (self->_direction == 1)
    {
      desktopSpaceDisplayItems = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self desktopSpaceDisplayItems];
      if ([desktopSpaceDisplayItems containsObject:v9])
      {
LABEL_6:

        goto LABEL_14;
      }

      appLayoutOnStage = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayoutOnStage];
      if ([appLayoutOnStage containsItem:v9])
      {

        goto LABEL_6;
      }

      v13 = [(SBAppLayout *)self->_fromAppLayout containsItem:v9];

      if (v13)
      {
        goto LABEL_14;
      }
    }

    if (self->_isMinimizing)
    {
      windowManagementContext = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
      if (([windowManagementContext isAutomaticStageCreationEnabled] & 1) == 0)
      {
        peekingAppLayout = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
        if (![peekingAppLayout containsItem:v9])
        {
          v18 = [(SBAppLayout *)self->_toAppLayout containsItem:v9];

          v10 = 0.0;
          if (!v18)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }
    }

LABEL_13:
    v19.receiver = self;
    v19.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v19 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v10 = v16;
  }

LABEL_14:

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  if (![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:index]|| ![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]|| !self->_shouldDockOrderFrontDuringTransition || self->_direction || (result = 0.0, !self->_homeScreenIconLocationIsFloatingDock))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v8 shadowOpacityForLayoutRole:role atIndex:index, result];
  }

  return result;
}

- (double)wallpaperScale
{
  if (!self->_direction)
  {
    return 1.0;
  }

  v3.receiver = self;
  v3.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v3 wallpaperScale];
  return result;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (BOOL)shouldAcceleratedHomeButtonPressBegin
{
  if (self->_shouldAcceleratedHomeButtonPressBegin)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  return [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v5 shouldAcceleratedHomeButtonPressBegin];
}

- (id)_flexibleAutoLayoutSpaceForZoomingAppLayout
{
  displayItemLayoutAttributesCalculator = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  appLayout = self->_appLayout;
  switcherInterfaceOrientation = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self floatingDockHeight];
  v34 = v6;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
  v33 = v7;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  isDisplayEmbedded = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDisplayEmbedded];
  prefersStripHidden = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersStripHidden];
  prefersDockHidden = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersDockHidden];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v31 = [displayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:appLayout containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:prefersDockHidden isEmbeddedDisplay:v34 prefersStripHidden:v33 prefersDockHidden:v9 leftStatusBarPartIntersectionRegion:v11 rightStatusBarPartIntersectionRegion:{v13, v15, v20, v22, v24, v26, v27, v28, v29, v30}];

  return v31;
}

- (double)_genieCounterScaleIfNeeded
{
  result = 1.0;
  if (self->_genieEnabled)
  {
    isDevicePad = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad];
    result = 2.0;
    if ((isDevicePad & 1) == 0)
    {
      result = 1.75;
      if (!self->_homeScreenIconIsSmallWidget)
      {
        result = 2.5;
        if (self->_homeScreenIconIsWidget)
        {
          return 1.25;
        }
      }
    }
  }

  return result;
}

- (BOOL)_isIndexZoomAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_appLayout];
  return selfCopy;
}

- (id)_settingsByInterpolatingBetween:(id)between and:(id)and progress:(double)progress
{
  v6 = MEMORY[0x277D65E60];
  andCopy = and;
  betweenCopy = between;
  v9 = objc_alloc_init(v6);
  [v9 setDefaultValues];
  [betweenCopy dampingRatio];
  [andCopy dampingRatio];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setDampingRatio:?];
  [betweenCopy response];
  [andCopy response];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setResponse:?];
  [betweenCopy retargetImpulse];

  [andCopy retargetImpulse];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setRetargetImpulse:?];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v9 setFrameRateRange:1114114 highFrameRateReason:{*&v12.minimum, *&v12.maximum, *&v12.preferred}];

  return v9;
}

- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)bottom
{
  y = bottom.y;
  if (([(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation]- 1) >= 2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 102.0;
  }

  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
  return (y - v5) / (v6 - v5);
}

@end