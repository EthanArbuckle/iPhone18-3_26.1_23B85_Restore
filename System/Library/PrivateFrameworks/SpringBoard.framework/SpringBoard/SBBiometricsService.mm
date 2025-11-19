@interface SBBiometricsService
+ (id)sharedInstance;
- (SBBiometricsService)init;
- (void)systemServiceServer:(id)a3 client:(id)a4 fetchUnlockCredentialSet:(id)a5;
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
    v3 = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v2->_biometricResource;
    v2->_biometricResource = v3;

    v5 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.mesa.unlockCredential"];
    unlockCredentialAuthenticator = v2->_unlockCredentialAuthenticator;
    v2->_unlockCredentialAuthenticator = v5;

    v7 = +[SBSystemServiceServer sharedInstance];
    [v7 setBiometricsDelegate:v2];
  }

  return v2;
}

- (void)systemServiceServer:(id)a3 client:(id)a4 fetchUnlockCredentialSet:(id)a5
{
  v7 = a5;
  if (v7)
  {
    v10 = v7;
    if ([(FBServiceClientAuthenticator *)self->_unlockCredentialAuthenticator authenticateClient:a4])
    {
      v8 = [(SBUIBiometricResource *)self->_biometricResource unlockCredentialSet];
      v9 = [v8 serializedCredentialSet];
    }

    else
    {
      v9 = 0;
    }

    v10[2](v10, v9);

    v7 = v10;
  }
}

@end