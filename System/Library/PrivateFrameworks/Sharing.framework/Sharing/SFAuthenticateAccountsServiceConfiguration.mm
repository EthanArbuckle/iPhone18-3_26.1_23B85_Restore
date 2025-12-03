@interface SFAuthenticateAccountsServiceConfiguration
- (SFAuthenticateAccountsServiceConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFAuthenticateAccountsServiceConfiguration

- (SFAuthenticateAccountsServiceConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SFAuthenticateAccountsServiceConfiguration;
  v2 = [(SFAuthenticateAccountsServiceConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 12) = 0x700000000;
    v4 = *(v2 + 3);
    *(v2 + 3) = 0;

    *(v3 + 4) = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SFAuthenticateAccountsServiceConfiguration);
  v4->_serviceType = self->_serviceType;
  v4->_targetedAccountTypes = self->_targetedAccountTypes;
  v5 = [(NSSet *)self->_existingAccountsIdentifiers copy];
  existingAccountsIdentifiers = v4->_existingAccountsIdentifiers;
  v4->_existingAccountsIdentifiers = v5;

  v4->_isHomeSharingSetupNeeded = self->_isHomeSharingSetupNeeded;
  v4->_isHomeKitSetupNeeded = self->_isHomeKitSetupNeeded;
  return v4;
}

@end