@interface VSAnalytics
+ (void)reportDownloadMetrics:(id)metrics;
+ (void)reportEvent:(id)event payload:(id)payload;
+ (void)reportInstrumentMetrics:(id)metrics;
@end

@implementation VSAnalytics

+ (void)reportDownloadMetrics:(id)metrics
{
  v33 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  if ([metricsCopy endMetrics])
  {
    if (![metricsCopy errorCode])
    {
      v5 = +[VSPreferencesInterface defaultInstance];
      oOBNeedsToBeMeasured = [v5 OOBNeedsToBeMeasured];

      if (oOBNeedsToBeMeasured)
      {
        v7 = +[VSPreferencesInterface defaultInstance];
        oOBTriggeredDate = [v7 OOBTriggeredDate];

        v9 = +[VSPreferencesInterface defaultInstance];
        v10 = [v9 subscribedVoicesForClientID:@"com.apple.AssistantServices" accessoryID:0];
        firstObject = [v10 firstObject];
        voice = [firstObject voice];

        if (oOBTriggeredDate)
        {
          if (voice)
          {
            dictionaryMetrics = [metricsCopy dictionaryMetrics];
            v14 = [dictionaryMetrics objectForKeyedSubscript:@"voice_asset_key"];
            languages = [voice languages];
            firstObject2 = [languages firstObject];
            v17 = [v14 hasPrefix:firstObject2];

            if (v17)
            {
              name = [voice name];
              if (!name || ([metricsCopy dictionaryMetrics], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"voice_asset_key"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasSuffix:", name), v20, v19, v21))
              {
                v22 = VSGetLogEvent();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  languages2 = [voice languages];
                  firstObject3 = [languages2 firstObject];
                  v29 = 138412546;
                  v30 = firstObject3;
                  v31 = 2112;
                  v32 = name;
                  _os_log_impl(&dword_272850000, v22, OS_LOG_TYPE_DEFAULT, "OOB subscription completion observed with %@ %@", &v29, 0x16u);
                }

                v25 = +[VSPreferencesInterface defaultInstance];
                [v25 setOOBNeedsToBeMeasured:0];

                v26 = [MEMORY[0x277CBEAA8] now];
                [v26 timeIntervalSinceDate:oOBTriggeredDate];
                [metricsCopy setSetupTimeInterval:?];
              }
            }
          }
        }
      }
    }

    dictionaryMetrics2 = [metricsCopy dictionaryMetrics];
    [self reportEvent:@"com.apple.voiceservices.download" payload:dictionaryMetrics2];
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (void)reportInstrumentMetrics:(id)metrics
{
  dictionaryMetrics = [metrics dictionaryMetrics];
  [self reportEvent:@"com.apple.voiceservices.metrics" payload:dictionaryMetrics];
}

+ (void)reportEvent:(id)event payload:(id)payload
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  payloadCopy = payload;
  v7 = AnalyticsSendEventLazy();
  v8 = VSGetLogDefault();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = eventCopy;
      _os_log_debug_impl(&dword_272850000, v9, OS_LOG_TYPE_DEBUG, "Successfully reportEvent with domain '%@'", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = eventCopy;
    _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "CoreAnalytics eventName:%@ not sent. Event name must not be in current config", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end