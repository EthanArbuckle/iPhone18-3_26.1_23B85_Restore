@interface VMTelephonyResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (NSString)debugDescription;
- (VMTelephonyResponse)init;
- (VMTelephonyResponse)initWithCoder:(id)a3;
- (VMTelephonyResponse)initWithSubscription:(id)a3 error:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMTelephonyResponse

- (VMTelephonyResponse)init
{
  [(VMTelephonyResponse *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMTelephonyResponse)initWithSubscription:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VMTelephonyResponse;
  v9 = [(VMTelephonyResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a4);
    objc_storeStrong(&v10->_subscription, a3);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  error = self->_error;
  subscription = self->_subscription;

  return [v4 initWithSubscription:subscription error:error];
}

- (void)encodeWithCoder:(id)a3
{
  error = self->_error;
  v5 = a3;
  v6 = NSStringFromSelector("error");
  [v5 encodeObject:error forKey:v6];

  subscription = self->_subscription;
  v8 = NSStringFromSelector("subscription");
  [v5 encodeObject:subscription forKey:v8];
}

- (VMTelephonyResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VMTelephonyResponse;
  v5 = [(VMTelephonyResponse *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("error");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    error = v5->_error;
    v5->_error = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("subscription");
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
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
  v5 = [(VMTelephonyResponse *)self subscription];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("error");
  v7 = [(VMTelephonyResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(VMTelephonyResponse *)self error];
  v4 = [v3 hash];
  v5 = [(VMTelephonyResponse *)self subscription];
  v6 = [v5 hash];

  return v6 ^ v4;
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
      v5 = [(VMTelephonyResponse *)self isEqualToResponse:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v5 = [(VMTelephonyResponse *)self error];
  v6 = [v4 error];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (!(v7 | v8))
  {
LABEL_4:
    v11 = [(VMTelephonyResponse *)self subscription];
    v12 = [v4 subscription];
    v13 = (v11 | v12) == 0;
    if (v12)
    {
      v13 = [v11 isEqual:v12];
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
  v11 = v7;
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 unarchivedObjectClasses];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v6 error:a4];

  return v8;
}

@end