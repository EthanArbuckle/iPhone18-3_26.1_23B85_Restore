@interface SBAppExposeToHomeWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (SBAppExposeToHomeWindowingModifier)initWithTransitionModifier:(id)modifier appExposeModifier:(id)exposeModifier;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (void)didComplete;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
@end

@implementation SBAppExposeToHomeWindowingModifier

- (SBAppExposeToHomeWindowingModifier)initWithTransitionModifier:(id)modifier appExposeModifier:(id)exposeModifier
{
  modifierCopy = modifier;
  exposeModifierCopy = exposeModifier;
  v11.receiver = self;
  v11.super_class = SBAppExposeToHomeWindowingModifier;
  v9 = [(SBWindowingModifier *)&v11 init];
  if (v9)
  {
    if (modifierCopy)
    {
      if (exposeModifierCopy)
      {
LABEL_4:
        [(SBChainableModifier *)v9 addChildModifier:modifierCopy];
        objc_storeStrong(&v9->_appExposeModifier, exposeModifier);
        goto LABEL_5;
      }
    }

    else
    {
      [SBAppExposeToHomeWindowingModifier initWithTransitionModifier:a2 appExposeModifier:v9];
      if (exposeModifierCopy)
      {
        goto LABEL_4;
      }
    }

    [SBAppExposeToHomeWindowingModifier initWithTransitionModifier:a2 appExposeModifier:v9];
    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)willBegin
{
  appExposeModifier = self->_appExposeModifier;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SBAppExposeToHomeWindowingModifier_willBegin__block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v3];
}

void __47__SBAppExposeToHomeWindowingModifier_willBegin__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  v7.receiver = *(a1 + 32);
  v7.super_class = SBAppExposeToHomeWindowingModifier;
  v3 = objc_msgSendSuper2(&v7, sel_appLayouts);
  v4 = [v2 adjustedAppLayoutsForAppLayouts:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 192);
  *(v5 + 192) = v4;
}

- (void)didComplete
{
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v3];
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  if (self->_adjustedAppLayoutsBeforeTransition && [(SBWindowingModifier *)self transitionPhase]== 2)
  {
    v17.receiver = self;
    v17.super_class = SBAppExposeToHomeWindowingModifier;
    v5 = [(SBAppExposeToHomeWindowingModifier *)&v17 adjustedAppLayoutsForAppLayouts:layoutsCopy];
    v6 = objc_opt_new();
    adjustedAppLayoutsBeforeTransition = self->_adjustedAppLayoutsBeforeTransition;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__SBAppExposeToHomeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v14[3] = &unk_2783AE4E0;
    v15 = v5;
    v8 = v6;
    v16 = v8;
    v9 = v5;
    [(NSArray *)adjustedAppLayoutsBeforeTransition enumerateObjectsUsingBlock:v14];
    v10 = v16;
    v11 = v8;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBAppExposeToHomeWindowingModifier;
    v11 = [(SBAppExposeToHomeWindowingModifier *)&v13 adjustedAppLayoutsForAppLayouts:layoutsCopy];
  }

  return v11;
}

void __70__SBAppExposeToHomeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__SBAppExposeToHomeWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
  v6[3] = &unk_2783A8CB8;
  v5 = v3;
  v7 = v5;
  if ([v4 bs_containsObjectPassingTest:v6])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)initWithTransitionModifier:(uint64_t)a1 appExposeModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToHomeWindowingModifier.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"transitionModifier"}];
}

- (void)initWithTransitionModifier:(uint64_t)a1 appExposeModifier:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppExposeToHomeWindowingModifier.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"appExposeModifier"}];
}

@end