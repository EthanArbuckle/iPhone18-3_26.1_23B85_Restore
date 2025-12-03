@interface WLKUpNextWidgetCacheManager
+ (BOOL)consumePendingInvalidation;
+ (void)requestInvalidation;
+ (void)requestReload;
@end

@implementation WLKUpNextWidgetCacheManager

+ (BOOL)consumePendingInvalidation
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v4 = [v3 objectForKey:@"UpNextWidgetPendingInvalidation"];
  if (v4)
  {
    v5 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKUpNextWidgetCacheManager - Found pending invalidation. Consuming: %@", &v8, 0xCu);
    }

    [v3 removeObjectForKey:@"UpNextWidgetPendingInvalidation"];
  }

  objc_sync_exit(selfCopy);
  v6 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

+ (void)requestInvalidation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKUpNextWidgetCacheManager - Processed invalidation request", v6, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  date = [MEMORY[0x277CBEAA8] date];
  [v4 setObject:date forKey:@"UpNextWidgetPendingInvalidation"];

  objc_sync_exit(selfCopy);
}

+ (void)requestReload
{
  v10 = *MEMORY[0x277D85DE8];
  extensionBundleIdentifier = [requestReload__sTimelineController extensionBundleIdentifier];
  v6 = 138412546;
  v7 = extensionBundleIdentifier;
  v8 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_272A0F000, a2, OS_LOG_TYPE_ERROR, "WLKUpNextWidgetCacheManager - An error occured reloading timeline: [%@] %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __44__WLKUpNextWidgetCacheManager_requestReload__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CFA320]);
  v3 = WLKTVAppBundleID();
  v1 = [v0 initWithExtensionBundleIdentifier:@"com.apple.tv.TVWidgetExtension" kind:v3];
  v2 = requestReload__sTimelineController;
  requestReload__sTimelineController = v1;
}

@end