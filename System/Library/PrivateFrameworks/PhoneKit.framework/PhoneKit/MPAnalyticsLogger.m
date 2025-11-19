@interface MPAnalyticsLogger
- (void)logEvent:(id)a3;
- (void)logEvent:(id)a3 withCoreAnalyticsDictionary:(id)a4;
@end

@implementation MPAnalyticsLogger

- (void)logEvent:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = [v3 UTF8String];
    _os_log_impl(&dword_25E4EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPAnalyticsLogger: logging core analytics view %s", &v5, 0xCu);
  }

  AnalyticsSendEventLazy();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)logEvent:(id)a3 withCoreAnalyticsDictionary:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = [v5 UTF8String];
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25E4EC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MPAnalyticsLogger: logging core analytics view %s with dictionary %@", buf, 0x16u);
  }

  v9 = v6;
  v7 = v6;
  AnalyticsSendEventLazy();

  v8 = *MEMORY[0x277D85DE8];
}

@end