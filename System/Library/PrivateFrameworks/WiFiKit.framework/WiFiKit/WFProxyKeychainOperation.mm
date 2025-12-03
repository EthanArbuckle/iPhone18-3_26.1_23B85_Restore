@interface WFProxyKeychainOperation
+ (id)getPasswordOperationForHost:(id)host port:(id)port username:(id)username;
+ (id)removePasswordOperationForHost:(id)host port:(id)port username:(id)username;
+ (id)savePassswordOperationForHost:(id)host port:(id)port username:(id)username password:(id)password;
- (WFProxyKeychainOperation)initWithHost:(id)host port:(id)port username:(id)username password:(id)password type:(int64_t)type;
- (id)_credentialsForProtectionSpace:(id)space;
- (void)start;
@end

@implementation WFProxyKeychainOperation

+ (id)removePasswordOperationForHost:(id)host port:(id)port username:(id)username
{
  usernameCopy = username;
  portCopy = port;
  hostCopy = host;
  v10 = [[WFProxyKeychainOperation alloc] initWithHost:hostCopy port:portCopy username:usernameCopy password:0 type:1];

  return v10;
}

+ (id)getPasswordOperationForHost:(id)host port:(id)port username:(id)username
{
  usernameCopy = username;
  portCopy = port;
  hostCopy = host;
  v10 = [[WFProxyKeychainOperation alloc] initWithHost:hostCopy port:portCopy username:usernameCopy password:0 type:0];

  return v10;
}

+ (id)savePassswordOperationForHost:(id)host port:(id)port username:(id)username password:(id)password
{
  passwordCopy = password;
  usernameCopy = username;
  portCopy = port;
  hostCopy = host;
  v13 = [[WFProxyKeychainOperation alloc] initWithHost:hostCopy port:portCopy username:usernameCopy password:passwordCopy type:1];

  return v13;
}

- (WFProxyKeychainOperation)initWithHost:(id)host port:(id)port username:(id)username password:(id)password type:(int64_t)type
{
  hostCopy = host;
  portCopy = port;
  usernameCopy = username;
  passwordCopy = password;
  v20.receiver = self;
  v20.super_class = WFProxyKeychainOperation;
  v17 = [(WFProxyKeychainOperation *)&v20 init];
  v18 = v17;
  if (v17 && (objc_storeStrong(&v17->_password, password), portCopy) && hostCopy && usernameCopy)
  {
    objc_storeStrong(&v18->_host, host);
    objc_storeStrong(&v18->_username, username);
    objc_storeStrong(&v18->_port, port);
    v18->_type = type;
  }

  else
  {

    v18 = 0;
  }

  return v18;
}

- (void)start
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_4_0(&dword_273ECD000, v2, v3, "Failed to create NSURLCredentialStorage", v4, v5, v6, v7, 0);
  }
}

- (id)_credentialsForProtectionSpace:(id)space
{
  v4 = MEMORY[0x277CBAB88];
  spaceCopy = space;
  sharedCredentialStorage = [v4 sharedCredentialStorage];
  v7 = [sharedCredentialStorage credentialsForProtectionSpace:spaceCopy];

  if (v7)
  {
    username = [(WFProxyKeychainOperation *)self username];
    v9 = [v7 objectForKey:username];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end