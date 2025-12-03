@interface SBTransitionSwitcherModifier
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (SBTransitionSwitcherModifier)initWithTransitionID:(id)d;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToResignActive;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)handleGestureEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleScrollEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)interruptAndEndTransition;
- (id)keyboardSuppressionMode;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
@end

@implementation SBTransitionSwitcherModifier

- (id)transitionWillBegin
{
  asyncRenderingDisabled = [(SBTransitionSwitcherModifier *)self asyncRenderingDisabled];
  self->_wantsResignActiveAndAsyncRenderingAssertions &= !asyncRenderingDisabled;
  v14 = 0.0;
  if (asyncRenderingDisabled || ![(SBTransitionSwitcherModifier *)self shouldAsyncRenderUntilDelay:&v14])
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
    appLayouts = [(SBTransitionSwitcherModifier *)self appLayouts];
    v5 = [v3 setWithArray:appLayouts];
    v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283370448];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBTransitionSwitcherModifier;
    appLayoutsToResignActive = [(SBTransitionSwitcherModifier *)&v16 appLayoutsToResignActive];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(appLayoutsToResignActive, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SBTransitionSwitcherModifier_appLayoutsToResignActive__block_invoke;
    v12[3] = &unk_2783AF3B8;
    v13 = &unk_283370460;
    v9 = v8;
    v14 = v9;
    v15 = &unk_283370478;
    [appLayoutsToResignActive bs_each:v12];
    v10 = v15;
    v6 = v9;
  }

  return v6;
}

- (id)keyboardSuppressionMode
{
  if (self->_wantsResignActiveAndAsyncRenderingAssertions)
  {
    keyboardSuppressionMode = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBTransitionSwitcherModifier;
    keyboardSuppressionMode = [(SBTransitionSwitcherModifier *)&v4 keyboardSuppressionMode];
  }

  return keyboardSuppressionMode;
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

- (SBTransitionSwitcherModifier)initWithTransitionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SBTransitionSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 init];
  if (v7)
  {
    if (!dCopy)
    {
      [(SBTransitionSwitcherModifier *)a2 initWithTransitionID:v7];
    }

    objc_storeStrong(&v7->_transitionID, d);
    v7->_transitionPhase = 0;
    v7->_wantsResignActiveAndAsyncRenderingAssertions = 1;
  }

  return v7;
}

- (id)interruptAndEndTransition
{
  if (self->_transitionPhase == 3)
  {
    transitionDidEnd = 0;
  }

  else
  {
    self->_isInterrupted = 1;
    self->_transitionPhase = 3;
    [(SBChainableModifier *)self setState:1];
    transitionDidEnd = [(SBTransitionSwitcherModifier *)self transitionDidEnd];
  }

  return transitionDidEnd;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v37 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = SBTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v34 adjustedAppLayoutsForAppLayouts:layouts];
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

- (id)animationAttributesForLayoutElement:(id)element
{
  v6.receiver = self;
  v6.super_class = SBTransitionSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v6 animationAttributesForLayoutElement:element];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:3];

  return v4;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(SBTransitionSwitcherModifier *)self frameForIndex:index];

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

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = SBTransitionSwitcherModifier;
  return ([(SBTransitionSwitcherModifier *)&v4 asyncRenderingAttributesForAppLayout:layout]& 0xFF01 | self->_wantsResignActiveAndAsyncRenderingAssertions);
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBTransitionSwitcherModifier;
  v4 = [(SBChainableModifier *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = SBStringFromTransitionPhase(self->_transitionPhase);
  [v4 appendString:v5 withName:@"phase"];

  return v4;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v27.receiver = self;
  v27.super_class = SBTransitionSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v27 handleTransitionEvent:eventCopy];
  if ([eventCopy toEnvironmentMode] == 2)
  {
    toFloatingSwitcherVisible = 1;
  }

  else
  {
    toFloatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  }

  self->_isTransitioningToSwitcher = toFloatingSwitcherVisible;
  v8 = [(SBTransitionSwitcherModifier *)self appLayoutsToEnsureExistForMainTransitionEvent:eventCopy];
  appLayoutsToEnsureExist = self->_appLayoutsToEnsureExist;
  self->_appLayoutsToEnsureExist = v8;

  phase = [eventCopy phase];
  transitionID = [eventCopy transitionID];
  v12 = [transitionID isEqual:self->_transitionID];

  if (v12)
  {
    if (phase <= self->_transitionPhase)
    {
      [(SBTransitionSwitcherModifier *)phase handleTransitionEvent:a2, self];
    }

    self->_transitionPhase = phase;
    if (phase == 3 && [eventCopy isAnimated])
    {
      fromAppLayout = [eventCopy fromAppLayout];
      toAppLayout = [eventCopy toAppLayout];

      fromEnvironmentMode = [eventCopy fromEnvironmentMode];
      toEnvironmentMode = [eventCopy toEnvironmentMode];
      toAppLayout2 = [eventCopy toAppLayout];
      v18 = toAppLayout2;
      if (!toAppLayout2 || fromAppLayout == toAppLayout && fromEnvironmentMode == toEnvironmentMode)
      {
      }

      else
      {
        toEnvironmentMode2 = [eventCopy toEnvironmentMode];

        if (toEnvironmentMode2 == 3)
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
      transitionDidEnd = [(SBTransitionSwitcherModifier *)self transitionDidEnd];
      break;
    case 2uLL:
      transitionDidEnd = [(SBTransitionSwitcherModifier *)self transitionWillUpdate];
      break;
    case 1uLL:
      transitionDidEnd = [(SBTransitionSwitcherModifier *)self transitionWillBegin];
      break;
    default:
      goto LABEL_23;
  }

  v21 = transitionDidEnd;
  v22 = SBAppendSwitcherModifierResponse(transitionDidEnd, v6);

  v6 = v22;
LABEL_23:

  return v6;
}

- (id)handleGestureEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleGestureEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase)
  {
    self->_isInterrupted = 1;
    self->_transitionPhase = 3;
    [(SBChainableModifier *)self setState:1];
    transitionDidEnd = [(SBTransitionSwitcherModifier *)self transitionDidEnd];
    v8 = SBAppendSwitcherModifierResponse(transitionDidEnd, v5);

    v5 = v8;
  }

  return v5;
}

- (id)handleScrollEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleScrollEvent:eventCopy];
  isUserInitiated = [eventCopy isUserInitiated];

  if (isUserInitiated && self->_isTransitioningToSwitcher)
  {
    interruptAndEndTransition = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:interruptAndEndTransition toResponse:v5];

    v9 = [[SBPreemptAnimationSwitcherEventResponse alloc] initWithOptions:1];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v8];
  }

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = SBTransitionSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v9 handleRemovalEvent:eventCopy];
  if ([eventCopy phase] == 1 && -[SBTransitionSwitcherModifier shouldInterruptForRemovalEvent:](self, "shouldInterruptForRemovalEvent:", eventCopy))
  {
    interruptAndEndTransition = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
    v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:interruptAndEndTransition toResponse:v5];

    v5 = v7;
  }

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v8 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"kSBTransitionModifierInvalidateAsyncRenderingReason"];
  if (eventCopy)
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