@interface SoftwareTransparency
+ (BOOL)isAvailable;
+ (BOOL)retryable:(id)retryable;
+ (id)invalidResponse;
+ (id)tooManyRetries;
- (SoftwareTransparency)initWithApplication:(unint64_t)application;
- (id)connection;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)clearAllCFUWithCompletion:(id)completion;
- (void)dailyWithCompletion:(id)completion;
- (void)postCFU:(id)u completion:(id)completion;
- (void)sysdiagnoseInfo:(int)info completion:(id)completion;
- (void)triggerConsistencyVerificationWithCompletion:(id)completion;
- (void)triggerMilestoneRefreshWithCompletion:(id)completion;
- (void)triggerPublicKeyBagRefreshWithCompletion:(id)completion;
- (void)verifyExpiringProofs:(id)proofs for:(id)for completion:(id)completion;
- (void)verifyExpiringProofs:(id)proofs for:(id)for counter:(int)counter completion:(id)completion;
- (void)verifyExpiringProofs:(id)proofs forDigest:(id)digest configuration:(id)configuration counter:(int)counter completion:(id)completion;
- (void)verifyExpiringProofs:(id)proofs forObject:(id)object configuration:(id)configuration completion:(id)completion;
- (void)verifyProofs:(id)proofs for:(id)for completion:(id)completion;
- (void)waitStateMachineReadyWithCompletion:(id)completion;
@end

@implementation SoftwareTransparency

- (SoftwareTransparency)initWithApplication:(unint64_t)application
{
  v8.receiver = self;
  v8.super_class = SoftwareTransparency;
  v4 = [(SoftwareTransparency *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_application = application;
    v6 = v4;
  }

  return v5;
}

+ (BOOL)retryable:(id)retryable
{
  retryableCopy = retryable;
  if ([retryableCopy code] == 4097)
  {
    domain = [retryableCopy domain];
    v5 = [domain isEqual:*MEMORY[0x1E696A250]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tooManyRetries
{
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [v2 initWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];

  return v3;
}

+ (id)invalidResponse
{
  v2 = [SWTransparencyExpiringVerificationResult alloc];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  v4 = [(SWTransparencyExpiringVerificationResult *)v2 initWithResult:1 expiry:v3];

  return v4;
}

- (id)connection
{
  endpoint = [(SoftwareTransparency *)self endpoint];

  if (endpoint)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    endpoint2 = [(SoftwareTransparency *)self endpoint];
    v6 = [v4 initWithListenerEndpoint:endpoint2];

    v7 = +[SWTransparencyXPCInterface interface];
    [v6 setRemoteObjectInterface:v7];

    [v6 resume];
  }

  else
  {
    proxyCreating = [(SoftwareTransparency *)self proxyCreating];

    if (proxyCreating)
    {
      [(SoftwareTransparency *)self proxyCreating];
    }

    else
    {
      +[TransparencyXPCConnection swTransparencyConnection];
    }
    v6 = ;
  }

  return v6;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(SoftwareTransparency *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)verifyProofs:(id)proofs for:(id)for completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SoftwareTransparency_verifyProofs_for_completion___block_invoke;
  v10[3] = &unk_1E8701350;
  v11 = completionCopy;
  v9 = completionCopy;
  [(SoftwareTransparency *)self verifyExpiringProofs:proofs for:for completion:v10];
}

void __52__SoftwareTransparency_verifyProofs_for_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 result], v5);
}

- (void)verifyExpiringProofs:(id)proofs for:(id)for completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  proofsCopy = proofs;
  forCopy = for;
  completionCopy = completion;
  if (+[SoftwareTransparency isAvailable])
  {
    v11 = [[SWTransparencyOperationConfiguration alloc] initWithName:@"old-spi"];
    [(SWTransparencyOperationConfiguration *)v11 setQualityOfService:25];
    [(SoftwareTransparency *)self verifyExpiringProofs:proofsCopy forObject:forCopy configuration:v11 completion:completionCopy];
  }

  else
  {
    v12 = [SWTransparencyExpiringVerificationResult alloc];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    v14 = [(SWTransparencyExpiringVerificationResult *)v12 initWithResult:1 expiry:v13];

    v15 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"verify proofs blocked because device is not eligible for GM";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = [v15 errorWithDomain:@"TransparencyErrorInterface" code:-398 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, v14, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)verifyExpiringProofs:(id)proofs for:(id)for counter:(int)counter completion:(id)completion
{
  proofsCopy = proofs;
  forCopy = for;
  completionCopy = completion;
  v13 = completionCopy;
  if (counter < 5)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __68__SoftwareTransparency_verifyExpiringProofs_for_counter_completion___block_invoke;
    v22 = &unk_1E8701378;
    v16 = completionCopy;
    selfCopy = self;
    v24 = v16;
    v17 = [(SoftwareTransparency *)self remoteObjectProxyWithErrorHandler:&v19];
    kt_sha256 = [forCopy kt_sha256];
    [v17 verifyProofs:proofsCopy forDigest:kt_sha256 configuration:0 completion:v16];
  }

  else
  {
    invalidResponse = [objc_opt_class() invalidResponse];
    tooManyRetries = [objc_opt_class() tooManyRetries];
    (v13)[2](v13, invalidResponse, tooManyRetries);
  }
}

void __68__SoftwareTransparency_verifyExpiringProofs_for_counter_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [objc_opt_class() invalidResponse];
  (*(v2 + 16))(v2, v5, v4);
}

- (void)sysdiagnoseInfo:(int)info completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (info < 5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__SoftwareTransparency_sysdiagnoseInfo_completion___block_invoke;
    v11[3] = &unk_1E87013A0;
    v11[4] = self;
    v9 = completionCopy;
    v12 = v9;
    infoCopy = info;
    v10 = [(SoftwareTransparency *)self remoteObjectProxyWithErrorHandler:v11];
    [v10 sysdiagnoseInfoWithCompletion:v9];
  }

  else
  {
    tooManyRetries = [objc_opt_class() tooManyRetries];
    (v7)[2](v7, 0, tooManyRetries);
  }
}

void __51__SoftwareTransparency_sysdiagnoseInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if ([objc_opt_class() retryable:v4])
  {
    [*(a1 + 32) sysdiagnoseInfo:(*(a1 + 48) + 1) completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)triggerMilestoneRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SoftwareTransparency_triggerMilestoneRefreshWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerMilestoneRefreshWithCompletion:v6];
}

- (void)triggerPublicKeyBagRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SoftwareTransparency_triggerPublicKeyBagRefreshWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerPublicKeybagRefreshWithCompletion:v6];
}

- (void)triggerConsistencyVerificationWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__SoftwareTransparency_triggerConsistencyVerificationWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerConsistencyVerificationWithCompletion:v6];
}

- (void)postCFU:(id)u completion:(id)completion
{
  completionCopy = completion;
  uCopy = u;
  connection = [(SoftwareTransparency *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__SoftwareTransparency_postCFU_completion___block_invoke;
  v11[3] = &unk_1E87013C8;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];
  [v10 postCFU:uCopy completion:v9];
}

- (void)clearAllCFUWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SoftwareTransparency_clearAllCFUWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 clearAllCFUWithCompletion:v6];
}

- (void)waitStateMachineReadyWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SoftwareTransparency_waitStateMachineReadyWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 waitStateMachineReadyWithCompletion:v6];
}

- (void)dailyWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SoftwareTransparency_dailyWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];
  [v7 dailyWithCompletion:v6];
}

+ (BOOL)isAvailable
{
  os_eligibility_get_domain_answer();

  return 1;
}

void __35__SoftwareTransparency_isAvailable__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1E10DB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Device isn't GMS capable, disabling software transparency", v0, 2u);
  }
}

- (void)verifyExpiringProofs:(id)proofs forObject:(id)object configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  proofsCopy = proofs;
  kt_sha256 = [object kt_sha256];
  [(SoftwareTransparency *)self verifyExpiringProofs:proofsCopy forDigest:kt_sha256 configuration:configurationCopy counter:1 completion:completionCopy];
}

- (void)verifyExpiringProofs:(id)proofs forDigest:(id)digest configuration:(id)configuration counter:(int)counter completion:(id)completion
{
  proofsCopy = proofs;
  digestCopy = digest;
  configurationCopy = configuration;
  completionCopy = completion;
  v16 = completionCopy;
  if (counter < 5)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __88__SoftwareTransparency_verifyExpiringProofs_forDigest_configuration_counter_completion___block_invoke;
    v27 = &unk_1E87013F0;
    selfCopy = self;
    v19 = completionCopy;
    v32 = v19;
    v20 = proofsCopy;
    v29 = v20;
    v21 = digestCopy;
    v30 = v21;
    v22 = configurationCopy;
    v31 = v22;
    counterCopy = counter;
    v23 = [(SoftwareTransparency *)self remoteObjectProxyWithErrorHandler:&v24];
    [v23 verifyProofs:v20 forDigest:v21 configuration:v22 completion:{v19, v24, v25, v26, v27, selfCopy}];
  }

  else
  {
    invalidResponse = [objc_opt_class() invalidResponse];
    tooManyRetries = [objc_opt_class() tooManyRetries];
    (v16)[2](v16, invalidResponse, tooManyRetries);
  }
}

void __88__SoftwareTransparency_verifyExpiringProofs_forDigest_configuration_counter_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  if ([objc_opt_class() retryable:v7])
  {
    [*(a1 + 32) verifyExpiringProofs:*(a1 + 40) forDigest:*(a1 + 48) configuration:*(a1 + 56) counter:(*(a1 + 72) + 1) completion:*(a1 + 64)];
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() invalidResponse];
    (*(v4 + 16))(v4, v6, v7);
  }
}

@end