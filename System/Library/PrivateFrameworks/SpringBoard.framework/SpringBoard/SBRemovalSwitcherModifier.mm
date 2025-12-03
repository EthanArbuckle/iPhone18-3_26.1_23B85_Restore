@interface SBRemovalSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout;
- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (SBRemovalSwitcherModifier)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout reason:(int64_t)reason;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)blurViewIconScaleForIndex:(unint64_t)index;
- (id)_remainingAppLayoutForRemovingLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleInsertionEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleResizeProgressEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (void)_performBlockWhileSimulatingPostRemovalAppLayoutState:(id)state;
@end

@implementation SBRemovalSwitcherModifier

- (SBRemovalSwitcherModifier)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout reason:(int64_t)reason
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBRemovalSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v13 init];
  if (v11)
  {
    if (!layoutCopy)
    {
      [SBRemovalSwitcherModifier initWithLayoutRole:a2 inAppLayout:v11 reason:?];
    }

    v11->_layoutRole = role;
    objc_storeStrong(&v11->_appLayout, layout);
    v11->_reason = reason;
    v11->_phase = 0;
    v11->_indexToScrollToAfterRemoval = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)_remainingAppLayoutForRemovingLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isCenterOverFull])
  {
    v6 = 0;
  }

  else
  {
    v7 = [layoutCopy itemForLayoutRole:role];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__SBRemovalSwitcherModifier__remainingAppLayoutForRemovingLayoutRole_inAppLayout___block_invoke;
    v10[3] = &unk_2783A8C90;
    v11 = v7;
    v8 = v7;
    v6 = [layoutCopy appLayoutWithItemsPassingTest:v10];
  }

  return v6;
}

- (id)handleRemovalEvent:(id)event
{
  eventCopy = event;
  v29.receiver = self;
  v29.super_class = SBRemovalSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v29 handleRemovalEvent:eventCopy];
  appLayout = self->_appLayout;
  appLayout = [eventCopy appLayout];
  LODWORD(appLayout) = [(SBAppLayout *)appLayout isEqual:appLayout];

  if (appLayout)
  {
    phase = [eventCopy phase];
    self->_phase = phase;
    if (phase == 3)
    {
      if (self->_reason != 1)
      {
        v24 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
        v25 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v24 toResponse:v5];

        v5 = v25;
      }

      v15 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
      v26 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v15 toResponse:v5];

      [(SBChainableModifier *)self setState:1];
      v5 = v26;
    }

    else
    {
      if (phase == 2)
      {
        v15 = objc_alloc_init(SBSwitcherModifierEventResponse);
        appLayouts = [(SBRemovalSwitcherModifier *)self appLayouts];
        if (self->_indexToScrollToAfterRemoval < [appLayouts count])
        {
          v18 = [appLayouts objectAtIndex:?];
          v19 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v18 alignment:0 animated:0];
          [(SBChainableModifierEventResponse *)v15 addChildResponse:v19];
        }

        if (self->_reason == 1)
        {
          v20 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
          [(SBChainableModifierEventResponse *)v15 addChildResponse:v20];
          if (self->_resultingAppLayoutIfAny)
          {
            v21 = [SBInvalidateSnapshotCacheSwitcherEventResponse alloc];
            allItems = [(SBAppLayout *)self->_resultingAppLayoutIfAny allItems];
            v23 = [(SBInvalidateSnapshotCacheSwitcherEventResponse *)v21 initWithDisplayItems:allItems];

            [(SBChainableModifierEventResponse *)v15 addChildResponse:v23];
          }
        }

        v16 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v15 toResponse:v5];
      }

      else
      {
        if (phase != 1)
        {
          goto LABEL_18;
        }

        appLayouts2 = [(SBRemovalSwitcherModifier *)self appLayouts];
        v10 = [appLayouts2 indexOfObject:self->_appLayout];

        self->_indexToScrollToAfterRemoval = [(SBRemovalSwitcherModifier *)self indexToScrollToAfterRemovingIndex:v10];
        self->_indexOfAppLayoutPriorToRemoval = v10;
        v28.receiver = self;
        v28.super_class = SBRemovalSwitcherModifier;
        visibleAppLayouts = [(SBRemovalSwitcherModifier *)&v28 visibleAppLayouts];
        visibleAppLayoutsPriorToRemoval = self->_visibleAppLayoutsPriorToRemoval;
        self->_visibleAppLayoutsPriorToRemoval = visibleAppLayouts;

        v13 = [(SBRemovalSwitcherModifier *)self _remainingAppLayoutForRemovingLayoutRole:self->_layoutRole inAppLayout:self->_appLayout];
        resultingAppLayoutIfAny = self->_resultingAppLayoutIfAny;
        self->_resultingAppLayoutIfAny = v13;

        v15 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
        v16 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v15 toResponse:v5];
      }

      v5 = v16;
    }
  }

LABEL_18:

  return v5;
}

- (id)handleInsertionEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBRemovalSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v8 handleInsertionEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  LODWORD(eventCopy) = BSEqualObjects();
  if (eventCopy)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleResizeProgressEvent:(id)event
{
  eventCopy = event;
  [eventCopy progress];
  medusaSettings = [(SBRemovalSwitcherModifier *)self medusaSettings];
  [medusaSettings resizeAnimationUnblurThresholdPercentage];
  self->_hasResizedEnoughToUnblur = BSFloatGreaterThanOrEqualToFloat();

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v10.receiver = self;
  v10.super_class = SBRemovalSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 handleResizeProgressEvent:eventCopy];

  v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v7];

  return v8;
}

- (id)handleSceneReadyEvent:(id)event
{
  eventCopy = event;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBRemovalSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleSceneReadyEvent:eventCopy];

  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v6];

  return v7;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if (([layoutCopy isOrContainsAppLayout:self->_appLayout] & 1) != 0 || objc_msgSend(layoutCopy, "isOrContainsAppLayout:", self->_resultingAppLayoutIfAny))
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBRemovalSwitcherModifier;
    v5 = [(SBRemovalSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(SBRemovalSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    p_appLayout = &self->_appLayout;
    if ((([layoutCopy isOrContainsAppLayout:self->_appLayout] & 1) != 0 || objc_msgSend(layoutCopy, "isOrContainsAppLayout:", self->_resultingAppLayoutIfAny)) && self->_layoutRole == 4)
    {
      goto LABEL_15;
    }

    if (self->_phase == 1)
    {
      if (self->_layoutRole == blurred)
      {
LABEL_15:
        v9 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      p_appLayout = &self->_resultingAppLayoutIfAny;
    }

    v11 = *p_appLayout;
    v12 = v11;
    if (v11 && [(SBAppLayout *)v11 isEqual:layoutCopy]&& (![(SBRemovalSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:v12]|| !self->_hasResizedEnoughToUnblur))
    {

      v9 = 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14.receiver = self;
  v14.super_class = SBRemovalSwitcherModifier;
  v9 = [(SBRemovalSwitcherModifier *)&v14 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
LABEL_16:

  return v9;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v18.receiver = self;
  v18.super_class = SBRemovalSwitcherModifier;
  visibleAppLayouts = [(SBRemovalSwitcherModifier *)&v18 visibleAppLayouts];
  v5 = [v3 initWithSet:visibleAppLayouts];

  allObjects = [(NSSet *)self->_visibleAppLayoutsPriorToRemoval allObjects];
  [v5 addObjectsFromArray:allObjects];

  [v5 addObject:self->_appLayout];
  phase = self->_phase;
  if (phase)
  {
    if (phase == 1)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__114;
      v16 = __Block_byref_object_dispose__114;
      v17 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __46__SBRemovalSwitcherModifier_visibleAppLayouts__block_invoke;
      v11[3] = &unk_2783A8CE0;
      v11[4] = self;
      v11[5] = &v12;
      [(SBRemovalSwitcherModifier *)self _performBlockWhileSimulatingPostRemovalAppLayoutState:v11];
      v8 = v13[5];
      if (v8)
      {
        allObjects2 = [v8 allObjects];
        [v5 addObjectsFromArray:allObjects2];
      }

      _Block_object_dispose(&v12, 8);
    }

    else if (self->_reason == 1)
    {
      [v5 removeObject:self->_appLayout];
    }
  }

  return v5;
}

void __46__SBRemovalSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = SBRemovalSwitcherModifier;
  v2 = objc_msgSendSuper2(&v5, sel_visibleAppLayouts);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v17.receiver = self;
  v17.super_class = SBRemovalSwitcherModifier;
  v5 = [(SBRemovalSwitcherModifier *)&v17 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  if (self->_phase == 2)
  {
    v7 = 3;
LABEL_5:
    [v6 setUpdateMode:v7];
    goto LABEL_6;
  }

  if ([v6 updateMode] == 1)
  {
    v7 = 2;
    goto LABEL_5;
  }

LABEL_6:
  if (![elementCopy switcherLayoutElementType] && objc_msgSend(elementCopy, "isOrContainsAppLayout:", self->_appLayout))
  {
    medusaSettings = [(SBRemovalSwitcherModifier *)self medusaSettings];
    resizeAnimationSettings = [medusaSettings resizeAnimationSettings];

    [v6 setLayoutSettings:resizeAnimationSettings];
    [v6 setPositionSettings:resizeAnimationSettings];
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    switcherSettings = [(SBRemovalSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings appSwitcherTitleAndIconFadeInSlowDownFactor];
    v14 = v13;

    [resizeAnimationSettings response];
    [initWithDefaultValues setResponse:v14 * v15];
    [v6 setOpacitySettings:initWithDefaultValues];
  }

  return v6;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBRemovalSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (v6 == self->_appLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBRemovalSwitcherModifier;
    v7 = [(SBRemovalSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v17[2] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = SBRemovalSwitcherModifier;
  v7 = [(SBRemovalSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:role inAppLayout:layoutCopy];
  resultingAppLayoutIfAny = self->_resultingAppLayoutIfAny;
  if (resultingAppLayoutIfAny && [(SBAppLayout *)resultingAppLayoutIfAny isEqual:layoutCopy])
  {
    medusaSettings = [(SBRemovalSwitcherModifier *)self medusaSettings];
    [medusaSettings resizeAnimationUnblurThresholdPercentage];
    v11 = v10;

    v17[0] = &unk_28336F730;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v17[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v14 = [v7 setByAddingObjectsFromArray:v13];

    v7 = v14;
  }

  return v7;
}

- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index
{
  if (!self->_resultingAppLayoutIfAny || self->_phase < 2)
  {
    return 0;
  }

  appLayouts = [(SBRemovalSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = [(SBAppLayout *)self->_resultingAppLayoutIfAny isEqual:v6];
  return v7;
}

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_appLayout isOrContainsAppLayout:layoutCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBRemovalSwitcherModifier;
    v5 = [(SBRemovalSwitcherModifier *)&v7 shouldAccessoryDrawShadowForAppLayout:layoutCopy];
  }

  return v5;
}

- (void)_performBlockWhileSimulatingPostRemovalAppLayoutState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  appLayouts = [(SBRemovalSwitcherModifier *)self appLayouts];
  v7 = [v5 initWithArray:appLayouts];

  appLayout = self->_appLayout;
  if (self->_resultingAppLayoutIfAny)
  {
    v9 = [v7 indexOfObject:appLayout];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 replaceObjectAtIndex:v9 withObject:self->_resultingAppLayoutIfAny];
    }
  }

  else
  {
    [v7 removeObject:appLayout];
  }

  v10 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBRemovalSwitcherModifier__performBlockWhileSimulatingPostRemovalAppLayoutState___block_invoke;
  v13[3] = &unk_2783AA1E8;
  v13[4] = self;
  v14 = v7;
  v15 = stateCopy;
  v11 = stateCopy;
  v12 = v7;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v10 usingBlock:v13];
}

void __83__SBRemovalSwitcherModifier__performBlockWhileSimulatingPostRemovalAppLayoutState___block_invoke(id *a1)
{
  v2 = *(a1[4] + 21);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || v2 >= [a1[5] count])
  {
    v8 = *(a1[6] + 2);

    v8();
  }

  else
  {
    v3 = *(a1[4] + 21);
    v11.receiver = a1[4];
    v11.super_class = SBRemovalSwitcherModifier;
    objc_msgSendSuper2(&v11, sel_contentOffsetForIndex_alignment_, v3, 0);
    v6 = [[SBOverrideScrollViewContentOffsetSwitcherModifier alloc] initWithScrollViewContentOffset:v4, v5];
    v7 = a1[4];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SBRemovalSwitcherModifier__performBlockWhileSimulatingPostRemovalAppLayoutState___block_invoke_2;
    v9[3] = &unk_2783A9348;
    v10 = a1[6];
    [v7 performTransactionWithTemporaryChildModifier:v6 usingBlock:v9];
  }
}

- (double)blurViewIconScaleForIndex:(unint64_t)index
{
  appLayouts = [(SBRemovalSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (self->_phase == 1)
  {
    v7 = &OBJC_IVAR___SBRemovalSwitcherModifier__appLayout;
  }

  else
  {
    v7 = &OBJC_IVAR___SBRemovalSwitcherModifier__resultingAppLayoutIfAny;
  }

  if (v6 == *(&self->super.super.super.super.isa + *v7))
  {
    v9 = 0.0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBRemovalSwitcherModifier;
    [(SBRemovalSwitcherModifier *)&v11 blurViewIconScaleForIndex:index];
    v9 = v8;
  }

  return v9;
}

- (id)topMostLayoutElements
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = SBRemovalSwitcherModifier;
  topMostLayoutElements = [(SBRemovalSwitcherModifier *)&v23 topMostLayoutElements];
  v4 = topMostLayoutElements;
  if (self->_phase == 2)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277CCAA78];
    v7 = [v4 count];
    if (v7 >= self->_indexOfAppLayoutPriorToRemoval)
    {
      indexOfAppLayoutPriorToRemoval = self->_indexOfAppLayoutPriorToRemoval;
    }

    else
    {
      indexOfAppLayoutPriorToRemoval = v7;
    }

    v9 = [v6 indexSetWithIndexesInRange:{0, indexOfAppLayoutPriorToRemoval}];
    v10 = [v4 objectsAtIndexes:v9];
    [v5 addObjectsFromArray:v10];

    v11 = [(SBAppLayout *)self->_appLayout leafAppLayoutForRole:self->_layoutRole];
    [v5 addObject:v11];
    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v4;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * i);
            if (([v5 containsObject:{v17, v19}] & 1) == 0)
            {
              [v5 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v14);
      }
    }
  }

  else
  {
    v5 = topMostLayoutElements;
  }

  return v5;
}

- (void)initWithLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 reason:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRemovalSwitcherModifier.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end