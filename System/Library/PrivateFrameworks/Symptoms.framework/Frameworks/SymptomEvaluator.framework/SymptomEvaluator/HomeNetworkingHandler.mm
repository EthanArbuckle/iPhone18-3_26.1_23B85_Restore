@interface HomeNetworkingHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
- (int)read:(id)read returnedValues:(id)values;
@end

@implementation HomeNetworkingHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HomeNetworkingHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred != -1)
  {
    dispatch_once(&sharedInstance_pred, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __39__HomeNetworkingHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  v3 = sharedInstance_sharedInstance;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[HomeNetworkingHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (BOOL)noteSymptom:(id)symptom
{
  v11 = *MEMORY[0x277D85DE8];
  eventKey = [symptom eventKey];
  v4 = [SymptomStore keyFromSymptomName:@"com.apple.homed.network-diagnostic"];
  v5 = [eventKey isEqualToString:v4];

  if (v5)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = eventKey;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "NDF: Received homed symptom %@ when NDF is enabled", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

@end