@interface KTAccountKey
+ (id)accountPublicID:(id)d;
+ (id)accountPublicKey:(id)key;
- (KTAccountKey)initWithApplication:(id)application;
- (KTAccountPublicID)accountPublicID;
- (NSData)accountPublicKeyInfo;
- (void)rollKey:(id)key;
- (void)signData:(id)data completionBlock:(id)block;
- (void)signDataCIP:(id)p completionBlock:(id)block;
@end

@implementation KTAccountKey

- (KTAccountKey)initWithApplication:(id)application
{
  v18 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v6 = [TransparencyApplication applicationValueForIdentifier:applicationCopy];

  if (v6)
  {
    v15.receiver = self;
    v15.super_class = KTAccountKey;
    v7 = [(KTAccountKey *)&v15 init];
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
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      [KTAccountKey initWithApplication:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
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

uint64_t __36__KTAccountKey_initWithApplication___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)accountPublicKey:(id)key
{
  keyCopy = key;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__KTAccountKey_accountPublicKey___block_invoke;
  v7[3] = &unk_1E8701440;
  v4 = keyCopy;
  v8 = v4;
  v9 = &v10;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:&__block_literal_global_8];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __33__KTAccountKey_accountPublicKey___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__KTAccountKey_accountPublicKey___block_invoke_2;
  v4[3] = &unk_1E8701418;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 accountKey:v2 complete:v4];
}

void __33__KTAccountKey_accountPublicKey___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __33__KTAccountKey_accountPublicKey___block_invoke_3_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "Failed to get account public key: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __33__KTAccountKey_accountPublicKey___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)accountPublicID:(id)d
{
  v3 = [self accountPublicKey:d];
  if (v3)
  {
    v4 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)accountPublicKeyInfo
{
  _accountPublicKeyInfo = [(KTAccountKey *)self _accountPublicKeyInfo];
  objc_sync_enter(_accountPublicKeyInfo);
  _accountPublicKeyInfo2 = [(KTAccountKey *)self _accountPublicKeyInfo];

  if (_accountPublicKeyInfo2)
  {
    _accountPublicKeyInfo3 = [(KTAccountKey *)self _accountPublicKeyInfo];
    objc_sync_exit(_accountPublicKeyInfo);
  }

  else
  {
    objc_sync_exit(_accountPublicKeyInfo);

    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__0;
    v12 = __Block_byref_object_dispose__0;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__KTAccountKey_accountPublicKeyInfo__block_invoke;
    v7[3] = &unk_1E8701440;
    v7[4] = self;
    v7[5] = &v8;
    [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:&__block_literal_global_24_0];
    _accountPublicKeyInfo3 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return _accountPublicKeyInfo3;
}

void __36__KTAccountKey_accountPublicKeyInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __36__KTAccountKey_accountPublicKeyInfo__block_invoke_cold_2();
    }

    v10 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __36__KTAccountKey_accountPublicKeyInfo__block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending synchronous signData for public key", buf, 2u);
    }

    v9 = [*(a1 + 32) applicationIdentifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__KTAccountKey_accountPublicKeyInfo__block_invoke_17;
    v12[3] = &unk_1E8701468;
    v13 = *(a1 + 32);
    [v5 signData:0 application:v9 completionBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __36__KTAccountKey_accountPublicKeyInfo__block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__KTAccountKey_accountPublicKeyInfo__block_invoke_14()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __36__KTAccountKey_accountPublicKeyInfo__block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v14 = [*(a1 + 32) _accountPublicKeyInfo];
    objc_sync_enter(v14);
    [*(a1 + 32) set_accountPublicKeyInfo:v10];
    objc_sync_exit(v14);
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __36__KTAccountKey_accountPublicKeyInfo__block_invoke_17_cold_1();
    }

    v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "Failed to get account public key: %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __36__KTAccountKey_accountPublicKeyInfo__block_invoke_2_18()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __36__KTAccountKey_accountPublicKeyInfo__block_invoke_22(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __36__KTAccountKey_accountPublicKeyInfo__block_invoke_22_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "Failed to get account public key: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __36__KTAccountKey_accountPublicKeyInfo__block_invoke_2_25()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (KTAccountPublicID)accountPublicID
{
  accountPublicKeyInfo = [(KTAccountKey *)self accountPublicKeyInfo];
  if (accountPublicKeyInfo)
  {
    v3 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:accountPublicKeyInfo error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)signData:(id)data completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__KTAccountKey_signData_completionBlock___block_invoke;
  v8[3] = &unk_1E8701490;
  v9 = blockCopy;
  v7 = blockCopy;
  [(KTAccountKey *)self signDataCIP:data completionBlock:v8];
}

- (void)signDataCIP:(id)p completionBlock:(id)block
{
  pCopy = p;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__KTAccountKey_signDataCIP_completionBlock___block_invoke;
  v12[3] = &unk_1E87014E0;
  selfCopy = self;
  v15 = blockCopy;
  v13 = pCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_2_34;
  v10[3] = &unk_1E87013C8;
  v11 = v15;
  v8 = v15;
  v9 = pCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v12 errorHandler:v10];
}

void __44__KTAccountKey_signDataCIP_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_cold_2();
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous signData", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) applicationIdentifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_33;
    v14[3] = &unk_1E87014B8;
    v11 = *(a1 + 48);
    v14[4] = *(a1 + 40);
    v15 = v11;
    [v5 signData:v9 application:v10 completionBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_30()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_33(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [*(a1 + 32) _accountPublicKeyInfo];
  objc_sync_enter(v12);
  [*(a1 + 32) set_accountPublicKeyInfo:v13];
  objc_sync_exit(v12);

  (*(*(a1 + 40) + 16))();
}

void __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_2_34(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_2_34_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __44__KTAccountKey_signDataCIP_completionBlock___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)rollKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __24__KTAccountKey_rollKey___block_invoke;
  v8[3] = &unk_1E8701530;
  v8[4] = self;
  v9 = keyCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__KTAccountKey_rollKey___block_invoke_49;
  v6[3] = &unk_1E87013C8;
  v7 = v9;
  v5 = v9;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v8 errorHandler:v6];
}

void __24__KTAccountKey_rollKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __24__KTAccountKey_rollKey___block_invoke_cold_2();
    }

    v11 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1E10DB000, v11, OS_LOG_TYPE_ERROR, "Unknown invokeXPCSynchronousCallWithBlock error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __24__KTAccountKey_rollKey___block_invoke_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v8, OS_LOG_TYPE_INFO, "Sending asynchronous rollKey", buf, 2u);
    }

    v9 = [*(a1 + 32) applicationIdentifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __24__KTAccountKey_rollKey___block_invoke_42;
    v13[3] = &unk_1E8701508;
    v10 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v10;
    [v5 rollKeyForApplication:v9 completionBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __24__KTAccountKey_rollKey___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __24__KTAccountKey_rollKey___block_invoke_39()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __24__KTAccountKey_rollKey___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _accountPublicKeyInfo];
    objc_sync_enter(v7);
    [*(a1 + 32) set_accountPublicKeyInfo:v5];
    objc_sync_exit(v7);

    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __24__KTAccountKey_rollKey___block_invoke_42_cold_1();
    }

    v8 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 applicationIdentifier];
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_1E10DB000, v10, OS_LOG_TYPE_DEFAULT, "Successfully rolled account key for %{public}@", &v17, 0xCu);
    }
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
    {
      __24__KTAccountKey_rollKey___block_invoke_42_cold_2();
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 applicationIdentifier];
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1E10DB000, v14, OS_LOG_TYPE_ERROR, "Failed to roll account key for %{public}@: %@", &v17, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __24__KTAccountKey_rollKey___block_invoke_2_43()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __24__KTAccountKey_rollKey___block_invoke_46()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __24__KTAccountKey_rollKey___block_invoke_49(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_1 != -1)
  {
    __24__KTAccountKey_rollKey___block_invoke_49_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "Unknown rollKeyForApplication error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __24__KTAccountKey_rollKey___block_invoke_2_50()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_1 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end