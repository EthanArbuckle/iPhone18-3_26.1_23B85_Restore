@interface WFScanSessionEvent
+ (id)scanSessionEventWithSectionCounts:(id)counts duration:(double)duration;
- (WFScanSessionEvent)initWithScanSectionCounts:(id)counts duration:(double)duration;
- (id)_sectionCountsToJSONString:(id)string;
- (unint64_t)_durationBucketFromTimeInterval:(double)interval;
@end

@implementation WFScanSessionEvent

+ (id)scanSessionEventWithSectionCounts:(id)counts duration:(double)duration
{
  countsCopy = counts;
  v6 = [[WFScanSessionEvent alloc] initWithScanSectionCounts:countsCopy duration:duration];

  return v6;
}

- (WFScanSessionEvent)initWithScanSectionCounts:(id)counts duration:(double)duration
{
  v19[2] = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v18[0] = @"duration";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFScanSessionEvent _durationBucketFromTimeInterval:](self, "_durationBucketFromTimeInterval:", duration)}];
  v18[1] = @"sections";
  v19[0] = v7;
  v8 = [(WFScanSessionEvent *)self _sectionCountsToJSONString:countsCopy];
  v19[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  eventDictionary = self->_eventDictionary;
  self->_eventDictionary = v9;

  if ([countsCopy count])
  {
    v11 = [countsCopy keysSortedByValueUsingComparator:&__block_literal_global];
    lastObject = [v11 lastObject];

    v13 = [countsCopy objectForKey:lastObject];
    v14 = [(NSDictionary *)self->_eventDictionary mutableCopy];
    [(NSDictionary *)v14 setObject:v13 forKey:@"maxCount"];
    [(NSDictionary *)v14 setObject:lastObject forKey:@"maxSection"];
    v15 = self->_eventDictionary;
    self->_eventDictionary = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return self;
}

- (unint64_t)_durationBucketFromTimeInterval:(double)interval
{
  if (interval > 10.0 && interval < 30.0)
  {
    return 1;
  }

  if (interval > 30.0 && interval < 60.0)
  {
    return 2;
  }

  if (interval > 60.0)
  {
    return 3;
  }

  return 0;
}

- (id)_sectionCountsToJSONString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:stringCopy options:0 error:&v12];
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
        v16 = stringCopy;
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