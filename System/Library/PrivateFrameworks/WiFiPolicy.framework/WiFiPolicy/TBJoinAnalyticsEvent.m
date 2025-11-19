@interface TBJoinAnalyticsEvent
+ (id)joinAlertEventWithSource:(unint64_t)a3 action:(unint64_t)a4 visibleDuration:(id)a5;
+ (id)joinRecommendationEventWithSource:(unint64_t)a3 action:(unint64_t)a4 BSSID:(id)a5 latitude:(id)a6 longitude:(id)a7 score:(id)a8 visibleDuration:(id)a9;
- (NSDictionary)eventDictionary;
- (NSString)eventName;
@end

@implementation TBJoinAnalyticsEvent

+ (id)joinRecommendationEventWithSource:(unint64_t)a3 action:(unint64_t)a4 BSSID:(id)a5 latitude:(id)a6 longitude:(id)a7 score:(id)a8 visibleDuration:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = objc_alloc_init(TBJoinAnalyticsEvent);
  [(TBJoinAnalyticsEvent *)v20 setType:0];
  [(TBJoinAnalyticsEvent *)v20 setSource:a3];
  [(TBJoinAnalyticsEvent *)v20 setAction:a4];
  [(TBJoinAnalyticsEvent *)v20 setBssid:v19];

  [(TBJoinAnalyticsEvent *)v20 setLatitude:v18];
  [(TBJoinAnalyticsEvent *)v20 setLongitude:v17];

  [(TBJoinAnalyticsEvent *)v20 setScore:v16];
  [(TBJoinAnalyticsEvent *)v20 setVisibleDuration:v15];

  return v20;
}

+ (id)joinAlertEventWithSource:(unint64_t)a3 action:(unint64_t)a4 visibleDuration:(id)a5
{
  v7 = a5;
  v8 = objc_alloc_init(TBJoinAnalyticsEvent);
  [(TBJoinAnalyticsEvent *)v8 setType:1];
  [(TBJoinAnalyticsEvent *)v8 setSource:a3];
  [(TBJoinAnalyticsEvent *)v8 setAction:a4];
  [(TBJoinAnalyticsEvent *)v8 setVisibleDuration:v7];

  return v8;
}

- (NSDictionary)eventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBJoinAnalyticsEvent action](self, "action")}];
  [v3 setObject:v4 forKey:@"action"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBJoinAnalyticsEvent source](self, "source")}];
  [v3 setObject:v5 forKey:@"source"];

  v6 = [(TBJoinAnalyticsEvent *)self bssid];

  if (v6)
  {
    v7 = [(TBJoinAnalyticsEvent *)self bssid];
    [v3 setObject:v7 forKey:@"BSSID"];
  }

  v8 = [(TBJoinAnalyticsEvent *)self latitude];

  if (v8)
  {
    v9 = [(TBJoinAnalyticsEvent *)self latitude];
    [v3 setObject:v9 forKey:@"latitude"];
  }

  v10 = [(TBJoinAnalyticsEvent *)self longitude];

  if (v10)
  {
    v11 = [(TBJoinAnalyticsEvent *)self longitude];
    [v3 setObject:v11 forKey:@"longitude"];
  }

  v12 = [(TBJoinAnalyticsEvent *)self score];

  if (v12)
  {
    v13 = [(TBJoinAnalyticsEvent *)self score];
    [v3 setObject:v13 forKey:@"score"];
  }

  v14 = [(TBJoinAnalyticsEvent *)self visibleDuration];

  if (v14)
  {
    v15 = [(TBJoinAnalyticsEvent *)self visibleDuration];
    [v3 setObject:v15 forKey:@"visibleDuration"];
  }

  return v3;
}

- (NSString)eventName
{
  if (![(TBJoinAnalyticsEvent *)self type])
  {
    return @"com.apple.wifi.3bars.join_recommendation";
  }

  if ([(TBJoinAnalyticsEvent *)self type]== 1)
  {
    return @"com.apple.wifi.3bars.join_alert";
  }

  return 0;
}

@end