@interface VSIdentityProviderSection
- (VSIdentityProviderSection)init;
@end

@implementation VSIdentityProviderSection

- (VSIdentityProviderSection)init
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderSection;
  v2 = [(VSIdentityProviderSection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identityProviders = v2->_identityProviders;
    v2->_identityProviders = MEMORY[0x277CBEBF8];
  }

  return v3;
}

@end