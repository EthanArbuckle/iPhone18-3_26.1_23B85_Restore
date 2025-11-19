@interface PRSPosterRoleActivePosterObserverState
- (BOOL)isEqual:(id)a3;
- (PRSPosterRoleActivePosterObserverState)initWithRole:(id)a3 activePoster:(id)a4 suggestions:(id)a5;
- (id)description;
@end

@implementation PRSPosterRoleActivePosterObserverState

- (PRSPosterRoleActivePosterObserverState)initWithRole:(id)a3 activePoster:(id)a4 suggestions:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PRSPosterRoleActivePosterObserverState;
  v12 = [(PRSPosterRoleActivePosterObserverState *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_role, a3);
    objc_storeStrong(&v13->_activePoster, a4);
    v14 = [v11 copy];
    suggestions = v13->_suggestions;
    v13->_suggestions = v14;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PRSPosterRoleActivePosterObserverState *)v5 activePoster];
      v7 = [v6 _path];
      v8 = [v7 serverIdentity];
      v9 = [(PRSPosterRoleActivePosterObserverState *)self activePoster];
      v10 = [v9 _path];
      v11 = [v10 serverIdentity];
      v12 = BSEqualObjects();

      if (v12)
      {
        v13 = [(PRSPosterRoleActivePosterObserverState *)v5 suggestions];
        v14 = [(PRSPosterRoleActivePosterObserverState *)self suggestions];
        v15 = BSEqualObjects();
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRSPosterRoleActivePosterObserverState *)self role];
  v5 = [v3 appendObject:v4 withName:@"role"];

  v6 = [(PRSPosterRoleActivePosterObserverState *)self activePoster];
  v7 = [v3 appendObject:v6 withName:@"activePoster"];

  v8 = [(PRSPosterRoleActivePosterObserverState *)self suggestions];
  [v3 appendArraySection:v8 withName:@"suggestions" skipIfEmpty:1];

  v9 = [v3 build];

  return v9;
}

@end