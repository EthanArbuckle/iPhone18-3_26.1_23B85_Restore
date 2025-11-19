@interface SBTransitionSwitcherModifier
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (SBTransitionSwitcherModifier)initWithTransitionID:(id)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToResignActive;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)interruptAndEndTransition;
- (id)keyboardSuppressionMode;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
@end

@implementation SBTransitionSwitcherModifier

- (id)transitionWillBegin
{
  v3 = [(SBTransitionSwitcherModifier *)self asyncRenderingDisabled];
  self->_wantsResignActiveAndAsyncRenderingAssertions &= !v3;
  v14 = 0.0;
  if (v3 || ![(SBTransitionSwitcherModifier *)self shouldAsyncRenderUntilDelay:&v14])
  {
    v7 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v4 = [SBTimerEventSwitcherEventResponse alloc];
    v5 = v14;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__SBTransitionSwitcherModifier_transitionWillBegin__block_invoke;
    v11[3] = &unk_2783AD4A0;
    objc_copyWeak(&v12, &location);
    v6 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:v11 validator:@"kSBTransitionModifierInvalidateAsyncRenderingReason" reason:v5];
    v7 = SBAppendSwitcherModifierResponse(v6, 0);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  if ([(NSArray *)self->_appLayoutsToEnsureExist count])
  {
    v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v7];

    v7 = v9;
  }

  return v7;
}

BOOL __51__SBTransitionSwitcherModifier_transitionWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)appLayoutsToResignActive
{
  if (self->_wantsResignActiveAndAsyncRenderingAssertions)
  {
    v2 = MEMORY[0x277CBEAC0];
    v3 = MEMORY[0x277CBEB98];
    v4 = [(SBTransitionSwitcherModifier *)self appLayouts];
    v5 = [v3 setWithArray:v4];
    v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283370448];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBTransitionSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v16 appLayoutsToResignActive];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SBTransitionSwitcherModifier_appLayoutsToResignActive__block_invoke;
    v12[3] = &unk_2783AF3B8;
    v13 = &unk_283370460;
    v9 = v8;
    v14 = v9;
    v15 = &unk_283370478;
    [v7 bs_each:v12];
    v10 = v15;
    v6 = v9;
  }

  return v6;
}

- (id)keyboardSuppressionMode
{
  if (self->_wantsResignActiveAndAsyncRenderingAssertions)
  {
    v2 = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBTransitionSwitcherModifier;
    v2 = [(SBTransitionSwitcherModifier *)&v4 keyboardSuppressionMode];
  }

  return v2;
}

- (id)transitionDidEnd
{
  if ([(NSArray *)self->_appLayoutsToEnsureExist count])
  {
    v2 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v3 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v2 toResponse:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBTransitionSwitcherModifier)initWithTransitionID:(id)a3
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBTransitionSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBTransitionSwitcherModifier *)a2 initWithTransitionID:v7];
    }

    objc_storeStrong(&v7->_transitionID, a3);
    v7->_transitionPhase = 0;
    v7->_wantsResignActiveAndAsyncRenderingAssertions = 1;
  }

  return v7;
}

- (id)interruptAndEndTransition
{
  if (self->_transitionPhase == 3)
  {
    v3 = 0;
  }

  else
  {
    self->_isInterrupted = 1;
    self->_transitionPhase = 3;
    [(SBChainableModifier *)self setState:1];
    v3 = [(SBTransitionSwitcherModifier *)self transitionDidEnd];
  }

  return v3;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = SBTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v34 adjustedAppLayoutsForAppLayouts:a3];
  if ([(NSArray *)self->_appLayoutsToEnsureExist count])
  {
    v20 = v4;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_appLayoutsToEnsureExist;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      v21 = *v31;
      do
      {
        v8 = 0;
        v22 = v6;
        do
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * v8);
          if (([v4 containsObject:v9] & 1) == 0)
          {
            v24 = v8;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v10 = [v4 copy];
            v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v27;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v27 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v26 + 1) + 8 * i);
                  if ([v15 containsAnyItemFromAppLayout:v9])
                  {
                    v16 = [v4 indexOfObject:v15];
                    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v17 = v16;
                      [v4 removeObjectAtIndex:v16];
                      v25[0] = MEMORY[0x277D85DD0];
                      v25[1] = 3221225472;
                      v25[2] = __64__SBTransitionSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
                      v25[3] = &unk_2783A8C90;
                      v25[4] = v9;
                      v18 = [v15 appLayoutWithItemsPassingTest:v25];
                      if (v18)
                      {
                        [v4 insertObject:v18 atIndex:v17];
                      }
                    }
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
              }

              while (v12);
            }

            [v4 insertObject:v9 atIndex:0];
            v7 = v21;
            v6 = v22;
            v8 = v24;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

uint64_t __64__SBTransitionSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allItems];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBTransitionSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v6 animationAttributesForLayoutElement:a3];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:3];

  return v4;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(SBTransitionSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

void __56__SBTransitionSwitcherModifier_appLayoutsToResignActive__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v8 = a3;
  v6 = [a2 isEqual:v5];
  v7 = 48;
  if (v6)
  {
    v7 = 32;
  }

  [*(a1 + 40) setObject:v8 forKey:*(a1 + v7)];
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBTransitionSwitcherModifier;
  return ([(SBTransitionSwitcherModifier *)&v4 asyncRenderingAttributesForAppLayout:a3]& 0xFF01 | self->_wantsResignActiveAndAsyncRenderingAssertions);
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBTransitionSwitcherModifier;
  v4 = [(SBChainableModifier *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = SBStringFromTransitionPhase(self->_transitionPhase);
  [v4 appendString:v5 withName:@"phase"];

  return v4;
}

- (id)handleTransitionEvent:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = SBTransitionSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v27 handleTransitionEvent:v5];
  if ([v5 toEnvironmentMode] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 toFloatingSwitcherVisible];
  }

  self->_isTransitioningToSwitcher = v7;
  v8 = [(SBTransitionSwitcherModifier *)self appLayoutsToEnsureExistForMainTransitionEvent:v5];
  appLayoutsToEnsureExist = self->_appLayoutsToEnsureExist;
  self->_appLayoutsToEnsureExist = v8;

  v10 = [v5 phase];
  v11 = [v5 transitionID];
  v12 = [v11 isEqual:self->_transitionID];

  if (v12)
  {
    if (v10 <= self->_transitionPhase)
    {
      [(SBTransitionSwitcherModifier *)v10 handleTransitionEvent:a2, self];
    }

    self->_transitionPhase = v10;
    if (v10 == 3 && [v5 isAnimated])
    {
      v13 = [v5 fromAppLayout];
      v14 = [v5 toAppLayout];

      v15 = [v5 fromEnvironmentMode];
      v16 = [v5 toEnvironmentMode];
      v17 = [v5 toAppLayout];
      v18 = v17;
      if (!v17 || v13 == v14 && v15 == v16)
      {
      }

      else
      {
        v24 = [v5 toEnvironmentMode];

        if (v24 == 3)
        {
          v25 = [[SBPreemptAnimationSwitcherEventResponse alloc] initWithOptions:2];
          v26 = SBAppendSwitcherModifierResponse(v25, v6);

          v6 = v26;
        }
      }
    }
  }

  else
  {
    self->_isInterrupted = 1;
    self->_transitionPhase = 3;
  }

  transitionPhase = self->_transitionPhase;
  if (transitionPhase == 3)
  {
    [(SBChainableModifier *)self setState:1];
    transitionPhase = self->_transitionPhase;
  }

  switch(transitionPhase)
  {
    case 3uLL:
      v20 = [(SBTransitionSwitcherModifier *)self transitionDidEnd];
      break;
    case 2uLL:
      v20 = [(SBTransitionSwitcherModifier *)self transitionWillUpdate];
      break;
    case 1uLL:
      v20 = [(SBTransitionSwitcherModifier *)self transitionWillBegin];
      break;
    default:
      goto LABEL_23;
  }

  v21 = v20;
  v22 = SBAppendSwitcherModifierResponse(v20, v6);

  v6 = v22;
LABEL_23:

  return v6;
}

- (id)handleGestureEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleGestureEvent:v4];
  v6 = [v4 phase];

  if (v6)
  {
    self->_isInterrupted = 1;
    self->_transitionPhase = 3;
    [(SBChainableModifier *)self setState:1];
    v7 = [(SBTransitionSwitcherModifier *)self transitionDidEnd];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)handleScrollEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleScrollEvent:v4];
  v6 = [v4 isUserInitiated];

  if (v6 && self->_isTransitioningToSwitcher)
  {
    v7 = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v9 = [[SBPreemptAnimationSwitcherEventResponse alloc] initWithOptions:1];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v8];
  }

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBTransitionSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v9 handleRemovalEvent:v4];
  if ([v4 phase] == 1 && -[SBTransitionSwitcherModifier shouldInterruptForRemovalEvent:](self, "shouldInterruptForRemovalEvent:", v4))
  {
    v6 = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
    v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];

    v5 = v7;
  }

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v8 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"kSBTransitionModifierInvalidateAsyncRenderingReason"];
  if (v4)
  {
    self->_wantsResignActiveAndAsyncRenderingAssertions = 0;
  }

  return v5;
}

- (void)initWithTransitionID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTransitionSwitcherModifier.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"transitionID"}];
}

- (void)handleTransitionEvent:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = SBStringFromTransitionPhase(a1);
  v10 = SBStringFromTransitionPhase(*a2);
  [v8 handleFailureInMethod:a3 object:a4 file:@"SBTransitionSwitcherModifier.m" lineNumber:282 description:{@"Expected a more advanced phase. Got %@, currently %@.", v9, v10}];
}

@end