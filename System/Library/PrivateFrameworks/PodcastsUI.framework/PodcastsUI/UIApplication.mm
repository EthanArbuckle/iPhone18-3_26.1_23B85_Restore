@interface UIApplication
@end

@implementation UIApplication

void __39__UIApplication_Metrics___metricsQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.podcasts.UIApplicationMetrics.metricsQueue", v2);
  v1 = _metricsQueue_metricsQueue;
  _metricsQueue_metricsQueue = v0;
}

void __45__UIApplication_Metrics__recordAppOpenEvent___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x277D3DAA8]) initWithReason:a1[6]];
  [v2 setReferringAppName:a1[4]];
  [v2 setReferringURL:a1[5]];
  [MEMORY[0x277D3DA98] recordEvent:v2];
}

@end