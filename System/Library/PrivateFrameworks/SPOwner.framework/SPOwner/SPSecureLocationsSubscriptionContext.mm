@interface SPSecureLocationsSubscriptionContext
- (SPSecureLocationsSubscriptionContext)init;
- (SPSecureLocationsSubscriptionContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SPSecureLocationsSubscriptionContext);
  v5 = [(SPSecureLocationsSubscriptionContext *)self clientApp];
  [(SPSecureLocationsSubscriptionContext *)v4 setClientApp:v5];

  [(SPSecureLocationsSubscriptionContext *)v4 setSubscriptionMode:[(SPSecureLocationsSubscriptionContext *)self subscriptionMode]];
  [(SPSecureLocationsSubscriptionContext *)v4 setFetchMode:[(SPSecureLocationsSubscriptionContext *)self fetchMode]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  clientApp = self->_clientApp;
  v5 = a3;
  [v5 encodeObject:clientApp forKey:@"clientApp"];
  [v5 encodeInteger:self->_subscriptionMode forKey:@"subscriptionMode"];
  [v5 encodeInteger:self->_fetchMode forKey:@"fetchMode"];
  [v5 encodeObject:self->_pushIdentifiers forKey:@"pushIdentifiers"];
}

- (SPSecureLocationsSubscriptionContext)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientApp"];
  clientApp = self->_clientApp;
  self->_clientApp = v5;

  self->_subscriptionMode = [v4 decodeIntegerForKey:@"subscriptionMode"];
  self->_fetchMode = [v4 decodeIntegerForKey:@"fetchMode"];
  v7 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:3];
  v9 = [v7 setWithArray:{v8, v14, v15}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"pushIdentifiers"];

  pushIdentifiers = self->_pushIdentifiers;
  self->_pushIdentifiers = v10;

  v12 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SPSecureLocationsSubscriptionContext *)self clientApp];
  v5 = [v3 stringWithFormat:@"<clientApp %@, subMode %ld, fetchMode %ld>", v4, -[SPSecureLocationsSubscriptionContext subscriptionMode](self, "subscriptionMode"), -[SPSecureLocationsSubscriptionContext fetchMode](self, "fetchMode")];

  return v5;
}

@end