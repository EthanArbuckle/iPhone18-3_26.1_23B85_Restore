@interface PRSPosterRoleActivePosterObserverState
- (BOOL)isEqual:(id)equal;
- (PRSPosterRoleActivePosterObserverState)initWithRole:(id)role activePoster:(id)poster suggestions:(id)suggestions;
- (id)description;
@end

@implementation PRSPosterRoleActivePosterObserverState

- (PRSPosterRoleActivePosterObserverState)initWithRole:(id)role activePoster:(id)poster suggestions:(id)suggestions
{
  roleCopy = role;
  posterCopy = poster;
  suggestionsCopy = suggestions;
  v17.receiver = self;
  v17.super_class = PRSPosterRoleActivePosterObserverState;
  v12 = [(PRSPosterRoleActivePosterObserverState *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_role, role);
    objc_storeStrong(&v13->_activePoster, poster);
    v14 = [suggestionsCopy copy];
    suggestions = v13->_suggestions;
    v13->_suggestions = v14;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      activePoster = [(PRSPosterRoleActivePosterObserverState *)v5 activePoster];
      _path = [activePoster _path];
      serverIdentity = [_path serverIdentity];
      activePoster2 = [(PRSPosterRoleActivePosterObserverState *)self activePoster];
      _path2 = [activePoster2 _path];
      serverIdentity2 = [_path2 serverIdentity];
      v12 = BSEqualObjects();

      if (v12)
      {
        suggestions = [(PRSPosterRoleActivePosterObserverState *)v5 suggestions];
        suggestions2 = [(PRSPosterRoleActivePosterObserverState *)self suggestions];
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
  role = [(PRSPosterRoleActivePosterObserverState *)self role];
  v5 = [v3 appendObject:role withName:@"role"];

  activePoster = [(PRSPosterRoleActivePosterObserverState *)self activePoster];
  v7 = [v3 appendObject:activePoster withName:@"activePoster"];

  suggestions = [(PRSPosterRoleActivePosterObserverState *)self suggestions];
  [v3 appendArraySection:suggestions withName:@"suggestions" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

@end