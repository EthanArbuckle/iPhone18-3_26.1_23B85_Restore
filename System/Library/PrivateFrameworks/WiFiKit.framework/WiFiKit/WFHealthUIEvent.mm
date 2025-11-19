@interface WFHealthUIEvent
+ (id)detailEventWithIssues:(id)a3 ssid:(id)a4 securityType:(int64_t)a5;
+ (id)subtitleEventWithIssues:(id)a3 ssid:(id)a4 securityType:(int64_t)a5;
+ (id)tapLinkEventWithIssues:(id)a3 ssid:(id)a4 securityType:(int64_t)a5;
- (id)_eventTypeStringForType:(int64_t)a3;
- (id)_issuesToJSONString:(id)a3;
@end

@implementation WFHealthUIEvent

+ (id)subtitleEventWithIssues:(id)a3 ssid:(id)a4 securityType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:1 issues:v8 ssid:v7 securityType:a5 testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)detailEventWithIssues:(id)a3 ssid:(id)a4 securityType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:2 issues:v8 ssid:v7 securityType:a5 testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)tapLinkEventWithIssues:(id)a3 ssid:(id)a4 securityType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:3 issues:v8 ssid:v7 securityType:a5 testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

- (id)_issuesToJSONString:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 allObjects];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) typeString];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v18 = 0;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  }

  else
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
    {
      *buf = 136315394;
      v24 = "[WFHealthUIEvent _issuesToJSONString:]";
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_273ECD000, v14, v15, "%s: failed to create json from dictionary %@", buf, 0x16u);
    }

    v13 = &stru_2882E4AD8;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_eventTypeStringForType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE558[a3 - 1];
  }
}

@end