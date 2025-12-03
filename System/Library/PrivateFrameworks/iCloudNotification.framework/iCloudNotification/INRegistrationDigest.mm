@interface INRegistrationDigest
- (BOOL)isEqual:(id)equal;
- (INRegistrationDigest)initWithData:(id)data;
- (INRegistrationDigest)initWithRegistrationRequest:(id)request;
@end

@implementation INRegistrationDigest

- (INRegistrationDigest)initWithRegistrationRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = INRegistrationDigest;
  v5 = [(INRegistrationDigest *)&v14 init];
  if (v5)
  {
    parameters = [requestCopy parameters];
    v7 = [parameters mutableCopy];

    [v7 removeObjectForKey:@"cause"];
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v7];
    v9 = v8;
    if (v8)
    {
      CC_SHA1([v8 bytes], objc_msgSend(v8, "length"), md);
      v10 = [NSData dataWithBytes:md length:20];
      hashData = v5->_hashData;
      v5->_hashData = v10;
    }

    else
    {
      v12 = _INLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000339A8(v12);
      }
    }
  }

  return v5;
}

- (INRegistrationDigest)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = INRegistrationDigest;
  v6 = [(INRegistrationDigest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashData, data);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hashData = self->_hashData;
      data = [(INRegistrationDigest *)equalCopy data];
      v7 = [(NSData *)hashData isEqualToData:data];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end