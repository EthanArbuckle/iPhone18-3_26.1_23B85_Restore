@interface SBMixedGridToFullScreenSwitcherModifier
- (BOOL)_isEffectivelyFullScreen;
- (BOOL)_isIndexActive:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBMixedGridToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 fullScreenAppLayout:(id)a5 floatingAppLayout:(id)a6 floatingConfiguration:(int64_t)a7 gridModifier:(id)a8 fullScreenModifier:(id)a9;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_appLayoutToScrollTo;
- (id)_firstFloatingAppLayout:(id)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)appLayoutToScrollToBeforeTransitioning;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (void)_performBlockWhileSimulatingPostPresentationScrollViewContentOffset:(id)a3;
@end

@implementation SBMixedGridToFullScreenSwitcherModifier

- (SBMixedGridToFullScreenSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 fullScreenAppLayout:(id)a5 floatingAppLayout:(id)a6 floatingConfiguration:(int64_t)a7 gridModifier:(id)a8 fullScreenModifier:(id)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v37 = a8;
  v17 = a9;
  v38.receiver = self;
  v38.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v18 = [(SBTransitionSwitcherModifier *)&v38 initWithTransitionID:v14];
  if (!v18)
  {
    goto LABEL_14;
  }

  v35 = v15;
  if (!v15)
  {
    [SBMixedGridToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v18 fullScreenAppLayout:? floatingAppLayout:? floatingConfiguration:? gridModifier:? fullScreenModifier:?];
  }

  if (!v37)
  {
    [SBMixedGridToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v18 fullScreenAppLayout:? floatingAppLayout:? floatingConfiguration:? gridModifier:? fullScreenModifier:?];
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_16:
    [SBMixedGridToFullScreenSwitcherModifier initWithTransitionID:a2 direction:v18 fullScreenAppLayout:? floatingAppLayout:? floatingConfiguration:? gridModifier:? fullScreenModifier:?];
    goto LABEL_6;
  }

  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_6:
  v18->_direction = a4;
  objc_storeStrong(&v18->_fullScreenAppLayout, a5);
  objc_storeStrong(&v18->_floatingAppLayout, a6);
  objc_storeStrong(&v18->_mixedGridModifier, a8);
  objc_storeStrong(&v18->_fullscreenModifier, a9);
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v18->_fullScreenAppLayout, 0}];
  v20 = v19;
  floatingAppLayout = v18->_floatingAppLayout;
  if (floatingAppLayout)
  {
    [v19 insertObject:floatingAppLayout atIndex:0];
  }

  v22 = [SBGridToActiveAppLayoutsSwitcherModifier alloc];
  v23 = [(SBMixedGridToFullScreenSwitcherModifier *)v18 _newMixedGridModifier];
  v24 = [(SBGridToActiveAppLayoutsSwitcherModifier *)v22 initWithTransitionID:v14 direction:a4 activeAppLayouts:v20 gridModifier:v23];

  [(SBChainableModifier *)v18 addChildModifier:v24];
  v25 = [SBRouteToMixedGridSwitcherModifier alloc];
  v26 = [(SBMixedGridToFullScreenSwitcherModifier *)v18 _newMixedGridModifier];
  v27 = [(SBRouteToMixedGridSwitcherModifier *)v25 initWithTransitionID:v14 mixedGridModifier:v26];
  routeToMixedGridModifier = v18->_routeToMixedGridModifier;
  v18->_routeToMixedGridModifier = v27;

  [(SBChainableModifier *)v18 addChildModifier:v18->_routeToMixedGridModifier];
  if (v16)
  {
    v29 = [SBRelocateFloatingAppLayoutSwitcherModifier alloc];
    if (a4)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    v31 = [(SBMixedGridToFullScreenSwitcherModifier *)v18 _newMixedGridModifier];
    v32 = [(SBRelocateFloatingAppLayoutSwitcherModifier *)v29 initWithTransitionID:v14 floatingAppLayout:v16 floatingConfiguration:a7 direction:v30 mixedGridModifier:v31];

    [(SBChainableModifier *)v18 addChildModifier:v32];
  }

  v15 = v35;
LABEL_14:

  return v18;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v4];

  v6 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  appLayoutsBeforeTransition = self->_appLayoutsBeforeTransition;
  self->_appLayoutsBeforeTransition = v6;

  if (self->_direction == 1)
  {
    v8 = [(SBMixedGridToFullScreenSwitcherModifier *)self _appLayoutToScrollTo];
    if (v8)
    {
      v9 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v8 alignment:0 animated:0];
      v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v5];

      v5 = v10;
    }
  }

  return v5;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (!self->_direction)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v4];

    v3 = v5;
  }

  return v3;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  routeToMixedGridModifier = self->_routeToMixedGridModifier;
  v5 = a3;
  v6 = [(SBRouteToMixedGridSwitcherModifier *)routeToMixedGridModifier reversesFloatingCardDirection];
  [(SBRouteToMixedGridSwitcherModifier *)self->_routeToMixedGridModifier setReversesFloatingCardDirection:self->_direction == 1];
  v10.receiver = self;
  v10.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v7 = [(SBTransitionSwitcherModifier *)&v10 adjustedAppLayoutsForAppLayouts:v5];

  [(SBRouteToMixedGridSwitcherModifier *)self->_routeToMixedGridModifier setReversesFloatingCardDirection:v6];
  if (self->_direction)
  {
    v8 = v7;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    if (([v8 containsObject:self->_fullScreenAppLayout] & 1) == 0)
    {
      [v8 addObject:self->_fullScreenAppLayout];
    }

    if (self->_floatingAppLayout && ([v8 containsObject:?] & 1) == 0)
    {
      [v8 insertObject:self->_floatingAppLayout atIndex:0];
    }
  }

  return v8;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v7.receiver = self;
  v7.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v4 = [(SBMixedGridToFullScreenSwitcherModifier *)&v7 visibleAppLayouts];
  v5 = [v3 initWithSet:v4];

  [v5 addObject:self->_fullScreenAppLayout];
  if (self->_floatingAppLayout)
  {
    [v5 addObject:?];
  }

  return v5;
}

- (id)appLayoutToScrollToBeforeTransitioning
{
  if (self->_direction)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_fullScreenAppLayout;
  }

  return v3;
}

- (id)topMostLayoutElements
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_direction == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32.receiver = self;
    v32.super_class = SBMixedGridToFullScreenSwitcherModifier;
    v4 = [(SBMixedGridToFullScreenSwitcherModifier *)&v32 slideOverTongueLayoutElement];
    if (v4)
    {
      [v3 addObject:v4];
    }

    mixedGridModifier = self->_mixedGridModifier;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __64__SBMixedGridToFullScreenSwitcherModifier_topMostLayoutElements__block_invoke;
    v30[3] = &unk_2783A92D8;
    v30[4] = self;
    v6 = v3;
    v31 = v6;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v30];
    v7 = v31;
    v8 = v6;

    v9 = v8;
    goto LABEL_32;
  }

  v10 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  v8 = [(SBMixedGridToFullScreenSwitcherModifier *)self visibleAppLayouts];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v10;
  v13 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = *v27;
  do
  {
    v16 = 0;
    do
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v4);
      }

      v17 = *(*(&v26 + 1) + 8 * v16);
      if ([v8 containsObject:v17])
      {
        if ([(SBAppLayout *)v17 environment]== 2)
        {
          v18 = v11;
          if (v17 == self->_floatingAppLayout)
          {
            goto LABEL_14;
          }

LABEL_13:
          [v18 addObject:v17];
          goto LABEL_14;
        }

        v19 = [(SBAppLayout *)v17 isEqual:self->_fullScreenAppLayout];
        v18 = v12;
        if (!v19)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      ++v16;
    }

    while (v14 != v16);
    v20 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
    v14 = v20;
  }

  while (v20);
LABEL_19:

  v9 = objc_opt_new();
  v25.receiver = self;
  v25.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v21 = [(SBMixedGridToFullScreenSwitcherModifier *)&v25 slideOverTongueLayoutElement];
  if (v21)
  {
    [v9 addObject:v21];
  }

  if (self->_floatingAppLayout)
  {
    [v9 addObject:?];
  }

  if ([v11 count])
  {
    [v9 addObjectsFromArray:v11];
  }

  v24.receiver = self;
  v24.super_class = SBMixedGridToFullScreenSwitcherModifier;
  v22 = [(SBMixedGridToFullScreenSwitcherModifier *)&v24 switcherDimmingViewLayoutElement];
  if (v22)
  {
    [v9 addObject:v22];
  }

  if (self->_fullScreenAppLayout)
  {
    [v9 addObject:?];
  }

  if ([v12 count])
  {
    [v9 addObjectsFromArray:v12];
  }

LABEL_32:

  return v9;
}

void __64__SBMixedGridToFullScreenSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) appLayouts];
  v2 = [*(*(a1 + 32) + 192) rangeOfVisibleAppLayouts];
  v3 = *(a1 + 40);
  v5 = [v6 subarrayWithRange:{v2, v4}];
  [v3 addObjectsFromArray:v5];
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2810000000;
  v14 = &unk_21F9DA6A3;
  v15 = 0;
  mixedGridModifier = self->_mixedGridModifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBMixedGridToFullScreenSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke;
  v8[3] = &unk_2783AB258;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v8];
  LOWORD(self) = *(v12 + 16);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __80__SBMixedGridToFullScreenSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 192) asyncRenderingAttributesForAppLayout:a1[5]];
  *(*(a1[6] + 8) + 32) = result;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  if ([(SBAppLayout *)v6 environment]!= 2 || self->_direction || (floatingAppLayout = self->_floatingAppLayout, v6 == floatingAppLayout))
  {
    [(SBMixedGridToFullScreenSwitcherModifier *)&v26 frameForIndex:a3, self, SBMixedGridToFullScreenSwitcherModifier];
LABEL_4:
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    goto LABEL_5;
  }

  if (floatingAppLayout)
  {
    v20 = [v5 indexOfObject:?];
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28.receiver = self;
      v28.super_class = SBMixedGridToFullScreenSwitcherModifier;
      [(SBMixedGridToFullScreenSwitcherModifier *)&v28 frameForIndex:v20, v26.receiver, v26.super_class];
      goto LABEL_4;
    }
  }

  v27.receiver = self;
  v27.super_class = SBMixedGridToFullScreenSwitcherModifier;
  [(SBMixedGridToFullScreenSwitcherModifier *)&v27 frameForIndex:a3];
  v12 = v22;
  v13 = v23;
  v14 = v24;
  if (self->_floatingAppLayout)
  {
    v11 = v21;
  }

  else if ([(SBMixedGridToFullScreenSwitcherModifier *)self isRTLEnabled])
  {
    v11 = -v13;
  }

  else
  {
    [(SBMixedGridToFullScreenSwitcherModifier *)self switcherViewBounds];
    v11 = v25;
  }

LABEL_5:

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 environment] == 2 && self->_direction == 1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    mixedGridModifier = self->_mixedGridModifier;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SBMixedGridToFullScreenSwitcherModifier_scaleForIndex___block_invoke;
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
    v11.super_class = SBMixedGridToFullScreenSwitcherModifier;
    [(SBMixedGridToFullScreenSwitcherModifier *)&v11 scaleForIndex:a3];
    v8 = v9;
  }

  return v8;
}

uint64_t __57__SBMixedGridToFullScreenSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 192) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (BOOL)_isEffectivelyFullScreen
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = self->_direction == 0;
  }

  else
  {
    v4 = 0;
  }

  return v3 || v4;
}

- (BOOL)_isIndexActive:(unint64_t)a3
{
  v5 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_fullScreenAppLayout isEqual:v6])
  {
    v7 = 1;
  }

  else
  {
    floatingAppLayout = self->_floatingAppLayout;
    if (floatingAppLayout)
    {
      v7 = [(SBAppLayout *)floatingAppLayout isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_appLayoutToScrollTo
{
  v3 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  v4 = [(SBMixedGridToFullScreenSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v3];

  v5 = [(SBMixedGridToFullScreenSwitcherModifier *)self _firstFloatingAppLayout:v4];
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
  if (self->_fullScreenAppLayout)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    mixedGridModifier = self->_mixedGridModifier;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__SBMixedGridToFullScreenSwitcherModifier__appLayoutToScrollTo__block_invoke;
    v14[3] = &unk_2783AEA70;
    v14[4] = self;
    v15 = v4;
    v16 = &v17;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v14];
    fullScreenAppLayout = v8;
    if (*(v18 + 24) == 1)
    {
      fullScreenAppLayout = self->_fullScreenAppLayout;
    }

    v11 = fullScreenAppLayout;

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

void __63__SBMixedGridToFullScreenSwitcherModifier__appLayoutToScrollTo__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SBMixedGridToFullScreenSwitcherModifier__appLayoutToScrollTo__block_invoke_2;
  v5[3] = &unk_2783AEA70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 _performBlockWhileSimulatingPostPresentationScrollViewContentOffset:v5];
}

uint64_t __63__SBMixedGridToFullScreenSwitcherModifier__appLayoutToScrollTo__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 40) + 192) isIndexFullyVisible:{objc_msgSend(*(a1 + 32), "indexOfObject:", *(*(a1 + 40) + 176))}];
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
  v5 = [(SBMixedGridToFullScreenSwitcherModifier *)self appLayouts];
  v6 = [(SBMixedGridToFullScreenSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v5];

  v7 = [(SBMixedGridToFullScreenSwitcherModifier *)self _firstFloatingAppLayout:v6];
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
  -[SBMixedGridToFullScreenSwitcherModifier contentOffsetForIndex:alignment:](self, "contentOffsetForIndex:alignment:", [v6 indexOfObject:v9], 3);
  v13 = [[SBOverrideScrollViewContentOffsetSwitcherModifier alloc] initWithScrollViewContentOffset:v11, v12];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __111__SBMixedGridToFullScreenSwitcherModifier__performBlockWhileSimulatingPostPresentationScrollViewContentOffset___block_invoke;
  v15[3] = &unk_2783A9348;
  v16 = v4;
  v14 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v13 usingBlock:v15];
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:floatingAppLayout:floatingConfiguration:gridModifier:fullScreenModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridToFullScreenSwitcherModifier.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"fullScreenAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:floatingAppLayout:floatingConfiguration:gridModifier:fullScreenModifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridToFullScreenSwitcherModifier.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"gridModifier"}];
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 fullScreenAppLayout:floatingAppLayout:floatingConfiguration:gridModifier:fullScreenModifier:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridToFullScreenSwitcherModifier.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"fullScreenModifier"}];
}

@end