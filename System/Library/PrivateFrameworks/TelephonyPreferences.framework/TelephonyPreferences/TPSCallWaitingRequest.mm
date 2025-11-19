@interface TPSCallWaitingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (TPSCallWaitingRequest)initWithCoder:(id)a3;
- (TPSCallWaitingRequest)initWithSubscriptionContext:(id)a3;
@end

@implementation TPSCallWaitingRequest

- (TPSCallWaitingRequest)initWithSubscriptionContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPSCallWaitingRequest;
  return [(TPSCallClassRequest *)&v4 initWithSubscriptionContext:a3 callClass:1];
}

- (TPSCallWaitingRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPSCallWaitingRequest;
  return [(TPSCallClassRequest *)&v4 initWithCoder:a3];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallWaitingRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPSCallWaitingRequest;
  return [(TPSCallClassRequest *)&v4 isEqualToRequest:a3];
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___TPSCallWaitingRequest;
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