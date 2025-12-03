@interface TPSCallingLineIdRestrictionRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TPSCallingLineIdRestrictionRequest)initWithCoder:(id)coder;
- (TPSCallingLineIdRestrictionRequest)initWithSubscriptionContext:(id)context;
@end

@implementation TPSCallingLineIdRestrictionRequest

- (TPSCallingLineIdRestrictionRequest)initWithSubscriptionContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TPSCallingLineIdRestrictionRequest;
  return [(TPSRequest *)&v4 initWithSubscriptionContext:context];
}

- (TPSCallingLineIdRestrictionRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TPSCallingLineIdRestrictionRequest;
  return [(TPSRequest *)&v4 initWithCoder:coder];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallingLineIdRestrictionRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = TPSCallingLineIdRestrictionRequest;
  return [(TPSRequest *)&v4 isEqualToRequest:request];
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TPSCallingLineIdRestrictionRequest;
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