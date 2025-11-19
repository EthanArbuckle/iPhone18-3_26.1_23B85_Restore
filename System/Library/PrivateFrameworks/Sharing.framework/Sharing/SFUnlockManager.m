@interface SFUnlockManager
+ (id)sharedUnlockManager;
- (SFUnlockManager)init;
- (id)timerWithBlock:(id)a3;
- (void)cancelStateRequestTimer;
- (void)disableUnlockWithDevice:(id)a3;
- (void)enableUnlockWithDevice:(id)a3 fromKey:(BOOL)a4 withPasscode:(id)a5 completionHandler:(id)a6;
- (void)establishStashBagWithCompletionHandler:(id)a3;
- (void)establishStashBagWithManifest:(id)a3 completionHandler:(id)a4;
- (void)unlockEnabledWithDevice:(id)a3 completionHandler:(id)a4;
- (void)unlockStateForDevice:(id)a3 completionHandler:(id)a4;
@end

@implementation SFUnlockManager

+ (id)sharedUnlockManager
{
  if (sharedUnlockManager_onceToken != -1)
  {
    +[SFUnlockManager sharedUnlockManager];
  }

  v3 = sharedUnlockManager_manager;

  return v3;
}

void __38__SFUnlockManager_sharedUnlockManager__block_invoke()
{
  v0 = objc_alloc_init(SFUnlockManager);
  v1 = sharedUnlockManager_manager;
  sharedUnlockManager_manager = v0;
}

- (SFUnlockManager)init
{
  v8.receiver = self;
  v8.super_class = SFUnlockManager;
  v2 = [(SFUnlockManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    stateRequestTimer = v2->_stateRequestTimer;
    v2->_stateRequestTimer = 0;

    v5 = dispatch_queue_create("com.apple.sharing.sfunlock.delegate-queue", 0);
    delegateQueue = v3->_delegateQueue;
    v3->_delegateQueue = v5;
  }

  return v3;
}

- (void)enableUnlockWithDevice:(id)a3 fromKey:(BOOL)a4 withPasscode:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = +[SFCompanionXPCManager sharedManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke;
    v14[3] = &unk_1E788C148;
    v14[4] = self;
    v17 = v12;
    v15 = v10;
    v18 = a4;
    v16 = v11;
    [v13 unlockManagerWithCompletionHandler:v14];
  }
}

void __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_2;
    v17[3] = &unk_1E788BF88;
    v17[4] = *(a1 + 32);
    v18 = *(a1 + 56);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v17];
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_4;
    v15[3] = &unk_1E788C120;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 56);
    [v6 enableUnlockWithDevice:v8 fromKey:v7 withPasscode:v9 completionHandler:v15];

    v10 = v18;
  }

  else
  {
    v11 = *(*(a1 + 32) + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_6;
    v12[3] = &unk_1E788B318;
    v14 = *(a1 + 56);
    v13 = v5;
    dispatch_async(v11, v12);

    v10 = v14;
  }
}

void __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_3;
  v7[3] = &unk_1E788B318;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SFUnlockManager_enableUnlockWithDevice_fromKey_withPasscode_completionHandler___block_invoke_5;
  block[3] = &unk_1E788C0F8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)disableUnlockWithDevice:(id)a3
{
  v3 = a3;
  v4 = +[SFCompanionXPCManager sharedManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__SFUnlockManager_disableUnlockWithDevice___block_invoke;
  v6[3] = &unk_1E788BE50;
  v7 = v3;
  v5 = v3;
  [v4 unlockManagerWithCompletionHandler:v6];
}

void __43__SFUnlockManager_disableUnlockWithDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_134];
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__SFUnlockManager_disableUnlockWithDevice___block_invoke_135;
    v9[3] = &unk_1E788C170;
    v10 = v7;
    [v6 disableUnlockWithDevice:v10 completionHandler:v9];
  }

  else
  {
    v6 = auto_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Error retrieving connection proxy = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __43__SFUnlockManager_disableUnlockWithDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Disabling unlock failed: XPC connection error = %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __43__SFUnlockManager_disableUnlockWithDevice___block_invoke_135(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = auto_unlock_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = @"NO";
    v10 = 138412802;
    if (a2)
    {
      v9 = @"YES";
    }

    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEBUG, "Disabled unlock with device = %@, success = %@, error = %@", &v10, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)unlockEnabledWithDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = +[SFCompanionXPCManager sharedManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke;
    v9[3] = &unk_1E788C198;
    v9[4] = self;
    v11 = v7;
    v10 = v6;
    [v8 unlockManagerWithCompletionHandler:v9];
  }
}

void __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_2;
    v15[3] = &unk_1E788BF88;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_4;
    v13[3] = &unk_1E788C120;
    v7 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    [v6 unlockEnabledWithDevice:v7 completionHandler:v13];

    v8 = v16;
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_6;
    v10[3] = &unk_1E788B318;
    v12 = *(a1 + 48);
    v11 = v5;
    dispatch_async(v9, v10);

    v8 = v12;
  }
}

void __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_3;
  v7[3] = &unk_1E788B318;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SFUnlockManager_unlockEnabledWithDevice_completionHandler___block_invoke_5;
  block[3] = &unk_1E788C0F8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)establishStashBagWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[SFCompanionXPCManager sharedManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E788BFD8;
    v6[4] = self;
    v7 = v4;
    [v5 unlockManagerWithCompletionHandler:v6];
  }
}

void __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E788BF88;
    v6 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_4;
    v14[3] = &unk_1E788C120;
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v8;
    [v7 establishStashBagWithCompletionHandler:v14];

    v9 = v17;
  }

  else
  {
    v10 = *(*(a1 + 32) + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_6;
    v11[3] = &unk_1E788B318;
    v13 = *(a1 + 40);
    v12 = v5;
    dispatch_async(v10, v11);

    v9 = v13;
  }
}

void __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E788B318;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SFUnlockManager_establishStashBagWithCompletionHandler___block_invoke_5;
  block[3] = &unk_1E788C0F8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)establishStashBagWithManifest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = +[SFCompanionXPCManager sharedManager];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_2;
      v13[3] = &unk_1E788C198;
      v13[4] = self;
      v15 = v7;
      v14 = v6;
      [v8 unlockManagerWithCompletionHandler:v13];

      v9 = v15;
    }

    else
    {
      v11 = auto_unlock_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "establishStashBagWithManifest: Missing manifest data handler", buf, 2u);
      }

      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke;
      block[3] = &unk_1E788B1C0;
      v17 = v7;
      dispatch_async(delegateQueue, block);
      v9 = v17;
    }
  }

  else
  {
    v10 = auto_unlock_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "establishStashBagWithManifest: Missing completion handler", buf, 2u);
    }
  }
}

void __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Missing manifest data handler";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"SFUnlockErrorDomian" code:112 userInfo:v3];
  (*(v1 + 16))(v1, 0, v4);

  v5 = *MEMORY[0x1E69E9840];
}

void __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_3;
    v15[3] = &unk_1E788BF88;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_5;
    v13[3] = &unk_1E788C120;
    v7 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    [v6 establishStashBagWithManifest:v7 completionHandler:v13];

    v8 = v16;
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_7;
    v10[3] = &unk_1E788B318;
    v12 = *(a1 + 48);
    v11 = v5;
    dispatch_async(v9, v10);

    v8 = v12;
  }
}

void __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_4;
  v7[3] = &unk_1E788B318;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFUnlockManager_establishStashBagWithManifest_completionHandler___block_invoke_6;
  block[3] = &unk_1E788C0F8;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)unlockStateForDevice:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke;
    v16[3] = &unk_1E788B318;
    v9 = v7;
    v16[4] = self;
    v17 = v9;
    v10 = [(SFUnlockManager *)self timerWithBlock:v16];
    stateRequestTimer = self->_stateRequestTimer;
    self->_stateRequestTimer = v10;

    dispatch_resume(self->_stateRequestTimer);
    v12 = +[SFCompanionXPCManager sharedManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_2;
    v13[3] = &unk_1E788C198;
    v13[4] = self;
    v15 = v9;
    v14 = v6;
    [v12 unlockManagerWithCompletionHandler:v13];
  }
}

uint64_t __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"sharingd never responded";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"SFUnlockErrorDomian" code:113 userInfo:v4];
  (*(v2 + 16))(v2, 0, v5);

  result = [*(a1 + 32) cancelStateRequestTimer];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_3;
    v18[3] = &unk_1E788BF88;
    v18[4] = *(a1 + 32);
    v19 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_5;
    v16[3] = &unk_1E788C210;
    v7 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = *(a1 + 48);
    [v6 unlockStateForDevice:v7 completionHandler:v16];

    v8 = v19;
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_7;
    block[3] = &unk_1E788C1C0;
    v15 = *(a1 + 48);
    v10 = v5;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    dispatch_async(v9, block);

    v8 = v15;
  }
}

void __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_4;
  block[3] = &unk_1E788C1C0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_4(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 cancelStateRequestTimer];
}

void __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_6;
  v11[3] = &unk_1E788C1E8;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_6(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[6];

  return [v4 cancelStateRequestTimer];
}

uint64_t __58__SFUnlockManager_unlockStateForDevice_completionHandler___block_invoke_7(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 cancelStateRequestTimer];
}

- (id)timerWithBlock:(id)a3
{
  delegateQueue = self->_delegateQueue;
  v4 = a3;
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, delegateQueue);
  v6 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(v5, v4);

  return v5;
}

- (void)cancelStateRequestTimer
{
  stateRequestTimer = self->_stateRequestTimer;
  if (stateRequestTimer)
  {
    dispatch_source_cancel(stateRequestTimer);
    v4 = self->_stateRequestTimer;
    self->_stateRequestTimer = 0;
  }
}

@end