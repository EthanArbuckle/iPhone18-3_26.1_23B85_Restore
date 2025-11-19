@interface KTStatus
- (KTStatus)initWithApplication:(id)a3;
- (id)status:(id *)a3;
- (void)errorForFailedEvent:(id)a3 completionBlock:(id)a4;
- (void)errorsForFailedEvents:(id)a3 completionBlock:(id)a4;
- (void)getCurrentStatus:(id)a3;
- (void)getSelfStatus:(id)a3;
- (void)getStatus:(id)a3;
- (void)ignoreFailedEvent:(id)a3 completionBlock:(id)a4;
- (void)ignoreFailedEvents:(id)a3 completionBlock:(id)a4;
@end

@implementation KTStatus

- (KTStatus)initWithApplication:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [TransparencyApplication applicationValueForIdentifier:v5];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = KTStatus;
    v7 = [(KTStatus *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_applicationIdentifier, a3);
      v9 = [[TransparencyApplication alloc] initWithIdentifier:v8->_applicationIdentifier];
      application = v8->_application;
      v8->_application = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      [KTStatus initWithApplication:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Unknown application identifier: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __32__KTStatus_initWithApplication___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getCurrentStatus:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__KTStatus_getCurrentStatus___block_invoke;
  v6[3] = &unk_1E8701710;
  v7 = v4;
  v5 = v4;
  [(KTStatus *)self getStatus:v6];
}

void __29__KTStatus_getCurrentStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v6 optInState];
  v8 = [v6 recentFailedEventIds];

  (*(v4 + 16))(v4, v7, v8, v5);
}

- (id)status:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __19__KTStatus_status___block_invoke;
  v9[3] = &unk_1E8701760;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = &v16;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __19__KTStatus_status___block_invoke_3;
  v8[3] = &unk_1E8701788;
  v8[4] = &v10;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v9 errorHandler:v8];
  if (!v17[5] && v11[5])
  {
    v4 = [TransparencyError errorWithDomain:@"TransparencyErrorInterface" code:-386 description:@"status failed without status and no error"];
    v5 = v11[5];
    v11[5] = v4;
  }

  if (a3)
  {
    *a3 = v11[5];
  }

  v6 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __19__KTStatus_status___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    v8 = [*(a1 + 32) applicationIdentifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __19__KTStatus_status___block_invoke_2;
    v9[3] = &unk_1E8701738;
    v10 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    [v5 getStatus:v8 completionBlock:v9];
  }
}

void __19__KTStatus_status___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __19__KTStatus_status___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __19__KTStatus_status___block_invoke_3_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getCurrentStatus error: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __19__KTStatus_status___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getStatus:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __22__KTStatus_getStatus___block_invoke;
  v8[3] = &unk_1E8701530;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __22__KTStatus_getStatus___block_invoke_267;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v8 errorHandler:v6];
}

void __22__KTStatus_getStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __22__KTStatus_getStatus___block_invoke_cold_2();
    }

    v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v15, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __22__KTStatus_getStatus___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 applicationIdentifier];
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending asynchronous get KT status for %{public}@", &v15, 0xCu);
    }

    v12 = [*(a1 + 32) applicationIdentifier];
    [v5 getStatus:v12 completionBlock:*(a1 + 40)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __22__KTStatus_getStatus___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __22__KTStatus_getStatus___block_invoke_264()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __22__KTStatus_getStatus___block_invoke_267(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __22__KTStatus_getStatus___block_invoke_267_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getCurrentStatus error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __22__KTStatus_getStatus___block_invoke_2_268()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getSelfStatus:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__KTStatus_getSelfStatus___block_invoke;
  v8[3] = &unk_1E8701530;
  v8[4] = self;
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__KTStatus_getSelfStatus___block_invoke_276;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v8 errorHandler:v6];
}

void __26__KTStatus_getSelfStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __26__KTStatus_getSelfStatus___block_invoke_cold_2();
    }

    v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v15, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __26__KTStatus_getSelfStatus___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 applicationIdentifier];
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_INFO, "Sending asynchronous get KT status for %{public}@", &v15, 0xCu);
    }

    v12 = [*(a1 + 32) applicationIdentifier];
    [v5 getSelfStatus:v12 completionBlock:*(a1 + 40)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __26__KTStatus_getSelfStatus___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __26__KTStatus_getSelfStatus___block_invoke_273()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __26__KTStatus_getSelfStatus___block_invoke_276(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __26__KTStatus_getSelfStatus___block_invoke_276_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown getCurrentStatus error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __26__KTStatus_getSelfStatus___block_invoke_2_277()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)errorForFailedEvent:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke;
  v11[3] = &unk_1E8701530;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_2_287;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_cold_2();
    }

    v11 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous error lookup for %@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_285;
    v13[3] = &unk_1E87015F0;
    v14 = *(a1 + 40);
    [v5 errorsForFailedEvents:v10 completionBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_282()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_285(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v7)
  {
    (*(v8 + 16))(v8, a2, v7);
  }

  else if (v10)
  {
    v9 = [v10 objectAtIndexedSubscript:0];
    (*(v8 + 16))(v8, a2, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a2, 0);
  }
}

void __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_2_287(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_2_287_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown errorForFailedEvent error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __48__KTStatus_errorForFailedEvent_completionBlock___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)errorsForFailedEvents:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke;
  v11[3] = &unk_1E8701530;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_295;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_cold_2();
    }

    v10 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v12, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous error lookup for %@", &v12, 0xCu);
    }

    [v5 errorsForFailedEvents:*(a1 + 32) completionBlock:*(a1 + 40)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_292()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_295(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_295_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown errorForFailedEvent error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __50__KTStatus_errorsForFailedEvents_completionBlock___block_invoke_2_296()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)ignoreFailedEvent:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke;
  v11[3] = &unk_1E8701530;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_304;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_cold_2();
    }

    v11 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous ignore error for %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [v5 ignoreFailedEvents:v10 completionBlock:*(a1 + 40)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_301()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_304(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_304_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __46__KTStatus_ignoreFailedEvent_completionBlock___block_invoke_2_305()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)ignoreFailedEvents:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke;
  v11[3] = &unk_1E8701530;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_313;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_cold_2();
    }

    v10 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v12, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
    {
      __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous ignore error for %@", &v12, 0xCu);
    }

    [v5 ignoreFailedEvents:*(a1 + 32) completionBlock:*(a1 + 40)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_310()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_313(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_4 != -1)
  {
    __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_313_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_4;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown invokeXPCAsynchronousCallWithBlock error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __47__KTStatus_ignoreFailedEvents_completionBlock___block_invoke_2_314()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_4 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end