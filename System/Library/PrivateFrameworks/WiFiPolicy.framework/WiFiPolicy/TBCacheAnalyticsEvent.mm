@interface TBCacheAnalyticsEvent
+ (id)cacheAnalyticsEventWithStatus:(unint64_t)status staleness:(unint64_t)staleness tileKey:(unint64_t)key type:(unint64_t)type error:(id)error;
+ (id)cacheAvailabilityEventWithStatus:(unint64_t)status;
+ (id)cacheEventWithTotalCount:(unint64_t)count last24HoursCount:(unint64_t)hoursCount;
@end

@implementation TBCacheAnalyticsEvent

+ (id)cacheAnalyticsEventWithStatus:(unint64_t)status staleness:(unint64_t)staleness tileKey:(unint64_t)key type:(unint64_t)type error:(id)error
{
  errorCopy = error;
  v12 = objc_alloc_init(TBCacheAnalyticsEvent);
  [(TBCacheAnalyticsEvent *)v12 setEventName:@"com.apple.wifi.3bars.cache_miss"];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  [v13 setObject:v14 forKey:@"status"];

  if (staleness)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:staleness];
    [v13 setObject:v15 forKey:@"staleness"];
  }

  if (key)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:key];
    [v13 setObject:v16 forKey:@"tileKey"];
  }

  if (errorCopy)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v13 setObject:v17 forKey:@"error"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v13 setObject:v18 forKey:@"type"];

  [(TBCacheAnalyticsEvent *)v12 setEventDictionary:v13];

  return v12;
}

+ (id)cacheEventWithTotalCount:(unint64_t)count last24HoursCount:(unint64_t)hoursCount
{
  v6 = objc_alloc_init(TBCacheAnalyticsEvent);
  [(TBCacheAnalyticsEvent *)v6 setEventName:@"com.apple.wifi.3bars.cache"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [v7 setObject:v8 forKey:@"total"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hoursCount];
  [v7 setObject:v9 forKey:@"recent"];

  [(TBCacheAnalyticsEvent *)v6 setEventDictionary:v7];

  return v6;
}

+ (id)cacheAvailabilityEventWithStatus:(unint64_t)status
{
  v4 = objc_alloc_init(TBCacheAnalyticsEvent);
  [(TBCacheAnalyticsEvent *)v4 setEventName:@"com.apple.wifi.3bars.cache_availability"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  [v5 setObject:v6 forKey:@"status"];

  v7 = objc_autoreleasePoolPush();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [currentCalendar components:96 fromDate:date];

  hour = [v10 hour];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:hour];
  [v5 setObject:v12 forKey:@"hour"];

  objc_autoreleasePoolPop(v7);
  [(TBCacheAnalyticsEvent *)v4 setEventDictionary:v5];

  return v4;
}

@end