@interface TBCacheAnalyticsEvent
+ (id)cacheAnalyticsEventWithStatus:(unint64_t)a3 staleness:(unint64_t)a4 tileKey:(unint64_t)a5 type:(unint64_t)a6 error:(id)a7;
+ (id)cacheAvailabilityEventWithStatus:(unint64_t)a3;
+ (id)cacheEventWithTotalCount:(unint64_t)a3 last24HoursCount:(unint64_t)a4;
@end

@implementation TBCacheAnalyticsEvent

+ (id)cacheAnalyticsEventWithStatus:(unint64_t)a3 staleness:(unint64_t)a4 tileKey:(unint64_t)a5 type:(unint64_t)a6 error:(id)a7
{
  v11 = a7;
  v12 = objc_alloc_init(TBCacheAnalyticsEvent);
  [(TBCacheAnalyticsEvent *)v12 setEventName:@"com.apple.wifi.3bars.cache_miss"];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v13 setObject:v14 forKey:@"status"];

  if (a4)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [v13 setObject:v15 forKey:@"staleness"];
  }

  if (a5)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [v13 setObject:v16 forKey:@"tileKey"];
  }

  if (v11)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
    [v13 setObject:v17 forKey:@"error"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v13 setObject:v18 forKey:@"type"];

  [(TBCacheAnalyticsEvent *)v12 setEventDictionary:v13];

  return v12;
}

+ (id)cacheEventWithTotalCount:(unint64_t)a3 last24HoursCount:(unint64_t)a4
{
  v6 = objc_alloc_init(TBCacheAnalyticsEvent);
  [(TBCacheAnalyticsEvent *)v6 setEventName:@"com.apple.wifi.3bars.cache"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 setObject:v8 forKey:@"total"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v7 setObject:v9 forKey:@"recent"];

  [(TBCacheAnalyticsEvent *)v6 setEventDictionary:v7];

  return v6;
}

+ (id)cacheAvailabilityEventWithStatus:(unint64_t)a3
{
  v4 = objc_alloc_init(TBCacheAnalyticsEvent);
  [(TBCacheAnalyticsEvent *)v4 setEventName:@"com.apple.wifi.3bars.cache_availability"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setObject:v6 forKey:@"status"];

  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 components:96 fromDate:v9];

  v11 = [v10 hour];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  [v5 setObject:v12 forKey:@"hour"];

  objc_autoreleasePoolPop(v7);
  [(TBCacheAnalyticsEvent *)v4 setEventDictionary:v5];

  return v4;
}

@end