@interface SBBiometricsService
+ (id)sharedInstance;
- (SBBiometricsService)init;
- (void)systemServiceServer:(id)server client:(id)client fetchUnlockCredentialSet:(id)set;
@end

@implementation SBBiometricsService

+ (id)sharedInstance
{
  if (sharedInstance___once_11 != -1)
  {
    +[SBBiometricsService sharedInstance];
  }

  v3 = sharedInstance___instance_12;

  return v3;
}

uint64_t __37__SBBiometricsService_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBBiometricsService);
  v1 = sharedInstance___instance_12;
  sharedInstance___instance_12 = v0;

  return kdebug_trace();
}

- (SBBiometricsService)init
{
  v9.receiver = self;
  v9.super_class = SBBiometricsService;
  v2 = [(SBBiometricsService *)&v9 init];
  if (v2)
  {
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v2->_biometricResource;
    v2->_biometricResource = mEMORY[0x277D67C98];

    v5 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.mesa.unlockCredential"];
    unlockCredentialAuthenticator = v2->_unlockCredentialAuthenticator;
    v2->_unlockCredentialAuthenticator = v5;

    v7 = +[SBSystemServiceServer sharedInstance];
    [v7 setBiometricsDelegate:v2];
  }

  return v2;
}

- (void)systemServiceServer:(id)server client:(id)client fetchUnlockCredentialSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    v10 = setCopy;
    if ([(FBServiceClientAuthenticator *)self->_unlockCredentialAuthenticator authenticateClient:client])
    {
      unlockCredentialSet = [(SBUIBiometricResource *)self->_biometricResource unlockCredentialSet];
      serializedCredentialSet = [unlockCredentialSet serializedCredentialSet];
    }

    else
    {
      serializedCredentialSet = 0;
    }

    v10[2](v10, serializedCredentialSet);

    setCopy = v10;
  }
}

@end