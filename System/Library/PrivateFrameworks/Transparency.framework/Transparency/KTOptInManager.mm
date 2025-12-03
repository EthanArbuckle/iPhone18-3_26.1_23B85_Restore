@interface KTOptInManager
+ (id)notificationKeyForApplication:(id)application;
+ (void)getOptInState:(id)state completion:(id)completion;
- (BOOL)getOptInState;
- (KTOptInManager)initWithApplication:(id)application;
- (void)changeOptInState:(unint64_t)state detailedCompletionBlock:(id)block;
- (void)getOptInState:(BOOL)state completionBlock:(id)block;
- (void)setOptInState:(BOOL)state detailedCompletionBlock:(id)block;
- (void)waitForIDSRegistration:(BOOL)registration complete:(id)complete;
@end

@implementation KTOptInManager

+ (void)getOptInState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v7 = [KTOptInState alloc];
  application = [stateCopy application];
  v9 = [(KTOptInState *)v7 initWithApplication:application];

  [(KTOptInState *)v9 setState:2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __43__KTOptInManager_getOptInState_completion___block_invoke;
  v17[3] = &unk_1E87014E0;
  v20 = completionCopy;
  v18 = v9;
  v19 = stateCopy;
  v10 = stateCopy;
  sync = [v10 sync];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__KTOptInManager_getOptInState_completion___block_invoke_209;
  v14[3] = &unk_1E8701378;
  v15 = v18;
  v16 = v20;
  v12 = v18;
  v13 = v20;
  [TransparencyXPCConnection invokeXPCWithBlock:v17 synchronous:sync errorHandler:v14];
}

void __43__KTOptInManager_getOptInState_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __43__KTOptInManager_getOptInState_completion___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_ERROR, "Unknown invokeXPCWithBlock error: %@", &v11, 0xCu);
    }

    v9 = a1[4];
    (*(a1[6] + 16))();
  }

  else
  {
    [v5 getKTOptInState:a1[5] completion:a1[6]];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __43__KTOptInManager_getOptInState_completion___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __43__KTOptInManager_getOptInState_completion___block_invoke_209(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
  {
    __43__KTOptInManager_getOptInState_completion___block_invoke_209_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "getOptInState error: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __43__KTOptInManager_getOptInState_completion___block_invoke_2_210()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)notificationKeyForApplication:(id)application
{
  applicationCopy = application;
  if ([applicationCopy isEqualToString:@"IDS"])
  {
    v4 = @"com.apple.Transparency.KT.IDS.OptInStateChanged";
  }

  else if ([applicationCopy isEqualToString:@"MP"])
  {
    v4 = @"com.apple.Transparency.KT.MP.OptInStateChanged";
  }

  else if ([applicationCopy isEqualToString:@"FT"])
  {
    v4 = @"com.apple.Transparency.KT.FT.OptInStateChanged";
  }

  else if ([applicationCopy isEqualToString:@"CK"])
  {
    v4 = @"com.apple.Transparency.KT.CK.OptInStateChanged";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (KTOptInManager)initWithApplication:(id)application
{
  v18 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v6 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = KTOptInManager;
    v7 = [(KTOptInManager *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_applicationIdentifier, application);
      v9 = [[TransparencyApplication alloc] initWithIdentifier:v8->_applicationIdentifier];
      application = v8->_application;
      v8->_application = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      [KTOptInManager initWithApplication:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = applicationCopy;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

uint64_t __38__KTOptInManager_initWithApplication___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)getOptInState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__KTOptInManager_getOptInState__block_invoke;
  v4[3] = &unk_1E8701440;
  v4[4] = self;
  v4[5] = &v5;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v4 errorHandler:&__block_literal_global_231];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __31__KTOptInManager_getOptInState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __31__KTOptInManager_getOptInState__block_invoke_cold_2();
    }

    v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __31__KTOptInManager_getOptInState__block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 applicationIdentifier];
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending synchronous opt-in state fetch for %{public}@", buf, 0xCu);
    }

    v12 = [KTOptInStateRequest alloc];
    v13 = [*(a1 + 32) applicationIdentifier];
    v14 = [(KTOptInStateRequest *)v12 initWithApplication:v13];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __31__KTOptInManager_getOptInState__block_invoke_224;
    v17[3] = &unk_1E8701578;
    v18 = *(a1 + 32);
    [v5 getKTOptInState:v14 completion:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __31__KTOptInManager_getOptInState__block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __31__KTOptInManager_getOptInState__block_invoke_220()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __31__KTOptInManager_getOptInState__block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __31__KTOptInManager_getOptInState__block_invoke_224_cold_1();
    }

    v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 applicationIdentifier];
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_ERROR, "opt-in state fetch for %{public}@ failed: %@", &v12, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [v5 state] == 1;
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __31__KTOptInManager_getOptInState__block_invoke_2_225()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __31__KTOptInManager_getOptInState__block_invoke_229(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
  {
    __31__KTOptInManager_getOptInState__block_invoke_229_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "Unknown getOptInState error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __31__KTOptInManager_getOptInState__block_invoke_2_232()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOptInState:(BOOL)state completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__KTOptInManager_getOptInState_completionBlock___block_invoke;
  v10[3] = &unk_1E87015C8;
  v10[4] = self;
  v11 = blockCopy;
  stateCopy = state;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__KTOptInManager_getOptInState_completionBlock___block_invoke_2_241;
  v8[3] = &unk_1E87013C8;
  v9 = v11;
  v7 = v11;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v10 errorHandler:v8];
}

void __48__KTOptInManager_getOptInState_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __48__KTOptInManager_getOptInState_completionBlock___block_invoke_cold_2();
    }

    v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __48__KTOptInManager_getOptInState_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 applicationIdentifier];
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending asynchronous opt-in state fetch for %{public}@", buf, 0xCu);
    }

    v12 = [KTOptInStateRequest alloc];
    v13 = [*(a1 + 32) applicationIdentifier];
    v14 = [(KTOptInStateRequest *)v12 initWithApplication:v13];

    [(KTOptInStateRequest *)v14 setFetchCloudKit:*(a1 + 48)];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__KTOptInManager_getOptInState_completionBlock___block_invoke_240;
    v17[3] = &unk_1E87015A0;
    v18 = *(a1 + 40);
    [v5 getKTOptInState:v14 completion:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __48__KTOptInManager_getOptInState_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__KTOptInManager_getOptInState_completionBlock___block_invoke_237()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __48__KTOptInManager_getOptInState_completionBlock___block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 state] == 1;
  v8 = *(a1 + 32);
  v9 = [v6 smtTimestamp];

  (*(v8 + 16))(v8, v7, v9, v5);
}

- (void)waitForIDSRegistration:(BOOL)registration complete:(id)complete
{
  completeCopy = complete;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke;
  v9[3] = &unk_1E8701618;
  v10 = completeCopy;
  registrationCopy = registration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke_245;
  v7[3] = &unk_1E87013C8;
  v8 = v10;
  v6 = v10;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v9 errorHandler:v7];
}

void __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [v5 waitForIDSRegistration:*(a1 + 40) complete:*(a1 + 32)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke_245(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
  {
    __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke_245_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown checkIDSRegistration error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __50__KTOptInManager_waitForIDSRegistration_complete___block_invoke_2_246()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)setOptInState:(BOOL)state detailedCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke;
  block[3] = &unk_1E8701640;
  stateCopy = state;
  block[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(v7, block);
}

void __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E87015C8;
  v2 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_254;
  v3[3] = &unk_1E87013C8;
  v4 = *(a1 + 40);
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v5 errorHandler:v3];
}

void __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_2_cold_2();
    }

    v14 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1E10DB000, v14, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", &v16, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 48);
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_2_cold_1();
    }

    v9 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 applicationIdentifier];
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_INFO, "Sending synchronous opt-in state set for %{public}@", &v16, 0xCu);
    }

    v13 = [*(a1 + 32) applicationIdentifier];
    [v5 changeOptInState:v8 application:v13 completionBlock:*(a1 + 40)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_251()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_254(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
  {
    __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_254_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown setKTOptInState error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __56__KTOptInManager_setOptInState_detailedCompletionBlock___block_invoke_2_255()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)changeOptInState:(unint64_t)state detailedCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke;
  block[3] = &unk_1E8701690;
  block[4] = self;
  v10 = blockCopy;
  stateCopy = state;
  v8 = blockCopy;
  dispatch_async(v7, block);
}

void __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E8701668;
  v2 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v2;
  v7 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_263;
  v3[3] = &unk_1E87013C8;
  v4 = *(a1 + 40);
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v5 errorHandler:v3];
}

void __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_2_cold_2();
    }

    v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", &v17, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
    {
      __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_2_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 applicationIdentifier];
      v12 = *(a1 + 48);
      v17 = 138543618;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending synchronous opt-in state set for %{public}@: %d", &v17, 0x12u);
    }

    v13 = *(a1 + 48);
    v14 = [*(a1 + 32) applicationIdentifier];
    [v5 changeOptInState:v13 application:v14 completionBlock:*(a1 + 40)];
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_260()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_263(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_3 != -1)
  {
    __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_263_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_3;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown changeOptInState error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __59__KTOptInManager_changeOptInState_detailedCompletionBlock___block_invoke_2_264()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_3 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end