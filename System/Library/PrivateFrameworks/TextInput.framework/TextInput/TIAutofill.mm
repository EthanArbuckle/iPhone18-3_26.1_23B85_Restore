@interface TIAutofill
+ (BOOL)isSuggestingStrongPasswordsAvailable;
+ (void)sendAutofillCredentialCandidate:(id)a3 completionHandler:(id)a4;
@end

@implementation TIAutofill

+ (BOOL)isSuggestingStrongPasswordsAvailable
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.rdt" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F80D8];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__TIAutofill_isSuggestingStrongPasswordsAvailable__block_invoke;
  v8[3] = &unk_1E6F4CD60;
  v8[4] = &v9;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TIAutofill_isSuggestingStrongPasswordsAvailable__block_invoke_2;
  v7[3] = &unk_1E6F4CD88;
  v7[4] = &v9;
  [v4 getIsSuggestingStrongPasswordsAvailableWithCompletionHandler:v7];
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

+ (void)sendAutofillCredentialCandidate:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (sendAutofillCredentialCandidate_completionHandler__onceToken != -1)
    {
      dispatch_once(&sendAutofillCredentialCandidate_completionHandler__onceToken, &__block_literal_global_8123);
    }

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.autofill-server" options:4096];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F8078];
    [v7 setRemoteObjectInterface:v8];

    [v7 _setQueue:sendAutofillCredentialCandidate_completionHandler____xpc_queue];
    [v7 resume];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__TIAutofill_sendAutofillCredentialCandidate_completionHandler___block_invoke_2;
    v12[3] = &unk_1E6F4CD38;
    v9 = v6;
    v13 = v9;
    v10 = [v7 remoteObjectProxyWithErrorHandler:v12];
    v11 = v10;
    if (v10)
    {
      [v10 reportSelectedAutofillCredential:v5 completionHandler:v9];
    }

    else
    {
      v9[2](v9);
    }
  }
}

uint64_t __64__TIAutofill_sendAutofillCredentialCandidate_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_AppReportedCan.isa, a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __64__TIAutofill_sendAutofillCredentialCandidate_completionHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.autofill-request", v2);
  v1 = sendAutofillCredentialCandidate_completionHandler____xpc_queue;
  sendAutofillCredentialCandidate_completionHandler____xpc_queue = v0;
}

@end