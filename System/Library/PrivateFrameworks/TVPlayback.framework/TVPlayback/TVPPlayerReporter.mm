@interface TVPPlayerReporter
+ (void)initialize;
- (TVPPlayer)player;
- (TVPPlayerReporter)initWithPlayer:(id)a3;
- (id)_rtcAgentUserInfo;
- (id)reportingHierarchyToken;
- (void)_playerCurrentMediaItemDidChange:(id)a3;
- (void)_playerCurrentMediaItemWillChange:(id)a3;
- (void)_playerStateWillChange:(id)a3;
- (void)_sendPlaybackStartupEventsIfNecessary;
- (void)_setupRTCAgent;
- (void)dealloc;
- (void)sendPlaybackStartupMetricsManually;
@end

@implementation TVPPlayerReporter

+ (void)initialize
{
  if (initialize_onceToken_6 != -1)
  {
    +[TVPPlayerReporter initialize];
  }
}

uint64_t __31__TVPPlayerReporter_initialize__block_invoke()
{
  sLogObject_4 = os_log_create("com.apple.AppleTV.playback", "TVPPlayerReporter");

  return MEMORY[0x2821F96F8]();
}

- (TVPPlayerReporter)initWithPlayer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TVPPlayerReporter;
  v5 = [(TVPPlayerReporter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_player, v4);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__playerStateWillChange_ name:@"TVPPlaybackStateWillChangeNotification" object:v4];
    [v7 addObserver:v6 selector:sel__playerCurrentMediaItemWillChange_ name:@"TVPPlaybackCurrentMediaItemWillChangeNotification" object:v4];
    [v7 addObserver:v6 selector:sel__playerCurrentMediaItemDidChange_ name:@"TVPPlaybackCurrentMediaItemDidChangeNotification" object:v4];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVPPlayerReporter;
  [(TVPPlayerReporter *)&v4 dealloc];
}

- (void)sendPlaybackStartupMetricsManually
{
  v3 = [(TVPPlayerReporter *)self rtcAgent];

  if (v3)
  {

    [(TVPPlayerReporter *)self _sendPlaybackStartupEventsIfNecessary];
  }

  else
  {
    [(TVPPlayerReporter *)self _setupRTCAgent];
    [(TVPPlayerReporter *)self _sendPlaybackStartupEventsIfNecessary];

    [(TVPPlayerReporter *)self _tearDownRTCAgent];
  }
}

- (id)reportingHierarchyToken
{
  reportingHierarchyToken = self->_reportingHierarchyToken;
  if (!reportingHierarchyToken)
  {
    [(TVPPlayerReporter *)self _setupRTCAgent];
    reportingHierarchyToken = self->_reportingHierarchyToken;
  }

  return reportingHierarchyToken;
}

- (void)_playerStateWillChange:(id)a3
{
  v11 = [a3 userInfo];
  v4 = [v11 objectForKey:@"TVPPlaybackStateOldStateKey"];
  v5 = [v11 objectForKey:@"TVPPlaybackStateNewStateKey"];
  v6 = +[TVPPlaybackState stopped];
  v7 = v6;
  if (v4 == v6)
  {
    v9 = +[TVPPlaybackState stopped];

    if (v5 != v9)
    {
      [(TVPPlayerReporter *)self _setupRTCAgent];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = +[TVPPlaybackState stopped];

  if (v5 == v8)
  {
    [(TVPPlayerReporter *)self _sendPlaybackStartupEventsIfNecessary];
    [(TVPPlayerReporter *)self _tearDownRTCAgent];
  }

LABEL_7:
  if (v4 != v5)
  {
    v10 = +[TVPPlaybackState playing];

    if (v5 == v10)
    {
      [(TVPPlayerReporter *)self _sendPlaybackStartupEventsIfNecessary];
    }
  }
}

- (void)_setupRTCAgent
{
  v35[7] = *MEMORY[0x277D85DE8];
  v3 = [(TVPPlayerReporter *)self rtcAgent];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &stru_287E49338;
    }

    v7 = *MEMORY[0x277D44040];
    v34[0] = *MEMORY[0x277D44030];
    v34[1] = v7;
    v35[0] = &unk_287E59780;
    v35[1] = &unk_287E59798;
    v34[2] = *MEMORY[0x277D44080];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
    v9 = *MEMORY[0x277D44010];
    v35[2] = v8;
    v35[3] = MEMORY[0x277CBEC28];
    v10 = *MEMORY[0x277D44068];
    v34[3] = v9;
    v34[4] = v10;
    v11 = *MEMORY[0x277D44050];
    v35[4] = MEMORY[0x277CBEC38];
    v35[5] = MEMORY[0x277CBEC38];
    v12 = *MEMORY[0x277D44028];
    v34[5] = v11;
    v34[6] = v12;
    v35[6] = v6;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:7];
    v14 = [v13 mutableCopy];

    v15 = [(TVPPlayerReporter *)self player];
    v16 = [v15 currentMediaItem];

    v17 = [v16 mediaItemMetadataForProperty:@"TVPMediaItemMetadataRTCParentHierarchyToken"];
    v18 = sLogObject_4;
    v19 = os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Using existing RTC hierarchy token in reporter", buf, 2u);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Creating RTC hierarchy tokens in reporter", buf, 2u);
      }

      v17 = [MEMORY[0x277D43FE0] newHierarchyTokenFromParentToken:0];
      if (v17)
      {
        v20 = [MEMORY[0x277D43FE0] newHierarchyTokenFromParentToken:v17];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __35__TVPPlayerReporter__setupRTCAgent__block_invoke;
        v28[3] = &unk_279D7BDF0;
        v29 = v16;
        v17 = v17;
        v30 = v17;
        v31 = v20;
        v21 = v20;
        [v29 performMediaItemMetadataTransactionWithBlock:v28];
      }
    }

    v22 = sLogObject_4;
    if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v17;
      _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "RTC hierarchy token for session: %@", buf, 0xCu);
    }

    if (v17)
    {
      [v14 setObject:v17 forKey:*MEMORY[0x277D44058]];
    }

    v23 = objc_alloc(MEMORY[0x277D43FE0]);
    v24 = [(TVPPlayerReporter *)self _rtcAgentUserInfo];
    v25 = [v23 initWithSessionInfo:v14 userInfo:v24 frameworksToCheck:MEMORY[0x277CBEBF8]];
    [(TVPPlayerReporter *)self setRtcAgent:v25];

    v26 = [(TVPPlayerReporter *)self rtcAgent];
    [v26 startConfigurationWithCompletionHandler:&__block_literal_global_23];
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __35__TVPPlayerReporter__setupRTCAgent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMediaItemMetadata:*(a1 + 40) forProperty:@"TVPMediaItemMetadataRTCParentHierarchyToken"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setMediaItemMetadata:v3 forProperty:@"TVPMediaItemMetadataRTCChildHierarchyToken"];
}

void __35__TVPPlayerReporter__setupRTCAgent__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sLogObject_4;
  if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEBUG))
  {
    __35__TVPPlayerReporter__setupRTCAgent__block_invoke_20_cold_1(v2, v3);
  }
}

- (void)_playerCurrentMediaItemWillChange:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 currentMediaItem];
  if (v5)
  {
    v6 = [v4 state];
    v7 = +[TVPPlaybackState stopped];

    if (v6 == v7)
    {
      v8 = sLogObject_4;
      if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Not sending playback startup report on media item will change because player is stopped", v9, 2u);
      }
    }

    else
    {
      [(TVPPlayerReporter *)self _sendPlaybackStartupEventsIfNecessary];
    }
  }
}

- (void)_playerCurrentMediaItemDidChange:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 currentMediaItem];
  [(TVPPlayerReporter *)self _tearDownRTCAgent];
  if (v4)
  {
    [(TVPPlayerReporter *)self _setupRTCAgent];
  }
}

- (void)_sendPlaybackStartupEventsIfNecessary
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(TVPPlayerReporter *)self player];
  v4 = [v3 currentMediaItem];
  v5 = [v4 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];

  if (!v5)
  {
    goto LABEL_36;
  }

  if ([v5 complete])
  {
    goto LABEL_36;
  }

  [v5 setComplete:1];
  v6 = [v5 rtcReportingEventDict];
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = v6;
  v8 = [v5 videoType];
  v9 = v8;
  v10 = @"UNDETERMINED";
  if (v8 == 2)
  {
    v10 = @"HLS";
  }

  if (v8 == 1)
  {
    v11 = @"FILE";
  }

  else
  {
    v11 = v10;
  }

  v12 = [(TVPPlayerReporter *)self _rtcAgentUserInfo];
  [v12 setObject:v11 forKey:@"assetType"];
  v13 = [(TVPPlayerReporter *)self rtcAgent];
  [v13 fetchReportingStatesWithUserInfo:v12 fetchComplete:&__block_literal_global_49];

  v14 = [v7 objectForKey:TVPPlaybackReportingEventPlaybackStartupResult];
  if ([v14 isEqualToString:TVPPlaybackReportingEventValueSuccess])
  {
    v15 = 200;
  }

  else if ([v14 isEqualToString:TVPPlaybackReportingEventValueCancelled])
  {
    v15 = 300;
  }

  else if ([v14 isEqualToString:TVPPlaybackReportingEventValueError])
  {
    v15 = 500;
  }

  else
  {
    v15 = 200;
  }

  v16 = [(TVPPlayerReporter *)self player];
  v17 = [v16 currentMediaItem];
  v18 = [v17 mediaItemMetadataForProperty:@"TVPMediaItemMetadataRentalID"];

  if (!v9)
  {
    v24 = v18 == 0;
    v25 = 1200;
LABEL_25:
    if (v24)
    {
      v19 = v25;
    }

    else
    {
      v19 = v25 + 1;
    }

    goto LABEL_31;
  }

  if (v9 == 1)
  {
    v24 = v18 == 0;
    v25 = 1100;
    goto LABEL_25;
  }

  if (v9 == 2 && v18)
  {
    v19 = 1001;
  }

  else
  {
    v20 = [(TVPPlayerReporter *)self player];
    [v20 duration];
    v22 = v21;

    if (v22 == 3.40282347e38)
    {
      v23 = @"LIVE";
    }

    else
    {
      if (v22 == 0.0)
      {
        v19 = 1000;
        goto LABEL_31;
      }

      v23 = @"VOD";
    }

    v26 = [v7 mutableCopy];
    [v26 setObject:v23 forKey:@"PlayType"];

    v19 = 1000;
    v7 = v26;
  }

LABEL_31:
  v27 = sLogObject_4;
  if (os_log_type_enabled(sLogObject_4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&dword_26CEDD000, v27, OS_LOG_TYPE_DEFAULT, "Reporting dict: %@", buf, 0xCu);
  }

  [(TVPPlayerReporter *)self _sendRTCEvent:@"playbackStartup" withCategory:v19 type:v15 values:v7];
  if (MGGetBoolAnswer())
  {
    v28 = [(TVPPlayerReporter *)self player];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"app playback startup metrics: %@", v7];
    [v28 setPlaybackHUDString:v29];
  }

LABEL_36:
  v30 = *MEMORY[0x277D85DE8];
}

- (id)_rtcAgentUserInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 executablePath];

  v6 = [v5 lastPathComponent];
  v7 = v6;
  v8 = @"(UNKNOWN)";
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(TVPPlayerReporter *)self player];
  v11 = [v10 currentMediaItem];
  v12 = [v11 mediaItemMetadataForProperty:@"TVPMediaItemMetadataServiceIdentifier"];
  v13 = [v11 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStoreFrontIdentifier"];
  v14 = [v11 mediaItemMetadataForProperty:@"TVPMediaItemMetadataAVURLAssetAlternativeConfigurationOptions"];
  if (![v12 length])
  {
    v15 = [v14 objectForKey:*MEMORY[0x277CE61E8]];

    if ([v15 length])
    {
      v12 = v15;
    }

    else
    {
      v16 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [v19 bundleIdentifier];
      v12 = [v16 stringWithFormat:@"(%@)", v17];
    }
  }

  [v3 setObject:v9 forKey:*MEMORY[0x277D44090]];
  if (v12)
  {
    [v3 setObject:v12 forKey:*MEMORY[0x277D44098]];
  }

  if (v13)
  {
    [v3 setObject:v13 forKey:@"StorefrontID"];
  }

  if (v14)
  {
    [v3 addEntriesFromDictionary:v14];
  }

  return v3;
}

- (TVPPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

void __35__TVPPlayerReporter__setupRTCAgent__block_invoke_20_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_DEBUG, "RTCReporting backends: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end