@interface KTPeerOverrides
+ (id)listPeerOverrides;
+ (void)clearPeerOverride:(id)override application:(id)application;
+ (void)setPeerOverride:(id)override application:(id)application state:(id)state;
@end

@implementation KTPeerOverrides

+ (void)setPeerOverride:(id)override application:(id)application state:(id)state
{
  overrideCopy = override;
  applicationCopy = application;
  stateCopy = state;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__KTPeerOverrides_setPeerOverride_application_state___block_invoke;
  v13[3] = &unk_1E8701168;
  v14 = overrideCopy;
  v15 = applicationCopy;
  v16 = stateCopy;
  v10 = stateCopy;
  v11 = applicationCopy;
  v12 = overrideCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v13 errorHandler:&__block_literal_global];
}

void __53__KTPeerOverrides_setPeerOverride_application_state___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK != -1)
  {
    __53__KTPeerOverrides_setPeerOverride_application_state___block_invoke_2_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "setPeerOverride error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __53__KTPeerOverrides_setPeerOverride_application_state___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (void)clearPeerOverride:(id)override application:(id)application
{
  overrideCopy = override;
  applicationCopy = application;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__KTPeerOverrides_clearPeerOverride_application___block_invoke;
  v9[3] = &unk_1E87011D0;
  v10 = overrideCopy;
  v11 = applicationCopy;
  v7 = applicationCopy;
  v8 = overrideCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v9 errorHandler:&__block_literal_global_34];
}

void __49__KTPeerOverrides_clearPeerOverride_application___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK != -1)
  {
    __49__KTPeerOverrides_clearPeerOverride_application___block_invoke_2_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "clearPeerOverride error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __49__KTPeerOverrides_clearPeerOverride_application___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)listPeerOverrides
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__KTPeerOverrides_listPeerOverrides__block_invoke;
  v4[3] = &unk_1E8701220;
  v4[4] = &v5;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v4 errorHandler:&__block_literal_global_39];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __36__KTPeerOverrides_listPeerOverrides__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__KTPeerOverrides_listPeerOverrides__block_invoke_2;
  v3[3] = &unk_1E87011F8;
  v3[4] = *(a1 + 32);
  return [a2 listPeerOverrides:v3];
}

void __36__KTPeerOverrides_listPeerOverrides__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK != -1)
  {
    __36__KTPeerOverrides_listPeerOverrides__block_invoke_3_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "listPeerOverrides error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __36__KTPeerOverrides_listPeerOverrides__block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end