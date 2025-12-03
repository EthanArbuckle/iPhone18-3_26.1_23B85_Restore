@interface PBFApplicationStateComponent
- (NSDictionary)userInfo;
- (PBFApplicationStateComponent)initWithIdentifier:(id)identifier userInfo:(id)info;
- (PBFApplicationStateComponent)initWithPRPosterConfiguration:(id)configuration;
- (PBFApplicationStateComponent)initWithPRPosterDescriptor:(id)descriptor;
- (PBFApplicationStateComponent)initWithPRSPosterConfiguration:(id)configuration;
- (PBFApplicationStateComponent)initWithPath:(id)path;
- (PBFApplicationStateComponent)initWithServerIdentity:(id)identity;
- (PBFStateComponentDelegate)delegate;
- (id)description;
- (unint64_t)hash;
- (void)setUserInfo:(id)info;
@end

@implementation PBFApplicationStateComponent

- (PBFApplicationStateComponent)initWithIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  if (!identifierCopy)
  {
    [PBFApplicationStateComponent initWithIdentifier:a2 userInfo:?];
  }

  v9 = infoCopy;
  v15.receiver = self;
  v15.super_class = PBFApplicationStateComponent;
  v10 = [(PBFApplicationStateComponent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(PBFApplicationStateComponent *)v10 setIdentifier:identifierCopy];
    v12 = [v9 copy];
    userInfo = v11->_userInfo;
    v11->_userInfo = v12;

    v11->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (PBFApplicationStateComponent)initWithServerIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    objc_storeStrong(&self->_identity, identity);
    self = [(PBFApplicationStateComponent *)self initWithIdentifier:@"PosterComponent" userInfo:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PBFApplicationStateComponent)initWithPRPosterConfiguration:(id)configuration
{
  _path = [configuration _path];
  serverIdentity = [_path serverIdentity];
  v6 = [(PBFApplicationStateComponent *)self initWithServerIdentity:serverIdentity];

  return v6;
}

- (PBFApplicationStateComponent)initWithPRSPosterConfiguration:(id)configuration
{
  _path = [configuration _path];
  serverIdentity = [_path serverIdentity];
  v6 = [(PBFApplicationStateComponent *)self initWithServerIdentity:serverIdentity];

  return v6;
}

- (PBFApplicationStateComponent)initWithPRPosterDescriptor:(id)descriptor
{
  _path = [descriptor _path];
  serverIdentity = [_path serverIdentity];
  v6 = [(PBFApplicationStateComponent *)self initWithServerIdentity:serverIdentity];

  return v6;
}

- (PBFApplicationStateComponent)initWithPath:(id)path
{
  identity = [path identity];
  v5 = [(PBFApplicationStateComponent *)self initWithServerIdentity:identity];

  return v5;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cachedDescription;
  if (!v3)
  {
    v4 = [MEMORY[0x277CF0C00] builderWithObject:selfCopy];
    [v4 appendString:selfCopy->_identifier withName:@"identifier"];
    v5 = [v4 appendObject:selfCopy->_identity withName:@"identity" skipIfNil:1];
    [v4 appendDictionarySection:selfCopy->_userInfo withName:@"userInfo" skipIfEmpty:1];
    build = [v4 build];
    cachedDescription = selfCopy->_cachedDescription;
    selfCopy->_cachedDescription = build;

    v3 = build;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedHash = selfCopy->_cachedHash;
  if (cachedHash == 0x7FFFFFFFFFFFFFFFLL)
  {
    builder = [MEMORY[0x277CF0C40] builder];
    v5 = [builder appendString:selfCopy->_identifier];
    v6 = [builder appendObject:selfCopy->_userInfo];
    v7 = [builder appendObject:selfCopy->_identifier];
    cachedHash = [builder hash];
    selfCopy->_cachedHash = cachedHash;
  }

  objc_sync_exit(selfCopy);

  return cachedHash;
}

- (NSDictionary)userInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_userInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSDictionary *)selfCopy->_userInfo isEqualToDictionary:infoCopy])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    cachedDescription = selfCopy->_cachedDescription;
    selfCopy->_cachedDescription = 0;

    selfCopy->_cachedHash = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [infoCopy copy];
    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = v6;

    objc_sync_exit(selfCopy);
    delegate = [(PBFApplicationStateComponent *)selfCopy delegate];
    [(PBFApplicationStateComponent *)delegate componentWasUpdated:selfCopy];
    selfCopy = delegate;
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