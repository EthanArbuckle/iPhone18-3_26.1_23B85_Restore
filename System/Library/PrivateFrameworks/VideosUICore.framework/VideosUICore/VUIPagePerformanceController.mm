@interface VUIPagePerformanceController
+ (void)postNotificationForImageProxy:(id)proxy withLoadingStatus:(BOOL)status withError:(id)error;
@end

@implementation VUIPagePerformanceController

+ (void)postNotificationForImageProxy:(id)proxy withLoadingStatus:(BOOL)status withError:(id)error
{
  statusCopy = status;
  proxyCopy = proxy;
  errorCopy = error;
  v9 = mach_absolute_time();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [dictionary setObject:v11 forKeyedSubscript:@"VUIPagePerformanceImageProxyNotificationTimestamp"];

  if (errorCopy)
  {
    [dictionary setObject:errorCopy forKeyedSubscript:@"VUIPagePerformanceImageProxyNotificationError"];
  }

  v12 = @"VUIPagePerformanceImageProxyDidLoadNotification";
  if (statusCopy)
  {
    v12 = @"VUIPagePerformanceImageProxyWillLoadNotification";
  }

  v13 = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__VUIPagePerformanceController_postNotificationForImageProxy_withLoadingStatus_withError___block_invoke;
  v18[3] = &unk_279E21980;
  v19 = v13;
  v20 = proxyCopy;
  v21 = dictionary;
  v14 = dictionary;
  v15 = proxyCopy;
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