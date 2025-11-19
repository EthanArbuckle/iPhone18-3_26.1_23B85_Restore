@interface WFScanSessionEvent
+ (id)scanSessionEventWithSectionCounts:(id)a3 duration:(double)a4;
- (WFScanSessionEvent)initWithScanSectionCounts:(id)a3 duration:(double)a4;
- (id)_sectionCountsToJSONString:(id)a3;
- (unint64_t)_durationBucketFromTimeInterval:(double)a3;
@end

@implementation WFScanSessionEvent

+ (id)scanSessionEventWithSectionCounts:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [[WFScanSessionEvent alloc] initWithScanSectionCounts:v5 duration:a4];

  return v6;
}

- (WFScanSessionEvent)initWithScanSectionCounts:(id)a3 duration:(double)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18[0] = @"duration";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFScanSessionEvent _durationBucketFromTimeInterval:](self, "_durationBucketFromTimeInterval:", a4)}];
  v18[1] = @"sections";
  v19[0] = v7;
  v8 = [(WFScanSessionEvent *)self _sectionCountsToJSONString:v6];
  v19[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  eventDictionary = self->_eventDictionary;
  self->_eventDictionary = v9;

  if ([v6 count])
  {
    v11 = [v6 keysSortedByValueUsingComparator:&__block_literal_global];
    v12 = [v11 lastObject];

    v13 = [v6 objectForKey:v12];
    v14 = [(NSDictionary *)self->_eventDictionary mutableCopy];
    [(NSDictionary *)v14 setObject:v13 forKey:@"maxCount"];
    [(NSDictionary *)v14 setObject:v12 forKey:@"maxSection"];
    v15 = self->_eventDictionary;
    self->_eventDictionary = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return self;
}

- (unint64_t)_durationBucketFromTimeInterval:(double)a3
{
  if (a3 > 10.0 && a3 < 30.0)
  {
    return 1;
  }

  if (a3 > 30.0 && a3 < 60.0)
  {
    return 2;
  }

  if (a3 > 60.0)
  {
    return 3;
  }

  return 0;
}

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
        v14 = "[WFScanSessionEvent _sectionCountsToJSONString:]";
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

@end