@interface WFUserJoinEvent
- (id)_eventTypeStringForType:(int64_t)a3;
- (id)_sectionCountsToJSONString:(id)a3;
@end

@implementation WFUserJoinEvent

- (id)_sectionCountsToJSONString:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:&v12];
    v5 = v12;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    }

    else
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
      {
        *buf = 136315394;
        v14 = "[WFUserJoinEvent _sectionCountsToJSONString:]";
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_273ECD000, v8, v9, "%s: failed to create json from dictionary %@", buf, 0x16u);
      }

      v6 = &stru_2882E4AD8;
    }

    v7 = v6;
  }

  else
  {
    v7 = &stru_2882E4AD8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_eventTypeStringForType:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE680[a3];
  }
}

@end