@interface TBFetchAnalyticsEvent
+ (id)fetchEventWithSource:(unint64_t)a3 type:(unint64_t)a4 trigger:(unint64_t)a5 duration:(id)a6 requestCount:(id)a7 resultCount:(id)a8 error:(id)a9 tileKey:(id)a10;
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

  v7 = [(TBFetchAnalyticsEvent *)self duration];

  if (v7)
  {
    v8 = [(TBFetchAnalyticsEvent *)self duration];
    [v3 setObject:v8 forKey:@"duration"];
  }

  v9 = [(TBFetchAnalyticsEvent *)self requestCount];

  if (v9)
  {
    v10 = [(TBFetchAnalyticsEvent *)self requestCount];
    [v3 setObject:v10 forKey:@"requestCount"];
  }

  v11 = [(TBFetchAnalyticsEvent *)self resultCount];

  if (v11)
  {
    v12 = [(TBFetchAnalyticsEvent *)self resultCount];
    [v3 setObject:v12 forKey:@"resultCount"];
  }

  v13 = [(TBFetchAnalyticsEvent *)self error];

  if (v13)
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = [(TBFetchAnalyticsEvent *)self error];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "code")}];
    [v3 setObject:v16 forKey:@"errorCode"];
  }

  v17 = [(TBFetchAnalyticsEvent *)self date];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEA80] currentCalendar];
    v19 = [(TBFetchAnalyticsEvent *)self date];
    v20 = [v18 components:96 fromDate:v19];

    v21 = [v20 hour];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
    [v3 setObject:v22 forKey:@"hour"];
  }

  v23 = [(TBFetchAnalyticsEvent *)self tileKey];

  if (v23)
  {
    v24 = [(TBFetchAnalyticsEvent *)self tileKey];
    [v3 setObject:v24 forKey:@"tileKey"];
  }

  return v3;
}

+ (id)fetchEventWithSource:(unint64_t)a3 type:(unint64_t)a4 trigger:(unint64_t)a5 duration:(id)a6 requestCount:(id)a7 resultCount:(id)a8 error:(id)a9 tileKey:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = objc_alloc_init(TBFetchAnalyticsEvent);
  [(TBFetchAnalyticsEvent *)v21 setSource:a3];
  [(TBFetchAnalyticsEvent *)v21 setType:a4];
  [(TBFetchAnalyticsEvent *)v21 setTrigger:a5];
  [(TBFetchAnalyticsEvent *)v21 setDuration:v20];

  [(TBFetchAnalyticsEvent *)v21 setRequestCount:v19];
  [(TBFetchAnalyticsEvent *)v21 setResultCount:v18];

  [(TBFetchAnalyticsEvent *)v21 setError:v17];
  v22 = [MEMORY[0x277CBEAA8] date];
  [(TBFetchAnalyticsEvent *)v21 setDate:v22];

  [(TBFetchAnalyticsEvent *)v21 setTileKey:v16];

  return v21;
}

@end