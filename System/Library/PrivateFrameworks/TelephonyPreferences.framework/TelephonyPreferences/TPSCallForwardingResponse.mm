@interface TPSCallForwardingResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (TPSCallForwardingResponse)initWithCoder:(id)coder;
- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)context error:(id)error;
- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)context error:(id)error value:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCallForwardingResponse

- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)context error:(id)error
{
  [(TPSCallForwardingResponse *)self doesNotRecognizeSelector:a2, error];

  return 0;
}

- (TPSCallForwardingResponse)initWithSubscriptionContext:(id)context error:(id)error value:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = TPSCallForwardingResponse;
  v10 = [(TPSResponse *)&v13 initWithSubscriptionContext:context error:error];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_value, value);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TPSCallForwardingResponse;
  v4 = [(TPSResponse *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 3, self->_value);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingResponse;
  coderCopy = coder;
  [(TPSResponse *)&v7 encodeWithCoder:coderCopy];
  value = self->_value;
  v6 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCallForwardingResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSCallForwardingResponse;
  v5 = [(TPSResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_value);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
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
  subscriptionContext = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, subscriptionContext];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  error = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, error];

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
  value = [(TPSCallForwardingResponse *)self value];
  v5 = [value hash];

  return v5 ^ v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallForwardingResponse *)self isEqualToResponse:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = TPSCallForwardingResponse;
  if ([(TPSResponse *)&v9 isEqualToResponse:responseCopy])
  {
    value = [(TPSCallForwardingResponse *)self value];
    value2 = [responseCopy value];
    v7 = (value | value2) == 0;
    if (value2)
    {
      v7 = [value isEqual:value2];
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
  v10.receiver = self;
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end