@interface TPSSetCallForwardingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TPSSetCallForwardingRequest)initWithCoder:(id)coder;
- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)context;
- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)context value:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSSetCallForwardingRequest

- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)context
{
  [(TPSSetCallForwardingRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSSetCallForwardingRequest)initWithSubscriptionContext:(id)context value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = TPSSetCallForwardingRequest;
  v8 = [(TPSRequest *)&v11 initWithSubscriptionContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = TPSSetCallForwardingRequest;
  v4 = [(TPSRequest *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 2, self->_value);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSSetCallForwardingRequest;
  coderCopy = coder;
  [(TPSRequest *)&v7 encodeWithCoder:coderCopy];
  value = self->_value;
  v6 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSSetCallForwardingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSSetCallForwardingRequest;
  v5 = [(TPSRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_value);
    v7 = [coderCopy decodeObjectForKey:v6];
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
  value = [(TPSSetCallForwardingRequest *)self value];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSSetCallForwardingRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = TPSSetCallForwardingRequest;
  if ([(TPSRequest *)&v9 isEqualToRequest:requestCopy])
  {
    value = [(TPSSetCallForwardingRequest *)self value];
    value2 = [requestCopy value];
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