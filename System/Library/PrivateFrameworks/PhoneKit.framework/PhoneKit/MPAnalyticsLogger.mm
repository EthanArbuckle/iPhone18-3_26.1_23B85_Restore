@interface MPAnalyticsLogger
- (void)logEvent:(id)event;
- (void)logEvent:(id)event withCoreAnalyticsDictionary:(id)dictionary;
@end

@implementation MPAnalyticsLogger

- (void)logEvent:(id)event
{
  v7 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    uTF8String = [eventCopy UTF8String];
    _os_log_impl(&dword_25E4EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPAnalyticsLogger: logging core analytics view %s", &v5, 0xCu);
  }

  AnalyticsSendEventLazy();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)logEvent:(id)event withCoreAnalyticsDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dictionaryCopy = dictionary;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    uTF8String = [eventCopy UTF8String];
    v12 = 2112;
    v13 = dictionaryCopy;
    _os_log_impl(&dword_25E4EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPAnalyticsLogger: logging core analytics view %s with dictionary %@", buf, 0x16u);
  }

  v9 = dictionaryCopy;
  v7 = dictionaryCopy;
  AnalyticsSendEventLazy();

  v8 = *MEMORY[0x277D85DE8];
}

@end