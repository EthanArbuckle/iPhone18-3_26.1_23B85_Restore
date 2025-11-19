@interface WFProxyKeychainOperation
+ (id)getPasswordOperationForHost:(id)a3 port:(id)a4 username:(id)a5;
+ (id)removePasswordOperationForHost:(id)a3 port:(id)a4 username:(id)a5;
+ (id)savePassswordOperationForHost:(id)a3 port:(id)a4 username:(id)a5 password:(id)a6;
- (WFProxyKeychainOperation)initWithHost:(id)a3 port:(id)a4 username:(id)a5 password:(id)a6 type:(int64_t)a7;
- (id)_credentialsForProtectionSpace:(id)a3;
- (void)start;
@end

@implementation WFProxyKeychainOperation

+ (id)removePasswordOperationForHost:(id)a3 port:(id)a4 username:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WFProxyKeychainOperation alloc] initWithHost:v9 port:v8 username:v7 password:0 type:1];

  return v10;
}

+ (id)getPasswordOperationForHost:(id)a3 port:(id)a4 username:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WFProxyKeychainOperation alloc] initWithHost:v9 port:v8 username:v7 password:0 type:0];

  return v10;
}

+ (id)savePassswordOperationForHost:(id)a3 port:(id)a4 username:(id)a5 password:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[WFProxyKeychainOperation alloc] initWithHost:v12 port:v11 username:v10 password:v9 type:1];

  return v13;
}

- (WFProxyKeychainOperation)initWithHost:(id)a3 port:(id)a4 username:(id)a5 password:(id)a6 type:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = WFProxyKeychainOperation;
  v17 = [(WFProxyKeychainOperation *)&v20 init];
  v18 = v17;
  if (v17 && (objc_storeStrong(&v17->_password, a6), v14) && v13 && v15)
  {
    objc_storeStrong(&v18->_host, a3);
    objc_storeStrong(&v18->_username, a5);
    objc_storeStrong(&v18->_port, a4);
    v18->_type = a7;
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

- (id)_credentialsForProtectionSpace:(id)a3
{
  v4 = MEMORY[0x277CBAB88];
  v5 = a3;
  v6 = [v4 sharedCredentialStorage];
  v7 = [v6 credentialsForProtectionSpace:v5];

  if (v7)
  {
    v8 = [(WFProxyKeychainOperation *)self username];
    v9 = [v7 objectForKey:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end