@interface SBRemovalSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3;
- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (SBRemovalSwitcherModifier)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 reason:(int64_t)a5;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)blurViewIconScaleForIndex:(unint64_t)a3;
- (id)_remainingAppLayoutForRemovingLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleInsertionEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleResizeProgressEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (void)_performBlockWhileSimulatingPostRemovalAppLayoutState:(id)a3;
@end

@implementation SBRemovalSwitcherModifier

- (SBRemovalSwitcherModifier)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 reason:(int64_t)a5
{
  v10 = a4;
  v13.receiver = self;
  v13.super_class = SBRemovalSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v13 init];
  if (v11)
  {
    if (!v10)
    {
      [SBRemovalSwitcherModifier initWithLayoutRole:a2 inAppLayout:v11 reason:?];
    }

    v11->_layoutRole = a3;
    objc_storeStrong(&v11->_appLayout, a4);
    v11->_reason = a5;
    v11->_phase = 0;
    v11->_indexToScrollToAfterRemoval = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (id)_remainingAppLayoutForRemovingLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  if ([v5 isCenterOverFull])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 itemForLayoutRole:a3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__SBRemovalSwitcherModifier__remainingAppLayoutForRemovingLayoutRole_inAppLayout___block_invoke;
    v10[3] = &unk_2783A8C90;
    v11 = v7;
    v8 = v7;
    v6 = [v5 appLayoutWithItemsPassingTest:v10];
  }

  return v6;
}

- (id)handleRemovalEvent:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SBRemovalSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v29 handleRemovalEvent:v4];
  appLayout = self->_appLayout;
  v7 = [v4 appLayout];
  LODWORD(appLayout) = [(SBAppLayout *)appLayout isEqual:v7];

  if (appLayout)
  {
    v8 = [v4 phase];
    self->_phase = v8;
    if (v8 == 3)
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
      if (v8 == 2)
      {
        v15 = objc_alloc_init(SBSwitcherModifierEventResponse);
        v17 = [(SBRemovalSwitcherModifier *)self appLayouts];
        if (self->_indexToScrollToAfterRemoval < [v17 count])
        {
          v18 = [v17 objectAtIndex:?];
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
            v22 = [(SBAppLayout *)self->_resultingAppLayoutIfAny allItems];
            v23 = [(SBInvalidateSnapshotCacheSwitcherEventResponse *)v21 initWithDisplayItems:v22];

            [(SBChainableModifierEventResponse *)v15 addChildResponse:v23];
          }
        }

        v16 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v15 toResponse:v5];
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_18;
        }

        v9 = [(SBRemovalSwitcherModifier *)self appLayouts];
        v10 = [v9 indexOfObject:self->_appLayout];

        self->_indexToScrollToAfterRemoval = [(SBRemovalSwitcherModifier *)self indexToScrollToAfterRemovingIndex:v10];
        self->_indexOfAppLayoutPriorToRemoval = v10;
        v28.receiver = self;
        v28.super_class = SBRemovalSwitcherModifier;
        v11 = [(SBRemovalSwitcherModifier *)&v28 visibleAppLayouts];
        visibleAppLayoutsPriorToRemoval = self->_visibleAppLayoutsPriorToRemoval;
        self->_visibleAppLayoutsPriorToRemoval = v11;

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

- (id)handleInsertionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBRemovalSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v8 handleInsertionEvent:v4];
  v6 = [v4 appLayout];

  LODWORD(v4) = BSEqualObjects();
  if (v4)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleResizeProgressEvent:(id)a3
{
  v4 = a3;
  [v4 progress];
  v5 = [(SBRemovalSwitcherModifier *)self medusaSettings];
  [v5 resizeAnimationUnblurThresholdPercentage];
  self->_hasResizedEnoughToUnblur = BSFloatGreaterThanOrEqualToFloat();

  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v10.receiver = self;
  v10.super_class = SBRemovalSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v10 handleResizeProgressEvent:v4];

  v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v7];

  return v8;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v4 = a3;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBRemovalSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleSceneReadyEvent:v4];

  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v6];

  return v7;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if (([v4 isOrContainsAppLayout:self->_appLayout] & 1) != 0 || objc_msgSend(v4, "isOrContainsAppLayout:", self->_resultingAppLayoutIfAny))
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBRemovalSwitcherModifier;
    v5 = [(SBRemovalSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBRemovalSwitcherModifier *)self windowManagementContext];
  v8 = [v7 isFlexibleWindowingEnabled];

  if (!v8)
  {
    p_appLayout = &self->_appLayout;
    if ((([v6 isOrContainsAppLayout:self->_appLayout] & 1) != 0 || objc_msgSend(v6, "isOrContainsAppLayout:", self->_resultingAppLayoutIfAny)) && self->_layoutRole == 4)
    {
      goto LABEL_15;
    }

    if (self->_phase == 1)
    {
      if (self->_layoutRole == a3)
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
    if (v11 && [(SBAppLayout *)v11 isEqual:v6]&& (![(SBRemovalSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v12]|| !self->_hasResizedEnoughToUnblur))
    {

      v9 = 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14.receiver = self;
  v14.super_class = SBRemovalSwitcherModifier;
  v9 = [(SBRemovalSwitcherModifier *)&v14 isLayoutRoleBlurred:a3 inAppLayout:v6];
LABEL_16:

  return v9;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v18.receiver = self;
  v18.super_class = SBRemovalSwitcherModifier;
  v4 = [(SBRemovalSwitcherModifier *)&v18 visibleAppLayouts];
  v5 = [v3 initWithSet:v4];

  v6 = [(NSSet *)self->_visibleAppLayoutsPriorToRemoval allObjects];
  [v5 addObjectsFromArray:v6];

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
        v9 = [v8 allObjects];
        [v5 addObjectsFromArray:v9];
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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBRemovalSwitcherModifier;
  v5 = [(SBRemovalSwitcherModifier *)&v17 animationAttributesForLayoutElement:v4];
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
  if (![v4 switcherLayoutElementType] && objc_msgSend(v4, "isOrContainsAppLayout:", self->_appLayout))
  {
    v8 = [(SBRemovalSwitcherModifier *)self medusaSettings];
    v9 = [v8 resizeAnimationSettings];

    [v6 setLayoutSettings:v9];
    [v6 setPositionSettings:v9];
    v10 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    v11 = [(SBRemovalSwitcherModifier *)self switcherSettings];
    v12 = [v11 animationSettings];
    [v12 appSwitcherTitleAndIconFadeInSlowDownFactor];
    v14 = v13;

    [v9 response];
    [v10 setResponse:v14 * v15];
    [v6 setOpacitySettings:v10];
  }

  return v6;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBRemovalSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_appLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBRemovalSwitcherModifier;
    v7 = [(SBRemovalSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16.receiver = self;
  v16.super_class = SBRemovalSwitcherModifier;
  v7 = [(SBRemovalSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:a3 inAppLayout:v6];
  resultingAppLayoutIfAny = self->_resultingAppLayoutIfAny;
  if (resultingAppLayoutIfAny && [(SBAppLayout *)resultingAppLayoutIfAny isEqual:v6])
  {
    v9 = [(SBRemovalSwitcherModifier *)self medusaSettings];
    [v9 resizeAnimationUnblurThresholdPercentage];
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

- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)a3
{
  if (!self->_resultingAppLayoutIfAny || self->_phase < 2)
  {
    return 0;
  }

  v5 = [(SBRemovalSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBAppLayout *)self->_resultingAppLayoutIfAny isEqual:v6];
  return v7;
}

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBAppLayout *)self->_appLayout isOrContainsAppLayout:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBRemovalSwitcherModifier;
    v5 = [(SBRemovalSwitcherModifier *)&v7 shouldAccessoryDrawShadowForAppLayout:v4];
  }

  return v5;
}

- (void)_performBlockWhileSimulatingPostRemovalAppLayoutState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [(SBRemovalSwitcherModifier *)self appLayouts];
  v7 = [v5 initWithArray:v6];

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
  v15 = v4;
  v11 = v4;
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

- (double)blurViewIconScaleForIndex:(unint64_t)a3
{
  v5 = [(SBRemovalSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    [(SBRemovalSwitcherModifier *)&v11 blurViewIconScaleForIndex:a3];
    v9 = v8;
  }

  return v9;
}

- (id)topMostLayoutElements
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = SBRemovalSwitcherModifier;
  v3 = [(SBRemovalSwitcherModifier *)&v23 topMostLayoutElements];
  v4 = v3;
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
    v5 = v3;
  }

  return v5;
}

- (void)initWithLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 reason:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRemovalSwitcherModifier.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end