@interface KernelStatisticsHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (KernelStatisticsHandler)init;
- (int)read:(id)a3 returnedValues:(id)a4;
- (void)statisticsManager:(id)a3 didReceiveDirectSystemInformation:(id)a4;
@end

@implementation KernelStatisticsHandler

- (KernelStatisticsHandler)init
{
  v14.receiver = self;
  v14.super_class = KernelStatisticsHandler;
  v2 = [(KernelStatisticsHandler *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.kernelstatistics.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x277D2CA80]) initWithQueue:v2->_queue];
    nwStatManager = v2->_nwStatManager;
    v2->_nwStatManager = v6;

    v8 = v2->_nwStatManager;
    if (v8)
    {
      [(NWStatisticsManager *)v8 setDelegate:v2];
      v2->_coalescedReportPending = 0;
      v9 = v2;
    }

    else
    {
      v11 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NWStatisticsManager init", v13, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "super init", v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)statisticsManager:(id)a3 didReceiveDirectSystemInformation:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    v6 = [v5 objectForKeyedSubscript:&unk_2847EFB90];

    if (v6)
    {
      v12 = @"kKernelLIMRecord";
      v13[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"kNotificationKernelNewLIMRecord" object:self userInfo:v7];
    }
  }

  else
  {
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "directSystemInformation has no params", v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__KernelStatisticsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_33 != -1)
  {
    dispatch_once(&sharedInstance_pred_33, block);
  }

  v2 = sharedInstance_sharedInstance_33;

  return v2;
}

void __41__KernelStatisticsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_33;
  sharedInstance_sharedInstance_33 = v1;

  v3 = sharedInstance_sharedInstance_33;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[KernelStatisticsHandler sharedInstance];
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