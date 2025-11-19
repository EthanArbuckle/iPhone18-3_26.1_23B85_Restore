@interface BackgroundNetworkingTriggerHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)a3;
- (NSString)description;
@end

@implementation BackgroundNetworkingTriggerHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BackgroundNetworkingTriggerHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_45 != -1)
  {
    dispatch_once(&sharedInstance_pred_45, block);
  }

  v2 = sharedInstance_sharedInstance_47;

  return v2;
}

void __52__BackgroundNetworkingTriggerHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_47;
  sharedInstance_sharedInstance_47 = v1;

  v3 = sharedInstance_sharedInstance_47;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ at %p", v5, self];

  return v6;
}

- (BOOL)noteSymptom:(id)a3
{
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Clear any former com.apple.symptoms.discretionary.tasks.suspended symptom", v5, 2u);
  }

  [SymptomStore resetSymptomsWithKey:@"com.apple.symptoms.discretionary.tasks.suspended"];
  return 0;
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[BackgroundNetworkingTriggerHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

@end