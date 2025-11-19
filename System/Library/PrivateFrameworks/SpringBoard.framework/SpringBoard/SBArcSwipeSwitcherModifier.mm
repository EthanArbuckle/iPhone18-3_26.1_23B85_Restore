@interface SBArcSwipeSwitcherModifier
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3;
- (SBArcSwipeSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)a6;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)keyboardSuppressionMode;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBArcSwipeSwitcherModifier

- (SBArcSwipeSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)a6
{
  v12 = a4;
  v13 = a5;
  v16.receiver = self;
  v16.super_class = SBArcSwipeSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  if (v14)
  {
    if (!v13)
    {
      [SBArcSwipeSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? pinSpaceCornerRadiiToDisplayCornerRadii:?];
    }

    objc_storeStrong(&v14->_fromAppLayout, a4);
    objc_storeStrong(&v14->_toAppLayout, a5);
    v14->_pinSpaceCornerRadiiToDisplayCornerRadii = a6;
  }

  return v14;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBArcSwipeSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  if (!self->_systemApertureSuppressionIdentifier && self->_toAppLayout)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    systemApertureSuppressionIdentifier = self->_systemApertureSuppressionIdentifier;
    self->_systemApertureSuppressionIdentifier = v6;

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
  v3 = [(SBTransitionSwitcherModifier *)&v8 transitionDidEnd];
  if (self->_systemApertureSuppressionIdentifier)
  {
    v4 = [[SBRelinquishSystemApertureElementSuppressionEventResponse alloc] initWithInvalidationIdentifier:self->_systemApertureSuppressionIdentifier];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    systemApertureSuppressionIdentifier = self->_systemApertureSuppressionIdentifier;
    self->_systemApertureSuppressionIdentifier = 0;

    v3 = v5;
  }

  return v3;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3
{
  v5 = [(SBArcSwipeSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];
  [v6 disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  v9 = [(SBArcSwipeSwitcherModifier *)self _layoutSettings];
  [v9 settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *a3 = v11 * v12;

  return 1;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBArcSwipeSwitcherModifier;
  v3 = [(SBArcSwipeSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 mutableCopy];

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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBArcSwipeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBArcSwipeSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v3 = [(SBArcSwipeSwitcherModifier *)self windowManagementContext];
  if ([v3 isFlexibleWindowingEnabled] && (objc_msgSend(v3, "isAutomaticStageCreationEnabled") & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [v6 setResponse:0.54];
    [v6 setDampingRatio:0.8];
  }

  else
  {
    v4 = [(SBArcSwipeSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];

    if (([(SBArcSwipeSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
    {
      [v5 reduceMotionArcSwipeSettings];
    }

    else
    {
      [v5 arcSwipeSettings];
    }
    v6 = ;
  }

  return v6;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3
{
  toAppLayout = self->_toAppLayout;
  if (!toAppLayout)
  {
    return 0;
  }

  v5 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  v7 = [(SBAppLayout *)toAppLayout isEqual:v6];

  return v7;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
    v5 = v4;
    if (self->_toAppLayout)
    {
      v6 = [v4 indexOfObject:?];
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

    v8 = [(SBArcSwipeSwitcherModifier *)self switcherSettings];
    v9 = [v8 numberOfSnapshotsToAlwaysKeepAround];
    if (!v9)
    {
      v9 = [v8 numberOfSnapshotsToCacheInSwitcher];
    }

    v7 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v6 numberOfSnapshotsToCache:1 biasForward:v9, 1];
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
  v3 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
  if (self->_fromAppLayout)
  {
    v4 = [(SBArcSwipeSwitcherModifier *)self appLayouts];
    v5 = [v4 indexOfObject:self->_toAppLayout];

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

  v12.length = [v3 count];
  v11.location = v5;
  v11.length = v6;
  v12.location = 0;
  v7 = NSIntersectionRange(v11, v12);
  v8 = [v3 subarrayWithRange:{v7.location, v7.length}];

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
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
    [(SBArcSwipeSwitcherModifier *)&v7 cornerRadiiForIndex:a3];
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
    v3 = MEMORY[0x277CBEC10];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBArcSwipeSwitcherModifier;
    v3 = [(SBTransitionSwitcherModifier *)&v5 appLayoutsToResignActive];
  }

  return v3;
}

- (id)keyboardSuppressionMode
{
  if ([(SBAppLayout *)self->_fromAppLayout isEqual:self->_toAppLayout])
  {
    v3 = +[SBSwitcherKeyboardSuppressionMode suppressionModeNone];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBArcSwipeSwitcherModifier;
    v3 = [(SBTransitionSwitcherModifier *)&v5 keyboardSuppressionMode];
  }

  return v3;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBArcSwipeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v7 asyncRenderingAttributesForAppLayout:a3];
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