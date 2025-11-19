@interface VSJSResponsePayload
- (VSJSResponsePayload)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VSJSResponsePayload

- (VSJSResponsePayload)init
{
  v3 = [MEMORY[0x277D1B028] currentAppContext];
  v9.receiver = self;
  v9.super_class = VSJSResponsePayload;
  v4 = [(IKJSObject *)&v9 initWithAppContext:v3];

  if (v4)
  {
    authN = v4->_authN;
    v4->_authN = &stru_2880B8BB0;

    userMetadata = v4->_userMetadata;
    v4->_userMetadata = &stru_2880B8BB0;

    logout = v4->_logout;
    v4->_logout = &stru_2880B8BB0;

    objc_storeStrong(&v4->_authenticationScheme, *MEMORY[0x277CE2438]);
    v4->_synchronizable = 1;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VSJSResponsePayload allocWithZone:a3];
  v5 = [(IKJSObject *)self appContext];
  v6 = [(IKJSObject *)v4 initWithAppContext:v5];

  v7 = [(NSString *)self->_authN copy];
  authN = v6->_authN;
  v6->_authN = v7;

  v9 = [(NSString *)self->_username copy];
  username = v6->_username;
  v6->_username = v9;

  v11 = [(NSDate *)self->_expirationDate copy];
  expirationDate = v6->_expirationDate;
  v6->_expirationDate = v11;

  v13 = [(NSString *)self->_userMetadata copy];
  userMetadata = v6->_userMetadata;
  v6->_userMetadata = v13;

  v15 = [(NSString *)self->_logout copy];
  logout = v6->_logout;
  v6->_logout = v15;

  v17 = [(NSArray *)self->_userChannelList copy];
  userChannelList = v6->_userChannelList;
  v6->_userChannelList = v17;

  v19 = [(NSString *)self->_authenticationScheme copy];
  authenticationScheme = v6->_authenticationScheme;
  v6->_authenticationScheme = v19;

  v21 = [(NSString *)self->_statusCode copy];
  statusCode = v6->_statusCode;
  v6->_statusCode = v21;

  v23 = [(NSNumber *)self->_expectedAction copy];
  expectedAction = v6->_expectedAction;
  v6->_expectedAction = v23;

  v25 = [(NSArray *)self->_subscriptions copy];
  subscriptions = v6->_subscriptions;
  v6->_subscriptions = v25;

  v27 = [(NSArray *)self->_clearSubscriptions copy];
  clearSubscriptions = v6->_clearSubscriptions;
  v6->_clearSubscriptions = v27;

  v29 = [(NSArray *)self->_userAccounts copy];
  userAccounts = v6->_userAccounts;
  v6->_userAccounts = v29;

  v31 = [(NSString *)self->_appBundleIdentifier copy];
  appBundleIdentifier = v6->_appBundleIdentifier;
  v6->_appBundleIdentifier = v31;

  return v6;
}

@end