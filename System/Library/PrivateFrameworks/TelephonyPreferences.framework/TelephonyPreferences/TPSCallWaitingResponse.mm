@interface TPSCallWaitingResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (TPSCallWaitingResponse)initWithCoder:(id)a3;
- (TPSCallWaitingResponse)initWithSubscriptionContext:(id)a3 error:(id)a4;
- (TPSCallWaitingResponse)initWithsubscriptionContext:(id)a3 error:(id)a4 enabled:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSCallWaitingResponse

- (TPSCallWaitingResponse)initWithSubscriptionContext:(id)a3 error:(id)a4
{
  [(TPSCallWaitingResponse *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (TPSCallWaitingResponse)initWithsubscriptionContext:(id)a3 error:(id)a4 enabled:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = TPSCallWaitingResponse;
  result = [(TPSResponse *)&v7 initWithSubscriptionContext:a3 error:a4];
  if (result)
  {
    result->_enabled = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = TPSCallWaitingResponse;
  result = [(TPSResponse *)&v5 copyWithZone:a3];
  *(result + 24) = self->_enabled;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSCallWaitingResponse;
  v4 = a3;
  [(TPSResponse *)&v7 encodeWithCoder:v4];
  enabled = self->_enabled;
  v6 = NSStringFromSelector(sel_enabled);
  [v4 encodeBool:enabled forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallWaitingResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSCallWaitingResponse;
  v5 = [(TPSResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_enabled);
    v5->_enabled = [v4 decodeBoolForKey:v6];
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
  v8 = NSStringFromSelector(sel_enabled);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[TPSCallWaitingResponse enabled](self, "enabled")}];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@">"];
  v10 = [v3 copy];

  return v10;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TPSCallWaitingResponse;
  v3 = [(TPSResponse *)&v5 hash];
  return v3 ^ [(TPSCallWaitingResponse *)self enabled];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallWaitingResponse *)self isEqualToResponse:v4];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TPSCallWaitingResponse;
  if ([(TPSResponse *)&v8 isEqualToResponse:v4])
  {
    v5 = [(TPSCallWaitingResponse *)self enabled];
    v6 = v5 ^ [v4 enabled] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___TPSCallWaitingResponse;
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