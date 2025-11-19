@interface ProcessInfoGenerator
+ (id)configureClass:(id)a3;
+ (id)generateAdditionalInfo:(id)a3;
+ (id)sharedInstance;
- (id)generateAdditionalInfo:(id)a3;
@end

@implementation ProcessInfoGenerator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ProcessInfoGenerator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_28 != -1)
  {
    dispatch_once(&sharedInstance_pred_28, block);
  }

  v2 = sharedInstance_sharedInstance_29;

  return v2;
}

void __38__ProcessInfoGenerator_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_29;
  sharedInstance_sharedInstance_29 = v1;

  v3 = sharedInstance_sharedInstance_29;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)generateAdditionalInfo:(id)a3
{
  v3 = a3;
  v4 = +[ProcessInfoGenerator sharedInstance];
  v5 = [v4 generateAdditionalInfo:v3];

  return v5;
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[ProcessInfoGenerator sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (id)generateAdditionalInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 originatorForLogging];

  v8 = [v6 stringWithUTF8String:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyBundleDetails];
  [v5 setObject:v8 forKey:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyNumReportingProcesses];
  [v5 setObject:v9 forKey:v11];

  v12 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "generateAdditionalInfo returns %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end