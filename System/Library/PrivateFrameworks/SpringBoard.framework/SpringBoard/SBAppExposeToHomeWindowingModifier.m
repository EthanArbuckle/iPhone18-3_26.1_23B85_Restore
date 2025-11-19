@interface SBAppExposeToHomeWindowingModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (SBAppExposeToHomeWindowingModifier)initWithTransitionModifier:(id)a3 appExposeModifier:(id)a4;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (void)didComplete;
- (void)transitionWillBegin:(id)a3;
- (void)willBegin;
@end

@implementation SBAppExposeToHomeWindowingModifier

- (SBAppExposeToHomeWindowingModifier)initWithTransitionModifier:(id)a3 appExposeModifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBAppExposeToHomeWindowingModifier;
  v9 = [(SBWindowingModifier *)&v11 init];
  if (v9)
  {
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        [(SBChainableModifier *)v9 addChildModifier:v7];
        objc_storeStrong(&v9->_appExposeModifier, a4);
        goto LABEL_5;
      }
    }

    else
    {
      [SBAppExposeToHomeWindowingModifier initWithTransitionModifier:a2 appExposeModifier:v9];
      if (v8)
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

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
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

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  if (self->_adjustedAppLayoutsBeforeTransition && [(SBWindowingModifier *)self transitionPhase]== 2)
  {
    v17.receiver = self;
    v17.super_class = SBAppExposeToHomeWindowingModifier;
    v5 = [(SBAppExposeToHomeWindowingModifier *)&v17 adjustedAppLayoutsForAppLayouts:v4];
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
    v11 = [(SBAppExposeToHomeWindowingModifier *)&v13 adjustedAppLayoutsForAppLayouts:v4];
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