@interface REMDataAccessBehaviorManager
- (BOOL)_getBoolForKey:(id)key withDefaultValue:(BOOL)value;
- (REMDataAccessBehaviorManager)init;
- (REMDataAccessBehaviorManager)initWithDaemonController:(id)controller;
- (id)_debugPerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)fetchStatusReportsWithError:(id *)error;
- (int64_t)_getIntegerForKey:(id)key withDefaultValue:(int64_t)value;
- (void)_crashDaemonWithMessage:(id)message;
- (void)_setIntegerValue:(int64_t)value forBehaviorKey:(id)key;
- (void)applyChangeTrackingBehavior:(int64_t)behavior;
- (void)disableBabySitter;
- (void)disableDataAccess;
- (void)enableBabySitter;
- (void)enableDataAccess;
- (void)unapplyChangeTrackingBehavior:(int64_t)behavior;
@end

@implementation REMDataAccessBehaviorManager

- (REMDataAccessBehaviorManager)init
{
  v3 = +[REMXPCDaemonController weakSharedInstance];
  v4 = [(REMDataAccessBehaviorManager *)self initWithDaemonController:v3];

  return v4;
}

- (REMDataAccessBehaviorManager)initWithDaemonController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = REMDataAccessBehaviorManager;
  v6 = [(REMDataAccessBehaviorManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonController, controller);
  }

  return v7;
}

- (id)fetchStatusReportsWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__11;
  v19 = __Block_byref_object_dispose__11;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke;
  v8[3] = &unk_1E7507AE0;
  v8[4] = &v9;
  v4 = [(REMDataAccessBehaviorManager *)self _debugPerformerWithReason:@"DA_statusReports" errorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke_2;
  v7[3] = &unk_1E7508368;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 dataAccessStatusReports:v7];
  if (error)
  {
    *error = v10[5];
  }

  v5 = v16[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog dataAccess];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[REMLog dataAccess];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke_2_cold_1();
    }

    v9 = 40;
  }

  else
  {
    v9 = 32;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
}

- (void)enableDataAccess
{
  [(REMDataAccessBehaviorManager *)self _setBoolValue:1 forBehaviorKey:@"DataAccessEnabled"];

  [(REMDataAccessBehaviorManager *)self _crashDaemonWithMessage:@"Enable DataAccess"];
}

- (void)disableDataAccess
{
  [(REMDataAccessBehaviorManager *)self _setBoolValue:0 forBehaviorKey:@"DataAccessEnabled"];

  [(REMDataAccessBehaviorManager *)self _crashDaemonWithMessage:@"Disable DataAccess"];
}

- (void)enableBabySitter
{
  [(REMDataAccessBehaviorManager *)self _setBoolValue:1 forBehaviorKey:@"BabysitterEnabled"];

  [(REMDataAccessBehaviorManager *)self _crashDaemonWithMessage:@"Enable Babysitter"];
}

- (void)disableBabySitter
{
  [(REMDataAccessBehaviorManager *)self _setBoolValue:0 forBehaviorKey:@"BabysitterEnabled"];

  [(REMDataAccessBehaviorManager *)self _crashDaemonWithMessage:@"Disable Babysitter"];
}

- (void)applyChangeTrackingBehavior:(int64_t)behavior
{
  [(REMDataAccessBehaviorManager *)self _setIntegerValue:[(REMDataAccessBehaviorManager *)self changeTrackingBehaviors]| behavior forBehaviorKey:@"DADREMChangeTrackingBehaviors"];

  notify_post("com.apple.dataaccess.BehaviorOptionsChanged");
}

- (void)unapplyChangeTrackingBehavior:(int64_t)behavior
{
  [(REMDataAccessBehaviorManager *)self _setIntegerValue:[(REMDataAccessBehaviorManager *)self changeTrackingBehaviors]& ~behavior forBehaviorKey:@"DADREMChangeTrackingBehaviors"];

  notify_post("com.apple.dataaccess.BehaviorOptionsChanged");
}

- (BOOL)_getBoolForKey:(id)key withDefaultValue:(BOOL)value
{
  keyCopy = key;
  v6 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
  if (v6)
  {
    v7 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v8 = [v7 objectForKeyedSubscript:keyCopy];
    if (objc_opt_respondsToSelector())
    {
      value = [v8 BOOLValue];
    }
  }

  return value;
}

- (void)_setIntegerValue:(int64_t)value forBehaviorKey:(id)key
{
  keyCopy = key;
  v6 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
  v10 = v6;
  if (v6)
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = v7;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  [v8 setObject:v9 forKeyedSubscript:keyCopy];

  CFPreferencesSetAppValue(@"BehaviorOptions", v8, @"com.apple.DataAccess.BehaviorOptions");
}

- (int64_t)_getIntegerForKey:(id)key withDefaultValue:(int64_t)value
{
  keyCopy = key;
  v6 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
  if (v6)
  {
    v7 = CFPreferencesCopyAppValue(@"BehaviorOptions", @"com.apple.DataAccess.BehaviorOptions");
    v8 = [v7 objectForKeyedSubscript:keyCopy];
    if (objc_opt_respondsToSelector())
    {
      value = [v8 integerValue];
    }
  }

  return value;
}

- (void)_crashDaemonWithMessage:(id)message
{
  messageCopy = message;
  v5 = [(REMDataAccessBehaviorManager *)self _debugPerformerWithReason:@"DA_crashDaemon" errorHandler:&__block_literal_global_33];
  [v5 crashDaemonWithMessage:messageCopy];
}

void __56__REMDataAccessBehaviorManager__crashDaemonWithMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLog dataAccess];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__REMDataAccessBehaviorManager__crashDaemonWithMessage___block_invoke_cold_1();
  }
}

- (id)_debugPerformerWithReason:(id)reason errorHandler:(id)handler
{
  handlerCopy = handler;
  reasonCopy = reason;
  daemonController = [(REMDataAccessBehaviorManager *)self daemonController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__REMDataAccessBehaviorManager__debugPerformerWithReason_errorHandler___block_invoke;
  v12[3] = &unk_1E7507CE0;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [daemonController syncDebugPerformerWithReason:reasonCopy errorHandler:v12];

  return v10;
}

void __71__REMDataAccessBehaviorManager__debugPerformerWithReason_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog dataAccess];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__REMDataAccessBehaviorManager__debugPerformerWithReason_errorHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while fetching status reports {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__REMDataAccessBehaviorManager_fetchStatusReportsWithError___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Error getting DataAccess status reports {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__REMDataAccessBehaviorManager__crashDaemonWithMessage___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "xpc error while trying to carsh daemon {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__REMDataAccessBehaviorManager__debugPerformerWithReason_errorHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "xpc error while using xpcPerformer {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end