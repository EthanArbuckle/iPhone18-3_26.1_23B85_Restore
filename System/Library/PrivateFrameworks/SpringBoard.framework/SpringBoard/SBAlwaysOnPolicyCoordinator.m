@interface SBAlwaysOnPolicyCoordinator
- (NSSet)activePolicies;
- (void)_activatePolicy:(id)a3;
- (void)activate;
@end

@implementation SBAlwaysOnPolicyCoordinator

- (NSSet)activePolicies
{
  v2 = [(NSMutableSet *)self->_policies copy];

  return v2;
}

- (void)activate
{
  v3 = objc_opt_new();
  [(SBAlwaysOnPolicyCoordinator *)self _activatePolicy:v3];

  v4 = objc_opt_new();
  [(SBAlwaysOnPolicyCoordinator *)self _activatePolicy:v4];

  v5 = objc_opt_new();
  [(SBAlwaysOnPolicyCoordinator *)self _activatePolicy:v5];

  v6 = objc_opt_new();
  [(SBAlwaysOnPolicyCoordinator *)self _activatePolicy:v6];
}

- (void)_activatePolicy:(id)a3
{
  v4 = a3;
  policies = self->_policies;
  v8 = v4;
  if (!policies)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_policies;
    self->_policies = v6;

    v4 = v8;
    policies = self->_policies;
  }

  [(NSMutableSet *)policies addObject:v4];
  [v8 activateAlwaysOnPolicy];
}

@end