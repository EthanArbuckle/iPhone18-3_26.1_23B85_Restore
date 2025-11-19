@interface INRequest
- (AADeviceInfo)deviceInfoProvider;
- (INRequest)initWithAccount:(id)a3 pushToken:(id)a4;
- (NSDictionary)parameters;
- (id)_basicBodyParameters;
- (id)urlRequest;
@end

@implementation INRequest

- (INRequest)initWithAccount:(id)a3 pushToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v9 = [v7 aa_authTokenWithError:&v17];
  v10 = v17;
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = INRequest;
    v11 = [(INRequest *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_account, a3);
      objc_storeStrong(v12 + 2, a4);
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100038D38();
    }

    v13 = 0;
  }

  return v13;
}

- (id)_basicBodyParameters
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if ([(ACAccount *)self->_account aa_isPrimaryAccount])
  {
    v4 = &__kCFBooleanTrue;
  }

  else
  {
    v4 = &__kCFBooleanFalse;
  }

  [v3 setObject:v4 forKeyedSubscript:@"isPrimaryAccount"];
  v5 = objc_alloc_init(NSMutableDictionary);
  pushToken = self->_pushToken;
  if (pushToken)
  {
    v7 = [(NSData *)pushToken aaf_toHexString];
    [v5 setObject:v7 forKeyedSubscript:@"pushToken"];
  }

  else
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100038DBC(v7);
    }
  }

  v8 = [(ACAccount *)self->_account aa_personID];
  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"dsid"];
  }

  else
  {
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100038E00(v9);
    }
  }

  v10 = [(ACAccount *)self->_account username];
  if (v10)
  {
    [v5 setObject:v10 forKeyedSubscript:@"appleId"];
  }

  v11 = [(INRequest *)self deviceInfoProvider];
  v12 = [v11 udid];

  if (v12)
  {
    [v5 setObject:v12 forKeyedSubscript:@"udid"];
  }

  v13 = [(INRequest *)self deviceInfoProvider];
  v14 = [v13 serialNumber];

  if (v14)
  {
    [v5 setObject:v14 forKeyedSubscript:@"serialNumber"];
  }

  v15 = [[MBManager alloc] initWithDelegate:0];
  v16 = [v15 backupDeviceUUID];
  v17 = _INLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100038E44();
  }

  if (v16)
  {
    [v5 setObject:v16 forKeyedSubscript:@"backupDeviceUUID"];
  }

  [v3 setObject:v5 forKeyedSubscript:@"deviceInfo"];

  return v3;
}

- (AADeviceInfo)deviceInfoProvider
{
  deviceInfoProvider = self->_deviceInfoProvider;
  if (!deviceInfoProvider)
  {
    v4 = objc_alloc_init(AADeviceInfo);
    v5 = self->_deviceInfoProvider;
    self->_deviceInfoProvider = v4;

    deviceInfoProvider = self->_deviceInfoProvider;
  }

  return deviceInfoProvider;
}

- (NSDictionary)parameters
{
  parameters = self->_parameters;
  if (!parameters)
  {
    v4 = [(INRequest *)self _basicBodyParameters];
    v5 = [(INRequest *)self addBodyParameters:v4];
    v6 = self->_parameters;
    self->_parameters = v5;

    parameters = self->_parameters;
  }

  return parameters;
}

- (id)urlRequest
{
  v3 = [(INRequest *)self parameters];
  if (v3 && self->_account)
  {
    v23.receiver = self;
    v23.super_class = INRequest;
    v4 = [(INRequest *)&v23 urlRequest];
    v5 = [v4 mutableCopy];

    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100038EB8(self);
    }

    [v5 setHTTPMethod:@"POST"];
    v22 = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:&v22];
    v8 = v22;
    if (v7)
    {
      [v5 setHTTPBody:v7];
      v9 = [[NSString alloc] initWithData:v7 encoding:4];
      v10 = _INLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100038F3C();
      }

      [v5 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
      [v5 addValue:@"Settings/1.0 CFNetwork/672.1.10 Darwin/14.0.0" forHTTPHeaderField:@"User-Agent"];
      [v5 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
      [v5 addValue:@"en-us" forHTTPHeaderField:@"Accept-Language"];
      [v5 aa_addMultiUserDeviceHeaderIfEnabled];
      v11 = _INLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100038FB0(v11);
      }

      v12 = dispatch_semaphore_create(0);
      v13 = +[AAAbsintheSigner sharedSigner];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10001BCAC;
      v19[3] = &unk_100055CA8;
      v14 = v5;
      v20 = v14;
      v15 = v12;
      v21 = v15;
      [v13 signatureForData:v7 completion:v19];

      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = _INLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100038FF4(v14);
      }

      v17 = v14;
    }

    else
    {
      v9 = _INLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100039078();
      }

      v17 = 0;
    }
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000390EC(self, v5);
    }

    v17 = 0;
  }

  return v17;
}

@end