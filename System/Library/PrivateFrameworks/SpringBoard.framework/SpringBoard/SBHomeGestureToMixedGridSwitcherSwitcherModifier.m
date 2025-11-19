@interface SBHomeGestureToMixedGridSwitcherSwitcherModifier
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBHomeGestureToMixedGridSwitcherSwitcherModifier)initWithTransitionID:(id)a3 mixedGridModifier:(id)a4 selectedAppLayout:(id)a5 startingEnvironmentMode:(int64_t)a6 liftOfVelocity:(CGPoint)a7 liftOffTranslation:(CGPoint)a8 floatingAppLayout:(id)a9 floatingConfiguration:(int64_t)a10;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_appLayoutToScrollTo;
- (id)_firstFloatingAppLayout:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
- (id)visibleAppLayouts;
- (void)_performBlockWhileSimulatingPostPresentationScrollViewContentOffset:(id)a3;
@end

@implementation SBHomeGestureToMixedGridSwitcherSwitcherModifier

- (SBHomeGestureToMixedGridSwitcherSwitcherModifier)initWithTransitionID:(id)a3 mixedGridModifier:(id)a4 selectedAppLayout:(id)a5 startingEnvironmentMode:(int64_t)a6 liftOfVelocity:(CGPoint)a7 liftOffTranslation:(CGPoint)a8 floatingAppLayout:(id)a9 floatingConfiguration:(int64_t)a10
{
  y = a8.y;
  x = a8.x;
  v14 = a7.y;
  v15 = a7.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a9;
  v33.receiver = self;
  v33.super_class = SBHomeGestureToMixedGridSwitcherSwitcherModifier;
  v24 = [(SBTransitionSwitcherModifier *)&v33 initWithTransitionID:v20];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_mixedGridModifier, a4);
    objc_storeStrong(&v25->_appLayout, a5);
    v25->_startingEnvironmentMode = a6;
    v25->_liftOffVelocity.x = v15;
    v25->_liftOffVelocity.y = v14;
    v25->_liftOffTranslation.x = x;
    v25->_liftOffTranslation.y = y;
    v25->_hidEventSenderID = 0;
    v26 = [[SBHomeGestureToSwitcherSwitcherModifier alloc] initWithTransitionID:v20 multitaskingModifier:v21 selectedAppLayout:v22 startingEnvironmentMode:a6 liftOffVelocity:1 liftOffTranslation:0 adjustAppLayoutsBeforeTransition:v15 keepSelectedAppLayoutAsTopMostElement:v14, x, y];
    homeGestureModifier = v25->_homeGestureModifier;
    v25->_homeGestureModifier = v26;

    [(SBChainableModifier *)v25 addChildModifier:v25->_homeGestureModifier];
    v28 = [SBRouteToMixedGridSwitcherModifier alloc];
    v29 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)v25 _newMixedGridModifier];
    v30 = [(SBRouteToMixedGridSwitcherModifier *)v28 initWithTransitionID:v20 mixedGridModifier:v29];

    [(SBChainableModifier *)v25 addChildModifier:v30];
    if (v23)
    {
      v31 = [[SBRelocateFloatingAppLayoutSwitcherModifier alloc] initWithTransitionID:v20 floatingAppLayout:v23 floatingConfiguration:a10 direction:1 mixedGridModifier:v21];
      [(SBChainableModifier *)v25 addChildModifier:v31];
    }
  }

  return v25;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v11.receiver = self;
  v11.super_class = SBHomeGestureToMixedGridSwitcherSwitcherModifier;
  v6 = [(SBChainableModifier *)&v11 responseForProposedChildResponse:a3 childModifier:a4 event:a5];
  if (v6)
  {
    v7 = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __105__SBHomeGestureToMixedGridSwitcherSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
    v10[3] = &unk_2783B4CC8;
    v10[4] = self;
    v8 = [v6 responseByTransformingResponseWithTransformer:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __105__SBHomeGestureToMixedGridSwitcherSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 11)
  {
    v4 = [*(a1 + 32) _appLayoutToScrollTo];
    if (v4)
    {
      v5 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v4 alignment:0 animated:0];
      v6 = SBAppendSwitcherModifierResponse(v5, v3);

      v3 = v5;
    }

    else
    {
      v6 = 0;
    }

    v3 = v6;
  }

  return v3;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_21F9DA6A3;
  v14 = *MEMORY[0x277CBF348];
  mixedGridModifier = self->_mixedGridModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SBHomeGestureToMixedGridSwitcherSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v9[3] = &unk_2783AC7C8;
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = self;
  v9[5] = &v10;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v9];
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __84__SBHomeGestureToMixedGridSwitcherSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 appLayouts];
  [v2 indexOfFirstFloatingAppFromAppLayouts:v3];

  result = [*(*(a1 + 32) + 176) contentOffsetForIndex:? alignment:?];
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v34 = *MEMORY[0x277CBF3A0];
  v35 = v5;
  v6 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)self appLayouts];
  v7 = [(SBSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:v6];

  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 1 && v7 > a3)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    mixedGridModifier = self->_mixedGridModifier;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __66__SBHomeGestureToMixedGridSwitcherSwitcherModifier_frameForIndex___block_invoke;
    v25[3] = &unk_2783B4B10;
    v25[4] = self;
    v25[5] = &v30;
    v25[6] = &v26;
    v25[7] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v25];
    v9 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v10 = v27[3];
    if (v9 == 1)
    {
      v10 = -v10;
    }

    v31[4] = v31[4] + v10;
    _Block_object_dispose(&v26, 8);
    v11 = v31[4];
    v12 = v31[5];
    v13 = v31[6];
    v14 = v31[7];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBHomeGestureToMixedGridSwitcherSwitcherModifier;
    [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)&v24 frameForIndex:a3];
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v19 = v31;
    v31[4] = v15;
    v19[5] = v16;
    v19[6] = v17;
    v19[7] = v18;
  }

  _Block_object_dispose(&v30, 8);
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __66__SBHomeGestureToMixedGridSwitcherSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  [*(a1[4] + 176) frameForIndex:a1[7]];
  v2 = *(a1[5] + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  result = [*(a1[4] + 176) firstFloatingCardPeekingWidth];
  *(*(a1[6] + 8) + 24) = v8;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 environment] == 2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    mixedGridModifier = self->_mixedGridModifier;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__SBHomeGestureToMixedGridSwitcherSwitcherModifier_scaleForIndex___block_invoke;
    v12[3] = &unk_2783AA618;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v12];
    v8 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHomeGestureToMixedGridSwitcherSwitcherModifier;
    [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)&v11 scaleForIndex:a3];
    v8 = v9;
  }

  return v8;
}

uint64_t __66__SBHomeGestureToMixedGridSwitcherSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (id)visibleAppLayouts
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__51;
    v12 = __Block_byref_object_dispose__51;
    v13 = 0;
    mixedGridModifier = self->_mixedGridModifier;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SBHomeGestureToMixedGridSwitcherSwitcherModifier_visibleAppLayouts__block_invoke;
    v7[3] = &unk_2783A8CE0;
    v7[4] = self;
    v7[5] = &v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v7];
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHomeGestureToMixedGridSwitcherSwitcherModifier;
    v4 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)&v6 visibleAppLayouts];
  }

  return v4;
}

void __69__SBHomeGestureToMixedGridSwitcherSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_appLayoutToScrollTo
{
  v3 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)self appLayouts];
  v4 = [(SBTransitionSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v3];

  v5 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)self _firstFloatingAppLayout:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 firstObject];
  }

  v8 = v7;
  if (self->_appLayout)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    mixedGridModifier = self->_mixedGridModifier;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__SBHomeGestureToMixedGridSwitcherSwitcherModifier__appLayoutToScrollTo__block_invoke;
    v14[3] = &unk_2783AEA70;
    v14[4] = self;
    v15 = v4;
    v16 = &v17;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v14];
    appLayout = v8;
    if ((v18[3] & 1) == 0)
    {
      appLayout = self->_appLayout;
    }

    v11 = appLayout;

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

void __72__SBHomeGestureToMixedGridSwitcherSwitcherModifier__appLayoutToScrollTo__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SBHomeGestureToMixedGridSwitcherSwitcherModifier__appLayoutToScrollTo__block_invoke_2;
  v5[3] = &unk_2783AEA70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _performBlockWhileSimulatingPostPresentationScrollViewContentOffset:v5];
}

uint64_t __72__SBHomeGestureToMixedGridSwitcherSwitcherModifier__appLayoutToScrollTo__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 40) + 176) isIndexFullyVisible:{objc_msgSend(*(a1 + 32), "indexOfObject:", *(*(a1 + 40) + 168))}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_firstFloatingAppLayout:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v12 + 1) + 8 * v8);
        if ([v10 environment] == 1)
        {
          v6 = v9;
          goto LABEL_12;
        }

        v6 = v10;

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (void)_performBlockWhileSimulatingPostPresentationScrollViewContentOffset:(id)a3
{
  v4 = a3;
  v5 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)self appLayouts];
  v6 = [(SBTransitionSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v5];

  v7 = [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)self _firstFloatingAppLayout:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 firstObject];
  }

  v10 = v9;
  -[SBHomeGestureToMixedGridSwitcherSwitcherModifier contentOffsetForIndex:alignment:](self, "contentOffsetForIndex:alignment:", [v6 indexOfObject:v9], 3);
  v13 = [[SBOverrideScrollViewContentOffsetSwitcherModifier alloc] initWithScrollViewContentOffset:v11, v12];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__SBHomeGestureToMixedGridSwitcherSwitcherModifier__performBlockWhileSimulatingPostPresentationScrollViewContentOffset___block_invoke;
  v15[3] = &unk_2783A9348;
  v16 = v4;
  v14 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v13 usingBlock:v15];
}

@end