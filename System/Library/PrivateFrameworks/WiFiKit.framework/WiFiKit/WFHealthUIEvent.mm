@interface WFHealthUIEvent
+ (id)detailEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type;
+ (id)subtitleEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type;
+ (id)tapLinkEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type;
- (id)_eventTypeStringForType:(int64_t)type;
- (id)_issuesToJSONString:(id)string;
@end

@implementation WFHealthUIEvent

+ (id)subtitleEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type
{
  ssidCopy = ssid;
  issuesCopy = issues;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:1 issues:issuesCopy ssid:ssidCopy securityType:type testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)detailEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type
{
  ssidCopy = ssid;
  issuesCopy = issues;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:2 issues:issuesCopy ssid:ssidCopy securityType:type testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

+ (id)tapLinkEventWithIssues:(id)issues ssid:(id)ssid securityType:(int64_t)type
{
  ssidCopy = ssid;
  issuesCopy = issues;
  v9 = [WFHealthUIEvent alloc];
  v10 = [(WFHealthUIEvent *)v9 initWithEventType:3 issues:issuesCopy ssid:ssidCopy securityType:type testTimes:0 didPassTest:0 failedTests:MEMORY[0x277CBEBF8]];

  return v10;
}

- (id)_issuesToJSONString:(id)string
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [stringCopy allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        typeString = [*(*(&v19 + 1) + 8 * i) typeString];
        if (typeString)
        {
          [array addObject:typeString];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v18 = 0;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:array options:0 error:&v18];
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
      v26 = stringCopy;
      _os_log_impl(&dword_273ECD000, v14, v15, "%s: failed to create json from dictionary %@", buf, 0x16u);
    }

    v13 = &stru_2882E4AD8;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_eventTypeStringForType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE558[type - 1];
  }
}

@end