@interface AutoLinkUpgradeHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (int)read:(id)read returnedValues:(id)values;
@end

@implementation AutoLinkUpgradeHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__AutoLinkUpgradeHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_42 != -1)
  {
    dispatch_once(&sharedInstance_pred_42, block);
  }

  v2 = sharedInstance_sharedInstance_44;

  return v2;
}

void __40__AutoLinkUpgradeHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_44;
  sharedInstance_sharedInstance_44 = v1;

  v3 = sharedInstance_sharedInstance_44;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[AutoLinkUpgradeHandler sharedInstance];
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

@end