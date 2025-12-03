@interface VMTelephonyRequest
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (NSString)debugDescription;
- (VMTelephonyRequest)init;
- (VMTelephonyRequest)initWithCoder:(id)coder;
- (VMTelephonyRequest)initWithSubscription:(id)subscription;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMTelephonyRequest

- (VMTelephonyRequest)init
{
  [(VMTelephonyRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMTelephonyRequest)initWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v9.receiver = self;
  v9.super_class = VMTelephonyRequest;
  v6 = [(VMTelephonyRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, subscription);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  subscription = self->_subscription;

  return [v4 initWithSubscription:subscription];
}

- (void)encodeWithCoder:(id)coder
{
  subscription = self->_subscription;
  coderCopy = coder;
  v5 = NSStringFromSelector("subscription");
  [coderCopy encodeObject:subscription forKey:v5];
}

- (VMTelephonyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = VMTelephonyRequest;
  v5 = [(VMTelephonyRequest *)&v11 init];
  if (v5)
  {
    unarchivedObjectClasses = [objc_opt_class() unarchivedObjectClasses];
    v7 = NSStringFromSelector("subscription");
    v8 = [coderCopy decodeObjectOfClasses:unarchivedObjectClasses forKey:v7];
    subscription = v5->_subscription;
    v5->_subscription = v8;
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("subscription");
  subscription = [(VMTelephonyRequest *)self subscription];
  [v3 appendFormat:@"%@=%@", v4, subscription];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  subscription = [(VMTelephonyRequest *)self subscription];
  v3 = [subscription hash];

  return v3;
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
      v5 = [(VMTelephonyRequest *)self isEqualToRequest:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  subscription = [(VMTelephonyRequest *)self subscription];
  subscription2 = [requestCopy subscription];

  v7 = (subscription | subscription2) == 0;
  if (subscription2)
  {
    v7 = [subscription isEqual:subscription2];
  }

  return v7;
}

+ (id)unarchivedObjectClasses
{
  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  v4 = NSClassFromString(@"VMMockTelephonySubscription");
  if (v4)
  {
    v5 = [v3 setByAddingObject:v4];

    v3 = v5;
  }

  return v3;
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v8;
}

@end