@interface TIAssistantSettings
+ (void)connectForOperations:(id)operations withErrorHandler:(id)handler;
+ (void)dismissDialog;
+ (void)dismissedDataSharingWithResponse:(int64_t)response;
+ (void)presentDialogForType:(int64_t)type withCompletionHandler:(id)handler;
+ (void)setTestBlock:(id)block;
@end

@implementation TIAssistantSettings

+ (void)dismissDialog
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3 = _assistantInternalQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__TIAssistantSettings_dismissDialog__block_invoke;
  v4[3] = &unk_1E6F4D960;
  v4[4] = &v5;
  TIDispatchSync(v3, v4);

  if (*(v6 + 24) == 1)
  {
    [self connectForOperations:&__block_literal_global_22 withErrorHandler:0];
  }

  _Block_object_dispose(&v5, 8);
}

void __36__TIAssistantSettings_dismissDialog__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__TIAssistantSettings_dismissDialog__block_invoke_3;
  v6[3] = &unk_1E6F4C2B0;
  v7 = v4;
  v5 = v4;
  [a2 dismissDialogWithCompletionHandler:v6];
}

+ (void)dismissedDataSharingWithResponse:(int64_t)response
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__TIAssistantSettings_dismissedDataSharingWithResponse___block_invoke;
  v3[3] = &__block_descriptor_40_e40_v24__0___TIAssistantSettings__8___v___16l;
  v3[4] = response;
  [self connectForOperations:v3 withErrorHandler:0];
}

+ (void)presentDialogForType:(int64_t)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__TIAssistantSettings_presentDialogForType_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E6F4C288;
  typeCopy = type;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__TIAssistantSettings_presentDialogForType_withCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E6F4C2B0;
  v9 = v11;
  v7 = v11;
  [self connectForOperations:v10 withErrorHandler:v8];
}

void __66__TIAssistantSettings_presentDialogForType_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  _dialogWasRequested = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__TIAssistantSettings_presentDialogForType_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E6F4C260;
  v9 = v5;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v7 = v5;
  [a2 presentDialogForType:v6 withCompletionHandler:v8];
}

uint64_t __66__TIAssistantSettings_presentDialogForType_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  _dialogWasRequested = 0;
  return result;
}

uint64_t __66__TIAssistantSettings_presentDialogForType_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = (*(*(a1 + 40) + 16))();
  _dialogWasRequested = 0;
  return result;
}

+ (void)connectForOperations:(id)operations withErrorHandler:(id)handler
{
  operationsCopy = operations;
  handlerCopy = handler;
  v9 = _assistantInternalQueue();
  v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.rdt" options:4096];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F8018];
  [v10 setRemoteObjectInterface:v11];

  [v10 _setQueue:v9];
  [v10 resume];
  if (_assistantTestBlock)
  {
    (*(_assistantTestBlock + 16))();
  }

  objc_initWeak(location, v10);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__TIAssistantSettings_connectForOperations_withErrorHandler___block_invoke;
  v23[3] = &unk_1E6F4D888;
  objc_copyWeak(&v24, location);
  v12 = MEMORY[0x1866068F0](v23);
  v13 = v12;
  if (handlerCopy)
  {
    v14 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__TIAssistantSettings_connectForOperations_withErrorHandler___block_invoke_2;
    v20[3] = &unk_1E6F4C238;
    v4 = &v21;
    v21 = v12;
    v5 = &v22;
    v22 = handlerCopy;
  }

  else
  {
    v14 = v12;
  }

  v15 = MEMORY[0x1866068F0](v14);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__TIAssistantSettings_connectForOperations_withErrorHandler___block_invoke_3;
  v18[3] = &unk_1E6F4CD38;
  v16 = v15;
  v19 = v16;
  v17 = [v10 remoteObjectProxyWithErrorHandler:v18];
  if (v17)
  {
    operationsCopy[2](operationsCopy, v17, v13);
  }

  else
  {
    v16[2](v16);
  }

  if (handlerCopy)
  {
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(location);
}

void __61__TIAssistantSettings_connectForOperations_withErrorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
  if (_assistantTestBlock)
  {
    (*(_assistantTestBlock + 16))();
  }
}

uint64_t __61__TIAssistantSettings_connectForOperations_withErrorHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __61__TIAssistantSettings_connectForOperations_withErrorHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_SSentAnAssista.isa, "+[TIAssistantSettings connectForOperations:withErrorHandler:]_block_invoke_3", a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)setTestBlock:(id)block
{
  _assistantTestBlock = [block copy];

  MEMORY[0x1EEE66BB8]();
}

@end