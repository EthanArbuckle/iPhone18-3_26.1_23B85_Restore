@interface Logger
+ (id)loggerWithCategory:(id)category instance:(id)instance;
@end

@implementation Logger

+ (id)loggerWithCategory:(id)category instance:(id)instance
{
  categoryCopy = category;
  instanceCopy = instance;
  if (qword_280F75D90 != -1)
  {
    dispatch_once(&qword_280F75D90, &__block_literal_global_5);
  }

  v7 = categoryCopy;
  instanceCopy = v7;
  if (instanceCopy)
  {
    instanceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, instanceCopy];
  }

  v9 = _MergedGlobals_9;
  objc_sync_enter(v9);
  v10 = [_MergedGlobals_9 objectForKey:instanceCopy];
  if (!v10)
  {
    v10 = os_log_create(kCellularSettingsLogSubsystem, [instanceCopy UTF8String]);
    [_MergedGlobals_9 setObject:v10 forKey:instanceCopy];
  }

  objc_sync_exit(v9);

  return v10;
}

uint64_t __38__Logger_loggerWithCategory_instance___block_invoke()
{
  _MergedGlobals_9 = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

@end