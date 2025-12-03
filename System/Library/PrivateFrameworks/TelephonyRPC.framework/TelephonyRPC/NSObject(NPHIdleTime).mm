@interface NSObject(NPHIdleTime)
+ (uint64_t)performBlockAtIdle:()NPHIdleTime;
+ (void)NPHRequestIdleTimeNotification;
+ (void)_NPHIdleTimeNotification:()NPHIdleTime;
@end

@implementation NSObject(NPHIdleTime)

+ (uint64_t)performBlockAtIdle:()NPHIdleTime
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "+[NSObject(NPHIdleTime) performBlockAtIdle:]";
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NSObject_NPHIdleTime__performBlockAtIdle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (performBlockAtIdle__onceToken != -1)
  {
    dispatch_once(&performBlockAtIdle__onceToken, block);
  }

  v6 = sIdleBlocks;
  v7 = [v4 copy];

  [v6 addObject:v7];
  result = [self NPHRequestIdleTimeNotification];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)NPHRequestIdleTimeNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = nph_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[NSObject(NPHIdleTime) NPHRequestIdleTimeNotification]";
    _os_log_impl(&dword_26D269000, v0, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  v1 = [MEMORY[0x277CCAB88] notificationWithName:@"NPHIdleNotification" object:0];
  defaultQueue = [MEMORY[0x277CCABA0] defaultQueue];
  [defaultQueue enqueueNotification:v1 postingStyle:1];

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_NPHIdleTimeNotification:()NPHIdleTime
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
    v11 = 2048;
    v12 = [sIdleBlocks count];
    _os_log_impl(&dword_26D269000, v2, OS_LOG_TYPE_DEFAULT, "%s sIdleBlocks.count:%lu", &v9, 0x16u);
  }

  firstObject = [sIdleBlocks firstObject];
  if (firstObject)
  {
    date = [MEMORY[0x277CBEAA8] date];
    firstObject[2](firstObject);
    [date timeIntervalSinceNow];
    v6 = v5 * -1000.0;
    if (v5 * -1000.0 > 100.0)
    {
      v7 = nph_general_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
        v11 = 2048;
        v12 = *&v6;
        _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "******* %s BLOCKING MAIN THREAD: %f", &v9, 0x16u);
      }
    }

    [sIdleBlocks removeObjectAtIndex:0];
    if ([sIdleBlocks count])
    {
      [self NPHRequestIdleTimeNotification];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end