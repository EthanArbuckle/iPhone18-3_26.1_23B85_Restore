@interface LibtraceSymptomHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (NSString)description;
@end

@implementation LibtraceSymptomHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__LibtraceSymptomHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_11 != -1)
  {
    dispatch_once(&sharedInstance_pred_11, block);
  }

  v2 = sharedInstance_sharedInstance_11;

  return v2;
}

void __40__LibtraceSymptomHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_11;
  sharedInstance_sharedInstance_11 = v1;

  v3 = sharedInstance_sharedInstance_11;
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

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[LibtraceSymptomHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

@end