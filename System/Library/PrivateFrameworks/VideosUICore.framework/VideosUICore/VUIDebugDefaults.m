@interface VUIDebugDefaults
+ (id)sharedInstance;
- (VUIDebugDefaults)init;
@end

@implementation VUIDebugDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VUIDebugDefaults sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __34__VUIDebugDefaults_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(VUIDebugDefaults);

  return MEMORY[0x2821F96F8]();
}

- (VUIDebugDefaults)init
{
  v40 = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = VUIDebugDefaults;
  v2 = [(VUIDebugDefaults *)&v37 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_debugUIEnabled = [v3 BOOLForKey:@"EnableDebugUI"];

    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_pagePerformanceEnabled = [v4 BOOLForKey:@"EnablePagePerformance"];

    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsLoggingEnabled = [v5 BOOLForKey:@"EnableMetricsLogging"];

    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsExpandedLoggingEnabled = [v6 BOOLForKey:@"EnableMetricsExpandedLogging"];

    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsPageRenderLoggingEnabled = [v7 BOOLForKey:@"EnableMetricsPageRenderLogging"];

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsLogLocationAndImpressions = [v8 BOOLForKey:@"EnableMetricsExpandedClickLogging"];

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_enableDemoMode = [v9 BOOLForKey:@"EnableDemoMode"];

    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_gdprFirstTimeFlowEnabled = [v10 BOOLForKey:@"ForceGDPRFirstTimeFlow"];

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_gdprWhatsNewFlowEnabled = [v11 BOOLForKey:@"ForceGDPRWhatsNewFlow"];

    v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_debugRefreshEventLogEnabled = [v12 BOOLForKey:@"EnableRefreshEventDebug"];

    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 objectForKey:@"PlaybackURLOverrides"];
    v2->_playbackOverridesEnabled = v14 != 0;

    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_hoverEffectDisabled = [v15 BOOLForKey:@"hoverEffectDisabled"];

    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [v16 objectForKey:@"vStackInForEachEnabled"];

    if (v17)
    {
      v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v2->_vStackInForEachEnabled = [v18 BOOLForKey:@"vStackInForEachEnabled"];
    }

    else
    {
      v2->_vStackInForEachEnabled = 1;
    }

    v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_impressionTrackingDisabled = [v19 BOOLForKey:@"impressionTrackingDisabled"];

    v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_stackedTextUseTypeAsViewIdEnabled = [v20 BOOLForKey:@"stackedTextUseTypeAsViewIdEnabled"];

    v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_iTunesExtrasSwiftUIMock = [v21 BOOLForKey:@"iTunesExtrasSwiftUIMock"];

    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_capellaDebuggerEnabled = [v22 BOOLForKey:@"EnableCapellaDebugger"];

    v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_capellaMusicInfoEnabled = [v23 BOOLForKey:@"EnableCapellaMusicInfo"];

    v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_performanceDebuggerEnabled = [v24 BOOLForKey:@"EnablePerformanceDebugger"];

    v25 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_performanceDebuggerVerboseEnabled = [v25 BOOLForKey:@"EnablePerformanceDebuggerVerbose"];

    v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_useExperienceControllerForAllContent = [v26 BOOLForKey:@"UseExperienceControllerForAllContent"];

    v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_overrideLastNLSQueryDate = [v27 integerForKey:@"OverrideLastNLSQueryDate"];

    v28 = VUICDefaultLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      hoverEffectDisabled = v2->_hoverEffectDisabled;
      *buf = 67109120;
      v39 = hoverEffectDisabled;
      _os_log_impl(&dword_270E6E000, v28, OS_LOG_TYPE_DEFAULT, "DebugDefault:: hoverEffectDisabled: %d", buf, 8u);
    }

    v30 = VUICDefaultLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      vStackInForEachEnabled = v2->_vStackInForEachEnabled;
      *buf = 67109120;
      v39 = vStackInForEachEnabled;
      _os_log_impl(&dword_270E6E000, v30, OS_LOG_TYPE_DEFAULT, "DebugDefault:: vStackInForEachEnabled: %d", buf, 8u);
    }

    v32 = VUICDefaultLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      impressionTrackingDisabled = v2->_impressionTrackingDisabled;
      *buf = 67109120;
      v39 = impressionTrackingDisabled;
      _os_log_impl(&dword_270E6E000, v32, OS_LOG_TYPE_DEFAULT, "DebugDefault:: impressionTrackingDisabled: %d", buf, 8u);
    }

    v34 = VUICDefaultLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      stackedTextUseTypeAsViewIdEnabled = v2->_stackedTextUseTypeAsViewIdEnabled;
      *buf = 67109120;
      v39 = stackedTextUseTypeAsViewIdEnabled;
      _os_log_impl(&dword_270E6E000, v34, OS_LOG_TYPE_DEFAULT, "DebugDefault:: stackedTextUseTypeAsViewIdEnabled: %d", buf, 8u);
    }
  }

  return v2;
}

@end