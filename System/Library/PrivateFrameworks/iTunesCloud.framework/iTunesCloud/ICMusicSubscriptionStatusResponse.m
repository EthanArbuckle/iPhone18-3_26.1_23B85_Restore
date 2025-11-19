@interface ICMusicSubscriptionStatusResponse
+ (BOOL)isValidSubscriptionStatusPropertyListRepresentation:(id)a3 error:(id *)a4;
+ (BOOL)isValidSubscriptionStatusResponseDictionary:(id)a3 error:(id *)a4;
- (BOOL)isExpired;
- (ICMusicSubscriptionStatusResponse)initWithCoder:(id)a3;
- (ICMusicSubscriptionStatusResponse)initWithPropertyListRepresentation:(id)a3;
- (ICMusicSubscriptionStatusResponse)initWithResponseDictionary:(id)a3 expirationDate:(id)a4;
- (NSDictionary)propertyListRepresentation;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICMusicSubscriptionStatusResponse

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_expirationDate)
  {
    [v6 appendFormat:@"; expirationDate = %@", self->_expirationDate];
  }

  if (self->_finalResponse)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v6 appendFormat:@"; isFinalResponse = %@", v7];
  if (self->_needsReload)
  {
    [v6 appendString:@"; needsReload = YES"];
  }

  [v6 appendFormat:@"; subscriptionStatus = %@", self->_subscriptionStatus];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [(NSDate *)expirationDate timeIntervalSinceNow];
    LOBYTE(expirationDate) = v3 < 0.00000011920929;
  }

  return expirationDate;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ICMusicSubscriptionStatusResponse;
  return [(ICMusicSubscriptionStatusResponse *)&v3 init];
}

- (NSDictionary)propertyListRepresentation
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:!self->_needsReload];
  [v3 setObject:v4 forKey:@"valid"];

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    v6 = MEMORY[0x1E696AD98];
    [(NSDate *)expirationDate timeIntervalSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKey:@"expiration"];
  }

  subscriptionStatus = self->_subscriptionStatus;
  if (subscriptionStatus)
  {
    v9 = [(ICMusicSubscriptionStatus *)subscriptionStatus dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKey:@"status"];
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  expirationDate = self->_expirationDate;
  v5 = a3;
  [v5 encodeObject:expirationDate forKey:@"expirationDate"];
  [v5 encodeBool:self->_finalResponse forKey:@"isFinalResponse"];
  [v5 encodeBool:self->_needsReload forKey:@"needsReload"];
  [v5 encodeObject:self->_subscriptionStatus forKey:@"subscriptionStatus"];
}

- (ICMusicSubscriptionStatusResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICMusicSubscriptionStatusResponse;
  v5 = [(ICMusicSubscriptionStatusResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    v5->_finalResponse = [v4 decodeBoolForKey:@"isFinalResponse"];
    v5->_needsReload = [v4 decodeBoolForKey:@"needsReload"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionStatus"];
    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICMusicSubscriptionStatusResponse alloc] _init];
  if (v4)
  {
    v5 = [(NSDate *)self->_expirationDate copy];
    v6 = v4[3];
    v4[3] = v5;

    *(v4 + 8) = self->_finalResponse;
    *(v4 + 9) = self->_needsReload;
    v7 = [(ICMusicSubscriptionStatus *)self->_subscriptionStatus copy];
    v8 = v4[2];
    v4[2] = v7;
  }

  return v4;
}

- (ICMusicSubscriptionStatusResponse)initWithResponseDictionary:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICMusicSubscriptionStatusResponse *)self _init];
  if (v8)
  {
    if (v6)
    {
      v9 = [[ICMusicSubscriptionStatus alloc] initWithResponseDictionary:v6];
    }

    else
    {
      v9 = 0;
    }

    subscriptionStatus = v8->_subscriptionStatus;
    v8->_subscriptionStatus = v9;

    v11 = [v7 copy];
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v11;
  }

  return v8;
}

- (ICMusicSubscriptionStatusResponse)initWithPropertyListRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(ICMusicSubscriptionStatusResponse *)self _init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"status"];
    if (_NSIsNSDictionary())
    {
      v7 = [[ICMusicSubscriptionStatus alloc] initWithResponseDictionary:v6];
    }

    else
    {
      v7 = 0;
    }

    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v7;

    v9 = [v4 objectForKey:@"expiration"];
    if (objc_opt_respondsToSelector())
    {
      v10 = MEMORY[0x1E695DF00];
      [v9 doubleValue];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v11;
    }

    v13 = [v4 objectForKey:@"valid"];
    if (objc_opt_respondsToSelector())
    {
      v5->_needsReload = [v13 BOOLValue] ^ 1;
    }

    v5->_finalResponse = 1;
  }

  return v5;
}

+ (BOOL)isValidSubscriptionStatusResponseDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"status"];
  v7 = (objc_opt_respondsToSelector() & 1) != 0 && [v6 integerValue] != 0;
  v8 = [v5 objectForKey:@"errorMessage"];
  if (_NSIsNSString())
  {
    v9 = v8;
    v10 = !v7;
    if (!v9)
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:{@"Subscription status error: %@", v9}];
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  if (a4)
  {
LABEL_12:
    v12 = v11;
    *a4 = v11;
  }

LABEL_13:

  return v11 == 0;
}

+ (BOOL)isValidSubscriptionStatusPropertyListRepresentation:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKey:@"status"];
  if (_NSIsNSDictionary())
  {
    v11 = 0;
    v7 = [a1 isValidSubscriptionStatusResponseDictionary:v6 error:&v11];
    v8 = v11;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:{@"Invalid subscription status value: %@", v6}];
  v7 = 0;
  if (a4)
  {
LABEL_5:
    v9 = v8;
    *a4 = v8;
  }

LABEL_6:

  return v7;
}

@end