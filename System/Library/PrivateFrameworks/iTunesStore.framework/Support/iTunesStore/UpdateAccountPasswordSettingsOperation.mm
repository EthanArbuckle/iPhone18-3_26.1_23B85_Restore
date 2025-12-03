@interface UpdateAccountPasswordSettingsOperation
+ (int64_t)_accountPasswordSettingValueForServerValue:(id)value;
- (UpdateAccountPasswordSettingsOperation)initWithFreeDownloadsPasswordSetting:(int64_t)setting paidPurchasesPasswordSetting:(int64_t)passwordSetting requestProperties:(id)properties;
- (id)_newAccountPasswordSettingsDictionary;
- (id)_requestDictionary;
- (id)_serverValueForAccountPasswordSettingValue:(int64_t)value defaultValue:(id)defaultValue;
- (int64_t)freeDownloadsPasswordSetting;
- (int64_t)paidPurchasesPasswordSetting;
- (void)run;
@end

@implementation UpdateAccountPasswordSettingsOperation

- (UpdateAccountPasswordSettingsOperation)initWithFreeDownloadsPasswordSetting:(int64_t)setting paidPurchasesPasswordSetting:(int64_t)passwordSetting requestProperties:(id)properties
{
  propertiesCopy = properties;
  v14.receiver = self;
  v14.super_class = UpdateAccountPasswordSettingsOperation;
  v9 = [(UpdateAccountPasswordSettingsOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_freeDownloadsPasswordSetting = setting;
    v9->_paidPurchasesPasswordSetting = passwordSetting;
    v11 = [propertiesCopy mutableCopy];
    requestProperties = v10->_requestProperties;
    v10->_requestProperties = v11;
  }

  return v10;
}

- (int64_t)freeDownloadsPasswordSetting
{
  [(UpdateAccountPasswordSettingsOperation *)self lock];
  freeDownloadsPasswordSetting = self->_freeDownloadsPasswordSetting;
  [(UpdateAccountPasswordSettingsOperation *)self unlock];
  return freeDownloadsPasswordSetting;
}

- (int64_t)paidPurchasesPasswordSetting
{
  [(UpdateAccountPasswordSettingsOperation *)self lock];
  paidPurchasesPasswordSetting = self->_paidPurchasesPasswordSetting;
  [(UpdateAccountPasswordSettingsOperation *)self unlock];
  return paidPurchasesPasswordSetting;
}

- (void)run
{
  v16 = objc_alloc_init(ISStoreURLOperation);
  v3 = +[DaemonProtocolDataProvider provider];
  [v16 setDataProvider:v3];

  [v16 setUseUserSpecificURLBag:1];
  requestProperties = self->_requestProperties;
  if (!requestProperties)
  {
    v5 = objc_alloc_init(SSMutableURLRequestProperties);
    v6 = self->_requestProperties;
    self->_requestProperties = v5;

    requestProperties = self->_requestProperties;
  }

  [(SSMutableURLRequestProperties *)requestProperties setURLBagKey:@"update-password-settings"];
  [(SSMutableURLRequestProperties *)self->_requestProperties setShouldSendSecureToken:1];
  _requestDictionary = [(UpdateAccountPasswordSettingsOperation *)self _requestDictionary];
  requestParameters = [(SSMutableURLRequestProperties *)self->_requestProperties requestParameters];
  if ([requestParameters count])
  {
    v9 = [_requestDictionary mutableCopy];
    [v9 addEntriesFromDictionary:requestParameters];
    v10 = [v9 copy];

    _requestDictionary = v10;
  }

  [(SSMutableURLRequestProperties *)self->_requestProperties setHTTPMethod:@"POST"];
  [(SSMutableURLRequestProperties *)self->_requestProperties setRequestParameters:_requestDictionary];
  [(SSMutableURLRequestProperties *)self->_requestProperties setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v16 setRequestProperties:self->_requestProperties];
  if ([(UpdateAccountPasswordSettingsOperation *)self runSubOperation:v16 returningError:0])
  {
    dataProvider = [v16 dataProvider];
    output = [dataProvider output];

    v13 = [output objectForKey:@"jingleDocType"];
    v14 = [v13 isEqualToString:@"success"];
  }

  else
  {
    v14 = 0;
  }

  error = [v16 error];
  [(UpdateAccountPasswordSettingsOperation *)self setError:error];

  [(UpdateAccountPasswordSettingsOperation *)self setSuccess:v14];
}

- (id)_requestDictionary
{
  v3 = +[ISDevice sharedInstance];
  guid = [v3 guid];

  _newAccountPasswordSettingsDictionary = [(UpdateAccountPasswordSettingsOperation *)self _newAccountPasswordSettingsDictionary];
  v8[0] = @"guid";
  v8[1] = @"settings";
  v9[0] = guid;
  v9[1] = _newAccountPasswordSettingsDictionary;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)_newAccountPasswordSettingsDictionary
{
  v3 = [(UpdateAccountPasswordSettingsOperation *)self _serverValueForAccountPasswordSettingValue:self->_freeDownloadsPasswordSetting defaultValue:@"always"];
  v4 = [(UpdateAccountPasswordSettingsOperation *)self _serverValueForAccountPasswordSettingValue:self->_paidPurchasesPasswordSetting defaultValue:@"always"];
  v7[0] = @"free";
  v7[1] = @"paid";
  v8[0] = v3;
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)_serverValueForAccountPasswordSettingValue:(int64_t)value defaultValue:(id)defaultValue
{
  defaultValueCopy = defaultValue;
  v6 = defaultValueCopy;
  if ((value - 1) >= 3)
  {
    v7 = defaultValueCopy;
  }

  else
  {
    v7 = off_10032C5A0[value - 1];
  }

  return v7;
}

+ (int64_t)_accountPasswordSettingValueForServerValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"always"])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:@"sometimes"])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:@"never"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end