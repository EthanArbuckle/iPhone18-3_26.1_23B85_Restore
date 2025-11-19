@interface SoftwareTransparency
+ (BOOL)isAvailable;
+ (BOOL)retryable:(id)a3;
+ (id)invalidResponse;
+ (id)tooManyRetries;
- (SoftwareTransparency)initWithApplication:(unint64_t)a3;
- (id)connection;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (void)clearAllCFUWithCompletion:(id)a3;
- (void)dailyWithCompletion:(id)a3;
- (void)postCFU:(id)a3 completion:(id)a4;
- (void)sysdiagnoseInfo:(int)a3 completion:(id)a4;
- (void)triggerConsistencyVerificationWithCompletion:(id)a3;
- (void)triggerMilestoneRefreshWithCompletion:(id)a3;
- (void)triggerPublicKeyBagRefreshWithCompletion:(id)a3;
- (void)verifyExpiringProofs:(id)a3 for:(id)a4 completion:(id)a5;
- (void)verifyExpiringProofs:(id)a3 for:(id)a4 counter:(int)a5 completion:(id)a6;
- (void)verifyExpiringProofs:(id)a3 forDigest:(id)a4 configuration:(id)a5 counter:(int)a6 completion:(id)a7;
- (void)verifyExpiringProofs:(id)a3 forObject:(id)a4 configuration:(id)a5 completion:(id)a6;
- (void)verifyProofs:(id)a3 for:(id)a4 completion:(id)a5;
- (void)waitStateMachineReadyWithCompletion:(id)a3;
@end

@implementation SoftwareTransparency

- (SoftwareTransparency)initWithApplication:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = SoftwareTransparency;
  v4 = [(SoftwareTransparency *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_application = a3;
    v6 = v4;
  }

  return v5;
}

+ (BOOL)retryable:(id)a3
{
  v3 = a3;
  if ([v3 code] == 4097)
  {
    v4 = [v3 domain];
    v5 = [v4 isEqual:*MEMORY[0x1E696A250]];
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
  v3 = [(SoftwareTransparency *)self endpoint];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [(SoftwareTransparency *)self endpoint];
    v6 = [v4 initWithListenerEndpoint:v5];

    v7 = +[SWTransparencyXPCInterface interface];
    [v6 setRemoteObjectInterface:v7];

    [v6 resume];
  }

  else
  {
    v8 = [(SoftwareTransparency *)self proxyCreating];

    if (v8)
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

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)verifyProofs:(id)a3 for:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SoftwareTransparency_verifyProofs_for_completion___block_invoke;
  v10[3] = &unk_1E8701350;
  v11 = v8;
  v9 = v8;
  [(SoftwareTransparency *)self verifyExpiringProofs:a3 for:a4 completion:v10];
}

void __52__SoftwareTransparency_verifyProofs_for_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 result], v5);
}

- (void)verifyExpiringProofs:(id)a3 for:(id)a4 completion:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[SoftwareTransparency isAvailable])
  {
    v11 = [[SWTransparencyOperationConfiguration alloc] initWithName:@"old-spi"];
    [(SWTransparencyOperationConfiguration *)v11 setQualityOfService:25];
    [(SoftwareTransparency *)self verifyExpiringProofs:v8 forObject:v9 configuration:v11 completion:v10];
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
    (*(v10 + 2))(v10, v14, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)verifyExpiringProofs:(id)a3 for:(id)a4 counter:(int)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (a5 < 5)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __68__SoftwareTransparency_verifyExpiringProofs_for_counter_completion___block_invoke;
    v22 = &unk_1E8701378;
    v16 = v12;
    v23 = self;
    v24 = v16;
    v17 = [(SoftwareTransparency *)self remoteObjectProxyWithErrorHandler:&v19];
    v18 = [v11 kt_sha256];
    [v17 verifyProofs:v10 forDigest:v18 configuration:0 completion:v16];
  }

  else
  {
    v14 = [objc_opt_class() invalidResponse];
    v15 = [objc_opt_class() tooManyRetries];
    (v13)[2](v13, v14, v15);
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

- (void)sysdiagnoseInfo:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 < 5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__SoftwareTransparency_sysdiagnoseInfo_completion___block_invoke;
    v11[3] = &unk_1E87013A0;
    v11[4] = self;
    v9 = v6;
    v12 = v9;
    v13 = a3;
    v10 = [(SoftwareTransparency *)self remoteObjectProxyWithErrorHandler:v11];
    [v10 sysdiagnoseInfoWithCompletion:v9];
  }

  else
  {
    v8 = [objc_opt_class() tooManyRetries];
    (v7)[2](v7, 0, v8);
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

- (void)triggerMilestoneRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SoftwareTransparency_triggerMilestoneRefreshWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerMilestoneRefreshWithCompletion:v6];
}

- (void)triggerPublicKeyBagRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SoftwareTransparency_triggerPublicKeyBagRefreshWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerPublicKeybagRefreshWithCompletion:v6];
}

- (void)triggerConsistencyVerificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__SoftwareTransparency_triggerConsistencyVerificationWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 triggerConsistencyVerificationWithCompletion:v6];
}

- (void)postCFU:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SoftwareTransparency *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__SoftwareTransparency_postCFU_completion___block_invoke;
  v11[3] = &unk_1E87013C8;
  v12 = v6;
  v9 = v6;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v11];
  [v10 postCFU:v7 completion:v9];
}

- (void)clearAllCFUWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SoftwareTransparency_clearAllCFUWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 clearAllCFUWithCompletion:v6];
}

- (void)waitStateMachineReadyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__SoftwareTransparency_waitStateMachineReadyWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 waitStateMachineReadyWithCompletion:v6];
}

- (void)dailyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SoftwareTransparency *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SoftwareTransparency_dailyWithCompletion___block_invoke;
  v8[3] = &unk_1E87013C8;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
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

- (void)verifyExpiringProofs:(id)a3 forObject:(id)a4 configuration:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 kt_sha256];
  [(SoftwareTransparency *)self verifyExpiringProofs:v12 forDigest:v13 configuration:v11 counter:1 completion:v10];
}

- (void)verifyExpiringProofs:(id)a3 forDigest:(id)a4 configuration:(id)a5 counter:(int)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v15;
  if (a6 < 5)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __88__SoftwareTransparency_verifyExpiringProofs_forDigest_configuration_counter_completion___block_invoke;
    v27 = &unk_1E87013F0;
    v28 = self;
    v19 = v15;
    v32 = v19;
    v20 = v12;
    v29 = v20;
    v21 = v13;
    v30 = v21;
    v22 = v14;
    v31 = v22;
    v33 = a6;
    v23 = [(SoftwareTransparency *)self remoteObjectProxyWithErrorHandler:&v24];
    [v23 verifyProofs:v20 forDigest:v21 configuration:v22 completion:{v19, v24, v25, v26, v27, v28}];
  }

  else
  {
    v17 = [objc_opt_class() invalidResponse];
    v18 = [objc_opt_class() tooManyRetries];
    (v16)[2](v16, v17, v18);
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