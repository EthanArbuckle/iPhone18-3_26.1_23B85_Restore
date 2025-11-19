@interface TPSCallForwardingResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (TPSCallForwardingResponse)initWithCoder:(id)a3;
- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)a3 error:(id)a4;
- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)a3 error:(id)a4 value:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSCallForwardingResponse

- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)a3 error:(id)a4
{
  [(TPSCallForwardingResponse *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)a3 error:(id)a4 value:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TPSCallForwardingResponse;
  v10 = [(TPSResponse *)&v13 initWithSubscriptionContext:a3 error:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, a5);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSCallForwardingResponse;
  v4 = [(TPSResponse *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 3, self->_value);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingResponse;
  v4 = a3;
  [(TPSResponse *)&v7 encodeWithCoder:v4];
  value = self->_value;
  v6 = NSStringFromSelector(sel_value);
  [v4 encodeObject:value forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallForwardingResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSCallForwardingResponse;
  v5 = [(TPSResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_value);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  v5 = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  v7 = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_value);
  [v3 appendFormat:@"%@=%@", v8, self->_value];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingResponse;
  v3 = [(TPSResponse *)&v7 hash];
  v4 = [(TPSCallForwardingResponse *)self value];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallForwardingResponse *)self isEqualToResponse:v4];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSCallForwardingResponse;
  if ([(TPSResponse *)&v9 isEqualToResponse:v4])
  {
    v5 = [(TPSCallForwardingResponse *)self value];
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
  v10.super_class = &OBJC_METACLASS___TPSCallForwardingResponse;
  v4 = objc_msgSendSuper2(&v10, sel_unarchivedObjectClasses);
  v5 = [v3 initWithSet:v4];

  v11[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 addObjectsFromArray:v6];

  v7 = [v5 copy];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
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