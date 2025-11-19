@interface SBFullScreenToHomeIconZoomSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (BOOL)_isIndexZoomAppLayout:(unint64_t)a3;
- (BOOL)shouldAcceleratedHomeButtonPressBegin;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5;
- (CGRect)_homeScreenFrameForZoomingIndex:(unint64_t)a3 ignoringGenie:(BOOL)a4;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)a3 frame:(CGRect)a4;
- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 direction:(unint64_t)a5;
- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)a3 targetFrame:(CGRect)a4 appLayout:(id)a5 direction:(unint64_t)a6;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_genieCounterScaleIfNeeded;
- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)a3;
- (double)adjustedSpaceAccessoryViewScale:(double)a3 forAppLayout:(id)a4;
- (double)fadeInDelayForSplitViewHandles;
- (double)homeScreenAlpha;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)wallpaperScale;
- (id)_flexibleAutoLayoutSpaceForZoomingAppLayout;
- (id)_layoutSettings;
- (id)_settingsByInterpolatingBetween:(id)a3 and:(id)a4 progress:(double)a5;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)genieAttributesForAppLayout:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)layoutSettingsForTargetCenter:(CGPoint)a3;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)a3 zOrderedItems:(id)a4;
- (int64_t)homeScreenBackdropBlurType;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFullScreenToHomeIconZoomSwitcherModifier

- (id)transitionWillBegin
{
  v96.receiver = self;
  v96.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v96 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenBackdropBlurType];
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
    if ((v5 == 3) | v6 & 1 && !self->_isMinimizing)
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
    v16 = 0;
    v82 = v13 && homeScreenIconLocationIsFloatingDock;
  }

  else
  {
    v16 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isFloatingDockFullyPresented];
    v82 = 0;
  }

  v17 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  v18 = [v17 animationSettings];

  if (v16)
  {
    v19 = [v18 floatingDockIconFadeSettings];
  }

  else
  {
    v19 = 0;
    if (direction != 1 && self->_homeScreenIconLocationIsFloatingDock)
    {
      v20 = [SBTimerEventSwitcherEventResponse alloc];
      v21 = [v18 floatingDockIconFadeSettings];
      [v21 response];
      v22 = [(SBTimerEventSwitcherEventResponse *)v20 initWithDelay:0 validator:@"kSBHomeToStageIconFadeInDelay" reason:?];
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v22];

      v19 = 0;
    }
  }

  if (self->_shouldUpdateIconViewVisibility)
  {
    v23 = [[SBIconOverlayVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v23];

    v24 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:0 animationSettings:v19 excludedIconLocations:0];
    self->_isHidingDockIcon = 1;
    if (v16)
    {
      objc_initWeak(&location, self);
      [v18 iconZoomFloatingDockFadeDelay];
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
    v29 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
    [v29 settlingDuration];
    v31 = v30;
    [v18 disallowAcceleratedHomeButtonPressTransitionPercentage];
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
    v36 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    v37 = [v36 animationSettings];

    if (self->_canAddVelocityKickToHurdleDock)
    {
      [v37 dockHurdlingIconZoomInitialVelocity];
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
      v49 = v48 = v19;
      v50 = [(SBInjectVelocitySwitcherEventResponse *)v45 initWithVelocity:v49 forKey:@"position" appLayout:self->_appLayout];

      v19 = v48;
      v4 = v47;
      direction = v46;
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v50];
    }

    [v37 dockHurdlingIconZoomDockToBackTiming];
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
    v58 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    v37 = [v58 animationSettings];

    [v37 dockHurdlingIconZoomDockToFrontTiming];
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
  v65 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  [(SBCoplanarSwitcherModifier *)coplanarModifier setIgnoredAppLayout:v65];

  if (self->_genieEnabled && ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad]& 1) == 0)
  {
    v66 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    v67 = [v66 animationSettings];

    if (direction == 1)
    {
      [v67 genieCornerRadiusToHomeResetDelay];
    }

    else
    {
      [v67 genieCornerRadiusToAppResetDelay];
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
    v74 = SBAppendSwitcherModifierResponse(v73, v3);

    objc_destroyWeak(&v86);
    objc_destroyWeak(&location);

    v3 = v74;
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
    v79 = SBAppendSwitcherModifierResponse(v78, v3);

    objc_destroyWeak(&v84);
    objc_destroyWeak(&location);
    v3 = v79;
  }

  v80 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

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
  v3 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v9 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_appLayout];

  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  if (v5)
  {
    v6 = [v4 setByAddingObject:v5];

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
  v4 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v7 topMostLayoutElements];
  v5 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:appLayout toTopMostLayoutElements:v4 orderFront:1];

  return v5;
}

- (double)homeScreenAlpha
{
  v3 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenBackdropBlurType];
  if (([(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenHasOpenFolder]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenHasWidgetCenterOrLibraryOpen]^ 1;
  }

  if (v3 == 3 || (result = 1.0, v5))
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
  v3 = [(SBTransitionSwitcherModifier *)&v14 transitionDidEnd];
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
        v12 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
        v13 = [v12 animationSettings];
        v7 = [v13 floatingDockIconFadeSettings];
      }

      else
      {
        v7 = 0;
      }

      v8 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1 animationSettings:v7 excludedIconLocations:0];
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
    v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v3 = v10;
  }

LABEL_14:

  return v3;
}

- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)a3 targetFrame:(CGRect)a4 appLayout:(id)a5 direction:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  result = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self initWithTransitionID:a3 appLayout:a5 direction:a6];
  if (result)
  {
    result->_homeScreenIconFrame.origin.x = x;
    result->_homeScreenIconFrame.origin.y = y;
    result->_homeScreenIconFrame.size.width = width;
    result->_homeScreenIconFrame.size.height = height;
  }

  return result;
}

- (SBFullScreenToHomeIconZoomSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 direction:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v13 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, a4);
    v11->_direction = a5;
    v11->_shouldAcceleratedHomeButtonPressBegin = a5 == 0;
    v11->_shouldUpdateIconViewVisibility = 1;
    v11->_shouldMatchMoveToIconView = 1;
    v11->_shouldDisableAsyncRendering = 0;
    v11->_canAddVelocityKickToHurdleDock = 1;
    v11->_supportsGlassHighlight = 1;
  }

  return v11;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v12 descriptionBuilderWithMultilinePrefix:a3];
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

- (void)didMoveToParentModifier:(id)a3
{
  v17.receiver = self;
  v17.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBChainableModifier *)&v17 didMoveToParentModifier:?];
  if (a3 && ![(SBChainableModifier *)self containsChildModifier:self->_coplanarModifier])
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

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    v5 = [v4 fromAppLayout];
    fromAppLayout = self->_fromAppLayout;
    self->_fromAppLayout = v5;

    v7 = [v4 toAppLayout];
    toAppLayout = self->_toAppLayout;
    self->_toAppLayout = v7;

    v9 = self->_fromAppLayout;
    if (v9)
    {
      LOBYTE(v9) = self->_toAppLayout && ![(SBAppLayout *)v9 containsAllItemsFromAppLayout:?]&& [(SBAppLayout *)self->_toAppLayout containsAllItemsFromAppLayout:self->_fromAppLayout];
    }

    self->_isAddingToStage = v9;
    v10 = [v4 minimizingDisplayItem];
    v11 = v10;
    if (v10)
    {
      LOBYTE(v10) = [(SBAppLayout *)self->_fromAppLayout containsItem:v10];
    }

    self->_isMinimizing = v10;
  }

  v14.receiver = self;
  v14.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v14 handleTransitionEvent:v4];

  return v12;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3
{
  if (self->_direction)
  {
    return 0;
  }

  if (self->_shouldDisableAsyncRendering)
  {
    return 0;
  }

  v6 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  [v7 disableAsyncRenderingTransitionPercentage];
  v9 = v8;

  v10 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
  [v10 settlingDuration];
  v12 = v9 * v11;
  UIAnimationDragCoefficient();
  *a3 = v12 * v13;

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
  v3 = [(SBTransitionSwitcherModifier *)&v13 transitionWillUpdate];
  coplanarModifier = self->_coplanarModifier;
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  [(SBCoplanarSwitcherModifier *)coplanarModifier setIgnoredAppLayout:v5];

  if (!self->_canAddVelocityKickToHurdleDock && self->_shouldMatchMoveToIconView && self->_direction == 1)
  {
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self homeScreenIconFrameForAppLayout:self->_appLayout];
    self->_homeScreenIconFrame.origin.x = v6;
    self->_homeScreenIconFrame.origin.y = v7;
    self->_homeScreenIconFrame.size.width = v8;
    self->_homeScreenIconFrame.size.height = v9;
    v10 = [[SBMatchMoveToIconViewSwitcherEventResponse alloc] initWithActivatingAppLayout:self->_appLayout iconFrame:self->_homeScreenIconFrame.origin.x, self->_homeScreenIconFrame.origin.y, self->_homeScreenIconFrame.size.width, self->_homeScreenIconFrame.size.height];
    v11 = SBAppendSwitcherModifierResponse(v10, v3);

    v3 = v11;
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v28 handleTimerEvent:v4];
  v6 = [v4 reason];
  v7 = [v6 isEqualToString:@"kSBIconZoomDisallowAcceleratedHomeButtonPressReason"];

  if (v7)
  {
    v8 = 240;
LABEL_3:
    *(&self->super.super.super.super.super.isa + v8) = 0;
    goto LABEL_17;
  }

  v9 = [v4 reason];
  v10 = [v9 isEqualToString:@"kSBIconZoomSwitcherModifierTakeDockWindowLevelAssertionReason"];

  if (v10)
  {
    self->_wantsDockWindowLevelAssertion = 1;
    goto LABEL_17;
  }

  v11 = [v4 reason];
  v12 = [v11 isEqualToString:@"kSBIconZoomSwitcherModifierRelinquishDockWindowLevelAssertionReason"];

  if (v12)
  {
    v8 = 228;
    goto LABEL_3;
  }

  v13 = [v4 reason];
  v14 = [v13 isEqualToString:@"kSBHomeToStageIconFadeInDelay"];

  if (v14)
  {
    if (!self->_isHidingDockIcon)
    {
      goto LABEL_17;
    }

    self->_isHidingDockIcon = 0;
    v15 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
    v16 = [v15 animationSettings];
    v17 = [v16 floatingDockIconFadeSettings];

    v18 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:self->_appLayout visible:1 animationSettings:v17 excludedIconLocations:0];
    v19 = SBAppendSwitcherModifierResponse(v18, v5);
  }

  else
  {
    v20 = [v4 reason];
    v21 = [v20 isEqualToString:@"kSBFullScreenToHomeCornerRadiusDelayReason"];

    if (v21)
    {
      self->_hasResetCornerRadius = 1;
      v22 = [SBUpdateLayoutSwitcherEventResponse alloc];
      v23 = 3;
    }

    else
    {
      v24 = [v4 reason];
      v25 = [v24 isEqualToString:@"kSBFullScreenToHomeGlassHighlightDelayReason"];

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

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v13 appLayoutsForContinuousExposeIdentifier:v4];
  v6 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
  if ([v6 isChamoisOrFlexibleWindowing])
  {
    v7 = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
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

- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)a3
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& ![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a3]&& self->_shouldMatchMoveToIconView && self->_direction == 1)
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

- (CGRect)frameForIndex:(unint64_t)a3
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
    if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a3])
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _homeScreenFrameForZoomingIndex:a3 ignoringGenie:0];
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
    v17 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
    if ([v17 isFlexibleWindowingEnabled] && -[SBFullScreenToHomeIconZoomSwitcherModifier _isIndexZoomAppLayout:](self, "_isIndexZoomAppLayout:", a3))
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
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v34 frameForIndex:a3];
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

- (CGRect)_homeScreenFrameForZoomingIndex:(unint64_t)a3 ignoringGenie:(BOOL)a4
{
  if (self->_genieEnabled && (-[SBFullScreenToHomeIconZoomSwitcherModifier windowManagementContext](self, "windowManagementContext", a3, a4), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isFlexibleWindowingEnabled], v6, v7))
  {
    v8 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _flexibleAutoLayoutSpaceForZoomingAppLayout];
    [v8 boundingBox];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v13 frameForIndex:a3];
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

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v7 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a3], v3 = 0.5, v4 = 0.5, !v7))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v8 anchorPointForIndex:a3, v3, v4];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  return [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 shouldPinLayoutRolesToSpace:a3];
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  if (self->_shouldForceDefaultAnchorPointForTransition && [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a3])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  return [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_shouldForceDefaultAnchorPointForTransition && [v6 isEqual:self->_appLayout])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [v9 itemForLayoutRole:a3];
  v11 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemInSlideOver];
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
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v19 perspectiveAngleForLayoutRole:a3 inAppLayout:v9 withPerspectiveAngle:x, y];
  v14 = v13;
  v16 = v15;
LABEL_9:

  v17 = v14;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = v9;
  if (self->_shouldForceDefaultAnchorPointForTransition && [v9 isEqual:self->_appLayout])
  {
    v11 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomeIconZoomSwitcherModifier frameForIndex:](self, "frameForIndex:", [v11 indexOfObject:self->_appLayout]);
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

- (double)adjustedSpaceAccessoryViewScale:(double)a3 forAppLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_genieEnabled || ([v6 isEqual:self->_appLayout] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v10 adjustedSpaceAccessoryViewScale:v7 forAppLayout:a3];
    a3 = v8;
  }

  return a3;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (!self->_shouldForceDefaultAnchorPointForTransition || (v9 = 0.5, v10 = 0.5, ([v7 isEqual:self->_appLayout] & 1) == 0))
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

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (self->_genieEnabled && [v7 isEqual:self->_appLayout])
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

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:?];
  if (!self->_genieEnabled || !v10)
  {
    if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& v10)
    {
      v70.receiver = self;
      v70.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v70 frameForIndex:a3];
    }

    else
    {
      v69.receiver = self;
      v69.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v69 fullyPresentedFrameForIndex:a3 frame:x, y, width, height];
    }

    goto LABEL_14;
  }

  v16 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
  v17 = [v16 isFlexibleWindowingEnabled];

  if (!v17)
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

    v21 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemLayoutAttributesCalculator];
    v22 = self->_toAppLayout;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
    v67 = v24;
    v68 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation];
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self floatingDockHeight];
    v31 = v30;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
    v33 = v32;
    v34 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDisplayEmbedded];
    v35 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersStripHidden];
    v36 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersDockHidden];
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
    LOBYTE(v66) = v36;
    [v21 frameForLayoutRole:v20 inAppLayout:v22 containerBounds:v29 containerOrientation:1 floatingDockHeight:v34 screenScale:v35 isChamoisWindowingUIEnabled:v68 isEmbeddedDisplay:v67 prefersStripHidden:v26 prefersDockHidden:v28 leftStatusBarPartIntersectionRegion:v31 rightStatusBarPartIntersectionRegion:{v33, v66, v38, v40, v42, v44, v45, v46, v47, v48}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
  }

  else
  {
    v61 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _flexibleAutoLayoutSpaceForZoomingAppLayout];
    [v61 boundingBox];
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

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3
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

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]&& [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a3])
  {
    v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemInSlideOver];
    if (v5 && [(SBAppLayout *)self->_fromAppLayout containsItem:v5])
    {
      v6 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
      v7 = [v6 objectAtIndex:a3];

      v8 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      v9 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self floatingDockHeight];
      v50 = v10;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
      v49 = v11;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDisplayEmbedded];
      v21 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersStripHidden];
      v22 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersDockHidden];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
      v35 = [v8 flexibleWindowingAutoLayoutSpaceForAppLayout:v7 containerOrientation:v9 floatingDockHeight:v20 screenScale:v21 bounds:v22 isEmbeddedDisplay:v50 prefersStripHidden:v49 prefersDockHidden:v13 leftStatusBarPartIntersectionRegion:v15 rightStatusBarPartIntersectionRegion:{v17, v19, v24, v26, v28, v30, v31, v32, v33, v34}];

      [v35 boundingBox];
      v37 = v36;
      v39 = v38;
    }

    else
    {
      v52.receiver = self;
      v52.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v52 frameForIndex:a3];
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
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v51 scaleForIndex:a3];
    return v40;
  }

  return v41;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v18 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  v7 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
  if (![v7 isFlexibleWindowingEnabled] || (objc_msgSend(v4, "isAppLayout") & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
  v9 = [v4 appLayout];
  v10 = [v8 isOrContainsAppLayout:v9];

  if (!v10)
  {
LABEL_6:
    v11 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
    [v6 setLayoutSettings:v11];
    goto LABEL_7;
  }

  v11 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  v12 = [v11 windowingSettings];
  v13 = [v12 appToPeekLayoutSettings];
  [v6 setLayoutSettings:v13];

LABEL_7:
  if (self->_genieEnabled)
  {
    v14 = [v4 appLayout];
    v15 = [v14 isEqual:self->_appLayout];

    if (v15)
    {
      [v6 setCornerRadiusUpdateMode:3];
      v16 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
      [v6 setCornerRadiusSettings:v16];
    }
  }

  return v6;
}

- (id)layoutSettingsForTargetCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  if (self->_direction)
  {
    v8 = [v7 iconZoomDownSettings];
  }

  else if (([(SBFullScreenToHomeIconZoomSwitcherModifier *)self hasHomeButton]& 1) != 0)
  {
    v8 = [v7 zoomUpSettings];
  }

  else
  {
    if (!self->_genieEnabled || (-[SBFullScreenToHomeIconZoomSwitcherModifier windowManagementContext](self, "windowManagementContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isFlexibleWindowingEnabled], v11, !v12) || (-[SBFullScreenToHomeIconZoomSwitcherModifier maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:](self, "maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:", self->_appLayout, 1, 0), v13 = objc_claimAutoreleasedReturnValue(), -[SBAppLayout itemForLayoutRole:](self->_appLayout, "itemForLayoutRole:", 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v13, v15))
    {
      if (self->_genieEnabled)
      {
        [v7 genieFullScreenCenterRowZoomUpSettings];
      }

      else
      {
        [v7 homeGestureCenterRowZoomUpSettings];
      }
      v16 = ;
      if (self->_genieEnabled)
      {
        [v7 genieFullScreenEdgeRowZoomUpSettings];
      }

      else
      {
        [v7 homeGestureEdgeRowZoomUpSettings];
      }
      v17 = ;
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _normalizedHomeScreenTargetZoomPercentBetweenCenterAndEdge:x, y];
      v9 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _settingsByInterpolatingBetween:v16 and:v17 progress:?];

      goto LABEL_6;
    }

    v8 = [v7 genieWindowedZoomUpSettings];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
  v40.receiver = self;
  v40.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v40 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([v11 isEqual:self->_appLayout])
  {
    v21 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome];
    v22 = [(SBAppLayout *)self->_appLayout allItems];
    v23 = [v22 count];

    if (v21)
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
    v24 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
    v25 = [v24 containsItem:v12];

    if (v25)
    {
      v26 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
      [v26 peekInsetWidth];
      v28 = v27 + -10.0;
      v29 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self zOrderedItemsInAppLayout:v11];
      v30 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _numberOfPeekingItemsAboveDisplayItem:v12 zOrderedItems:v29];
      [v26 peekCascadingOffset];
      v32 = v31 * v30;

      v33 = v28 - fmax(v32, 0.0);
      v34 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
      [v34 peekingAbsolutePerspectiveAngle];

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

- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)a3 zOrderedItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 indexOfObject:v5];
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
      v10 = [v6 objectAtIndex:v8];
      v9 += [(SBDisplayItem *)v10 isEqualToItem:v5]^ 1;

      --v8;
    }

    while (v8 != -1);
  }

  return v9;
}

- (id)genieAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBAppLayout *)self->_appLayout isEqual:v4]&& self->_genieEnabled)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
    v6 = [v5 isFlexibleWindowingEnabled];

    if (v6)
    {
      v7 = [(SBAppLayout *)self->_appLayout allItems];
      v8 = [v7 count] == 1;
    }

    else
    {
      v8 = 0;
    }

    v10 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:1];
    if (v6)
    {
      v11 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _flexibleAutoLayoutSpaceForZoomingAppLayout];
      [v11 boundingBox];
      v13 = v12;
      v15 = v14;
      v16 = [v11 flexibleAutoLayoutItemForDisplayItem:v10];
    }

    else
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
      v13 = v17;
      v15 = v18;
      v16 = 0;
      v11 = 0;
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

    v27 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
    -[SBFullScreenToHomeIconZoomSwitcherModifier _homeScreenFrameForZoomingIndex:ignoringGenie:](self, "_homeScreenFrameForZoomingIndex:ignoringGenie:", [v27 indexOfObject:v4], 1);
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
    v36 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad];
    UIRectGetCenter();
    v39 = v38;
    if ((v36 & 1) == 0)
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
    v52 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome];
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

    v54 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self _layoutSettings];
    v66[0] = v68;
    v66[1] = v69;
    v67 = v70;
    v9 = [SBSwitcherGenieAttributes genieAttributesForIconPosition:v52 windowPosition:v66 initialVelocity:v54 windowSize:v39 minimizedSize:v56 minimizedScale:v64 containerSize:v63 minimumOutsetSize:v61 genieScale:v60 multiplier:v62 active:v15 glassHighlight:v29 layoutSettings:v59, *&v41, v58, v57, *&v44, *&v45, *&v51, *&v50, *&v50];
  }

  else
  {
    v65.receiver = self;
    v65.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    v9 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v65 genieAttributesForAppLayout:v4];
  }

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:?])
  {
    if (!self->_genieEnabled || self->_hasResetCornerRadius || self->_homeScreenIconIsWidget || [(SBTransitionSwitcherModifier *)self transitionPhase]< 2)
    {
      if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome])
      {
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)self scaleForIndex:a3];

        SBRectCornerRadiiForRadius();
      }

      else
      {
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v19 cornerRadiiForIndex:a3, v18.receiver, v18.super_class, self, SBFullScreenToHomeIconZoomSwitcherModifier];
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
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v18 cornerRadiiForIndex:a3, self, SBFullScreenToHomeIconZoomSwitcherModifier, v19.receiver, v19.super_class];
  }

  result.topRight = v17;
  result.bottomRight = v16;
  result.bottomLeft = v15;
  result.topLeft = v14;
  return result;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3
{
  result = 0;
  if ([(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad])
  {
    v6.receiver = self;
    v6.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v6 frameForIndex:a3];
    SBRectWithSize();
    if (BSFloatLessThanFloat())
    {
      return 1;
    }
  }

  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 itemForLayoutRole:a3];
  v10 = 1.0;
  if (![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a5])
  {
    if (self->_direction == 1)
    {
      v11 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self desktopSpaceDisplayItems];
      if ([v11 containsObject:v9])
      {
LABEL_6:

        goto LABEL_14;
      }

      v12 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayoutOnStage];
      if ([v12 containsItem:v9])
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
      v14 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self windowManagementContext];
      if (([v14 isAutomaticStageCreationEnabled] & 1) == 0)
      {
        v15 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self peekingAppLayout];
        if (![v15 containsItem:v9])
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
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v19 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v10 = v16;
  }

LABEL_14:

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  if (![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isIndexZoomAppLayout:a4]|| ![(SBFullScreenToHomeIconZoomSwitcherModifier *)self _isEffectivelyHome]|| !self->_shouldDockOrderFrontDuringTransition || self->_direction || (result = 0.0, !self->_homeScreenIconLocationIsFloatingDock))
  {
    v8.receiver = self;
    v8.super_class = SBFullScreenToHomeIconZoomSwitcherModifier;
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)&v8 shadowOpacityForLayoutRole:a3 atIndex:a4, result];
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
  v2 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
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
  v3 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  appLayout = self->_appLayout;
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self floatingDockHeight];
  v34 = v6;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self screenScale];
  v33 = v7;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self containerViewBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDisplayEmbedded];
  v17 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersStripHidden];
  v18 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self prefersDockHidden];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v31 = [v3 flexibleWindowingAutoLayoutSpaceForAppLayout:appLayout containerOrientation:v5 floatingDockHeight:v16 screenScale:v17 bounds:v18 isEmbeddedDisplay:v34 prefersStripHidden:v33 prefersDockHidden:v9 leftStatusBarPartIntersectionRegion:v11 rightStatusBarPartIntersectionRegion:{v13, v15, v20, v22, v24, v26, v27, v28, v29, v30}];

  return v31;
}

- (double)_genieCounterScaleIfNeeded
{
  result = 1.0;
  if (self->_genieEnabled)
  {
    v4 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self isDevicePad];
    result = 2.0;
    if ((v4 & 1) == 0)
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

- (BOOL)_isIndexZoomAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_appLayout];
  return v4;
}

- (id)_settingsByInterpolatingBetween:(id)a3 and:(id)a4 progress:(double)a5
{
  v6 = MEMORY[0x277D65E60];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setDefaultValues];
  [v8 dampingRatio];
  [v7 dampingRatio];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setDampingRatio:?];
  [v8 response];
  [v7 response];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setResponse:?];
  [v8 retargetImpulse];

  [v7 retargetImpulse];
  BSFloatByLinearlyInterpolatingFloats();
  [v9 setRetargetImpulse:?];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v9 setFrameRateRange:1114114 highFrameRateReason:{*&v12.minimum, *&v12.maximum, *&v12.preferred}];

  return v9;
}

- (double)_normalizedHomeScreenIconZoomPercentBetweenTopAndBottom:(CGPoint)a3
{
  y = a3.y;
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