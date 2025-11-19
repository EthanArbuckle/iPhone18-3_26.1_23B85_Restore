@interface SBHomeGestureToSwitcherSwitcherModifier
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (SBHomeGestureToSwitcherSwitcherModifier)initWithTransitionID:(id)a3 multitaskingModifier:(id)a4 selectedAppLayout:(id)a5 startingEnvironmentMode:(int64_t)a6 liftOffVelocity:(CGPoint)a7 liftOffTranslation:(CGPoint)a8 adjustAppLayoutsBeforeTransition:(BOOL)a9 keepSelectedAppLayoutAsTopMostElement:(BOOL)a10;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)containerStatusBarAnimationDuration;
- (id)_appLayoutToScrollToDuringTransition;
- (id)_layoutSettings;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)_appLayoutAlignmentToScrollToDuringTransition;
@end

@implementation SBHomeGestureToSwitcherSwitcherModifier

- (SBHomeGestureToSwitcherSwitcherModifier)initWithTransitionID:(id)a3 multitaskingModifier:(id)a4 selectedAppLayout:(id)a5 startingEnvironmentMode:(int64_t)a6 liftOffVelocity:(CGPoint)a7 liftOffTranslation:(CGPoint)a8 adjustAppLayoutsBeforeTransition:(BOOL)a9 keepSelectedAppLayoutAsTopMostElement:(BOOL)a10
{
  y = a8.y;
  x = a8.x;
  v14 = a7.y;
  v15 = a7.x;
  v21 = a4;
  v22 = a5;
  v26.receiver = self;
  v26.super_class = SBHomeGestureToSwitcherSwitcherModifier;
  v23 = [(SBTransitionSwitcherModifier *)&v26 initWithTransitionID:a3];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_multitaskingModifier, a4);
    objc_storeStrong(&v24->_selectedAppLayout, a5);
    v24->_startingEnvironmentMode = a6;
    v24->_liftOffVelocity.x = v15;
    v24->_liftOffVelocity.y = v14;
    v24->_liftOffTranslation.x = x;
    v24->_liftOffTranslation.y = y;
    v24->_adjustAppLayoutsBeforeTransition = a9;
    v24->_keepSelectedAppLayoutAsTopMostElement = a10;
    v24->_hidEventSenderID = 0;
  }

  return v24;
}

- (id)transitionWillBegin
{
  v20.receiver = self;
  v20.super_class = SBHomeGestureToSwitcherSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v20 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  if (self->_adjustAppLayoutsBeforeTransition)
  {
    v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v5];
  }

  v6 = [(SBHomeGestureToSwitcherSwitcherModifier *)self _appLayoutToScrollToDuringTransition];
  if (v6)
  {
    v7 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v6 alignment:[(SBHomeGestureToSwitcherSwitcherModifier *)self _appLayoutAlignmentToScrollToDuringTransition] animated:0];
    [(SBChainableModifierEventResponse *)v4 addChildResponse:v7];
  }

  v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v8];

  v9 = [(SBHomeGestureToSwitcherSwitcherModifier *)self appLayouts];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [(SBHomeGestureToSwitcherSwitcherModifier *)self switcherSettings];
    v12 = [v11 animationSettings];
    [v12 emptySwitcherDismissDelay];
    v14 = v13;

    v15 = [SBTimerEventSwitcherEventResponse alloc];
    v16 = [(SBHomeGestureToSwitcherSwitcherModifier *)self _dismissForEmptySwitcherResponseName];
    v17 = [(SBTimerEventSwitcherEventResponse *)v15 initWithDelay:0 validator:v16 reason:v14];

    [(SBChainableModifierEventResponse *)v4 addChildResponse:v17];
  }

  v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v18;
}

- (id)handleTimerEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBHomeGestureToSwitcherSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v11 handleTimerEvent:v4];
  v6 = [v4 reason];

  v7 = [(SBHomeGestureToSwitcherSwitcherModifier *)self _dismissForEmptySwitcherResponseName];
  if ([(SBDismissForEmptySwitcherSwitcherEventResponse *)v6 isEqualToString:v7])
  {
    v8 = [(SBHomeGestureToSwitcherSwitcherModifier *)self appLayouts];
    v9 = [v8 count];

    if (v9)
    {
      goto LABEL_5;
    }

    v6 = [[SBDismissForEmptySwitcherSwitcherEventResponse alloc] initWithHIDEventSenderID:self->_hidEventSenderID];
    [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];
    v5 = v7 = v5;
  }

LABEL_5:

  return v5;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_21F9DA6A3;
  v14 = *MEMORY[0x277CBF348];
  multitaskingModifier = self->_multitaskingModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SBHomeGestureToSwitcherSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v9[3] = &unk_2783AA6B8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  v9[7] = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v9];
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __75__SBHomeGestureToSwitcherSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) contentOffsetForIndex:a1[6] alignment:a1[7]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  self->_fromPeekConfiguration = [v4 fromPeekConfiguration];
  v15.receiver = self;
  v15.super_class = SBHomeGestureToSwitcherSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v15 handleTransitionEvent:v4];
  v6 = [(SBHomeGestureToSwitcherSwitcherModifier *)self windowManagementContext];
  v7 = [v6 isFlexibleWindowingEnabled];

  if (v7)
  {
    if ([v4 phase] == 1)
    {
      v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
      v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v8];

      v10 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
      v11 = [v4 fromAppLayout];
      v5 = [v4 toAppLayout];
      v12 = [(SBInvalidateContinuousExposeIdentifiersEventResponse *)v10 initWithTransitioningFromAppLayout:v11 transitioningToAppLayout:v5 animated:0];
      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v12 toResponse:v9];
    }

    else
    {
      if ([v4 phase] != 2)
      {
        goto LABEL_7;
      }

      v11 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v11 toResponse:v5];
    }

    v5 = v13;
  }

LABEL_7:

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  if (self->_adjustAppLayoutsBeforeTransition && [(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__143;
    v16 = __Block_byref_object_dispose__143;
    v17 = 0;
    multitaskingModifier = self->_multitaskingModifier;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__SBHomeGestureToSwitcherSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v9[3] = &unk_2783AB258;
    v11 = &v12;
    v9[4] = self;
    v10 = v4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v9];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHomeGestureToSwitcherSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v8 adjustedAppLayoutsForAppLayouts:v4];
  }

  return v6;
}

void __75__SBHomeGestureToSwitcherSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 176) adjustedAppLayoutsForAppLayouts:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)visibleAppLayouts
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__143;
    v12 = __Block_byref_object_dispose__143;
    v13 = 0;
    multitaskingModifier = self->_multitaskingModifier;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__SBHomeGestureToSwitcherSwitcherModifier_visibleAppLayouts__block_invoke;
    v7[3] = &unk_2783A8CE0;
    v7[4] = self;
    v7[5] = &v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v7];
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHomeGestureToSwitcherSwitcherModifier;
    v4 = [(SBHomeGestureToSwitcherSwitcherModifier *)&v6 visibleAppLayouts];
  }

  return v4;
}

void __60__SBHomeGestureToSwitcherSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureToSwitcherSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBHomeGestureToSwitcherSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v3 = [(SBHomeGestureToSwitcherSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  if (([(SBHomeGestureToSwitcherSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
  {
    [v4 reduceMotionAppToSwitcherSettings];
  }

  else
  {
    [v4 gestureInitiatedAppToSwitcherSettings];
  }
  v5 = ;

  return v5;
}

- (id)topMostLayoutElements
{
  v20.receiver = self;
  v20.super_class = SBHomeGestureToSwitcherSwitcherModifier;
  v3 = [(SBHomeGestureToSwitcherSwitcherModifier *)&v20 topMostLayoutElements];
  selectedAppLayout = self->_selectedAppLayout;
  if (selectedAppLayout && self->_keepSelectedAppLayoutAsTopMostElement)
  {
    v5 = selectedAppLayout;
    v6 = [(SBHomeGestureToSwitcherSwitcherModifier *)self windowManagementContext];
    v7 = [v6 isFlexibleWindowingEnabled];

    if (!v7)
    {
      goto LABEL_7;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__143;
    v18 = __Block_byref_object_dispose__143;
    v19 = 0;
    multitaskingModifier = self->_multitaskingModifier;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__SBHomeGestureToSwitcherSwitcherModifier_topMostLayoutElements__block_invoke;
    v13[3] = &unk_2783A8CE0;
    v13[4] = self;
    v13[5] = &v14;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v13];
    if (v15[5])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__SBHomeGestureToSwitcherSwitcherModifier_topMostLayoutElements__block_invoke_2;
      v12[3] = &unk_2783C3DA8;
      v12[4] = &v14;
      v9 = [(SBAppLayout *)v5 appLayoutWithItemsPassingTest:v12];

      v5 = v9;
    }

    _Block_object_dispose(&v14, 8);

    if (v5)
    {
LABEL_7:
      v10 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
      [v10 removeObject:v5];
      [v10 insertObject:v5 atIndex:0];

      v3 = v10;
    }
  }

  return v3;
}

void __64__SBHomeGestureToSwitcherSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) organicExposeAppLayout];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4010000000;
  v17 = &unk_21F9DA6A3;
  v3 = *(MEMORY[0x277D76E40] + 16);
  multitaskingModifier = self->_multitaskingModifier;
  v18 = *MEMORY[0x277D76E40];
  v19 = v3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SBHomeGestureToSwitcherSwitcherModifier_cornerRadiiForIndex___block_invoke;
  v13[3] = &unk_2783AA618;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v13];
  v5 = v15[4];
  v6 = v15[5];
  v7 = v15[6];
  v8 = v15[7];
  _Block_object_dispose(&v14, 8);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.topRight = v12;
  result.bottomRight = v11;
  result.bottomLeft = v10;
  result.topLeft = v9;
  return result;
}

uint64_t __63__SBHomeGestureToSwitcherSwitcherModifier_cornerRadiiForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) cornerRadiiForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)containerStatusBarAnimationDuration
{
  v3 = [(SBHomeGestureToSwitcherSwitcherModifier *)self appLayouts];
  v4 = [v3 count];

  if (v4)
  {
    return 0.35;
  }

  v6 = [(SBHomeGestureToSwitcherSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  [v7 statusBarToApexBounceAnimationDuration];
  v9 = v8;

  return v9;
}

- (id)appLayoutsToCacheSnapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__143;
  v10 = __Block_byref_object_dispose__143;
  v11 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SBHomeGestureToSwitcherSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__SBHomeGestureToSwitcherSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v3 = [(SBHomeGestureToSwitcherSwitcherModifier *)self appLayouts];
  v4 = v3;
  if (self->_selectedAppLayout)
  {
    v5 = [v3 indexOfObject:?];
    if (v5)
    {
      v6 = v5 - 1;
      v7 = 3;
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

  v13.length = [v4 count];
  v12.location = v6;
  v12.length = v7;
  v13.location = 0;
  v8 = NSIntersectionRange(v12, v13);
  v9 = [v4 subarrayWithRange:{v8.location, v8.length}];

  return v9;
}

- (id)_appLayoutToScrollToDuringTransition
{
  v3 = [(SBHomeGestureToSwitcherSwitcherModifier *)self homeGestureSettings];
  [v3 velocityXThresholdForUnconditionalArcSwipe];
  v5 = v4;
  v6 = SBMainScreenPointsPerMillimeter();
  v7 = [(SBHomeGestureToSwitcherSwitcherModifier *)self windowManagementContext];
  if ([v7 isFlexibleWindowingEnabled])
  {
    v8 = [(SBHomeGestureToSwitcherSwitcherModifier *)self recentAppLayouts];
    v9 = [(SBHomeGestureToSwitcherSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v8];
  }

  else
  {
    v9 = [(SBHomeGestureToSwitcherSwitcherModifier *)self appLayouts];
  }

  if (self->_startingEnvironmentMode == 1)
  {
    v10 = [v9 firstObject];
  }

  else
  {
    v11 = [v9 indexOfObject:self->_selectedAppLayout];
    if (([v9 containsObject:self->_selectedAppLayout] & 1) == 0)
    {
      v12 = [(SBAppLayout *)self->_selectedAppLayout allItems];
      v13 = [v12 count];

      if (v13 >= 2)
      {
        v14 = [(SBHomeGestureToSwitcherSwitcherModifier *)self displayItemInSlideOver];
        if ([(SBAppLayout *)self->_selectedAppLayout containsItem:v14])
        {
          v15 = [(SBAppLayout *)self->_selectedAppLayout appLayoutByRemovingItemInLayoutRole:[(SBAppLayout *)self->_selectedAppLayout layoutRoleForItem:v14]];
          v11 = [v9 indexOfObject:v15];
        }
      }
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
      goto LABEL_28;
    }

    v17 = v5 * v6;
    [(SBHomeGestureToSwitcherSwitcherModifier *)self containerViewBounds];
    x = self->_liftOffVelocity.x;
    v20 = x > v17 || self->_liftOffTranslation.x > v18 * 0.5;
    if (x >= -v17 && self->_liftOffTranslation.x >= v18 * -0.5)
    {
      v22 = 0;
      v21 = v11 + v20;
    }

    else
    {
      v21 = v11 - 1;
      v22 = 1;
    }

    v23 = 1;
    if (self->_startingEnvironmentMode == 3 && !v21)
    {
      v24 = [(SBHomeGestureToSwitcherSwitcherModifier *)self switcherSettings];
      v23 = [v24 effectiveSwitcherStyle] != 1;
    }

    v25 = v21 + ((((v22 | v23) | v20) & 1) == 0);
    v26 = [v9 count];
    if (v26 - 1 >= (v25 & ~(v25 >> 63)))
    {
      v27 = v25 & ~(v25 >> 63);
    }

    else
    {
      v27 = v26 - 1;
    }

    v10 = [v9 objectAtIndex:v27];
  }

  v16 = v10;
LABEL_28:

  return v16;
}

- (int64_t)_appLayoutAlignmentToScrollToDuringTransition
{
  if (self->_startingEnvironmentMode == 1 && !SBPeekConfigurationIsValid(self->_fromPeekConfiguration))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

@end