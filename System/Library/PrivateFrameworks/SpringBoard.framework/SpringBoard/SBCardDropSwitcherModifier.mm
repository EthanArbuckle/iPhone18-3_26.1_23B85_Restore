@interface SBCardDropSwitcherModifier
- (BOOL)_appLayoutContainsModifiedAppLayout:(id)layout;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (SBCardDropSwitcherModifier)initWithDropContext:(id)context;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (id)animatablePropertyIdentifiers;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleAnimatablePropertyChangedEvent:(id)event;
- (id)handleBlurProgressEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleSwitcherDropEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)settingsForAnimatableProperty:(id)property;
- (id)topMostLayoutElements;
- (int64_t)updateModeForAnimatableProperty:(id)property;
- (void)_completeIfNeeded;
- (void)_recomputeBlurStateWithCompletion:(id)completion;
@end

@implementation SBCardDropSwitcherModifier

- (SBCardDropSwitcherModifier)initWithDropContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SBCardDropSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dropContext, context);
    finalTargetAppLayout = [contextCopy finalTargetAppLayout];
    finalAppLayout = v7->_finalAppLayout;
    v7->_finalAppLayout = finalTargetAppLayout;

    remainingAppLayout = [contextCopy remainingAppLayout];
    remainingAppLayout = v7->_remainingAppLayout;
    v7->_remainingAppLayout = remainingAppLayout;

    evictedAppLayout = [contextCopy evictedAppLayout];
    evictedAppLayout = v7->_evictedAppLayout;
    v7->_evictedAppLayout = evictedAppLayout;

    v7->_shouldExpectMainTransitionEvent = SBSwitcherDropRegionWarrantsModelUpdate([contextCopy currentDropRegion]);
    v7->_handledMainTransitionEvent = 0;
    v7->_waitingForReflowAnimation = 1;
    v7->_waitingForHeaderFadeIn = 1;
  }

  return v7;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  if (self->_phase == 2)
  {
    v9.receiver = self;
    v9.super_class = SBCardDropSwitcherModifier;
    [(SBCardDropSwitcherModifier *)&v9 contentOffsetForIndex:index alignment:alignment];
    v7 = v6 - self->_referenceCardOffsetFromPageBoundary.x;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    [(SBCardDropSwitcherModifier *)&v8 contentOffsetForIndex:index alignment:alignment];
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

- (id)handleSwitcherDropEvent:(id)event
{
  eventCopy = event;
  v34.receiver = self;
  v34.super_class = SBCardDropSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v34 handleSwitcherDropEvent:eventCopy];
  phase = [eventCopy phase];
  self->_phase = phase;
  appLayouts = [(SBCardDropSwitcherModifier *)self appLayouts];
  v8 = [(SBSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:appLayouts];

  if (phase == 3)
  {
    [(SBCardDropSwitcherModifier *)self _completeIfNeeded];
  }

  else if (phase == 2)
  {
    v15 = objc_alloc_init(SBSwitcherModifierEventResponse);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      appLayouts2 = [(SBCardDropSwitcherModifier *)self appLayouts];
      v17 = [appLayouts2 objectAtIndex:v8];

      v18 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v17 alignment:0 animated:0];
      [(SBChainableModifierEventResponse *)v15 addChildResponse:v18];
    }

    displayItemsToReloadSnapshots = [(SBSwitcherDropRegionContext *)self->_dropContext displayItemsToReloadSnapshots];
    v20 = [[SBInvalidateSnapshotCacheSwitcherEventResponse alloc] initWithDisplayItems:displayItemsToReloadSnapshots];
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

  else if (phase == 1 && v8 != 0x7FFFFFFFFFFFFFFFLL)
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

- (id)handleAnimatablePropertyChangedEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBCardDropSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v10 handleAnimatablePropertyChangedEvent:event];
  [(SBCardDropSwitcherModifier *)self presentationValueForAnimatableProperty:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"];
  medusaSettings = [(SBCardDropSwitcherModifier *)self medusaSettings];
  [medusaSettings reflowAnimationProgressForCardHeaderFadeIn];

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

- (id)handleTimerEvent:(id)event
{
  eventCopy = event;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__41;
  v15 = __Block_byref_object_dispose__41;
  v10.receiver = self;
  v10.super_class = SBCardDropSwitcherModifier;
  v16 = [(SBSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBCardDropSwitcherModifier_handleTimerEvent___block_invoke;
  v9[3] = &unk_2783B3C88;
  v9[4] = &v11;
  [(SBCardDropSwitcherModifier *)self _recomputeBlurStateWithCompletion:v9];
  reason = [eventCopy reason];
  v6 = [reason isEqualToString:@"SBCardDropSwitcherModifierTimerEventHeaderVisibleReason"];

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

- (id)handleSceneReadyEvent:(id)event
{
  eventCopy = event;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v11.receiver = self;
  v11.super_class = SBCardDropSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:eventCopy];
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

- (id)handleBlurProgressEvent:(id)event
{
  eventCopy = event;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__41;
  v16 = __Block_byref_object_dispose__41;
  v11.receiver = self;
  v11.super_class = SBCardDropSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v11 handleBlurProgressEvent:eventCopy];
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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = SBCardDropSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:eventCopy];
  toAppLayout = [eventCopy toAppLayout];
  finalAppLayout = self->_finalAppLayout;

  if (toAppLayout == finalAppLayout)
  {
    self->_handledMainTransitionEvent = 1;
  }

  if (self->_waitingForHeaderFadeIn && [eventCopy toEnvironmentMode] != 2)
  {
    self->_waitingForHeaderFadeIn = 0;
    [(SBCardDropSwitcherModifier *)self _completeIfNeeded];
  }

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBCardDropSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleTapAppLayoutEvent:event];
  self->_waitingForHeaderFadeIn = 0;
  [(SBCardDropSwitcherModifier *)self _completeIfNeeded];

  return v4;
}

- (void)_recomputeBlurStateWithCompletion:(id)completion
{
  completionCopy = completion;
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
  if (isFinalAppLayoutBlurred && completionCopy && (v7[3] & 1) == 0)
  {
    v9 = objc_alloc_init(SBUpdateDragPlatterBlurSwitcherEventResponse);
    completionCopy[2](completionCopy, v9);
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

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [(SBAppLayout *)layoutCopy leafAppLayoutForRole:blurred];
  if (self->_finalAppLayout == layoutCopy)
  {
    droppedLeafAppLayout = [(SBSwitcherDropRegionContext *)self->_dropContext droppedLeafAppLayout];

    v8 = v7 != droppedLeafAppLayout && self->_isFinalAppLayoutBlurred;
  }

  else
  {
    v8 = [(SBCardDropSwitcherModifier *)self _appLayoutContainsModifiedAppLayout:layoutCopy];
  }

  return v8;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(SBCardDropSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];
  LOBYTE(selfCopy) = [(SBCardDropSwitcherModifier *)selfCopy _appLayoutContainsModifiedAppLayout:v6];

  return selfCopy;
}

- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(SBCardDropSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];
  LOBYTE(selfCopy) = [(SBCardDropSwitcherModifier *)selfCopy _appLayoutContainsModifiedAppLayout:v6];

  return selfCopy;
}

- (id)topMostLayoutElements
{
  if (self->_phase < 2)
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    topMostLayoutElements = [(SBCardDropSwitcherModifier *)&v8 topMostLayoutElements];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277CBEB40]);
    v9.receiver = self;
    v9.super_class = SBCardDropSwitcherModifier;
    topMostLayoutElements2 = [(SBCardDropSwitcherModifier *)&v9 topMostLayoutElements];
    v5 = [v3 initWithArray:topMostLayoutElements2];

    if (self->_finalAppLayout && ([v5 containsObject:?] & 1) == 0)
    {
      [v5 insertObject:self->_finalAppLayout atIndex:0];
    }

    topMostLayoutElements = [v5 array];
  }

  return topMostLayoutElements;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = SBCardDropSwitcherModifier;
  [(SBCardDropSwitcherModifier *)&v10 titleAndIconOpacityForIndex:?];
  v6 = v5;
  appLayouts = [(SBCardDropSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  if ([(SBCardDropSwitcherModifier *)self _appLayoutContainsModifiedAppLayout:v8]&& self->_waitingForReflowAnimation)
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBCardDropSwitcherModifier;
  v4 = [(SBCardDropSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  medusaSettings = [(SBCardDropSwitcherModifier *)self medusaSettings];
  switcherCardDropAnimationSettings = [medusaSettings switcherCardDropAnimationSettings];

  [v5 setLayoutSettings:switcherCardDropAnimationSettings];
  [v5 setPositionSettings:switcherCardDropAnimationSettings];
  [v5 setScaleSettings:switcherCardDropAnimationSettings];
  [v5 setCornerRadiusSettings:switcherCardDropAnimationSettings];
  [v5 setUpdateMode:3];

  return v5;
}

- (id)animatablePropertyIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier", 0}];

  return v2;
}

- (int64_t)updateModeForAnimatableProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"])
  {
    v5 = 3;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCardDropSwitcherModifier;
    v5 = [(SBCardDropSwitcherModifier *)&v7 updateModeForAnimatableProperty:propertyCopy];
  }

  return v5;
}

- (id)settingsForAnimatableProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"])
  {
    medusaSettings = [(SBCardDropSwitcherModifier *)self medusaSettings];
    medusaAnimationSettings = [medusaSettings medusaAnimationSettings];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    medusaAnimationSettings = [(SBCardDropSwitcherModifier *)&v8 settingsForAnimatableProperty:propertyCopy];
  }

  return medusaAnimationSettings;
}

- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating
{
  creatingCopy = creating;
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"SBCardDropSwitcherModifierAnimatablePropertyIdentifier"])
  {
    if (creatingCopy)
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
    [(SBCardDropSwitcherModifier *)&v12 modelValueForAnimatableProperty:propertyCopy currentValue:creatingCopy creating:value];
    v9 = v10;
  }

  return v9;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBCardDropSwitcherModifier *)self _appLayoutContainsModifiedAppLayout:layoutCopy])
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCardDropSwitcherModifier;
    v5 = [(SBCardDropSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBCardDropSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (v6 == self->_finalAppLayout || v6 == self->_evictedAppLayout || v6 == self->_remainingAppLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBCardDropSwitcherModifier;
    v7 = [(SBCardDropSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (BOOL)_appLayoutContainsModifiedAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allItems = [(SBAppLayout *)self->_finalAppLayout allItems];
  [v5 addObjectsFromArray:allItems];

  remainingAppLayout = self->_remainingAppLayout;
  if (remainingAppLayout)
  {
    allItems2 = [(SBAppLayout *)remainingAppLayout allItems];
    [v5 addObjectsFromArray:allItems2];
  }

  evictedAppLayout = self->_evictedAppLayout;
  if (evictedAppLayout)
  {
    allItems3 = [(SBAppLayout *)evictedAppLayout allItems];
    [v5 addObjectsFromArray:allItems3];
  }

  v11 = [layoutCopy containsAnyItemFromSet:v5];

  return v11;
}

@end