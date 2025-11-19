@interface SBContinuousExposeSwitcherToAppModifier
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBContinuousExposeSwitcherToAppModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 multitaskingModifier:(id)a5;
- (double)fadeInDelayForSplitViewHandles;
- (id)_layoutSettings;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBContinuousExposeSwitcherToAppModifier

- (SBContinuousExposeSwitcherToAppModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 multitaskingModifier:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SBContinuousExposeSwitcherToAppModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v13 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    v10->_direction = a4;
    objc_storeStrong(&v10->_multitaskingModifier, a5);
  }

  return v11;
}

- (void)didMoveToParentModifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeSwitcherToAppModifier;
  [(SBChainableModifier *)&v9 didMoveToParentModifier:?];
  if (a3)
  {
    if (!self->_coplanarModifier)
    {
      v5 = [SBCoplanarSwitcherModifier alloc];
      v6 = [(SBContinuousExposeSwitcherToAppModifier *)self appLayoutOnStage];
      v7 = [(SBCoplanarSwitcherModifier *)v5 initWithActiveAppLayout:v6];
      coplanarModifier = self->_coplanarModifier;
      self->_coplanarModifier = v7;

      [(SBCoplanarSwitcherModifier *)self->_coplanarModifier setUsesContainerViewBoundsAsActiveFrame:1];
    }
  }
}

- (id)transitionWillBegin
{
  v13.receiver = self;
  v13.super_class = SBContinuousExposeSwitcherToAppModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v13 transitionWillBegin];
  if (self->_direction == 1)
  {
    v4 = [SBScrollToAppLayoutSwitcherEventResponse alloc];
    v5 = [(SBContinuousExposeSwitcherToAppModifier *)self appLayouts];
    v6 = [v5 firstObject];
    v7 = [(SBScrollToAppLayoutSwitcherEventResponse *)v4 initWithAppLayout:v6 alignment:0 animated:0];

    v8 = SBAppendSwitcherModifierResponse(v7, v3);

    v9 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v10 = SBAppendSwitcherModifierResponse(v9, v8);

    v11 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:0];
    v3 = SBAppendSwitcherModifierResponse(v11, v10);
  }

  return v3;
}

- (id)transitionWillUpdate
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeSwitcherToAppModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillUpdate];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBContinuousExposeSwitcherToAppModifier;
  v5 = [(SBContinuousExposeSwitcherToAppModifier *)&v15 appLayoutsForContinuousExposeIdentifier:v4];
  v6 = [(SBContinuousExposeSwitcherToAppModifier *)self appLayoutOnStage];
  v7 = v6;
  if (self->_direction)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8 || ([v6 continuousExposeIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = BSEqualStrings(), v9, !v10))
  {
    v11 = v5;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__SBContinuousExposeSwitcherToAppModifier_appLayoutsForContinuousExposeIdentifier___block_invoke;
    v13[3] = &unk_2783A8CB8;
    v14 = v7;
    v11 = [v5 bs_filter:v13];
  }

  return v11;
}

uint64_t __83__SBContinuousExposeSwitcherToAppModifier_appLayoutsForContinuousExposeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isOrContainsAppLayout:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isOrContainsAppLayout:*(a1 + 32)] ^ 1;
  }

  return v4;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  if (self->_direction == 1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__83;
    v18 = __Block_byref_object_dispose__83;
    v19 = 0;
    v5 = [(SBContinuousExposeSwitcherToAppModifier *)self multitaskingModifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__SBContinuousExposeSwitcherToAppModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v10[3] = &unk_2783AB258;
    v13 = &v14;
    v6 = v5;
    v11 = v6;
    v12 = v4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v6 usingBlock:v10];
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeSwitcherToAppModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v9 adjustedAppLayoutsForAppLayouts:v4];
  }

  return v7;
}

void __75__SBContinuousExposeSwitcherToAppModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) adjustedAppLayoutsForAppLayouts:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  direction = self->_direction;
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1 && direction == 1)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x4010000000;
    v41 = &unk_21F9DA6A3;
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v42 = *MEMORY[0x277CBF3A0];
    v43 = v6;
    v7 = [(SBContinuousExposeSwitcherToAppModifier *)self appLayouts];
    v8 = [v7 objectAtIndex:a3];

    v37.receiver = self;
    v37.super_class = SBContinuousExposeSwitcherToAppModifier;
    v9 = [(SBContinuousExposeSwitcherToAppModifier *)&v37 continuousExposeIdentifiersInStrip];
    v10 = [v8 continuousExposeIdentifier];
    v11 = [v9 containsObject:v10];

    v12 = [(SBContinuousExposeSwitcherToAppModifier *)self appLayoutOnStage];
    v13 = [v8 isOrContainsAppLayout:v12];

    v14 = [(SBContinuousExposeSwitcherToAppModifier *)self desktopSpaceDisplayItems];
    if ([v14 count] && objc_msgSend(v8, "containsAllItemsFromSet:", v14))
    {
      coplanarModifier = self->_coplanarModifier;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __57__SBContinuousExposeSwitcherToAppModifier_frameForIndex___block_invoke;
      v36[3] = &unk_2783AA618;
      v36[4] = self;
      v36[5] = &v38;
      v36[6] = a3;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:coplanarModifier usingBlock:v36];
    }

    else if (((v13 | v11) & 1) == 0)
    {
      v24 = [(SBContinuousExposeSwitcherToAppModifier *)self multitaskingModifier];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __57__SBContinuousExposeSwitcherToAppModifier_frameForIndex___block_invoke_2;
      v31[3] = &unk_2783AA668;
      v34 = &v38;
      v25 = v24;
      v35 = a3;
      v32 = v25;
      v33 = self;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v25 usingBlock:v31];
    }

    v17 = v39[4];
    v19 = v39[5];
    v21 = v39[6];
    v23 = v39[7];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v30.receiver = self;
    v30.super_class = SBContinuousExposeSwitcherToAppModifier;
    [(SBContinuousExposeSwitcherToAppModifier *)&v30 frameForIndex:a3];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  v26 = v17;
  v27 = v19;
  v28 = v21;
  v29 = v23;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

uint64_t __57__SBContinuousExposeSwitcherToAppModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void __57__SBContinuousExposeSwitcherToAppModifier_frameForIndex___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) frameForIndex:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v7 = [*(a1 + 40) isRTLEnabled];
  [*(a1 + 32) distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:*(a1 + 56)];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  *(*(*(a1 + 48) + 8) + 32) = CGRectOffset(*(*(*(a1 + 48) + 8) + 32), v9, 0.0);
}

- (id)visibleAppLayouts
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__83;
  v15 = __Block_byref_object_dispose__83;
  v10.receiver = self;
  v10.super_class = SBContinuousExposeSwitcherToAppModifier;
  v16 = [(SBContinuousExposeSwitcherToAppModifier *)&v10 visibleAppLayouts];
  v3 = [(SBContinuousExposeSwitcherToAppModifier *)self multitaskingModifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SBContinuousExposeSwitcherToAppModifier_visibleAppLayouts__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v9 = &v11;
  v4 = v3;
  v8 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v4 usingBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __60__SBContinuousExposeSwitcherToAppModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [*(a1 + 32) visibleAppLayouts];
  v3 = [v2 setByAddingObjectsFromSet:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = &unk_21F9DA6A3;
  v7 = [(SBContinuousExposeSwitcherToAppModifier *)self multitaskingModifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__SBContinuousExposeSwitcherToAppModifier_contentOffsetForIndex_alignment___block_invoke;
  v13[3] = &unk_2783AA6B8;
  v15 = &v18;
  v8 = v7;
  v14 = v8;
  v16 = a3;
  v17 = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v8 usingBlock:v13];
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

uint64_t __75__SBContinuousExposeSwitcherToAppModifier_contentOffsetForIndex_alignment___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) contentOffsetForIndex:*(a1 + 48) alignment:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBContinuousExposeSwitcherToAppModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  [v5 setLayoutUpdateMode:3];
  v6 = [(SBContinuousExposeSwitcherToAppModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (double)fadeInDelayForSplitViewHandles
{
  v2 = [(SBContinuousExposeSwitcherToAppModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)_layoutSettings
{
  v2 = [(SBContinuousExposeSwitcherToAppModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 layoutSettings];

  return v4;
}

@end