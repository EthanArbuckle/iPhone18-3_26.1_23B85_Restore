@interface SBSoftwareUpdateService
+ (id)sharedInstance;
- (id)_init;
- (void)systemServiceServer:(id)a3 client:(id)a4 passcodePolicy:(id)a5;
- (void)systemServiceServer:(id)a3 client:(id)a4 setPasscodePolicy:(int64_t)a5;
@end

@implementation SBSoftwareUpdateService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[SBSoftwareUpdateService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_9;

  return v3;
}

void __41__SBSoftwareUpdateService_sharedInstance__block_invoke()
{
  v0 = [[SBSoftwareUpdateService alloc] _init];
  v1 = sharedInstance___sharedInstance_9;
  sharedInstance___sharedInstance_9 = v0;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = SBSoftwareUpdateService;
  v2 = [(SBSoftwareUpdateService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0AAF8]);
    v4 = [v3 initWithEntitlement:*MEMORY[0x277D67180]];
    serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator = v2->_serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator;
    v2->_serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator = v4;

    v6 = +[SBSystemServiceServer sharedInstance];
    [v6 setSoftwareUpdateDelegate:v2];
  }

  return v2;
}

- (void)systemServiceServer:(id)a3 client:(id)a4 passcodePolicy:(id)a5
{
  v7 = a4;
  v8 = a5;
  serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator = self->_serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator;
  v14 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator authenticateClient:v7 error:&v14];
  v11 = v14;
  if (v10)
  {
    v13 = v8;
    BSDispatchMain();
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBSoftwareUpdateService systemServiceServer:v7 client:? passcodePolicy:?];
    }

    (*(v8 + 2))(v8, 0);
  }
}

uint64_t __69__SBSoftwareUpdateService_systemServiceServer_client_passcodePolicy___block_invoke(uint64_t a1)
{
  v2 = [SBApp softwareUpdatePasscodePolicyManager];
  [v2 softwareUpdatePasscodePolicy];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)systemServiceServer:(id)a3 client:(id)a4 setPasscodePolicy:(int64_t)a5
{
  v6 = a4;
  serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator = self->_serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator;
  v11 = 0;
  v8 = [(FBServiceClientAuthenticator *)serviceClientSoftwareUpdatePasscodePolicyEntitlementAuthenticator authenticateClient:v6 error:&v11];
  v9 = v11;
  if (v8)
  {
    BSDispatchMain();
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBSoftwareUpdateService systemServiceServer:v6 client:? setPasscodePolicy:?];
    }
  }
}

void __72__SBSoftwareUpdateService_systemServiceServer_client_setPasscodePolicy___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) <= 2uLL)
  {
    v3 = [SBApp softwareUpdatePasscodePolicyManager];
    [v3 setSoftwareUpdatePasscodePolicy:*(a1 + 32)];
  }
}

- (void)systemServiceServer:(void *)a1 client:passcodePolicy:.cold.1(void *a1)
{
  [a1 pid];
  v1 = BSProcessDescriptionForPID();
  v2 = BSPrettyFunctionName();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_13(&dword_21ED4E000, v3, v4, "Failed to authenticate %{public}@ in %{public}@: %{public}@", v5, v6, v7, v8, v9);
}

- (void)systemServiceServer:(void *)a1 client:setPasscodePolicy:.cold.1(void *a1)
{
  [a1 pid];
  v1 = BSProcessDescriptionForPID();
  v2 = BSPrettyFunctionName();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_13(&dword_21ED4E000, v3, v4, "Failed to authenticate %{public}@ in %{public}@: %{public}@", v5, v6, v7, v8, v9);
}

@end