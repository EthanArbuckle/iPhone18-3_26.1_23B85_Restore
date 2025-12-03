@interface SBFlexibleWindowingArcSwipeSwitcherModifier
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (SBFlexibleWindowingArcSwipeSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)radii;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)fadeInDelayForSplitViewHandles;
- (id)_layoutSettings;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleTimerEvent:(id)event;
- (id)keyboardSuppressionMode;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
@end

@implementation SBFlexibleWindowingArcSwipeSwitcherModifier

- (SBFlexibleWindowingArcSwipeSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)radii
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v21.receiver = self;
  v21.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v21 initWithTransitionID:d];
  if (v14)
  {
    if (!appLayoutCopy)
    {
      [SBFlexibleWindowingArcSwipeSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? pinSpaceCornerRadiiToDisplayCornerRadii:?];
    }

    objc_storeStrong(&v14->_fromAppLayout, layout);
    objc_storeStrong(&v14->_toAppLayout, appLayout);
    v14->_pinSpaceCornerRadiiToDisplayCornerRadii = radii;
    v15 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [v15 stringWithFormat:@"%@-%@", @"SBFlexibleWindowingArcSwipeTimerReason", uUIDString];
    uniqueTimerReason = v14->_uniqueTimerReason;
    v14->_uniqueTimerReason = v18;
  }

  return v14;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

  if (!self->_systemApertureSuppressionIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    systemApertureSuppressionIdentifier = self->_systemApertureSuppressionIdentifier;
    self->_systemApertureSuppressionIdentifier = uUID;

    v8 = [[SBRequestSystemApertureElementSuppressionEventResponse alloc] initWithAppLayout:self->_toAppLayout wantsGlobalSuppression:0 wantsKeyLineEnabled:0 invalidationIdentifier:self->_systemApertureSuppressionIdentifier];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    v5 = v9;
  }

  return v5;
}

- (id)transitionWillUpdate
{
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v11 transitionWillUpdate];
  self->_hideSplitViewHandles = 1;
  v4 = [SBTimerEventSwitcherEventResponse alloc];
  v5 = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self animationAttributesForLayoutElement:self->_toAppLayout];
  layoutSettings = [v5 layoutSettings];
  [layoutSettings settlingDuration];
  v8 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:0 validator:self->_uniqueTimerReason reason:v7 * 0.3];

  v9 = SBAppendSwitcherModifierResponse(v8, transitionWillUpdate);

  return v9;
}

- (id)transitionDidEnd
{
  v8.receiver = self;
  v8.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v8 transitionDidEnd];
  if (self->_systemApertureSuppressionIdentifier)
  {
    v4 = [[SBRelinquishSystemApertureElementSuppressionEventResponse alloc] initWithInvalidationIdentifier:self->_systemApertureSuppressionIdentifier];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionDidEnd];

    systemApertureSuppressionIdentifier = self->_systemApertureSuppressionIdentifier;
    self->_systemApertureSuppressionIdentifier = 0;

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = BSEqualStrings();
  if (eventCopy)
  {
    self->_hideSplitViewHandles = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:16 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  desktopSpaceDisplayItems = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self desktopSpaceDisplayItems];
  v12.receiver = self;
  v12.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  v6 = [(SBTransitionSwitcherModifier *)&v12 adjustedAppLayoutsForAppLayouts:layoutsCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SBFlexibleWindowingArcSwipeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v10[3] = &unk_2783AEDB8;
  v10[4] = self;
  v11 = desktopSpaceDisplayItems;
  v7 = desktopSpaceDisplayItems;
  v8 = [v6 bs_filter:v10];

  return v8;
}

uint64_t __79__SBFlexibleWindowingArcSwipeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allItems];
  if ([v4 count] == 1)
  {
    v5 = 1;
    v6 = [*(a1 + 32) maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v3 ignoreOcclusion:1 ignoreCentering:0];
    v7 = [v6 count];

    if (v7 == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([*(*(a1 + 32) + 168) containsAnyItemFromAppLayout:v3] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 176), "containsAnyItemFromAppLayout:", v3))
  {
    v5 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) appLayoutOnStage];
    if ([v8 containsAnyItemFromAppLayout:v3])
    {
      v5 = 1;
    }

    else if ([*(a1 + 40) count])
    {
      v5 = [v3 containsAllItemsFromSet:*(a1 + 40)];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_14:

  return v5;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  switcherSettings = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  _layoutSettings = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *delay = v11 * v12;

  return 1;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  visibleAppLayouts = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  [v4 addObject:self->_toAppLayout];
  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (id)_layoutSettings
{
  windowManagementContext = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled] && (objc_msgSend(windowManagementContext, "isAutomaticStageCreationEnabled") & 1) == 0)
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [initWithDefaultValues setResponse:0.54];
    [initWithDefaultValues setDampingRatio:0.8];
  }

  else
  {
    switcherSettings = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];

    if (([(SBFlexibleWindowingArcSwipeSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
    {
      [animationSettings reduceMotionArcSwipeSettings];
    }

    else
    {
      [animationSettings arcSwipeSettings];
    }
    initWithDefaultValues = ;
  }

  return initWithDefaultValues;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index
{
  toAppLayout = self->_toAppLayout;
  appLayouts = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];
  LOBYTE(toAppLayout) = [(SBAppLayout *)toAppLayout isEqual:v6];

  return toAppLayout;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)visibleSplitViewHandleNubViews
{
  if (self->_hideSplitViewHandles)
  {
    visibleSplitViewHandleNubViews = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
    visibleSplitViewHandleNubViews = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)&v4 visibleSplitViewHandleNubViews];
  }

  return visibleSplitViewHandleNubViews;
}

- (id)visibleSplitViewHandleDimmingViews
{
  if (self->_hideSplitViewHandles)
  {
    visibleSplitViewHandleDimmingViews = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
    visibleSplitViewHandleDimmingViews = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)&v4 visibleSplitViewHandleDimmingViews];
  }

  return visibleSplitViewHandleDimmingViews;
}

- (id)appLayoutsToCacheSnapshots
{
  appLayouts = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    appLayouts2 = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self appLayouts];
    v5 = [appLayouts2 indexOfObject:self->_toAppLayout];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL && (v11[0] = MEMORY[0x277D85DD0], v11[1] = 3221225472, v11[2] = __73__SBFlexibleWindowingArcSwipeSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke, v11[3] = &unk_2783AE1A0, v11[4] = self, v5 = [appLayouts2 indexOfObjectPassingTest:v11], v5 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = v5;
      switcherSettings = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self switcherSettings];
      numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToAlwaysKeepAround];
      if (!numberOfSnapshotsToAlwaysKeepAround)
      {
        numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToCacheInSwitcher];
      }

      v6 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v7 numberOfSnapshotsToCache:1 biasForward:numberOfSnapshotsToAlwaysKeepAround, 1];
    }
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

uint64_t __73__SBFlexibleWindowingArcSwipeSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrContainsAppLayout:*(*(a1 + 32) + 168)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 168) isOrContainsAppLayout:v3];
  }

  return v4;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  appLayouts = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self appLayouts];
  v4 = appLayouts;
  if (self->_fromAppLayout)
  {
    v5 = [appLayouts indexOfObject:self->_toAppLayout];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __81__SBFlexibleWindowingArcSwipeSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
      v11[3] = &unk_2783AE1A0;
      v11[4] = self;
      v5 = [v4 indexOfObjectPassingTest:v11];
    }

    if (v5)
    {
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
        v7 = 0;
      }

      else
      {
        v6 = v5 - 1;
        v7 = 3;
      }
    }

    else
    {
      v6 = 0;
      v7 = 2;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v14.length = [v4 count];
  v13.location = v6;
  v13.length = v7;
  v14.location = 0;
  v8 = NSIntersectionRange(v13, v14);
  v9 = [v4 subarrayWithRange:{v8.location, v8.length}];

  return v9;
}

uint64_t __81__SBFlexibleWindowingArcSwipeSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrContainsAppLayout:*(*(a1 + 32) + 168)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 168) isOrContainsAppLayout:v3];
  }

  return v4;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  if (self->_pinSpaceCornerRadiiToDisplayCornerRadii)
  {
    [(SBFlexibleWindowingArcSwipeSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
    [(SBFlexibleWindowingArcSwipeSwitcherModifier *)&v7 cornerRadiiForIndex:index];
  }

  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (id)appLayoutsToResignActive
{
  if ([(SBAppLayout *)self->_fromAppLayout isEqual:self->_toAppLayout])
  {
    appLayoutsToResignActive = MEMORY[0x277CBEC10];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
    appLayoutsToResignActive = [(SBTransitionSwitcherModifier *)&v5 appLayoutsToResignActive];
  }

  return appLayoutsToResignActive;
}

- (id)keyboardSuppressionMode
{
  if ([(SBAppLayout *)self->_fromAppLayout isEqual:self->_toAppLayout])
  {
    keyboardSuppressionMode = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
    keyboardSuppressionMode = [(SBTransitionSwitcherModifier *)&v5 keyboardSuppressionMode];
  }

  return keyboardSuppressionMode;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingArcSwipeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v7 asyncRenderingAttributesForAppLayout:layout];
  if (self->_fromAppLayout == self->_toAppLayout)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return (v5 | v4 & 0xFF00);
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:pinSpaceCornerRadiiToDisplayCornerRadii:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingArcSwipeSwitcherModifier.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end