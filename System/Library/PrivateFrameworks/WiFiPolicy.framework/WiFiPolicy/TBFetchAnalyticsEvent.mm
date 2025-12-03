@interface TBFetchAnalyticsEvent
+ (id)fetchEventWithSource:(unint64_t)source type:(unint64_t)type trigger:(unint64_t)trigger duration:(id)duration requestCount:(id)count resultCount:(id)resultCount error:(id)error tileKey:(id)self0;
- (NSDictionary)eventDictionary;
@end

@implementation TBFetchAnalyticsEvent

- (NSDictionary)eventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBFetchAnalyticsEvent source](self, "source")}];
  [v3 setObject:v4 forKey:@"source"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBFetchAnalyticsEvent type](self, "type")}];
  [v3 setObject:v5 forKey:@"type"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBFetchAnalyticsEvent trigger](self, "trigger")}];
  [v3 setObject:v6 forKey:@"trigger"];

  duration = [(TBFetchAnalyticsEvent *)self duration];

  if (duration)
  {
    duration2 = [(TBFetchAnalyticsEvent *)self duration];
    [v3 setObject:duration2 forKey:@"duration"];
  }

  requestCount = [(TBFetchAnalyticsEvent *)self requestCount];

  if (requestCount)
  {
    requestCount2 = [(TBFetchAnalyticsEvent *)self requestCount];
    [v3 setObject:requestCount2 forKey:@"requestCount"];
  }

  resultCount = [(TBFetchAnalyticsEvent *)self resultCount];

  if (resultCount)
  {
    resultCount2 = [(TBFetchAnalyticsEvent *)self resultCount];
    [v3 setObject:resultCount2 forKey:@"resultCount"];
  }

  error = [(TBFetchAnalyticsEvent *)self error];

  if (error)
  {
    v14 = MEMORY[0x277CCABB0];
    error2 = [(TBFetchAnalyticsEvent *)self error];
    v16 = [v14 numberWithInteger:{objc_msgSend(error2, "code")}];
    [v3 setObject:v16 forKey:@"errorCode"];
  }

  date = [(TBFetchAnalyticsEvent *)self date];

  if (date)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date2 = [(TBFetchAnalyticsEvent *)self date];
    v20 = [currentCalendar components:96 fromDate:date2];

    hour = [v20 hour];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:hour];
    [v3 setObject:v22 forKey:@"hour"];
  }

  tileKey = [(TBFetchAnalyticsEvent *)self tileKey];

  if (tileKey)
  {
    tileKey2 = [(TBFetchAnalyticsEvent *)self tileKey];
    [v3 setObject:tileKey2 forKey:@"tileKey"];
  }

  return v3;
}

+ (id)fetchEventWithSource:(unint64_t)source type:(unint64_t)type trigger:(unint64_t)trigger duration:(id)duration requestCount:(id)count resultCount:(id)resultCount error:(id)error tileKey:(id)self0
{
  keyCopy = key;
  errorCopy = error;
  resultCountCopy = resultCount;
  countCopy = count;
  durationCopy = duration;
  v21 = objc_alloc_init(TBFetchAnalyticsEvent);
  [(TBFetchAnalyticsEvent *)v21 setSource:source];
  [(TBFetchAnalyticsEvent *)v21 setType:type];
  [(TBFetchAnalyticsEvent *)v21 setTrigger:trigger];
  [(TBFetchAnalyticsEvent *)v21 setDuration:durationCopy];

  [(TBFetchAnalyticsEvent *)v21 setRequestCount:countCopy];
  [(TBFetchAnalyticsEvent *)v21 setResultCount:resultCountCopy];

  [(TBFetchAnalyticsEvent *)v21 setError:errorCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [(TBFetchAnalyticsEvent *)v21 setDate:date];

  [(TBFetchAnalyticsEvent *)v21 setTileKey:keyCopy];

  return v21;
}

@end