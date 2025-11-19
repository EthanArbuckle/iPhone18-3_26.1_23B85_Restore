@interface STYFrameworkHelper
+ (id)sharedHelper;
@end

@implementation STYFrameworkHelper

+ (id)sharedHelper
{
  if (sharedHelper_onceToken != -1)
  {
    +[STYFrameworkHelper sharedHelper];
  }

  v3 = sharedHelper;

  return v3;
}

void __34__STYFrameworkHelper_sharedHelper__block_invoke()
{
  v0 = objc_alloc_init(STYFrameworkHelper);
  v1 = sharedHelper;
  sharedHelper = v0;

  if (sharedHelper)
  {
    attr = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -15);
    v2 = MEMORY[0x277D85CD8];
    v3 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_UTILITY, -15);
    v4 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_BACKGROUND, -15);
    v5 = os_log_create("com.apple.Sentry.Framework", "STYFrameworkHelper");
    [sharedHelper setLogHandle:v5];

    v6 = dispatch_queue_create("com.apple.Sentry.Frameworking.STYFrameworkHelper.Serial.utility", attr);
    [sharedHelper setSharedSerialQueueAtUtility:v6];

    v7 = dispatch_queue_create("com.apple.Sentry.Frameworking.STYFrameworkHelper.Conc.utility", v3);
    [sharedHelper setSharedConcurrentQueueAtUtility:v7];

    v8 = dispatch_queue_create("com.apple.Sentry.Frameworking.STYFrameworkHelper.Conc.backgorund", v4);
    [sharedHelper setSharedConcurrentQueueAtBackground:v8];
  }
}

@end