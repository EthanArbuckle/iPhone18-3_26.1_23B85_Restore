@interface TPSSetCallWaitingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (TPSSetCallWaitingRequest)initWithCoder:(id)a3;
- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)a3;
- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)a3 enabled:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSSetCallWaitingRequest

- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)a3
{
  [(TPSSetCallWaitingRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSSetCallWaitingRequest)initWithSubscriptionContext:(id)a3 enabled:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = TPSSetCallWaitingRequest;
  result = [(TPSCallWaitingRequest *)&v6 initWithSubscriptionContext:a3];
  if (result)
  {
    *(&result->super.super._callClass + 4) = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TPSSetCallWaitingRequest;
  result = [(TPSCallClassRequest *)&v5 copyWithZone:a3];
  *(result + 20) = *(&self->super.super._callClass + 4);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSSetCallWaitingRequest;
  v4 = a3;
  [(TPSCallClassRequest *)&v7 encodeWithCoder:v4];
  v5 = *(&self->super.super._callClass + 4);
  v6 = NSStringFromSelector(sel_enabled);
  [v4 encodeBool:v5 forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSSetCallWaitingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSSetCallWaitingRequest;
  v5 = [(TPSCallWaitingRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_enabled);
    [v4 decodeBoolForKey:v6];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSSetCallWaitingRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSSetCallWaitingRequest;
  v4 = [(TPSCallWaitingRequest *)&v6 isEqualToRequest:a3];
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
  v10.receiver = a1;
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