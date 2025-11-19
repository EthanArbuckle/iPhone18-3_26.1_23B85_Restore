@interface TVPReportingSession
+ (void)initialize;
- (TVPReportingSession)initWithMediaItem:(id)a3;
- (void)reportDownloadFinishedWithResult:(int64_t)a3 error:(id)a4;
@end

@implementation TVPReportingSession

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[TVPReportingSession initialize];
  }
}

uint64_t __33__TVPReportingSession_initialize__block_invoke()
{
  sLogObject = os_log_create("com.apple.AppleTV.playback", "TVPReportingSession");

  return MEMORY[0x2821F96F8]();
}

- (TVPReportingSession)initWithMediaItem:(id)a3
{
  v38[6] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v36.receiver = self;
  v36.super_class = TVPReportingSession;
  v6 = [(TVPReportingSession *)&v36 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_mediaItem, a3);
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [v8 bundleIdentifier];

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = &stru_287E49338;
      }

      v11 = *MEMORY[0x277D44040];
      v37[0] = *MEMORY[0x277D44030];
      v37[1] = v11;
      v38[0] = &unk_287E59630;
      v38[1] = &unk_287E59648;
      v37[2] = *MEMORY[0x277D44080];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
      v13 = *MEMORY[0x277D44010];
      v38[2] = v12;
      v38[3] = MEMORY[0x277CBEC28];
      v14 = *MEMORY[0x277D44050];
      v37[3] = v13;
      v37[4] = v14;
      v37[5] = *MEMORY[0x277D44028];
      v38[4] = MEMORY[0x277CBEC38];
      v38[5] = v10;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
      v16 = [v15 mutableCopy];

      v17 = [v5 mediaItemMetadataForProperty:@"TVPMediaItemMetadataServiceIdentifier"];
      v18 = [v5 mediaItemMetadataForProperty:@"TVPMediaItemMetadataAVURLAssetAlternativeConfigurationOptions"];
      if (![v17 length])
      {
        v19 = [v18 objectForKey:*MEMORY[0x277CE61E8]];

        v17 = v19;
      }

      if ([v17 length])
      {
        v35 = v16;
        v20 = v10;
        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v22 = [MEMORY[0x277CCA8D8] mainBundle];
        v23 = [v22 executablePath];
        v24 = [v23 lastPathComponent];
        v25 = v24;
        v26 = @"(UNKNOWN)";
        if (v24)
        {
          v26 = v24;
        }

        v27 = v26;

        v28 = [v5 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStoreFrontIdentifier"];
        [v21 setObject:v17 forKey:*MEMORY[0x277D44098]];
        [v21 setObject:v27 forKey:*MEMORY[0x277D44090]];

        if (v28)
        {
          [v21 setObject:v28 forKey:@"StorefrontID"];
        }

        v10 = v20;
        if (v18)
        {
          [v21 addEntriesFromDictionary:v18];
        }

        v16 = v35;
        v29 = [objc_alloc(MEMORY[0x277D43FE0]) initWithSessionInfo:v35 userInfo:v21 frameworksToCheck:0];
        reporter = v7->_reporter;
        v7->_reporter = v29;

        [(RTCReporting *)v7->_reporter startConfigurationWithCompletionHandler:&__block_literal_global_19];
      }

      else
      {
        v32 = sLogObject;
        if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_ERROR))
        {
          [TVPReportingSession initWithMediaItem:v32];
        }
      }
    }

    else
    {
      v31 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_ERROR))
      {
        [TVPReportingSession initWithMediaItem:v31];
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v7;
}

void __41__TVPReportingSession_initWithMediaItem___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sLogObject;
  if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "RTCReporting backends: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)reportDownloadFinishedWithResult:(int64_t)a3 error:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 == 1)
  {
    v7 = 300;
  }

  else
  {
    v7 = 200;
  }

  if (a3 == 2)
  {
    v8 = 500;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = v6;
  v11 = v10;
  if (v10)
  {
    v24 = v8;
    v26 = self;
    v12 = 0;
    v27 = *MEMORY[0x277CCA7E8];
    v25 = v10;
    do
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"errorDomain%d", v12];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"errorCode%d", v12];
      v15 = [v11 domain];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
      if (v15)
      {
        [v9 setObject:v15 forKey:v13];
      }

      [v9 setObject:v16 forKey:v14];
      v17 = [v11 userInfo];
      v18 = [v17 objectForKey:v27];

      if (!v18)
      {
        break;
      }

      v11 = v18;
      v19 = v12 >= 9;
      v12 = (v12 + 1);
    }

    while (!v19);

    v11 = v25;
    self = v26;
    v8 = v24;
  }

  v20 = [(TVPReportingSession *)self mediaItem];
  v21 = [v20 mediaItemMetadataForProperty:@"TVPMediaItemMetadataDownloadQOSMetrics"];

  if (v21)
  {
    [v9 addEntriesFromDictionary:v21];
  }

  v22 = sLogObject;
  if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Sending download result %d with payload: %@", buf, 0x12u);
  }

  [(TVPReportingSession *)self _sendEvent:@"downloadResult" withCategory:12345 type:v8 values:v9];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_sendEvent:(uint64_t)a1 withCategory:(NSObject *)a2 type:values:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "**** RTC is not configured. Not sending metrics for event %@. ****", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end