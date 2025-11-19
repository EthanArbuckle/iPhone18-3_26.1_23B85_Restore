@interface INRegistrationDigest
- (BOOL)isEqual:(id)a3;
- (INRegistrationDigest)initWithData:(id)a3;
- (INRegistrationDigest)initWithRegistrationRequest:(id)a3;
@end

@implementation INRegistrationDigest

- (INRegistrationDigest)initWithRegistrationRequest:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INRegistrationDigest;
  v5 = [(INRegistrationDigest *)&v14 init];
  if (v5)
  {
    v6 = [v4 parameters];
    v7 = [v6 mutableCopy];

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

- (INRegistrationDigest)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INRegistrationDigest;
  v6 = [(INRegistrationDigest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hashData, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hashData = self->_hashData;
      v6 = [(INRegistrationDigest *)v4 data];
      v7 = [(NSData *)hashData isEqualToData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end