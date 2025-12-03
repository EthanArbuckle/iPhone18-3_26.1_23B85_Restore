@interface TPSSetCallWaitingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TPSSetCallWaitingRequest)initWithCoder:(id)coder;
- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)context;
- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)context enabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSSetCallWaitingRequest

- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)context
{
  [(TPSSetCallWaitingRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)context enabled:(BOOL)enabled
{
  v6.receiver = self;
  v6.super_class = TPSSetCallWaitingRequest;
  result = [(TPSCallWaitingRequest *)&v6 initWithSubscriptionContext:context];
  if (result)
  {
    *(&result->super.super._callClass + 4) = enabled;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TPSSetCallWaitingRequest;
  result = [(TPSCallClassRequest *)&v5 copyWithZone:zone];
  *(result + 20) = *(&self->super.super._callClass + 4);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSSetCallWaitingRequest;
  coderCopy = coder;
  [(TPSCallClassRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = *(&self->super.super._callClass + 4);
  v6 = NSStringFromSelector(sel_enabled);
  [coderCopy encodeBool:v5 forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSSetCallWaitingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TPSSetCallWaitingRequest;
  v5 = [(TPSCallWaitingRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_enabled);
    [coderCopy decodeBoolForKey:v6];
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
  v7 = NSStringFromSelector(sel_enabled);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[TPSSetCallWaitingRequest enabled](self, "enabled")}];
  [v3 appendFormat:@"%@=%@", v7, v8];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TPSSetCallWaitingRequest;
  v3 = [(TPSCallClassRequest *)&v5 hash];
  return v3 ^ [(TPSSetCallWaitingRequest *)self enabled];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSSetCallWaitingRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = TPSSetCallWaitingRequest;
  v4 = [(TPSCallWaitingRequest *)&v6 isEqualToRequest:request];
  if (v4)
  {
    LOBYTE(v4) = [(TPSSetCallWaitingRequest *)self enabled];
  }

  return v4;
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TPSSetCallWaitingRequest;
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