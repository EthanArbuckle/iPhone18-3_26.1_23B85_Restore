@interface TPSCallClassRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TPSCallClassRequest)initWithCoder:(id)coder;
- (TPSCallClassRequest)initWithSubscriptionContext:(id)context;
- (TPSCallClassRequest)initWithSubscriptionContext:(id)context callClass:(int)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCallClassRequest

- (TPSCallClassRequest)initWithSubscriptionContext:(id)context
{
  [(TPSCallClassRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallClassRequest)initWithSubscriptionContext:(id)context callClass:(int)class
{
  v6.receiver = self;
  v6.super_class = TPSCallClassRequest;
  result = [(TPSRequest *)&v6 initWithSubscriptionContext:context];
  if (result)
  {
    result->_callClass = class;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TPSCallClassRequest;
  result = [(TPSRequest *)&v5 copyWithZone:zone];
  *(result + 4) = self->_callClass;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSCallClassRequest;
  coderCopy = coder;
  [(TPSRequest *)&v7 encodeWithCoder:coderCopy];
  callClass = self->_callClass;
  v6 = NSStringFromSelector(sel_callClass);
  [coderCopy encodeInt:callClass forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallClassRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TPSCallClassRequest;
  v5 = [(TPSRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_callClass);
    v5->_callClass = [coderCopy decodeIntForKey:v6];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  subscriptionContext = [(TPSRequest *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, subscriptionContext];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_callClass);
  [v3 appendFormat:@"%@=%u", v6, -[TPSCallClassRequest callClass](self, "callClass")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TPSCallClassRequest;
  v3 = [(TPSRequest *)&v5 hash];
  return v3 ^ [(TPSCallClassRequest *)self callClass];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallClassRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = TPSCallClassRequest;
  if ([(TPSRequest *)&v8 isEqualToRequest:requestCopy])
  {
    callClass = [(TPSCallClassRequest *)self callClass];
    v6 = callClass == [requestCopy callClass];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TPSCallClassRequest;
  v4 = objc_msgSendSuper2(&v10, sel_unarchivedObjectClasses);
  v5 = [v3 initWithSet:v4];

  v11[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 addObjectsFromArray:v6];

  v7 = [v5 copy];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end