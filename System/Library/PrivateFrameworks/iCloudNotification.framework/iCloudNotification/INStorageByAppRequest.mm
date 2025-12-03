@interface INStorageByAppRequest
- (INStorageByAppRequest)init;
- (INStorageByAppRequest)initWithAccount:(id)account bundleId:(id)id;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INStorageByAppRequest

- (INStorageByAppRequest)initWithAccount:(id)account bundleId:(id)id
{
  accountCopy = account;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = INStorageByAppRequest;
  v9 = [(INStorageByAppRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_bundleId, id);
  }

  return v10;
}

- (INStorageByAppRequest)init
{
  [(INStorageByAppRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"settingsAppStorageDetailsURL"];

    if (v5)
    {
      aa_personID2 = [(ACAccount *)self->_account aa_personID];
      v7 = +[AADeviceInfo udid];
      v8 = [INHelperFunctions urlStringFromFormat:v5 dsid:aa_personID2 udid:v7];

      if (v8)
      {
        v9 = [[NSURLQueryItem alloc] initWithName:@"appBundleId" value:self->_bundleId];
        v10 = [[NSURLComponents alloc] initWithString:v8];
        v14 = v9;
        v11 = [NSArray arrayWithObjects:&v14 count:1];
        [v10 setQueryItems:v11];

        string = [v10 string];
      }

      else
      {
        v9 = _INLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000387B4(v5, v9);
        }

        string = 0;
      }
    }

    else
    {
      v8 = _INLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003882C(v8);
      }

      string = 0;
    }
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000338A0(v5);
    }

    string = 0;
  }

  return string;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = INStorageByAppRequest;
  urlRequest = [(INStorageByAppRequest *)&v7 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];
  v5 = [v4 copy];

  return v5;
}

@end