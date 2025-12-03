@interface VMTelephonyResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (NSString)debugDescription;
- (VMTelephonyResponse)init;
- (VMTelephonyResponse)initWithCoder:(id)coder;
- (VMTelephonyResponse)initWithSubscription:(id)subscription error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMTelephonyResponse

- (VMTelephonyResponse)init
{
  [(VMTelephonyResponse *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMTelephonyResponse)initWithSubscription:(id)subscription error:(id)error
{
  subscriptionCopy = subscription;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = VMTelephonyResponse;
  v9 = [(VMTelephonyResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v10->_subscription, subscription);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  error = self->_error;
  subscription = self->_subscription;

  return [v4 initWithSubscription:subscription error:error];
}

- (void)encodeWithCoder:(id)coder
{
  error = self->_error;
  coderCopy = coder;
  v6 = NSStringFromSelector("error");
  [coderCopy encodeObject:error forKey:v6];

  subscription = self->_subscription;
  v8 = NSStringFromSelector("subscription");
  [coderCopy encodeObject:subscription forKey:v8];
}

- (VMTelephonyResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VMTelephonyResponse;
  v5 = [(VMTelephonyResponse *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("error");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    error = v5->_error;
    v5->_error = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("subscription");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    subscription = v5->_subscription;
    v5->_subscription = v12;
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("subscription");
  subscription = [(VMTelephonyResponse *)self subscription];
  [v3 appendFormat:@"%@=%@", v4, subscription];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("error");
  error = [(VMTelephonyResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, error];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  error = [(VMTelephonyResponse *)self error];
  v4 = [error hash];
  subscription = [(VMTelephonyResponse *)self subscription];
  v6 = [subscription hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VMTelephonyResponse *)self isEqualToResponse:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  error = [(VMTelephonyResponse *)self error];
  error2 = [responseCopy error];
  v7 = error;
  v8 = error2;
  v9 = v8;
  if (!(v7 | v8))
  {
LABEL_4:
    subscription = [(VMTelephonyResponse *)self subscription];
    subscription2 = [responseCopy subscription];
    v13 = (subscription | subscription2) == 0;
    if (subscription2)
    {
      v13 = [subscription isEqual:subscription2];
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = [v7 isEqual:v8];

    if (!v10)
    {
      v13 = 0;
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v13 = 0;
  subscription = v7;
LABEL_8:

LABEL_9:
  return v13;
}

+ (id)unarchivedObjectClasses
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, v4, objc_opt_class(), 0];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v8;
}

@end