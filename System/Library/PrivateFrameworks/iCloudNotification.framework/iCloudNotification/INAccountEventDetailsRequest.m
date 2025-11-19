@interface INAccountEventDetailsRequest
- (INAccountEventDetailsRequest)initWithAccount:(id)a3 pushMessage:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INAccountEventDetailsRequest

- (INAccountEventDetailsRequest)initWithAccount:(id)a3 pushMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INAccountEventDetailsRequest;
  v9 = [(INAccountEventDetailsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_pushMessage, a4);
  }

  return v10;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 getAccountEventDetailsURL];

  return v3;
}

- (id)urlRequest
{
  v16.receiver = self;
  v16.super_class = INAccountEventDetailsRequest;
  v3 = [(INAccountEventDetailsRequest *)&v16 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100036088(self);
  }

  [v4 setHTTPMethod:@"POST"];
  v6 = [(APSMessage *)self->_pushMessage userInfo];
  v7 = [v6 mutableCopy];

  [v7 removeObjectForKey:@"aps"];
  v15 = 0;
  v8 = [NSJSONSerialization dataWithJSONObject:v7 options:0 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003701C();
    }
  }

  else
  {
    [v4 setHTTPBody:v8];
  }

  v11 = _INLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100036194(v4);
  }

  [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = [(NSData *)self->_pushToken aaf_toHexString];
  [v4 setValue:v12 forHTTPHeaderField:@"X-APNS-Token"];

  [v4 aa_addDeviceIDHeader];
  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100036250(v4);
  }

  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];

  return v4;
}

@end