@interface TPSCallForwardingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (TPSCallForwardingRequest)initWithCoder:(id)a3;
- (TPSCallForwardingRequest)initWithSubscriptionContext:(id)a3 reason:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSCallForwardingRequest

- (TPSCallForwardingRequest)initWithSubscriptionContext:(id)a3 reason:(int)a4
{
  v6.receiver = self;
  v6.super_class = TPSCallForwardingRequest;
  result = [(TPSCallClassRequest *)&v6 initWithSubscriptionContext:a3 callClass:1];
  if (result)
  {
    *(&result->super._callClass + 1) = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TPSCallForwardingRequest;
  result = [(TPSCallClassRequest *)&v5 copyWithZone:a3];
  *(result + 5) = *(&self->super._callClass + 1);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingRequest;
  v4 = a3;
  [(TPSCallClassRequest *)&v7 encodeWithCoder:v4];
  v5 = *(&self->super._callClass + 1);
  v6 = NSStringFromSelector(sel_reason);
  [v4 encodeInt:v5 forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallForwardingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSCallForwardingRequest;
  v5 = [(TPSCallClassRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_reason);
    *(&v5->super._callClass + 1) = [v4 decodeIntForKey:v6];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  v5 = [(TPSRequest *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, v5];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallForwardingRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSCallForwardingRequest;
  if ([(TPSCallClassRequest *)&v8 isEqualToRequest:v4])
  {
    v5 = [(TPSCallForwardingRequest *)self reason];
    v6 = v5 == [v4 reason];
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
  v10.receiver = a1;
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