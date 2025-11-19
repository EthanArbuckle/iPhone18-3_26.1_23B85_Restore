@interface INStorageByAppRequest
- (INStorageByAppRequest)init;
- (INStorageByAppRequest)initWithAccount:(id)a3 bundleId:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INStorageByAppRequest

- (INStorageByAppRequest)initWithAccount:(id)a3 bundleId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INStorageByAppRequest;
  v9 = [(INStorageByAppRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_bundleId, a4);
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
  v3 = [(ACAccount *)self->_account aa_personID];

  if (v3)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"settingsAppStorageDetailsURL"];

    if (v5)
    {
      v6 = [(ACAccount *)self->_account aa_personID];
      v7 = +[AADeviceInfo udid];
      v8 = [INHelperFunctions urlStringFromFormat:v5 dsid:v6 udid:v7];

      if (v8)
      {
        v9 = [[NSURLQueryItem alloc] initWithName:@"appBundleId" value:self->_bundleId];
        v10 = [[NSURLComponents alloc] initWithString:v8];
        v14 = v9;
        v11 = [NSArray arrayWithObjects:&v14 count:1];
        [v10 setQueryItems:v11];

        v12 = [v10 string];
      }

      else
      {
        v9 = _INLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000387B4(v5, v9);
        }

        v12 = 0;
      }
    }

    else
    {
      v8 = _INLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10003882C(v8);
      }

      v12 = 0;
    }
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000338A0(v5);
    }

    v12 = 0;
  }

  return v12;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = INStorageByAppRequest;
  v3 = [(INStorageByAppRequest *)&v7 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];
  v5 = [v4 copy];

  return v5;
}

@end