@interface SPSecureLocationsSubscriptionContext
- (SPSecureLocationsSubscriptionContext)init;
- (SPSecureLocationsSubscriptionContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSecureLocationsSubscriptionContext

- (SPSecureLocationsSubscriptionContext)init
{
  v6.receiver = self;
  v6.super_class = SPSecureLocationsSubscriptionContext;
  v2 = [(SPSecureLocationsSubscriptionContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    clientApp = v2->_clientApp;
    v2->_subscriptionMode = 0;
    v2->_clientApp = @"searchpartyd";

    v3->_fetchMode = 1;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SPSecureLocationsSubscriptionContext);
  clientApp = [(SPSecureLocationsSubscriptionContext *)self clientApp];
  [(SPSecureLocationsSubscriptionContext *)v4 setClientApp:clientApp];

  [(SPSecureLocationsSubscriptionContext *)v4 setSubscriptionMode:[(SPSecureLocationsSubscriptionContext *)self subscriptionMode]];
  [(SPSecureLocationsSubscriptionContext *)v4 setFetchMode:[(SPSecureLocationsSubscriptionContext *)self fetchMode]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  clientApp = self->_clientApp;
  coderCopy = coder;
  [coderCopy encodeObject:clientApp forKey:@"clientApp"];
  [coderCopy encodeInteger:self->_subscriptionMode forKey:@"subscriptionMode"];
  [coderCopy encodeInteger:self->_fetchMode forKey:@"fetchMode"];
  [coderCopy encodeObject:self->_pushIdentifiers forKey:@"pushIdentifiers"];
}

- (SPSecureLocationsSubscriptionContext)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientApp"];
  clientApp = self->_clientApp;
  self->_clientApp = v5;

  self->_subscriptionMode = [coderCopy decodeIntegerForKey:@"subscriptionMode"];
  self->_fetchMode = [coderCopy decodeIntegerForKey:@"fetchMode"];
  v7 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:3];
  v9 = [v7 setWithArray:{v8, v14, v15}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"pushIdentifiers"];

  pushIdentifiers = self->_pushIdentifiers;
  self->_pushIdentifiers = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  clientApp = [(SPSecureLocationsSubscriptionContext *)self clientApp];
  v5 = [v3 stringWithFormat:@"<clientApp %@, subMode %ld, fetchMode %ld>", clientApp, -[SPSecureLocationsSubscriptionContext subscriptionMode](self, "subscriptionMode"), -[SPSecureLocationsSubscriptionContext fetchMode](self, "fetchMode")];

  return v5;
}

@end