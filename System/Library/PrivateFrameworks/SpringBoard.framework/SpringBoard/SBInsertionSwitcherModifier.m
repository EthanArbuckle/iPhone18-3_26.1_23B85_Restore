@interface SBInsertionSwitcherModifier
- (CGPoint)scrollViewContentOffset;
- (SBInsertionSwitcherModifier)initWithAppLayout:(id)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleInsertionEvent:(id)a3;
- (id)visibleAppLayouts;
- (void)_performBlockBySimulatingPreInsertionState:(id)a3;
@end

@implementation SBInsertionSwitcherModifier

- (SBInsertionSwitcherModifier)initWithAppLayout:(id)a3
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBInsertionSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBInsertionSwitcherModifier *)a2 initWithAppLayout:v7];
    }

    objc_storeStrong(&v7->_appLayout, a3);
    v7->_phase = 0;
  }

  return v7;
}

- (id)handleInsertionEvent:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBInsertionSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v25 handleInsertionEvent:v4];
  appLayout = self->_appLayout;
  v7 = [v4 appLayout];
  LODWORD(appLayout) = [(SBAppLayout *)appLayout isEqual:v7];

  if (appLayout)
  {
    v8 = [v4 phase];
    self->_phase = v8;
    switch(v8)
    {
      case 4uLL:
        [(SBChainableModifier *)self setState:1];
        break;
      case 2uLL:
        v11 = [(SBInsertionSwitcherModifier *)self appLayouts];
        if ([v11 count])
        {
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 0x7FFFFFFFFFFFFFFFLL;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __52__SBInsertionSwitcherModifier_handleInsertionEvent___block_invoke;
          v18[3] = &unk_2783AB258;
          v20 = &v21;
          v18[4] = self;
          v19 = v4;
          [(SBInsertionSwitcherModifier *)self _performBlockBySimulatingPreInsertionState:v18];
          v12 = [v11 count] - 1;
          if (v12 >= v22[3])
          {
            v12 = v22[3];
          }

          v22[3] = v12;
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [(SBInsertionSwitcherModifier *)self appLayouts];
            v14 = [v13 objectAtIndex:v22[3]];

            v15 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v14 alignment:0 animated:0];
            v16 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v15 toResponse:v5];

            v5 = v16;
          }

          _Block_object_dispose(&v21, 8);
        }

        break;
      case 1uLL:
        [(SBInsertionSwitcherModifier *)self scrollViewContentOffset];
        self->_contentOffsetBeforeInsertion.x = v9;
        self->_contentOffsetBeforeInsertion.y = v10;
        break;
    }
  }

  return v5;
}

uint64_t __52__SBInsertionSwitcherModifier_handleInsertionEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) indexToScrollToAfterInsertingAtIndex:{objc_msgSend(*(a1 + 40), "index")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (CGPoint)scrollViewContentOffset
{
  if (self->_isSimulatingPreInsertionState)
  {
    x = self->_contentOffsetBeforeInsertion.x;
    y = self->_contentOffsetBeforeInsertion.y;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SBInsertionSwitcherModifier;
    [(SBInsertionSwitcherModifier *)&v6 scrollViewContentOffset];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (id)visibleAppLayouts
{
  v14.receiver = self;
  v14.super_class = SBInsertionSwitcherModifier;
  v3 = [(SBInsertionSwitcherModifier *)&v14 visibleAppLayouts];
  v4 = v3;
  if (self->_phase > 1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__126;
    v12 = __Block_byref_object_dispose__126;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SBInsertionSwitcherModifier_visibleAppLayouts__block_invoke;
    v7[3] = &unk_2783A8CE0;
    v7[4] = self;
    v7[5] = &v8;
    [(SBInsertionSwitcherModifier *)self _performBlockBySimulatingPreInsertionState:v7];
    v5 = [v4 setByAddingObjectsFromSet:v9[5]];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void __48__SBInsertionSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = SBInsertionSwitcherModifier;
  v2 = objc_msgSendSuper2(&v5, sel_visibleAppLayouts);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBInsertionSwitcherModifier;
  v4 = [(SBInsertionSwitcherModifier *)&v10 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  [v5 setUpdateMode:3];
  v6 = [(SBInsertionSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 opacitySettings];
  [v5 setOpacitySettings:v8];

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (self->_phase != 2 || (-[SBInsertionSwitcherModifier appLayouts](self, "appLayouts"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 indexOfObject:self->_appLayout], v9, v11 = 0.0, v10 != a5))
  {
    v14.receiver = self;
    v14.super_class = SBInsertionSwitcherModifier;
    [(SBInsertionSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (void)_performBlockBySimulatingPreInsertionState:(id)a3
{
  v4 = a3;
  isSimulatingPreInsertionState = self->_isSimulatingPreInsertionState;
  self->_isSimulatingPreInsertionState = 1;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [(SBInsertionSwitcherModifier *)self appLayouts];
  v8 = [v6 initWithArray:v7];

  [v8 removeObject:self->_appLayout];
  v9 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SBInsertionSwitcherModifier__performBlockBySimulatingPreInsertionState___block_invoke;
  v11[3] = &unk_2783A9348;
  v12 = v4;
  v10 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v9 usingBlock:v11];
  self->_isSimulatingPreInsertionState = isSimulatingPreInsertionState;
}

- (void)initWithAppLayout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInsertionSwitcherModifier.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end