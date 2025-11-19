@interface PRSPosterRoleActivePosterObserver
- (PRSPosterRoleActivePosterObserver)init;
- (PRSPosterRoleActivePosterObserver)initWithRoles:(id)a3 needsSandboxExtensions:(BOOL)a4;
- (id)stateForRole:(id)a3;
- (void)issueUpdatedState:(id)a3;
@end

@implementation PRSPosterRoleActivePosterObserver

- (PRSPosterRoleActivePosterObserver)init
{
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"PRPosterRoleLockScreen"];
  v4 = [(PRSPosterRoleActivePosterObserver *)self initWithRoles:v3];

  return v4;
}

- (PRSPosterRoleActivePosterObserver)initWithRoles:(id)a3 needsSandboxExtensions:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PRSPosterRoleActivePosterObserver;
  v7 = [(PRSPosterRoleActivePosterObserver *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    roles = v7->_roles;
    v7->_roles = v8;

    v7->_needsSandboxExtensions = a4;
    v10 = objc_opt_new();
    roleToState = v7->_roleToState;
    v7->_roleToState = v10;
  }

  return v7;
}

- (void)issueUpdatedState:(id)a3
{
  v8 = a3;
  v4 = [v8 role];
  if ([(NSSet *)self->_roles containsObject:v4])
  {
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableDictionary *)v5->_roleToState setObject:v8 forKeyedSubscript:v4];
    v6 = [(PRSPosterRoleActivePosterObserver *)v5 handler];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, v5, v8);
    }

    objc_sync_exit(v5);
  }
}

- (id)stateForRole:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_roleToState objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

@end