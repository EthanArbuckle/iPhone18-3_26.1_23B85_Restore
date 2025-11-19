@interface VSAnalytics
+ (void)reportDownloadMetrics:(id)a3;
+ (void)reportEvent:(id)a3 payload:(id)a4;
+ (void)reportInstrumentMetrics:(id)a3;
@end

@implementation VSAnalytics

+ (void)reportDownloadMetrics:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 endMetrics])
  {
    if (![v4 errorCode])
    {
      v5 = +[VSPreferencesInterface defaultInstance];
      v6 = [v5 OOBNeedsToBeMeasured];

      if (v6)
      {
        v7 = +[VSPreferencesInterface defaultInstance];
        v8 = [v7 OOBTriggeredDate];

        v9 = +[VSPreferencesInterface defaultInstance];
        v10 = [v9 subscribedVoicesForClientID:@"com.apple.AssistantServices" accessoryID:0];
        v11 = [v10 firstObject];
        v12 = [v11 voice];

        if (v8)
        {
          if (v12)
          {
            v13 = [v4 dictionaryMetrics];
            v14 = [v13 objectForKeyedSubscript:@"voice_asset_key"];
            v15 = [v12 languages];
            v16 = [v15 firstObject];
            v17 = [v14 hasPrefix:v16];

            if (v17)
            {
              v18 = [v12 name];
              if (!v18 || ([v4 dictionaryMetrics], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"voice_asset_key"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasSuffix:", v18), v20, v19, v21))
              {
                v22 = VSGetLogEvent();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v12 languages];
                  v24 = [v23 firstObject];
                  v29 = 138412546;
                  v30 = v24;
                  v31 = 2112;
                  v32 = v18;
                  _os_log_impl(&dword_272850000, v22, OS_LOG_TYPE_DEFAULT, "OOB subscription completion observed with %@ %@", &v29, 0x16u);
                }

                v25 = +[VSPreferencesInterface defaultInstance];
                [v25 setOOBNeedsToBeMeasured:0];

                v26 = [MEMORY[0x277CBEAA8] now];
                [v26 timeIntervalSinceDate:v8];
                [v4 setSetupTimeInterval:?];
              }
            }
          }
        }
      }
    }

    v27 = [v4 dictionaryMetrics];
    [a1 reportEvent:@"com.apple.voiceservices.download" payload:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)reportInstrumentMetrics:(id)a3
{
  v4 = [a3 dictionaryMetrics];
  [a1 reportEvent:@"com.apple.voiceservices.metrics" payload:v4];
}

+ (void)reportEvent:(id)a3 payload:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = AnalyticsSendEventLazy();
  v8 = VSGetLogDefault();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_debug_impl(&dword_272850000, v9, OS_LOG_TYPE_DEBUG, "Successfully reportEvent with domain '%@'", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "CoreAnalytics eventName:%@ not sent. Event name must not be in current config", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end