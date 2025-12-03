@interface PKTrustedDeviceEnrollmentInfoProvider
- (PKTrustedDeviceEnrollmentInfoProvider)init;
- (void)trustedDeviceEnrollmentInfoWithCompletion:(id)completion;
- (void)trustedDeviceEnrollmentSignatureForDevice:(unint64_t)device accountDSID:(id)d sessionData:(id)data completion:(id)completion;
@end

@implementation PKTrustedDeviceEnrollmentInfoProvider

- (PKTrustedDeviceEnrollmentInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = PKTrustedDeviceEnrollmentInfoProvider;
  v2 = [(PKTrustedDeviceEnrollmentInfoProvider *)&v8 init];
  if (v2)
  {
    v3 = [PKXPCService alloc];
    v4 = PDTrustedDeviceEnrollmentInfoProviderExportedInterface();
    v5 = [(PKXPCService *)v3 initWithMachServiceName:@"com.apple.passd.trusted-device-enrollment-info-provider" remoteObjectInterface:v4 exportedObjectInterface:0 exportedObject:0];
    remoteService = v2->_remoteService;
    v2->_remoteService = v5;
  }

  return v2;
}

- (void)trustedDeviceEnrollmentInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentInfoWithCompletion___block_invoke;
    v10[3] = &unk_1E79C44A0;
    v6 = completionCopy;
    v10[4] = self;
    v11 = v6;
    v7 = [(PKTrustedDeviceEnrollmentInfoProvider *)self _remoteObjectProxyWithFailureHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentInfoWithCompletion___block_invoke_3;
    v8[3] = &unk_1E79D8468;
    v8[4] = self;
    v9 = v6;
    [v7 trustedDeviceEnrollmentInfoWithHandler:v8];
  }
}

void __83__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentInfoWithCompletion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentInfoWithCompletion___block_invoke_2;
  v3[3] = &unk_1E79C44A0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __83__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentInfoWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentInfoWithCompletion___block_invoke_4;
  v10[3] = &unk_1E79C45E0;
  v7 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)trustedDeviceEnrollmentSignatureForDevice:(unint64_t)device accountDSID:(id)d sessionData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __118__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentSignatureForDevice_accountDSID_sessionData_completion___block_invoke;
    v18[3] = &unk_1E79C4860;
    v12 = completionCopy;
    v18[4] = self;
    v19 = v12;
    dataCopy = data;
    dCopy = d;
    v15 = [(PKTrustedDeviceEnrollmentInfoProvider *)self _remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __118__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentSignatureForDevice_accountDSID_sessionData_completion___block_invoke_3;
    v16[3] = &unk_1E79D84B8;
    v16[4] = self;
    v17 = v12;
    [v15 trustedDeviceEnrollmentSignatureForDevice:device accountDSID:dCopy sessionData:dataCopy handler:v16];
  }
}

void __118__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentSignatureForDevice_accountDSID_sessionData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentSignatureForDevice_accountDSID_sessionData_completion___block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __118__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentSignatureForDevice_accountDSID_sessionData_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __118__PKTrustedDeviceEnrollmentInfoProvider_trustedDeviceEnrollmentSignatureForDevice_accountDSID_sessionData_completion___block_invoke_4;
  v16[3] = &unk_1E79D8490;
  v21 = *(a1 + 40);
  v22 = a3;
  v17 = v9;
  v18 = v10;
  v12 = *(a1 + 32);
  v19 = v11;
  v20 = v12;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

@end