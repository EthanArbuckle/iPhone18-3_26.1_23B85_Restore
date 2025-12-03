@interface INAccountEventDetailsRequest
- (INAccountEventDetailsRequest)initWithAccount:(id)account pushMessage:(id)message;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INAccountEventDetailsRequest

- (INAccountEventDetailsRequest)initWithAccount:(id)account pushMessage:(id)message
{
  accountCopy = account;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = INAccountEventDetailsRequest;
  v9 = [(INAccountEventDetailsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_pushMessage, message);
  }

  return v10;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  getAccountEventDetailsURL = [v2 getAccountEventDetailsURL];

  return getAccountEventDetailsURL;
}

- (id)urlRequest
{
  v16.receiver = self;
  v16.super_class = INAccountEventDetailsRequest;
  urlRequest = [(INAccountEventDetailsRequest *)&v16 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100036088(self);
  }

  [v4 setHTTPMethod:@"POST"];
  userInfo = [(APSMessage *)self->_pushMessage userInfo];
  v7 = [userInfo mutableCopy];

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
  aaf_toHexString = [(NSData *)self->_pushToken aaf_toHexString];
  [v4 setValue:aaf_toHexString forHTTPHeaderField:@"X-APNS-Token"];

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