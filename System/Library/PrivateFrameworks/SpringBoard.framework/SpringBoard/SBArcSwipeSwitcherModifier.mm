@interface SBArcSwipeSwitcherModifier
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (SBArcSwipeSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)radii;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)keyboardSuppressionMode;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBArcSwipeSwitcherModifier

- (SBArcSwipeSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)radii
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v16.receiver = self;
  v16.super_class = SBArcSwipeSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  if (v14)
  {
    if (!appLayoutCopy)
    {
      [SBArcSwipeSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? pinSpaceCornerRadiiToDisplayCornerRadii:?];
    }

    objc_storeStrong(&v14->_fromAppLayout, layout);
    objc_storeStrong(&v14->_toAppLayout, appLayout);
    v14->_pinSpaceCornerRadiiToDisplayCornerRadii = radii;
  }

  return v14;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBArcSwipeSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

  if (!self->_systemApertureSuppressionIdentifier && self->_toAppLayout)
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

- (id)transitionDidEnd
{
  v8.receiver = self;
  v8.super_class = SBArcSwipeSwitcherModifier;
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

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  switcherSettings = [(SBArcSwipeSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  _layoutSettings = [(SBArcSwipeSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *delay = v11 * v12;

  return 1;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBArcSwipeSwitcherModifier;
  visibleAppLayouts = [(SBArcSwipeSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  if (self->_toAppLayout)
  {
    [v4 addObject:?];
  }

  if (self->_fromAppLayout)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBArcSwipeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBArcSwipeSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (id)_layoutSettings
{
  windowManagementContext = [(SBArcSwipeSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled] && (objc_msgSend(windowManagementContext, "isAutomaticStageCreationEnabled") & 1) == 0)
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [initWithDefaultValues setResponse:0.54];
    [initWithDefaultValues setDampingRatio:0.8];
  }

  else
  {
    switcherSettings = [(SBArcSwipeSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];

    if (([(SBArcSwipeSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
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
  if (!toAppLayout)
  {
    return 0;
  }

  appLayouts = [(SBArcSwipeSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];
  v7 = [(SBAppLayout *)toAppLayout isEqual:v6];

  return v7;
}

- (id)appLayoutsToCacheSnapshots
{
  appLayouts = [(SBArcSwipeSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    appLayouts2 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
    v5 = appLayouts2;
    if (self->_toAppLayout)
    {
      v6 = [appLayouts2 indexOfObject:?];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __56__SBArcSwipeSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
        v11[3] = &unk_2783AE1A0;
        v11[4] = self;
        v6 = [v5 indexOfObjectPassingTest:v11];
      }
    }

    else
    {
      v6 = 0;
    }

    switcherSettings = [(SBArcSwipeSwitcherModifier *)self switcherSettings];
    numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToAlwaysKeepAround];
    if (!numberOfSnapshotsToAlwaysKeepAround)
    {
      numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToCacheInSwitcher];
    }

    v7 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v6 numberOfSnapshotsToCache:1 biasForward:numberOfSnapshotsToAlwaysKeepAround, 1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

uint64_t __56__SBArcSwipeSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1, void *a2)
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
  appLayouts = [(SBArcSwipeSwitcherModifier *)self appLayouts];
  if (self->_fromAppLayout)
  {
    appLayouts2 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
    v5 = [appLayouts2 indexOfObject:self->_toAppLayout];

    if (v5)
    {
      --v5;
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  v12.length = [appLayouts count];
  v11.location = v5;
  v11.length = v6;
  v12.location = 0;
  v7 = NSIntersectionRange(v11, v12);
  v8 = [appLayouts subarrayWithRange:{v7.location, v7.length}];

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  if (self->_pinSpaceCornerRadiiToDisplayCornerRadii)
  {
    [(SBArcSwipeSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBArcSwipeSwitcherModifier;
    [(SBArcSwipeSwitcherModifier *)&v7 cornerRadiiForIndex:index];
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
    v5.super_class = SBArcSwipeSwitcherModifier;
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
    v5.super_class = SBArcSwipeSwitcherModifier;
    keyboardSuppressionMode = [(SBTransitionSwitcherModifier *)&v5 keyboardSuppressionMode];
  }

  return keyboardSuppressionMode;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  v7.receiver = self;
  v7.super_class = SBArcSwipeSwitcherModifier;
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
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBArcSwipeSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end