@interface SBFloatingDockWindowLevelAssertion
- (SBFloatingDockController)floatingDockController;
- (SBFloatingDockWindowLevelAssertion)initWithFloatingDockController:(id)controller priority:(unint64_t)priority level:(double)level reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBFloatingDockWindowLevelAssertion

- (SBFloatingDockWindowLevelAssertion)initWithFloatingDockController:(id)controller priority:(unint64_t)priority level:(double)level reason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = SBFloatingDockWindowLevelAssertion;
  v12 = [(SBFloatingDockWindowLevelAssertion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_floatingDockController, controllerCopy);
    v13->_priority = priority;
    v13->_level = level;
    v14 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v14;

    [controllerCopy _addFloatingDockWindowLevelAssertion:v13];
  }

  return v13;
}

- (void)dealloc
{
  [(SBFloatingDockWindowLevelAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBFloatingDockWindowLevelAssertion;
  [(SBFloatingDockWindowLevelAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingDockController);
  [WeakRetained _removeFloatingDockWindowLevelAssertion:self];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFloatingDockWindowLevelAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFloatingDockWindowLevelAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFloatingDockWindowLevelAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBFloatingDockWindowLevelAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __76__SBFloatingDockWindowLevelAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16) - 1;
  if (v3 > 4)
  {
    v4 = @"app switcher";
  }

  else
  {
    v4 = off_2783C2708[v3];
  }

  v5 = [v2 appendObject:v4 withName:@"priority"];
  v6 = [*(a1 + 32) appendFloat:@"level" withName:*(*(a1 + 40) + 24)];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"reason"];
}

- (SBFloatingDockController)floatingDockController
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingDockController);

  return WeakRetained;
}

@end