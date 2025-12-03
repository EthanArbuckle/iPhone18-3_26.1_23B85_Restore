@interface LogoutOperation
- (LogoutOperation)initWithAccount:(id)account;
- (SSAccount)account;
- (id)_copyAuthenticationContext;
- (id)_sbsyncData;
- (void)_disableAutomaticDownloadKinds;
- (void)_disableBookkeeper;
- (void)_sendLogoutRequest;
- (void)run;
@end

@implementation LogoutOperation

- (LogoutOperation)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = LogoutOperation;
  v6 = [(LogoutOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (SSAccount)account
{
  [(LogoutOperation *)self lock];
  v3 = self->_account;
  [(LogoutOperation *)self unlock];

  return v3;
}

- (void)run
{
  [(LogoutOperation *)self _disableAutomaticDownloadKinds];
  [(LogoutOperation *)self _disableBookkeeper];
  [(LogoutOperation *)self _sendLogoutRequest];

  [(LogoutOperation *)self setSuccess:1];
}

- (id)_copyAuthenticationContext
{
  v3 = [SSMutableAuthenticationContext alloc];
  account = [(LogoutOperation *)self account];
  v5 = [v3 initWithAccount:account];

  [v5 setPromptStyle:1000];
  return v5;
}

- (void)_disableAutomaticDownloadKinds
{
  v4 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:0];
  [(SetAutomaticDownloadKindsOperation *)v4 setShouldSuppressServerDialogs:1];
  _copyAuthenticationContext = [(LogoutOperation *)self _copyAuthenticationContext];
  [(SetAutomaticDownloadKindsOperation *)v4 setAuthenticationContext:_copyAuthenticationContext];
  [(LogoutOperation *)self runSubOperation:v4 returningError:0];
}

- (void)_disableBookkeeper
{
  v17 = [SSURLBagContext contextWithBagType:0];
  account = [(LogoutOperation *)self account];
  uniqueIdentifier = [account uniqueIdentifier];
  [v17 setUserIdentifier:uniqueIdentifier];

  v5 = [(LogoutOperation *)self loadedURLBagWithContext:v17 returningError:0];
  v6 = [v5 valueForKey:@"push-notification-types"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"add-push-notification-type-url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_alloc_init(ISStoreURLOperation);
      v9 = +[DaemonProtocolDataProvider provider];
      [v8 setDataProvider:v9];

      _copyAuthenticationContext = [(LogoutOperation *)self _copyAuthenticationContext];
      [v8 setAuthenticationContext:_copyAuthenticationContext];
      v11 = objc_alloc_init(SSMutableURLRequestProperties);
      [v11 setHTTPMethod:@"POST"];
      v12 = [NSURL URLWithString:v7];
      [v11 setURL:v12];

      [v11 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = +[ISDevice sharedInstance];
      guid = [v14 guid];

      if (guid)
      {
        [v13 setObject:guid forKey:@"guid"];
      }

      v16 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"0", @"bookkeeperDomain:com.apple.upp", 0}];
      [v13 setObject:v16 forKey:@"put-parameters"];
      [v13 setObject:@"mzbookkeeper" forKey:@"notification-type"];

      [v11 setRequestParameters:v13];
      [v8 setRequestProperties:v11];
      [(LogoutOperation *)self runSubOperation:v8 returningError:0];
    }
  }
}

- (id)_sbsyncData
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_1002442DC(-1, &v15, &v13 + 4, &v14, &v13);
  v3 = 0;
  if (!v4)
  {
    account = [(LogoutOperation *)self account];
    uniqueIdentifier = [account uniqueIdentifier];
    unsignedLongLongValue = [uniqueIdentifier unsignedLongLongValue];

    v8 = objc_alloc_init(SSVFairPlaySubscriptionController);
    v9 = [NSData alloc];
    v10 = [v9 initWithBytesNoCopy:v15 length:HIDWORD(v13) freeWhenDone:0];
    v12 = 0;
    [v8 generateSubscriptionBagRequestWithAccountUniqueIdentifier:unsignedLongLongValue transactionType:303 machineIDData:v10 returningSubscriptionBagData:&v12 error:0];
    v3 = v12;
  }

  if (v15)
  {
    sub_100255DC4(v15);
  }

  if (v14)
  {
    sub_100255DC4(v14);
  }

  return v3;
}

- (void)_sendLogoutRequest
{
  v15 = objc_alloc_init(ISStoreURLOperation);
  v3 = +[DaemonProtocolDataProvider provider];
  [v15 setDataProvider:v3];

  [v15 setUseUserSpecificURLBag:1];
  _copyAuthenticationContext = [(LogoutOperation *)self _copyAuthenticationContext];
  [v15 setAuthenticationContext:_copyAuthenticationContext];
  v5 = objc_alloc_init(SSMutableURLRequestProperties);
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[ISDevice sharedInstance];
  guid = [v7 guid];

  if (guid)
  {
    [v6 setObject:guid forKey:@"guid"];
  }

  _sbsyncData = [(LogoutOperation *)self _sbsyncData];
  if (_sbsyncData)
  {
    [v6 setObject:_sbsyncData forKey:@"sbsync"];
  }

  if ([v6 count])
  {
    v10 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:0];
    [v5 setHTTPBody:v10];
    [v5 setHTTPMethod:@"POST"];
    [v5 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  }

  [v5 setURLBagKey:@"logout"];

  [v15 setRequestProperties:v5];
  [(LogoutOperation *)self runSubOperation:v15 returningError:0];
  dataProvider = [v15 dataProvider];
  output = [dataProvider output];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = SSVSubscriptionBagForDictionary();
    if (v13)
    {
      v14 = objc_alloc_init(SSVFairPlaySubscriptionController);
      [v14 importSubscriptionKeyBagData:v13 returningError:0];
    }
  }
}

@end