@interface UIKeyboardMediaServiceWarmUpConnection
@end

@implementation UIKeyboardMediaServiceWarmUpConnection

void __59___UIKeyboardMediaServiceWarmUpConnection_sharedConnection__block_invoke()
{
  v0 = objc_alloc_init(_UIKeyboardMediaServiceWarmUpConnection);
  v1 = _MergedGlobals_1312;
  _MergedGlobals_1312 = v0;
}

void __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 8))
  {
    v6[0] = *MEMORY[0x1E699F8D8];
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:{+[UIApplication _classicMode](UIApplication, "_classicMode")}];
    v6[1] = *MEMORY[0x1E699F8E8];
    v7[0] = v2;
    v7[1] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

    v4 = objc_alloc_init(MEMORY[0x1E699FCA0]);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_2;
    v5[3] = &unk_1E70FD7F8;
    v5[4] = *(a1 + 32);
    [v4 openApplication:UIKeyboardMediaServiceBundleIdentifier options:v3 withResult:v5];
  }
}

void __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_3;
  v7[3] = &unk_1E70F35B8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.iMessageAppsViewService.warmup-connection" options:0];
    [v2 _setQueue:*(*(a1 + 40) + 16)];
    objc_storeStrong((*(a1 + 40) + 8), v2);
    objc_initWeak(&location, *(a1 + 40));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_4;
    v8[3] = &unk_1E70F3590;
    v3 = v2;
    v9 = v3;
    [*(*(a1 + 40) + 8) setInterruptionHandler:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_5;
    v6[3] = &unk_1E70F5A28;
    objc_copyWeak(&v7, &location);
    [*(*(a1 + 40) + 8) setInvalidationHandler:v6];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016DD10];
    [*(*(a1 + 40) + 8) setRemoteObjectInterface:v4];

    [*(*(a1 + 40) + 8) resume];
    v5 = [*(*(a1 + 40) + 8) remoteObjectProxy];
    [v5 warmUp];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49___UIKeyboardMediaServiceWarmUpConnection_warmUp__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

@end