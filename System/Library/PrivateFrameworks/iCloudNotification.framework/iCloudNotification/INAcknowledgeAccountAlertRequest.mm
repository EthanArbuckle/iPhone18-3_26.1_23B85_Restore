@interface INAcknowledgeAccountAlertRequest
- (INAcknowledgeAccountAlertRequest)initWithAccount:(id)a3 store:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INAcknowledgeAccountAlertRequest

- (INAcknowledgeAccountAlertRequest)initWithAccount:(id)a3 store:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INAcknowledgeAccountAlertRequest;
  v9 = [(INAcknowledgeAccountAlertRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_accountStore, a4);
  }

  return v10;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 dismissAlertURL];

  return v3;
}

- (id)urlRequest
{
  v15.receiver = self;
  v15.super_class = INAcknowledgeAccountAlertRequest;
  v3 = [(INAcknowledgeAccountAlertRequest *)&v15 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100036088(self);
  }

  [v4 setHTTPMethod:@"POST"];
  pushMessageInfo = self->_pushMessageInfo;
  if (pushMessageInfo)
  {
    v14 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:pushMessageInfo options:0 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = _INLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10003610C(v8, &self->_pushMessageInfo);
      }
    }

    else
    {
      [v4 setHTTPBody:v7];
    }
  }

  v10 = _INLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100036194(v4);
  }

  [v4 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v11 = [(NSData *)self->_pushToken aaf_toHexString];
  [v4 setValue:v11 forHTTPHeaderField:@"X-APNS-Token"];

  [v4 aa_addDeviceIDHeader];
  v12 = _INLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100036250(v4);
  }

  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];

  return v4;
}

@end