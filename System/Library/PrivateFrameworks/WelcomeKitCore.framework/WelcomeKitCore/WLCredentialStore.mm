@interface WLCredentialStore
+ (id)sharedInstance;
- (WLCredentialStore)init;
- (id)credentialsForAuthentication:(id)authentication;
- (id)currentAuthentication;
- (void)setCredentials:(id)credentials forAuthentication:(id)authentication;
@end

@implementation WLCredentialStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WLCredentialStore sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __35__WLCredentialStore_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(WLCredentialStore);

  return MEMORY[0x2821F96F8]();
}

- (WLCredentialStore)init
{
  v3.receiver = self;
  v3.super_class = WLCredentialStore;
  return [(WLCredentialStore *)&v3 init];
}

- (void)setCredentials:(id)credentials forAuthentication:(id)authentication
{
  credentialsCopy = credentials;
  authenticationCopy = authentication;
  obj = self;
  objc_sync_enter(obj);
  credentials = obj->_credentials;
  obj->_credentials = credentialsCopy;
  v9 = credentialsCopy;

  authentication = obj->_authentication;
  obj->_authentication = authenticationCopy;

  objc_sync_exit(obj);
}

- (id)currentAuthentication
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_authentication;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)credentialsForAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionUUID = [authenticationCopy sessionUUID];
  sessionUUID2 = [(WLDeviceAuthentication *)selfCopy->_authentication sessionUUID];
  v8 = [sessionUUID isEqualToString:sessionUUID2];

  if (v8)
  {
    v9 = selfCopy->_credentials;
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

@end