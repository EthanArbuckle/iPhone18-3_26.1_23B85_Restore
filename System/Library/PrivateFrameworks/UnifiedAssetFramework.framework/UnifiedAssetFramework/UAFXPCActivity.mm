@interface UAFXPCActivity
+ (void)maintenanceTaskWithCompletion:(id)completion;
+ (void)registerOnBootUAFActivityWithLockAssertion:(BOOL)assertion;
@end

@implementation UAFXPCActivity

+ (void)maintenanceTaskWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[UAFXPCActivity maintenanceTaskWithCompletion:]";
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Starting maintenance task", &v14, 0xCu);
  }

  v5 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[UAFXPCActivity maintenanceTaskWithCompletion:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Allowing removal of assets", &v14, 0xCu);
  }

  v6 = +[UAFSubscriptionStoreManager writeManager];
  [v6 setSystemConfigurationForKey:@"NoRemove" withValue:@"0"];

  v7 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[UAFXPCActivity maintenanceTaskWithCompletion:]";
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Updating subscriptions", &v14, 0xCu);
  }

  v8 = +[UAFSubscriptionStoreManager writeManager];
  [v8 expireSubscriptions];

  v9 = +[UAFSubscriptionStoreManager writeManager];
  v10 = +[UAFConfigurationManager defaultManager];
  [UAFAssetSetManager configureAssetDelivery:v9 configurationManager:v10];

  v11 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[UAFXPCActivity maintenanceTaskWithCompletion:]";
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s XPC: Done triggering UAF subscription maintenance", &v14, 0xCu);
  }

  +[UAFInstrumentationProvider logAvailableAssetDailyStatus];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v12 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[UAFXPCActivity maintenanceTaskWithCompletion:]";
    _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s Maintenance task complete", &v14, 0xCu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)registerOnBootUAFActivityWithLockAssertion:(BOOL)assertion
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9C50];
  v5 = UAFGetLogCategory(&UAFLogContextXPCActivity);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "_RegisterOnBootUAFActivity";
    _os_log_debug_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEBUG, "%s XPC: Registering the On Boot UAF XPC Activity", &v8, 0xCu);
  }

  *&v8 = MEMORY[0x1E69E9820];
  *(&v8 + 1) = 3221225472;
  v9 = ___RegisterOnBootUAFActivity_block_invoke_2;
  v10 = &__block_descriptor_33_e42_v24__0__NSObject_OS_xpc_object__8___v___16l;
  assertionCopy = assertion;
  v6 = MEMORY[0x1BFB33950](&v8);
  _RegisterXPCActivity("com.apple.siri.xpc_activity.uaf-on-boot", v4, &__block_literal_global, v6);

  v7 = *MEMORY[0x1E69E9840];
}

@end