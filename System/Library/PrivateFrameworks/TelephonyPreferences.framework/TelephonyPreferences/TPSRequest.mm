@interface TPSRequest
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (NSString)debugDescription;
- (TPSRequest)init;
- (TPSRequest)initWithCoder:(id)coder;
- (TPSRequest)initWithSubscriptionContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSRequest

- (TPSRequest)init
{
  [(TPSRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSRequest)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPSRequest;
  v6 = [(TPSRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  subscriptionContext = self->_subscriptionContext;

  return [v4 initWithSubscriptionContext:subscriptionContext];
}

- (void)encodeWithCoder:(id)coder
{
  subscriptionContext = self->_subscriptionContext;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_subscriptionContext);
  [coderCopy encodeObject:subscriptionContext forKey:v5];
}

- (TPSRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSRequest;
  v5 = [(TPSRequest *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_subscriptionContext);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
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
  subscriptionContext = [(TPSRequest *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, subscriptionContext];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  subscriptionContext = [(TPSRequest *)self subscriptionContext];
  v3 = [subscriptionContext hash];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  subscriptionContext = [(TPSRequest *)self subscriptionContext];
  subscriptionContext2 = [requestCopy subscriptionContext];

  v7 = (subscriptionContext | subscriptionContext2) == 0;
  if (subscriptionContext2)
  {
    v7 = [subscriptionContext isEqual:subscriptionContext2];
  }

  return v7;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end