@interface SBSBiometricsService
- (void)_acquireBiometricAssertionOfType:(unsigned __int8)a3 assertionName:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)fetchUnlockCredentialSetWithCompletion:(id)a3;
@end

@implementation SBSBiometricsService

- (void)fetchUnlockCredentialSetWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SBSAbstractFacilityService *)self callbackQueue];
    v6 = [(SBSAbstractSystemService *)self client];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SBSBiometricsService_fetchUnlockCredentialSetWithCompletion___block_invoke;
    v8[3] = &unk_1E735F208;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    [v6 fetchUnlockCredentialSetWithCompletion:v8];
  }
}

void __63__SBSBiometricsService_fetchUnlockCredentialSetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SBSBiometricsService_fetchUnlockCredentialSetWithCompletion___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_acquireBiometricAssertionOfType:(unsigned __int8)a3 assertionName:(id)a4 reason:(id)a5 completion:(id)a6
{
  v8 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v12 isUsable])
  {
    memset(v19, 0, 512);
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    v16 = [v13 stringWithFormat:@"%@-%@", v15, v10];

    if ([v16 getCString:v19 maxLength:1024 encoding:4] && (v17 = SBSSpringBoardServerPort(), !SBAddBiometricAssertion(v17, v19, objc_msgSend(v12, "port"), v8)))
    {
      v18 = [[SBSAssertion alloc] initWithAssertionName:v9 reason:v16 receiveRight:v12];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v11[2](v11, v18);
}

@end