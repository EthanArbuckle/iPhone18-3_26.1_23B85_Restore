@interface VMTelephonyRequest
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (NSString)debugDescription;
- (VMTelephonyRequest)init;
- (VMTelephonyRequest)initWithCoder:(id)a3;
- (VMTelephonyRequest)initWithSubscription:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMTelephonyRequest

- (VMTelephonyRequest)init
{
  [(VMTelephonyRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMTelephonyRequest)initWithSubscription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VMTelephonyRequest;
  v6 = [(VMTelephonyRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscription, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  subscription = self->_subscription;

  return [v4 initWithSubscription:subscription];
}

- (void)encodeWithCoder:(id)a3
{
  subscription = self->_subscription;
  v4 = a3;
  v5 = NSStringFromSelector("subscription");
  [v4 encodeObject:subscription forKey:v5];
}

- (VMTelephonyRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VMTelephonyRequest;
  v5 = [(VMTelephonyRequest *)&v11 init];
  if (v5)
  {
    v6 = [objc_opt_class() unarchivedObjectClasses];
    v7 = NSStringFromSelector("subscription");
    v8 = [v4 decodeObjectOfClasses:v6 forKey:v7];
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
  v5 = [(VMTelephonyRequest *)self subscription];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(VMTelephonyRequest *)self subscription];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VMTelephonyRequest *)self isEqualToRequest:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(VMTelephonyRequest *)self subscription];
  v6 = [v4 subscription];

  v7 = (v5 | v6) == 0;
  if (v6)
  {
    v7 = [v5 isEqual:v6];
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v6 error:a4];

  return v8;
}

@end