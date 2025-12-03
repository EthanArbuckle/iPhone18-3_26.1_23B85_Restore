@interface PRSPosterRoleActivePosterObserver
- (PRSPosterRoleActivePosterObserver)init;
- (PRSPosterRoleActivePosterObserver)initWithRoles:(id)roles needsSandboxExtensions:(BOOL)extensions;
- (id)stateForRole:(id)role;
- (void)issueUpdatedState:(id)state;
@end

@implementation PRSPosterRoleActivePosterObserver

- (PRSPosterRoleActivePosterObserver)init
{
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"PRPosterRoleLockScreen"];
  v4 = [(PRSPosterRoleActivePosterObserver *)self initWithRoles:v3];

  return v4;
}

- (PRSPosterRoleActivePosterObserver)initWithRoles:(id)roles needsSandboxExtensions:(BOOL)extensions
{
  rolesCopy = roles;
  v13.receiver = self;
  v13.super_class = PRSPosterRoleActivePosterObserver;
  v7 = [(PRSPosterRoleActivePosterObserver *)&v13 init];
  if (v7)
  {
    v8 = [rolesCopy copy];
    roles = v7->_roles;
    v7->_roles = v8;

    v7->_needsSandboxExtensions = extensions;
    v10 = objc_opt_new();
    roleToState = v7->_roleToState;
    v7->_roleToState = v10;
  }

  return v7;
}

- (void)issueUpdatedState:(id)state
{
  stateCopy = state;
  role = [stateCopy role];
  if ([(NSSet *)self->_roles containsObject:role])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_roleToState setObject:stateCopy forKeyedSubscript:role];
    handler = [(PRSPosterRoleActivePosterObserver *)selfCopy handler];
    v7 = handler;
    if (handler)
    {
      (*(handler + 16))(handler, selfCopy, stateCopy);
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)stateForRole:(id)role
{
  roleCopy = role;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_roleToState objectForKeyedSubscript:roleCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

@end