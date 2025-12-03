@interface SBAlwaysOnPolicyCoordinator
- (NSSet)activePolicies;
- (void)_activatePolicy:(id)policy;
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

- (void)_activatePolicy:(id)policy
{
  policyCopy = policy;
  policies = self->_policies;
  v8 = policyCopy;
  if (!policies)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_policies;
    self->_policies = v6;

    policyCopy = v8;
    policies = self->_policies;
  }

  [(NSMutableSet *)policies addObject:policyCopy];
  [v8 activateAlwaysOnPolicy];
}

@end