@interface TPSCallingLineIdRestrictionSetRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (TPSCallingLineIdRestrictionSetRequest)initWithCoder:(id)a3;
- (TPSCallingLineIdRestrictionSetRequest)initWithSubscriptionContext:(id)a3;
- (TPSCallingLineIdRestrictionSetRequest)initWithSubscriptionContext:(id)a3 state:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSCallingLineIdRestrictionSetRequest

- (TPSCallingLineIdRestrictionSetRequest)initWithSubscriptionContext:(id)a3
{
  [(TPSCallingLineIdRestrictionSetRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallingLineIdRestrictionSetRequest)initWithSubscriptionContext:(id)a3 state:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = TPSCallingLineIdRestrictionSetRequest;
  result = [(TPSCallingLineIdRestrictionRequest *)&v6 initWithSubscriptionContext:a3];
  if (result)
  {
    result->_state = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TPSCallingLineIdRestrictionSetRequest;
  result = [(TPSRequest *)&v5 copyWithZone:a3];
  *(result + 2) = self->_state;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSCallingLineIdRestrictionSetRequest;
  v4 = a3;
  [(TPSRequest *)&v7 encodeWithCoder:v4];
  v5 = self->_state != 0;
  v6 = NSStringFromSelector(sel_state);
  [v4 encodeBool:v5 forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallingLineIdRestrictionSetRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSCallingLineIdRestrictionSetRequest;
  v5 = [(TPSCallingLineIdRestrictionRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_state);
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
  v6 = NSStringFromSelector(sel_state);
  v7 = [MEMORY[0x277CCACA8] tps_stringWithTPSCallingLineIdRestrictionState:{-[TPSCallingLineIdRestrictionSetRequest state](self, "state")}];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@">"];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TPSCallingLineIdRestrictionSetRequest;
  v3 = [(TPSRequest *)&v5 hash];
  return [(TPSCallingLineIdRestrictionSetRequest *)self state]^ v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallingLineIdRestrictionSetRequest *)self isEqualToRequest:v4];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSCallingLineIdRestrictionSetRequest;
  v4 = [(TPSCallingLineIdRestrictionRequest *)&v6 isEqualToRequest:a3];
  if (v4)
  {
    LOBYTE(v4) = [(TPSCallingLineIdRestrictionSetRequest *)self state]!= 0;
  }

  return v4;
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___TPSCallingLineIdRestrictionSetRequest;
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