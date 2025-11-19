@interface TPSSetCallForwardingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (TPSSetCallForwardingRequest)initWithCoder:(id)a3;
- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)a3;
- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)a3 value:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSSetCallForwardingRequest

- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)a3
{
  [(TPSSetCallForwardingRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TPSSetCallForwardingRequest;
  v8 = [(TPSRequest *)&v11 initWithSubscriptionContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSSetCallForwardingRequest;
  v4 = [(TPSRequest *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 2, self->_value);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSSetCallForwardingRequest;
  v4 = a3;
  [(TPSRequest *)&v7 encodeWithCoder:v4];
  value = self->_value;
  v6 = NSStringFromSelector(sel_value);
  [v4 encodeObject:value forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSSetCallForwardingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSSetCallForwardingRequest;
  v5 = [(TPSRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_value);
    v7 = [v4 decodeObjectForKey:v6];
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
  v6 = NSStringFromSelector(sel_value);
  [v3 appendFormat:@"%@=%@", v6, self->_value];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TPSSetCallForwardingRequest;
  v3 = [(TPSRequest *)&v7 hash];
  v4 = [(TPSSetCallForwardingRequest *)self value];
  v5 = [v4 hash];

  return v5 ^ v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSSetCallForwardingRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSSetCallForwardingRequest;
  if ([(TPSRequest *)&v9 isEqualToRequest:v4])
  {
    v5 = [(TPSSetCallForwardingRequest *)self value];
    v6 = [v4 value];
    v7 = (v5 | v6) == 0;
    if (v6)
    {
      v7 = [v5 isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___TPSSetCallForwardingRequest;
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