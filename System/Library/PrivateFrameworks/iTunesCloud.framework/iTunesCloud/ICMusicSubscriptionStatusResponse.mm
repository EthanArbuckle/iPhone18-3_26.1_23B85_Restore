@interface ICMusicSubscriptionStatusResponse
+ (BOOL)isValidSubscriptionStatusPropertyListRepresentation:(id)representation error:(id *)error;
+ (BOOL)isValidSubscriptionStatusResponseDictionary:(id)dictionary error:(id *)error;
- (BOOL)isExpired;
- (ICMusicSubscriptionStatusResponse)initWithCoder:(id)coder;
- (ICMusicSubscriptionStatusResponse)initWithPropertyListRepresentation:(id)representation;
- (ICMusicSubscriptionStatusResponse)initWithResponseDictionary:(id)dictionary expirationDate:(id)date;
- (NSDictionary)propertyListRepresentation;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
    dictionaryRepresentation = [(ICMusicSubscriptionStatus *)subscriptionStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [v3 setObject:dictionaryRepresentation forKey:@"status"];
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  expirationDate = self->_expirationDate;
  coderCopy = coder;
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];
  [coderCopy encodeBool:self->_finalResponse forKey:@"isFinalResponse"];
  [coderCopy encodeBool:self->_needsReload forKey:@"needsReload"];
  [coderCopy encodeObject:self->_subscriptionStatus forKey:@"subscriptionStatus"];
}

- (ICMusicSubscriptionStatusResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICMusicSubscriptionStatusResponse;
  v5 = [(ICMusicSubscriptionStatusResponse *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    v5->_finalResponse = [coderCopy decodeBoolForKey:@"isFinalResponse"];
    v5->_needsReload = [coderCopy decodeBoolForKey:@"needsReload"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionStatus"];
    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [[ICMusicSubscriptionStatusResponse alloc] _init];
  if (_init)
  {
    v5 = [(NSDate *)self->_expirationDate copy];
    v6 = _init[3];
    _init[3] = v5;

    *(_init + 8) = self->_finalResponse;
    *(_init + 9) = self->_needsReload;
    v7 = [(ICMusicSubscriptionStatus *)self->_subscriptionStatus copy];
    v8 = _init[2];
    _init[2] = v7;
  }

  return _init;
}

- (ICMusicSubscriptionStatusResponse)initWithResponseDictionary:(id)dictionary expirationDate:(id)date
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  _init = [(ICMusicSubscriptionStatusResponse *)self _init];
  if (_init)
  {
    if (dictionaryCopy)
    {
      v9 = [[ICMusicSubscriptionStatus alloc] initWithResponseDictionary:dictionaryCopy];
    }

    else
    {
      v9 = 0;
    }

    subscriptionStatus = _init->_subscriptionStatus;
    _init->_subscriptionStatus = v9;

    v11 = [dateCopy copy];
    expirationDate = _init->_expirationDate;
    _init->_expirationDate = v11;
  }

  return _init;
}

- (ICMusicSubscriptionStatusResponse)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  _init = [(ICMusicSubscriptionStatusResponse *)self _init];
  if (_init)
  {
    v6 = [representationCopy objectForKey:@"status"];
    if (_NSIsNSDictionary())
    {
      v7 = [[ICMusicSubscriptionStatus alloc] initWithResponseDictionary:v6];
    }

    else
    {
      v7 = 0;
    }

    subscriptionStatus = _init->_subscriptionStatus;
    _init->_subscriptionStatus = v7;

    v9 = [representationCopy objectForKey:@"expiration"];
    if (objc_opt_respondsToSelector())
    {
      v10 = MEMORY[0x1E695DF00];
      [v9 doubleValue];
      v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      expirationDate = _init->_expirationDate;
      _init->_expirationDate = v11;
    }

    v13 = [representationCopy objectForKey:@"valid"];
    if (objc_opt_respondsToSelector())
    {
      _init->_needsReload = [v13 BOOLValue] ^ 1;
    }

    _init->_finalResponse = 1;
  }

  return _init;
}

+ (BOOL)isValidSubscriptionStatusResponseDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"status"];
  v7 = (objc_opt_respondsToSelector() & 1) != 0 && [v6 integerValue] != 0;
  v8 = [dictionaryCopy objectForKey:@"errorMessage"];
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
      if (!error)
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
  if (error)
  {
LABEL_12:
    v12 = v11;
    *error = v11;
  }

LABEL_13:

  return v11 == 0;
}

+ (BOOL)isValidSubscriptionStatusPropertyListRepresentation:(id)representation error:(id *)error
{
  v6 = [representation objectForKey:@"status"];
  if (_NSIsNSDictionary())
  {
    v11 = 0;
    v7 = [self isValidSubscriptionStatusResponseDictionary:v6 error:&v11];
    v8 = v11;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:{@"Invalid subscription status value: %@", v6}];
  v7 = 0;
  if (error)
  {
LABEL_5:
    v9 = v8;
    *error = v8;
  }

LABEL_6:

  return v7;
}

@end