@interface PowerUIBDCDataManager
+ (PowerUIBDCDataManager)sharedInstance;
- (BOOL)promptBDCToQueryState:(id)a3;
- (PowerUIBDCDataManager)init;
- (id)getBDCDataDictTemplate;
- (id)getNextBDCDataDict;
@end

@implementation PowerUIBDCDataManager

- (PowerUIBDCDataManager)init
{
  v12.receiver = self;
  v12.super_class = PowerUIBDCDataManager;
  v2 = [(PowerUIBDCDataManager *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging", "bdcDataManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "BDCDataManager intializing...", v11, 2u);
    }

    v2->_bdcDataLock._os_unfair_lock_opaque = 0;
    v6 = dispatch_semaphore_create(0);
    bdcCallbackSemaphore = v2->_bdcCallbackSemaphore;
    v2->_bdcCallbackSemaphore = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    dataQueue = v2->_dataQueue;
    v2->_dataQueue = v8;
  }

  return v2;
}

+ (PowerUIBDCDataManager)sharedInstance
{
  if (sharedInstance_once_2 != -1)
  {
    +[PowerUIBDCDataManager sharedInstance];
  }

  v3 = sharedInstance_instance_2;

  return v3;
}

void __39__PowerUIBDCDataManager_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance_2)
  {
    sharedInstance_instance_2 = objc_alloc_init(PowerUIBDCDataManager);

    MEMORY[0x2821F96F8]();
  }
}

- (BOOL)promptBDCToQueryState:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_bdcDataLock);
  [(NSMutableArray *)self->_dataQueue addObject:v4];
  os_unfair_lock_unlock(&self->_bdcDataLock);
  v5 = [(PowerUIBDCDataManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_INFO, "Prompt BDC to record current state", buf, 2u);
  }

  notify_post([@"com.apple.smartcharging.charging" UTF8String]);
  bdcCallbackSemaphore = self->_bdcCallbackSemaphore;
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_semaphore_wait(bdcCallbackSemaphore, v7);
  v9 = [(PowerUIBDCDataManager *)self log];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PowerUIBDCDataManager promptBDCToQueryState:v10];
    }

    os_unfair_lock_lock(&self->_bdcDataLock);
    if ([(NSMutableArray *)self->_dataQueue count])
    {
      [(NSMutableArray *)self->_dataQueue removeObject:v4];
    }

    os_unfair_lock_unlock(&self->_bdcDataLock);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_INFO, "BDC received current PowerUI state", v12, 2u);
    }
  }

  return v8 == 0;
}

- (id)getNextBDCDataDict
{
  os_unfair_lock_lock(&self->_bdcDataLock);
  if ([(NSMutableArray *)self->_dataQueue count])
  {
    v3 = [(NSMutableArray *)self->_dataQueue objectAtIndex:0];
    [(NSMutableArray *)self->_dataQueue removeObjectAtIndex:0];
    os_unfair_lock_unlock(&self->_bdcDataLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_bdcDataLock);
    v4 = [(PowerUIBDCDataManager *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PowerUIBDCDataManager *)v4 getNextBDCDataDict];
    }

    v3 = [(PowerUIBDCDataManager *)self getBDCDataDictTemplate];
  }

  return v3;
}

- (id)getBDCDataDictTemplate
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:&unk_282D4E9C8 forKeyedSubscript:@"MessageVersion"];
  [v2 setObject:&unk_282D4E9E0 forKeyedSubscript:@"ChargingState"];
  [v2 setObject:&unk_282D4E9E0 forKeyedSubscript:@"InflowState"];
  [v2 setObject:&unk_282D4E9E0 forKeyedSubscript:@"ChargeLimit"];
  [v2 setObject:&unk_282D4E9E0 forKeyedSubscript:@"CheckPoint"];
  [v2 setObject:&unk_282D4E9E0 forKeyedSubscript:@"ModeOfOperation"];
  [v2 setObject:&unk_282D4E9E0 forKeyedSubscript:@"DecisionMaker"];

  return v2;
}

@end