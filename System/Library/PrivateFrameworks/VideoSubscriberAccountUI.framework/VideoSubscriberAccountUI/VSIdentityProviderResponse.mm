@interface VSIdentityProviderResponse
- (VSIdentityProviderResponse)init;
- (id)description;
@end

@implementation VSIdentityProviderResponse

- (VSIdentityProviderResponse)init
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderResponse;
  v2 = [(VSIdentityProviderResponse *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2298]);
    logoLoadOperation = v2->_logoLoadOperation;
    v2->_logoLoadOperation = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  accountMetadata = [(VSIdentityProviderResponse *)self accountMetadata];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"accountMetadata", accountMetadata];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  account = [(VSIdentityProviderResponse *)self account];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"account", account];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{-[VSIdentityProviderResponse didCreateAccount](self, "didCreateAccount")}];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"didCreateAccount", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  logoLoadOperation = [(VSIdentityProviderResponse *)self logoLoadOperation];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"logoLoadOperation", logoLoadOperation];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = VSIdentityProviderResponse;
  v17 = [(VSIdentityProviderResponse *)&v21 description];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"<%@ %@>", v17, v18];

  return v19;
}

@end