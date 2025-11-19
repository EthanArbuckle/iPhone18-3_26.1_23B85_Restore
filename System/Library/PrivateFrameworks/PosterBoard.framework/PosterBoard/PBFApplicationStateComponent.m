@interface PBFApplicationStateComponent
- (NSDictionary)userInfo;
- (PBFApplicationStateComponent)initWithIdentifier:(id)a3 userInfo:(id)a4;
- (PBFApplicationStateComponent)initWithPRPosterConfiguration:(id)a3;
- (PBFApplicationStateComponent)initWithPRPosterDescriptor:(id)a3;
- (PBFApplicationStateComponent)initWithPRSPosterConfiguration:(id)a3;
- (PBFApplicationStateComponent)initWithPath:(id)a3;
- (PBFApplicationStateComponent)initWithServerIdentity:(id)a3;
- (PBFStateComponentDelegate)delegate;
- (id)description;
- (unint64_t)hash;
- (void)setUserInfo:(id)a3;
@end

@implementation PBFApplicationStateComponent

- (PBFApplicationStateComponent)initWithIdentifier:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PBFApplicationStateComponent initWithIdentifier:a2 userInfo:?];
  }

  v9 = v8;
  v15.receiver = self;
  v15.super_class = PBFApplicationStateComponent;
  v10 = [(PBFApplicationStateComponent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(PBFApplicationStateComponent *)v10 setIdentifier:v7];
    v12 = [v9 copy];
    userInfo = v11->_userInfo;
    v11->_userInfo = v12;

    v11->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (PBFApplicationStateComponent)initWithServerIdentity:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_identity, a3);
    self = [(PBFApplicationStateComponent *)self initWithIdentifier:@"PosterComponent" userInfo:0];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PBFApplicationStateComponent)initWithPRPosterConfiguration:(id)a3
{
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];
  v6 = [(PBFApplicationStateComponent *)self initWithServerIdentity:v5];

  return v6;
}

- (PBFApplicationStateComponent)initWithPRSPosterConfiguration:(id)a3
{
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];
  v6 = [(PBFApplicationStateComponent *)self initWithServerIdentity:v5];

  return v6;
}

- (PBFApplicationStateComponent)initWithPRPosterDescriptor:(id)a3
{
  v4 = [a3 _path];
  v5 = [v4 serverIdentity];
  v6 = [(PBFApplicationStateComponent *)self initWithServerIdentity:v5];

  return v6;
}

- (PBFApplicationStateComponent)initWithPath:(id)a3
{
  v4 = [a3 identity];
  v5 = [(PBFApplicationStateComponent *)self initWithServerIdentity:v4];

  return v5;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedDescription;
  if (!v3)
  {
    v4 = [MEMORY[0x277CF0C00] builderWithObject:v2];
    [v4 appendString:v2->_identifier withName:@"identifier"];
    v5 = [v4 appendObject:v2->_identity withName:@"identity" skipIfNil:1];
    [v4 appendDictionarySection:v2->_userInfo withName:@"userInfo" skipIfEmpty:1];
    v6 = [v4 build];
    cachedDescription = v2->_cachedDescription;
    v2->_cachedDescription = v6;

    v3 = v6;
  }

  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  cachedHash = v2->_cachedHash;
  if (cachedHash == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x277CF0C40] builder];
    v5 = [v4 appendString:v2->_identifier];
    v6 = [v4 appendObject:v2->_userInfo];
    v7 = [v4 appendObject:v2->_identifier];
    cachedHash = [v4 hash];
    v2->_cachedHash = cachedHash;
  }

  objc_sync_exit(v2);

  return cachedHash;
}

- (NSDictionary)userInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_userInfo;
  objc_sync_exit(v2);

  return v3;
}

- (void)setUserInfo:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(NSDictionary *)v4->_userInfo isEqualToDictionary:v9])
  {
    objc_sync_exit(v4);
  }

  else
  {
    cachedDescription = v4->_cachedDescription;
    v4->_cachedDescription = 0;

    v4->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [v9 copy];
    userInfo = v4->_userInfo;
    v4->_userInfo = v6;

    objc_sync_exit(v4);
    v8 = [(PBFApplicationStateComponent *)v4 delegate];
    [(PBFApplicationStateComponent *)v8 componentWasUpdated:v4];
    v4 = v8;
  }
}

- (PBFStateComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIdentifier:(const char *)a1 userInfo:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"componentIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFApplicationStateMonitoring.m";
    v9 = 1024;
    v10 = 41;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end