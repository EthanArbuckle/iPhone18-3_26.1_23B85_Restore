@interface VUIPagePerformanceController
+ (void)postNotificationForImageProxy:(id)a3 withLoadingStatus:(BOOL)a4 withError:(id)a5;
@end

@implementation VUIPagePerformanceController

+ (void)postNotificationForImageProxy:(id)a3 withLoadingStatus:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = mach_absolute_time();
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [v10 setObject:v11 forKeyedSubscript:@"VUIPagePerformanceImageProxyNotificationTimestamp"];

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"VUIPagePerformanceImageProxyNotificationError"];
  }

  v12 = @"VUIPagePerformanceImageProxyDidLoadNotification";
  if (v6)
  {
    v12 = @"VUIPagePerformanceImageProxyWillLoadNotification";
  }

  v13 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__VUIPagePerformanceController_postNotificationForImageProxy_withLoadingStatus_withError___block_invoke;
  v18[3] = &unk_279E21980;
  v19 = v13;
  v20 = v7;
  v21 = v10;
  v14 = v10;
  v15 = v7;
  v16 = v13;
  v17 = MEMORY[0x2743B7C30](v18);
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

void __90__VUIPagePerformanceController_postNotificationForImageProxy_withLoadingStatus_withError___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

@end