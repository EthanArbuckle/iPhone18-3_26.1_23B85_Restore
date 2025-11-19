@interface BYXPCActivityRegistrar
+ (id)sharedInstance;
- (void)registerActivityWithIdentifier:(const char *)a3 criteria:(id)a4 handler:(id)a5;
- (void)unregisterActivityWithIdentifier:(const char *)a3;
@end

@implementation BYXPCActivityRegistrar

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BYXPCActivityRegistrar sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __40__BYXPCActivityRegistrar_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(BYXPCActivityRegistrar);

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerActivityWithIdentifier:(const char *)a3 criteria:(id)a4 handler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = a3;
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Registering activity: %s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__BYXPCActivityRegistrar_registerActivityWithIdentifier_criteria_handler___block_invoke;
  v12[3] = &unk_1E7D028C8;
  v13 = v7;
  v14 = a3;
  v10 = v7;
  xpc_activity_register(a3, v8, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __74__BYXPCActivityRegistrar_registerActivityWithIdentifier_criteria_handler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Running activity handler: %s", &v8, 0xCu);
  }

  v6 = [BYXPCActivity activityWithXPCActivity:v3];

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivityWithIdentifier:(const char *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = a3;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Unregistering activity: %s", &v6, 0xCu);
  }

  xpc_activity_unregister(a3);
  v5 = *MEMORY[0x1E69E9840];
}

@end