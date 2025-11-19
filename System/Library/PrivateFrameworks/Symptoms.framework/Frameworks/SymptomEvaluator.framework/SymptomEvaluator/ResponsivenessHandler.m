@interface ResponsivenessHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (NSString)description;
- (ResponsivenessHandler)init;
- (int)read:(id)a3 returnedValues:(id)a4;
@end

@implementation ResponsivenessHandler

- (ResponsivenessHandler)init
{
  v3.receiver = self;
  v3.super_class = ResponsivenessHandler;
  return [(ResponsivenessHandler *)&v3 init];
}

- (NSString)description
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithFormat:@"%@: Ingests RPM metrics from libnetquality", v4];

  return v5;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ResponsivenessHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_44 != -1)
  {
    dispatch_once(&sharedInstance_pred_44, block);
  }

  v2 = sharedInstance_sharedInstance_46;

  return v2;
}

void __39__ResponsivenessHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_46;
  sharedInstance_sharedInstance_46 = v1;

  v3 = sharedInstance_sharedInstance_46;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[ResponsivenessHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end