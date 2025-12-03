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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_debugUIEnabled = [standardUserDefaults BOOLForKey:@"EnableDebugUI"];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_pagePerformanceEnabled = [standardUserDefaults2 BOOLForKey:@"EnablePagePerformance"];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsLoggingEnabled = [standardUserDefaults3 BOOLForKey:@"EnableMetricsLogging"];

    standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsExpandedLoggingEnabled = [standardUserDefaults4 BOOLForKey:@"EnableMetricsExpandedLogging"];

    standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsPageRenderLoggingEnabled = [standardUserDefaults5 BOOLForKey:@"EnableMetricsPageRenderLogging"];

    standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_metricsLogLocationAndImpressions = [standardUserDefaults6 BOOLForKey:@"EnableMetricsExpandedClickLogging"];

    standardUserDefaults7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_enableDemoMode = [standardUserDefaults7 BOOLForKey:@"EnableDemoMode"];

    standardUserDefaults8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_gdprFirstTimeFlowEnabled = [standardUserDefaults8 BOOLForKey:@"ForceGDPRFirstTimeFlow"];

    standardUserDefaults9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_gdprWhatsNewFlowEnabled = [standardUserDefaults9 BOOLForKey:@"ForceGDPRWhatsNewFlow"];

    standardUserDefaults10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_debugRefreshEventLogEnabled = [standardUserDefaults10 BOOLForKey:@"EnableRefreshEventDebug"];

    standardUserDefaults11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults11 objectForKey:@"PlaybackURLOverrides"];
    v2->_playbackOverridesEnabled = v14 != 0;

    standardUserDefaults12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_hoverEffectDisabled = [standardUserDefaults12 BOOLForKey:@"hoverEffectDisabled"];

    standardUserDefaults13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [standardUserDefaults13 objectForKey:@"vStackInForEachEnabled"];

    if (v17)
    {
      standardUserDefaults14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v2->_vStackInForEachEnabled = [standardUserDefaults14 BOOLForKey:@"vStackInForEachEnabled"];
    }

    else
    {
      v2->_vStackInForEachEnabled = 1;
    }

    standardUserDefaults15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_impressionTrackingDisabled = [standardUserDefaults15 BOOLForKey:@"impressionTrackingDisabled"];

    standardUserDefaults16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_stackedTextUseTypeAsViewIdEnabled = [standardUserDefaults16 BOOLForKey:@"stackedTextUseTypeAsViewIdEnabled"];

    standardUserDefaults17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_iTunesExtrasSwiftUIMock = [standardUserDefaults17 BOOLForKey:@"iTunesExtrasSwiftUIMock"];

    standardUserDefaults18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_capellaDebuggerEnabled = [standardUserDefaults18 BOOLForKey:@"EnableCapellaDebugger"];

    standardUserDefaults19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_capellaMusicInfoEnabled = [standardUserDefaults19 BOOLForKey:@"EnableCapellaMusicInfo"];

    standardUserDefaults20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_performanceDebuggerEnabled = [standardUserDefaults20 BOOLForKey:@"EnablePerformanceDebugger"];

    standardUserDefaults21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_performanceDebuggerVerboseEnabled = [standardUserDefaults21 BOOLForKey:@"EnablePerformanceDebuggerVerbose"];

    standardUserDefaults22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_useExperienceControllerForAllContent = [standardUserDefaults22 BOOLForKey:@"UseExperienceControllerForAllContent"];

    standardUserDefaults23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2->_overrideLastNLSQueryDate = [standardUserDefaults23 integerForKey:@"OverrideLastNLSQueryDate"];

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