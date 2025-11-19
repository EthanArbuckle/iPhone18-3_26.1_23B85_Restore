@interface PORegistrationContext
- (PORegistrationContext)init;
@end

@implementation PORegistrationContext

- (PORegistrationContext)init
{
  v6.receiver = self;
  v6.super_class = PORegistrationContext;
  v2 = [(PORegistrationContext *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_repair = 0;
    v2->_resetKeys = 0;
    v2->_state = 0;
    v2->_failureCount = 0;
    v2->_authMethod = 1000;
    v2->_migratingDeviceKeys = 0;
    v4 = *MEMORY[0x277D3D278];
    objc_storeStrong(&v2->_signingAlgorithm, *MEMORY[0x277D3D278]);
    objc_storeStrong(&v3->_encryptionAlgorithm, *MEMORY[0x277D3D258]);
    objc_storeStrong(&v3->_userSigningAlgorithm, v4);
    v3->_credentialTransferCompleted = 0;
  }

  return v3;
}

@end