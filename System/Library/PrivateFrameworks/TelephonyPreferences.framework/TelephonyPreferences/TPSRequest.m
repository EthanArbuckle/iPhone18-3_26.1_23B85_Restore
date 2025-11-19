@interface TPSRequest
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (NSString)debugDescription;
- (TPSRequest)init;
- (TPSRequest)initWithCoder:(id)a3;
- (TPSRequest)initWithSubscriptionContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSRequest

- (TPSRequest)init
{
  [(TPSRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSRequest)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSRequest;
  v6 = [(TPSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  subscriptionContext = self->_subscriptionContext;

  return [v4 initWithSubscriptionContext:subscriptionContext];
}

- (void)encodeWithCoder:(id)a3
{
  subscriptionContext = self->_subscriptionContext;
  v4 = a3;
  v5 = NSStringFromSelector(sel_subscriptionContext);
  [v4 encodeObject:subscriptionContext forKey:v5];
}

- (TPSRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSRequest;
  v5 = [(TPSRequest *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_subscriptionContext);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    subscriptionContext = v5->_subscriptionContext;
    v5->_subscriptionContext = v8;
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  v5 = [(TPSRequest *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TPSRequest *)self subscriptionContext];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequest *)self subscriptionContext];
  v6 = [v4 subscriptionContext];

  v7 = (v5 | v6) == 0;
  if (v6)
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end