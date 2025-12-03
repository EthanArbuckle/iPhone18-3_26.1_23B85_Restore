@interface SBPIPEnvironmentDependentOverrideAssertion
- (SBPIPEnvironmentDependentOverrideAssertion)initWithReason:(int64_t)reason identifier:(id)identifier windowScene:(id)scene invalidationBlock:(id)block;
- (id)_layoutCoordinator;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (int64_t)_environmentModeForLayoutState:(id)state;
- (void)_updateStateForTransitionWithContext:(id)context;
- (void)dealloc;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
@end

@implementation SBPIPEnvironmentDependentOverrideAssertion

- (SBPIPEnvironmentDependentOverrideAssertion)initWithReason:(int64_t)reason identifier:(id)identifier windowScene:(id)scene invalidationBlock:(id)block
{
  sceneCopy = scene;
  v22.receiver = self;
  v22.super_class = SBPIPEnvironmentDependentOverrideAssertion;
  v11 = [(SBPIPBehaviorOverrideAssertion *)&v22 initWithReason:reason identifier:identifier invalidationBlock:block];
  v12 = v11;
  if (v11)
  {
    v11->_invalidatesEarly = 0;
    objc_storeWeak(&v11->_windowScene, sceneCopy);
    _layoutCoordinator = [(SBPIPEnvironmentDependentOverrideAssertion *)v12 _layoutCoordinator];
    [_layoutCoordinator addObserver:v12];

    v14 = MEMORY[0x277CBEB98];
    v15 = MEMORY[0x277CCABB0];
    switcherController = [sceneCopy switcherController];
    layoutState = [switcherController layoutState];
    v18 = [v15 numberWithInteger:{-[SBPIPEnvironmentDependentOverrideAssertion _environmentModeForLayoutState:](v12, "_environmentModeForLayoutState:", layoutState)}];
    v19 = [v14 setWithObject:v18];
    allowedEnvironmentModes = v12->_allowedEnvironmentModes;
    v12->_allowedEnvironmentModes = v19;
  }

  return v12;
}

- (void)dealloc
{
  _layoutCoordinator = [(SBPIPEnvironmentDependentOverrideAssertion *)self _layoutCoordinator];
  [_layoutCoordinator removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBPIPEnvironmentDependentOverrideAssertion;
  [(BSSimpleAssertion *)&v4 dealloc];
}

- (id)_layoutCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateTransitionCoordinator = [WeakRetained layoutStateTransitionCoordinator];

  return layoutStateTransitionCoordinator;
}

- (int64_t)_environmentModeForLayoutState:(id)state
{
  stateCopy = state;
  if ([stateCopy isFloatingSwitcherVisible])
  {
    unlockedEnvironmentMode = 2;
  }

  else
  {
    unlockedEnvironmentMode = [stateCopy unlockedEnvironmentMode];
  }

  return unlockedEnvironmentMode;
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  if (self->_invalidatesEarly)
  {
    [(SBPIPEnvironmentDependentOverrideAssertion *)self _updateStateForTransitionWithContext:context];
  }
}

- (void)_updateStateForTransitionWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v10 = SBSafeCast(v5, toLayoutState);

  allowedEnvironmentModes = self->_allowedEnvironmentModes;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBPIPEnvironmentDependentOverrideAssertion _environmentModeForLayoutState:](self, "_environmentModeForLayoutState:", v10)}];
  LOBYTE(allowedEnvironmentModes) = [(NSSet *)allowedEnvironmentModes containsObject:v8];

  if ((allowedEnvironmentModes & 1) == 0)
  {
    [(BSSimpleAssertion *)self invalidate];
    _layoutCoordinator = [(SBPIPEnvironmentDependentOverrideAssertion *)self _layoutCoordinator];
    [_layoutCoordinator removeObserver:self];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SBPIPEnvironmentDependentOverrideAssertion;
  v4 = [(SBPIPBehaviorOverrideAssertion *)&v20 descriptionBuilderWithMultilinePrefix:prefix];
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
  succinctDescription = [WeakRetained succinctDescription];
  [v4 appendString:succinctDescription withName:@"Window Scene"];

  return v4;
}

@end