@interface SBFloatingDockWindowLevelAssertion
- (SBFloatingDockController)floatingDockController;
- (SBFloatingDockWindowLevelAssertion)initWithFloatingDockController:(id)a3 priority:(unint64_t)a4 level:(double)a5 reason:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBFloatingDockWindowLevelAssertion

- (SBFloatingDockWindowLevelAssertion)initWithFloatingDockController:(id)a3 priority:(unint64_t)a4 level:(double)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SBFloatingDockWindowLevelAssertion;
  v12 = [(SBFloatingDockWindowLevelAssertion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_floatingDockController, v10);
    v13->_priority = a4;
    v13->_level = a5;
    v14 = [v11 copy];
    reason = v13->_reason;
    v13->_reason = v14;

    [v10 _addFloatingDockWindowLevelAssertion:v13];
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
  v2 = [(SBFloatingDockWindowLevelAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFloatingDockWindowLevelAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFloatingDockWindowLevelAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBFloatingDockWindowLevelAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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