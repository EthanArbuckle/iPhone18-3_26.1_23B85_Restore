@interface SBPIPEnvironmentDependentOverrideAssertion
- (SBPIPEnvironmentDependentOverrideAssertion)initWithReason:(int64_t)a3 identifier:(id)a4 windowScene:(id)a5 invalidationBlock:(id)a6;
- (id)_layoutCoordinator;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (int64_t)_environmentModeForLayoutState:(id)a3;
- (void)_updateStateForTransitionWithContext:(id)a3;
- (void)dealloc;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
@end

@implementation SBPIPEnvironmentDependentOverrideAssertion

- (SBPIPEnvironmentDependentOverrideAssertion)initWithReason:(int64_t)a3 identifier:(id)a4 windowScene:(id)a5 invalidationBlock:(id)a6
{
  v10 = a5;
  v22.receiver = self;
  v22.super_class = SBPIPEnvironmentDependentOverrideAssertion;
  v11 = [(SBPIPBehaviorOverrideAssertion *)&v22 initWithReason:a3 identifier:a4 invalidationBlock:a6];
  v12 = v11;
  if (v11)
  {
    v11->_invalidatesEarly = 0;
    objc_storeWeak(&v11->_windowScene, v10);
    v13 = [(SBPIPEnvironmentDependentOverrideAssertion *)v12 _layoutCoordinator];
    [v13 addObserver:v12];

    v14 = MEMORY[0x277CBEB98];
    v15 = MEMORY[0x277CCABB0];
    v16 = [v10 switcherController];
    v17 = [v16 layoutState];
    v18 = [v15 numberWithInteger:{-[SBPIPEnvironmentDependentOverrideAssertion _environmentModeForLayoutState:](v12, "_environmentModeForLayoutState:", v17)}];
    v19 = [v14 setWithObject:v18];
    allowedEnvironmentModes = v12->_allowedEnvironmentModes;
    v12->_allowedEnvironmentModes = v19;
  }

  return v12;
}

- (void)dealloc
{
  v3 = [(SBPIPEnvironmentDependentOverrideAssertion *)self _layoutCoordinator];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBPIPEnvironmentDependentOverrideAssertion;
  [(BSSimpleAssertion *)&v4 dealloc];
}

- (id)_layoutCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained layoutStateTransitionCoordinator];

  return v3;
}

- (int64_t)_environmentModeForLayoutState:(id)a3
{
  v3 = a3;
  if ([v3 isFloatingSwitcherVisible])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 unlockedEnvironmentMode];
  }

  return v4;
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  if (self->_invalidatesEarly)
  {
    [(SBPIPEnvironmentDependentOverrideAssertion *)self _updateStateForTransitionWithContext:a4];
  }
}

- (void)_updateStateForTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 toLayoutState];

  v10 = SBSafeCast(v5, v6);

  allowedEnvironmentModes = self->_allowedEnvironmentModes;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBPIPEnvironmentDependentOverrideAssertion _environmentModeForLayoutState:](self, "_environmentModeForLayoutState:", v10)}];
  LOBYTE(allowedEnvironmentModes) = [(NSSet *)allowedEnvironmentModes containsObject:v8];

  if ((allowedEnvironmentModes & 1) == 0)
  {
    [(BSSimpleAssertion *)self invalidate];
    v9 = [(SBPIPEnvironmentDependentOverrideAssertion *)self _layoutCoordinator];
    [v9 removeObserver:self];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SBPIPEnvironmentDependentOverrideAssertion;
  v4 = [(SBPIPBehaviorOverrideAssertion *)&v20 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSSet count](self->_allowedEnvironmentModes, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_allowedEnvironmentModes;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = SBStringForUnlockedEnvironmentMode([*(*(&v16 + 1) + 8 * i) unsignedIntValue]);
        [v5 addObject:v11];
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [v5 componentsJoinedByString:{@", "}];
  [v4 appendString:v12 withName:@"Allowed Environment"];

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v14 = [WeakRetained succinctDescription];
  [v4 appendString:v14 withName:@"Window Scene"];

  return v4;
}

@end