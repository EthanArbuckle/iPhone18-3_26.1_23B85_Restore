@interface SBMixedGridToHomeSwitcherModifier
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBMixedGridToHomeSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction mixedGridModifier:(id)modifier;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
@end

@implementation SBMixedGridToHomeSwitcherModifier

- (SBMixedGridToHomeSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction mixedGridModifier:(id)modifier
{
  dCopy = d;
  modifierCopy = modifier;
  v19.receiver = self;
  v19.super_class = SBMixedGridToHomeSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:dCopy];
  if (v11)
  {
    if (!modifierCopy)
    {
      [SBMixedGridToHomeSwitcherModifier initWithTransitionID:a2 direction:v11 mixedGridModifier:?];
    }

    v11->_direction = direction;
    objc_storeStrong(&v11->_mixedGridModifier, modifier);
    v12 = [SBRouteToMixedGridSwitcherModifier alloc];
    _newMixedGridModifier = [(SBMixedGridToHomeSwitcherModifier *)v11 _newMixedGridModifier];
    v14 = [(SBRouteToMixedGridSwitcherModifier *)v12 initWithTransitionID:dCopy mixedGridModifier:_newMixedGridModifier];

    [(SBChainableModifier *)v11 addChildModifier:v14 atLevel:0 key:0];
    v15 = [SBHomeToGridSwitcherModifier alloc];
    _newMixedGridModifier2 = [(SBMixedGridToHomeSwitcherModifier *)v11 _newMixedGridModifier];
    v17 = [(SBHomeToSwitcherSwitcherModifier *)v15 initWithTransitionID:dCopy direction:direction != 0 multitaskingModifier:_newMixedGridModifier2];

    [(SBChainableModifier *)v11 addChildModifier:v17 atLevel:1 key:0];
  }

  return v11;
}

- (id)transitionWillBegin
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = SBMixedGridToHomeSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v23 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:transitionWillBegin toResponse:v4];

  if (self->_direction == 1)
  {
    appLayouts = [(SBMixedGridToHomeSwitcherModifier *)self appLayouts];
    v7 = [(SBTransitionSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:appLayouts];

    firstObject = [v7 firstObject];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        v13 = 0;
        v14 = firstObject;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * v13);
          if ([v15 environment] == 1)
          {
            firstObject = v14;
            goto LABEL_12;
          }

          firstObject = v15;

          ++v13;
          v14 = firstObject;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (firstObject)
    {
      v16 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:firstObject alignment:0 animated:0];
      v17 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v16 toResponse:v5];

      v5 = v17;
    }
  }

  return v5;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_21F9DA6A3;
  v14 = *MEMORY[0x277CBF348];
  mixedGridModifier = self->_mixedGridModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBMixedGridToHomeSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v9[3] = &unk_2783AC7C8;
  v9[6] = index;
  v9[7] = alignment;
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

uint64_t __69__SBMixedGridToHomeSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(uint64_t a1)
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

- (CGRect)frameForIndex:(unint64_t)index
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x4010000000;
  v39 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v40 = *MEMORY[0x277CBF3A0];
  v41 = v5;
  appLayouts = [(SBMixedGridToHomeSwitcherModifier *)self appLayouts];
  v7 = [(SBSwitcherModifier *)self indexOfFirstMainAppLayoutFromAppLayouts:appLayouts];

  if (v7 <= index)
  {
    v28.receiver = self;
    v28.super_class = SBMixedGridToHomeSwitcherModifier;
    [(SBMixedGridToHomeSwitcherModifier *)&v28 frameForIndex:index];
    v11 = v37;
    v37[4] = v12;
    v11[5] = v13;
    v11[6] = v14;
    v11[7] = v15;
  }

  else
  {
    if (self->_direction)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      mixedGridModifier = self->_mixedGridModifier;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __51__SBMixedGridToHomeSwitcherModifier_frameForIndex___block_invoke_3;
      v29[3] = &unk_2783B4B10;
      v29[4] = self;
      v29[5] = &v36;
      v29[6] = &v32;
      v29[7] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v29];
      isRTLEnabled = [(SBMixedGridToHomeSwitcherModifier *)self isRTLEnabled];
      v10 = v33[3];
      if (isRTLEnabled)
      {
        v10 = -v10;
      }

      *(v37 + 4) = *(v37 + 4) + v10;
    }

    else
    {
      if ([(SBTransitionSwitcherModifier *)self transitionPhase]!= 2)
      {
        v27 = self->_mixedGridModifier;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __51__SBMixedGridToHomeSwitcherModifier_frameForIndex___block_invoke_2;
        v30[3] = &unk_2783AA618;
        v30[4] = self;
        v30[5] = &v36;
        v30[6] = index;
        [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v27 usingBlock:v30];
        goto LABEL_13;
      }

      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v16 = self->_mixedGridModifier;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __51__SBMixedGridToHomeSwitcherModifier_frameForIndex___block_invoke;
      v31[3] = &unk_2783B4B10;
      v31[4] = self;
      v31[5] = &v36;
      v31[6] = &v32;
      v31[7] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v16 usingBlock:v31];
      v17 = v37;
      if ([(SBMixedGridToHomeSwitcherModifier *)self isRTLEnabled])
      {
        v18 = -v33[3];
      }

      else
      {
        v18 = v33[3];
      }

      v42 = CGRectOffset(v17[1], v18, 0.0);
      *(v37 + 1) = v42;
    }

    _Block_object_dispose(&v32, 8);
  }

LABEL_13:
  v19 = *(v37 + 4);
  v20 = *(v37 + 5);
  v21 = *(v37 + 6);
  v22 = *(v37 + 7);
  _Block_object_dispose(&v36, 8);
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

CGFloat __51__SBMixedGridToHomeSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  [*(a1[4] + 176) frameForIndex:a1[7]];
  v2 = *(a1[5] + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  [*(a1[4] + 176) distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:a1[7]];
  v7 = a1[7];
  *(*(a1[6] + 8) + 24) = v8;
  [*(a1[4] + 176) scaledFrameForIndex:v7];
  Width = CGRectGetWidth(v12);
  v10 = *(a1[6] + 8);
  result = Width + *(v10 + 24);
  *(v10 + 24) = result;
  return result;
}

uint64_t __51__SBMixedGridToHomeSwitcherModifier_frameForIndex___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 176) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

uint64_t __51__SBMixedGridToHomeSwitcherModifier_frameForIndex___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 176) frameForIndex:*(a1 + 56)];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  result = [*(a1 + 32) transitionPhase];
  if (result == 1)
  {
    result = [*(*(a1 + 32) + 176) firstFloatingCardPeekingWidth];
    *(*(*(a1 + 48) + 8) + 24) = v8;
  }

  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2810000000;
  v14 = &unk_21F9DA6A3;
  v15 = 0;
  mixedGridModifier = self->_mixedGridModifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SBMixedGridToHomeSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke;
  v8[3] = &unk_2783AB258;
  v10 = &v11;
  v8[4] = self;
  v6 = layoutCopy;
  v9 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v8];
  LOWORD(self) = *(v12 + 16);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __74__SBMixedGridToHomeSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) asyncRenderingAttributesForAppLayout:a1[5]];
  *(*(a1[6] + 8) + 32) = result;
  return result;
}

- (id)topMostLayoutElements
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__49;
  v13 = __Block_byref_object_dispose__49;
  v14 = 0;
  if (self->_direction == 1)
  {
    mixedGridModifier = self->_mixedGridModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SBMixedGridToHomeSwitcherModifier_topMostLayoutElements__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMixedGridToHomeSwitcherModifier;
    topMostLayoutElements = [(SBMixedGridToHomeSwitcherModifier *)&v7 topMostLayoutElements];
    v4 = v10[5];
    v10[5] = topMostLayoutElements;
  }

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __58__SBMixedGridToHomeSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) topMostLayoutElements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 mixedGridModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridToHomeSwitcherModifier.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"mixedGridModifier"}];
}

@end