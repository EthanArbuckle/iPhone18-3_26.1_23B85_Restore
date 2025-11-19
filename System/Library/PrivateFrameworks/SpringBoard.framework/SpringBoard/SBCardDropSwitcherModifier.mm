@interface SBCardDropSwitcherModifier
- (BOOL)_appLayoutContainsModifiedAppLayout:(id)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)a3;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (SBCardDropSwitcherModifier)initWithDropContext:(id)a3;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)modelValueForAnimatableProperty:(id)a3 currentValue:(double)a4 creating:(BOOL)a5;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (id)animatablePropertyIdentifiers;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleAnimatablePropertyChangedEvent:(id)a3;
- (id)handleBlurProgressEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleSwitcherDropEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)settingsForAnimatableProperty:(id)a3;
- (id)topMostLayoutElements;
- (int64_t)updateModeForAnimatableProperty:(id)a3;
- (void)_completeIfNeeded;
- (void)_recomputeBlurStateWithCompletion:(id)a3;
@end

@implementation SBCardDropSwitcherModifier

- (SBCardDropSwitcherModifier)initWithDropContext:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SBCardDropSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dropContext, a3);
    v8 = [v5 finalTargetAppLayout];
    finalAppLayout = v7->_finalAppLayout;
    v7->_finalAppLayout = v8;

    v10 = [v5 remainingAppLayout];
    remainingAppLayout = v7->_remainingAppLayout;
    v7->_remainingAppLayout = v10;

    v12 = [v5 evictedAppLayout];
    evictedAppLayout = v7->_evictedAppLayout;
    v7->_evictedAppLayout = v12;

    v7->_shouldExpectMainTransitionEvent = SBSwitcherDropRegionWarrantsModelUpdate([v5 currentDropRegion]);
    v7->_handledMainTransitionEvent = 0;
    v7->_waitingForReflowAnimation = 1;
    v7->_waitingForHeaderFadeIn = 1;
  }

  return v7;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  if (self->_phase == 2)
  {
    v9.receiver = self;
    v9.super_class = SBCardDropSwitcherModifier;
    [(SBCardDropSwitcherModifier *)&v9 contentOffsetForIndex:a3 alignment:a4];
    v7 = v6 - self->_referenceCardOffsetFromPageBoundary.x;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    [(SBCardDropSwitcherModifier *)&v8 contentOffsetForIndex:a3 alignment:a4];
  }

  result.y = v5;
  result.x = v7;
  return result;
}

- (void)_completeIfNeeded
{
  if (self->_phase == 3 && !self->_waitingForHeaderFadeIn)
  {
    [(SBChainableModifier *)self setState:1];
  }
}

- (id)handleSwitcherDropEvent:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = SBCardDropSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v34 handleSwitcherDropEvent:v4];
  v6 = [v4 phase];
  self->_phase = v6;
  v7 = [(SBCardDropSwitcherModifier *)self appLayouts];
  v8 = [(SBSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v7];

  if (v6 == 3)
  {
    [(SBCardDropSwitcherModifier *)self _completeIfNeeded];
  }

  else if (v6 == 2)
  {
    v15 = objc_alloc_init(SBSwitcherModifierEventResponse);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [(SBCardDropSwitcherModifier *)self appLayouts];
      v17 = [v16 objectAtIndex:v8];

      v18 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v17 alignment:0 animated:0];
      [(SBChainableModifierEventResponse *)v15 addChildResponse:v18];
    }

    v19 = [(SBSwitcherDropRegionContext *)self->_dropContext displayItemsToReloadSnapshots];
    v20 = [[SBInvalidateSnapshotCacheSwitcherEventResponse alloc] initWithDisplayItems:v19];
    [(SBChainableModifierEventResponse *)v15 addChildResponse:v20];
    v21 = [[SBInvalidateItemContainerBackdropEventResponse alloc] initWithUpdateMode:3];
    [(SBChainableModifierEventResponse *)v15 addChildResponse:v21];
    v22 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
    [(SBChainableModifierEventResponse *)v15 addChildResponse:v22];
    v23 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:2];
    [(SBChainableModifierEventResponse *)v15 addChildResponse:v23];
    v24 = objc_alloc_init(SBUpdateDragPlatterBlurSwitcherEventResponse);
    [(SBChainableModifierEventResponse *)v15 addChildResponse:v24];
    v25 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v15 toResponse:v5];

    v5 = v25;
  }

  else if (v6 == 1 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBSwitcherModifier *)self scaledFrameForIndex:v8];
    v10 = v9;
    [(SBCardDropSwitcherModifier *)self contentOffsetForIndex:v8 alignment:0];
    v13 = [[SBOverrideScrollViewContentOffsetSwitcherModifier alloc] initWithScrollViewContentOffset:v11, v12];
    v28 = 0;
    v29 = &v28;
    v30 = 0x4010000000;
    v31 = &unk_21F9DA6A3;
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v32 = *MEMORY[0x277CBF3A0];
    v33 = v14;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __54__SBCardDropSwitcherModifier_handleSwitcherDropEvent___block_invoke;
    v27[3] = &unk_2783AA618;
    v27[4] = self;
    v27[5] = &v28;
    v27[6] = v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v13 usingBlock:v27];
    self->_referenceCardOffsetFromPageBoundary.x = v10 - v29[4];
    self->_referenceCardOffsetFromPageBoundary.y = 0.0;
    _Block_object_dispose(&v28, 8);
  }

  return v5;
}

uint64_t __54__SBCardDropSwitcherModifier_handleSwitcherDropEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) scaledFrameForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (id)handleAnimatablePropertyChangedEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBCardDropSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v10 handleAnimatablePropertyChangedEvent:a3];
  [(SBCardDropSwitcherModifier *)self presentationValueForAnimatableProperty:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"];
  v5 = [(SBCardDropSwitcherModifier *)self medusaSettings];
  [v5 reflowAnimationProgressForCardHeaderFadeIn];

  if (BSFloatGreaterThanOrEqualToFloat() && self->_waitingForReflowAnimation)
  {
    self->_waitingForReflowAnimation = 0;
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
    v7 = SBAppendSwitcherModifierResponse(v6, v4);

    v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBCardDropSwitcherModifierTimerEventHeaderVisibleReason" reason:0.0];
    v4 = SBAppendSwitcherModifierResponse(v8, v7);
  }

  return v4;
}

- (id)handleTimerEvent:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__41;
  v15 = __Block_byref_object_dispose__41;
  v10.receiver = self;
  v10.super_class = SBCardDropSwitcherModifier;
  v16 = [(SBSwitcherModifier *)&v10 handleTimerEvent:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBCardDropSwitcherModifier_handleTimerEvent___block_invoke;
  v9[3] = &unk_2783B3C88;
  v9[4] = &v11;
  [(SBCardDropSwitcherModifier *)self _recomputeBlurStateWithCompletion:v9];
  v5 = [v4 reason];
  v6 = [v5 isEqualToString:@"SBCardDropSwitcherModifierTimerEventHeaderVisibleReason"];

  if (v6)
  {
    self->_waitingForHeaderFadeIn = 0;
    [(SBCardDropSwitcherModifier *)self _completeIfNeeded];
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __47__SBCardDropSwitcherModifier_handleTimerEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v11.receiver = self;
  v11.super_class = SBCardDropSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:v4];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v6 = SBAppendSwitcherModifierResponse(v5, v13[5]);
  v7 = v13[5];
  v13[5] = v6;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__SBCardDropSwitcherModifier_handleSceneReadyEvent___block_invoke;
  v10[3] = &unk_2783B3C88;
  v10[4] = &v12;
  [(SBCardDropSwitcherModifier *)self _recomputeBlurStateWithCompletion:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __52__SBCardDropSwitcherModifier_handleSceneReadyEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)handleBlurProgressEvent:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v11.receiver = self;
  v11.super_class = SBCardDropSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v11 handleBlurProgressEvent:v4];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v6 = SBAppendSwitcherModifierResponse(v5, v13[5]);
  v7 = v13[5];
  v13[5] = v6;

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SBCardDropSwitcherModifier_handleBlurProgressEvent___block_invoke;
  v10[3] = &unk_2783B3C88;
  v10[4] = &v12;
  [(SBCardDropSwitcherModifier *)self _recomputeBlurStateWithCompletion:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __54__SBCardDropSwitcherModifier_handleBlurProgressEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBCardDropSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:v4];
  v6 = [v4 toAppLayout];
  finalAppLayout = self->_finalAppLayout;

  if (v6 == finalAppLayout)
  {
    self->_handledMainTransitionEvent = 1;
  }

  if (self->_waitingForHeaderFadeIn && [v4 toEnvironmentMode] != 2)
  {
    self->_waitingForHeaderFadeIn = 0;
    [(SBCardDropSwitcherModifier *)self _completeIfNeeded];
  }

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBCardDropSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleTapAppLayoutEvent:a3];
  self->_waitingForHeaderFadeIn = 0;
  [(SBCardDropSwitcherModifier *)self _completeIfNeeded];

  return v4;
}

- (void)_recomputeBlurStateWithCompletion:(id)a3
{
  v4 = a3;
  isFinalAppLayoutBlurred = self->_isFinalAppLayoutBlurred;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (self->_shouldExpectMainTransitionEvent && !self->_handledMainTransitionEvent)
  {
    v8 = 1;
    v14 = 1;
    v7 = &v11;
  }

  else
  {
    finalAppLayout = self->_finalAppLayout;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__SBCardDropSwitcherModifier__recomputeBlurStateWithCompletion___block_invoke;
    v10[3] = &unk_2783B19C0;
    v10[4] = self;
    v10[5] = &v11;
    [(SBAppLayout *)finalAppLayout enumerate:v10];
    v7 = v12;
    v8 = *(v12 + 24);
  }

  self->_isFinalAppLayoutBlurred = v8;
  if (isFinalAppLayoutBlurred && v4 && (v7[3] & 1) == 0)
  {
    v9 = objc_alloc_init(SBUpdateDragPlatterBlurSwitcherEventResponse);
    v4[2](v4, v9);
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __64__SBCardDropSwitcherModifier__recomputeBlurStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isLayoutRoleContentReady:a2 inAppLayout:*(*(a1 + 32) + 144)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBAppLayout *)v6 leafAppLayoutForRole:a3];
  if (self->_finalAppLayout == v6)
  {
    v9 = [(SBSwitcherDropRegionContext *)self->_dropContext droppedLeafAppLayout];

    v8 = v7 != v9 && self->_isFinalAppLayoutBlurred;
  }

  else
  {
    v8 = [(SBCardDropSwitcherModifier *)self _appLayoutContainsModifiedAppLayout:v6];
  }

  return v8;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBCardDropSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  LOBYTE(v4) = [(SBCardDropSwitcherModifier *)v4 _appLayoutContainsModifiedAppLayout:v6];

  return v4;
}

- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBCardDropSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  LOBYTE(v4) = [(SBCardDropSwitcherModifier *)v4 _appLayoutContainsModifiedAppLayout:v6];

  return v4;
}

- (id)topMostLayoutElements
{
  if (self->_phase < 2)
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    v6 = [(SBCardDropSwitcherModifier *)&v8 topMostLayoutElements];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277CBEB40]);
    v9.receiver = self;
    v9.super_class = SBCardDropSwitcherModifier;
    v4 = [(SBCardDropSwitcherModifier *)&v9 topMostLayoutElements];
    v5 = [v3 initWithArray:v4];

    if (self->_finalAppLayout && ([v5 containsObject:?] & 1) == 0)
    {
      [v5 insertObject:self->_finalAppLayout atIndex:0];
    }

    v6 = [v5 array];
  }

  return v6;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = SBCardDropSwitcherModifier;
  [(SBCardDropSwitcherModifier *)&v10 titleAndIconOpacityForIndex:?];
  v6 = v5;
  v7 = [(SBCardDropSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a3];

  if ([(SBCardDropSwitcherModifier *)self _appLayoutContainsModifiedAppLayout:v8]&& self->_waitingForReflowAnimation)
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBCardDropSwitcherModifier;
  v4 = [(SBCardDropSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBCardDropSwitcherModifier *)self medusaSettings];
  v7 = [v6 switcherCardDropAnimationSettings];

  [v5 setLayoutSettings:v7];
  [v5 setPositionSettings:v7];
  [v5 setScaleSettings:v7];
  [v5 setCornerRadiusSettings:v7];
  [v5 setUpdateMode:3];

  return v5;
}

- (id)animatablePropertyIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier", 0}];

  return v2;
}

- (int64_t)updateModeForAnimatableProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"])
  {
    v5 = 3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCardDropSwitcherModifier;
    v5 = [(SBCardDropSwitcherModifier *)&v7 updateModeForAnimatableProperty:v4];
  }

  return v5;
}

- (id)settingsForAnimatableProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"])
  {
    v5 = [(SBCardDropSwitcherModifier *)self medusaSettings];
    v6 = [v5 medusaAnimationSettings];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    v6 = [(SBCardDropSwitcherModifier *)&v8 settingsForAnimatableProperty:v4];
  }

  return v6;
}

- (double)modelValueForAnimatableProperty:(id)a3 currentValue:(double)a4 creating:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if ([v8 isEqualToString:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"])
  {
    if (v5)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBCardDropSwitcherModifier;
    [(SBCardDropSwitcherModifier *)&v12 modelValueForAnimatableProperty:v8 currentValue:v5 creating:a4];
    v9 = v10;
  }

  return v9;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBCardDropSwitcherModifier *)self _appLayoutContainsModifiedAppLayout:v4])
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    v5 = [(SBCardDropSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBCardDropSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_finalAppLayout || v6 == self->_evictedAppLayout || v6 == self->_remainingAppLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBCardDropSwitcherModifier;
    v7 = [(SBCardDropSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (BOOL)_appLayoutContainsModifiedAppLayout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [(SBAppLayout *)self->_finalAppLayout allItems];
  [v5 addObjectsFromArray:v6];

  remainingAppLayout = self->_remainingAppLayout;
  if (remainingAppLayout)
  {
    v8 = [(SBAppLayout *)remainingAppLayout allItems];
    [v5 addObjectsFromArray:v8];
  }

  evictedAppLayout = self->_evictedAppLayout;
  if (evictedAppLayout)
  {
    v10 = [(SBAppLayout *)evictedAppLayout allItems];
    [v5 addObjectsFromArray:v10];
  }

  v11 = [v4 containsAnyItemFromSet:v5];

  return v11;
}

@end