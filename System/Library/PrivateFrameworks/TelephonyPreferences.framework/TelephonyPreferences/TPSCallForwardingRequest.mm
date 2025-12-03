@interface TPSCallForwardingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TPSCallForwardingRequest)initWithCoder:(id)coder;
- (TPSCallForwardingRequest)initWithSubscriptionContext:(id)context reason:(int)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCallForwardingRequest

- (TPSCallForwardingRequest)initWithSubscriptionContext:(id)context reason:(int)reason
{
  v6.receiver = self;
  v6.super_class = TPSCallForwardingRequest;
  result = [(TPSCallClassRequest *)&v6 initWithSubscriptionContext:context callClass:1];
  if (result)
  {
    *(&result->super._callClass + 1) = reason;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TPSCallForwardingRequest;
  result = [(TPSCallClassRequest *)&v5 copyWithZone:zone];
  *(result + 5) = *(&self->super._callClass + 1);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingRequest;
  coderCopy = coder;
  [(TPSCallClassRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = *(&self->super._callClass + 1);
  v6 = NSStringFromSelector(sel_reason);
  [coderCopy encodeInt:v5 forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallForwardingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TPSCallForwardingRequest;
  v5 = [(TPSCallClassRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_reason);
    *(&v5->super._callClass + 1) = [coderCopy decodeIntForKey:v6];
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

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_reason);
  [v3 appendFormat:@"%@=%u", v7, -[TPSCallForwardingRequest reason](self, "reason")];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TPSCallForwardingRequest;
  v3 = [(TPSCallClassRequest *)&v5 hash];
  return v3 ^ [(TPSCallForwardingRequest *)self reason];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallForwardingRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = TPSCallForwardingRequest;
  if ([(TPSCallClassRequest *)&v8 isEqualToRequest:requestCopy])
  {
    reason = [(TPSCallForwardingRequest *)self reason];
    v6 = reason == [requestCopy reason];
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
  v10.super_class = &OBJC_METACLASS___TPSCallForwardingRequest;
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