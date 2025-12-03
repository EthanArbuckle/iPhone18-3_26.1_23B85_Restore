@interface TPSCallWaitingResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (TPSCallWaitingResponse)initWithCoder:(id)coder;
- (TPSCallWaitingResponse)initWithSubscriptionContext:(id)context error:(id)error;
- (TPSCallWaitingResponse)initWithsubscriptionContext:(id)context error:(id)error enabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCallWaitingResponse

- (TPSCallWaitingResponse)initWithSubscriptionContext:(id)context error:(id)error
{
  [(TPSCallWaitingResponse *)self doesNotRecognizeSelector:a2, error];

  return 0;
}

- (TPSCallWaitingResponse)initWithsubscriptionContext:(id)context error:(id)error enabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = TPSCallWaitingResponse;
  result = [(TPSResponse *)&v7 initWithSubscriptionContext:context error:error];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TPSCallWaitingResponse;
  result = [(TPSResponse *)&v5 copyWithZone:zone];
  *(result + 24) = self->_enabled;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSCallWaitingResponse;
  coderCopy = coder;
  [(TPSResponse *)&v7 encodeWithCoder:coderCopy];
  enabled = self->_enabled;
  v6 = NSStringFromSelector(sel_enabled);
  [coderCopy encodeBool:enabled forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallWaitingResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TPSCallWaitingResponse;
  v5 = [(TPSResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_enabled);
    v5->_enabled = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  subscriptionContext = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, subscriptionContext];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  error = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, error];

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallWaitingResponse *)self isEqualToResponse:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  v8.receiver = self;
  v8.super_class = TPSCallWaitingResponse;
  if ([(TPSResponse *)&v8 isEqualToResponse:responseCopy])
  {
    enabled = [(TPSCallWaitingResponse *)self enabled];
    v6 = enabled ^ [responseCopy enabled] ^ 1;
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
  v10.receiver = self;
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end