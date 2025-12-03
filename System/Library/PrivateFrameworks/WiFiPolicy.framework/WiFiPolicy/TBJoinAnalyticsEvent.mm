@interface TBJoinAnalyticsEvent
+ (id)joinAlertEventWithSource:(unint64_t)source action:(unint64_t)action visibleDuration:(id)duration;
+ (id)joinRecommendationEventWithSource:(unint64_t)source action:(unint64_t)action BSSID:(id)d latitude:(id)latitude longitude:(id)longitude score:(id)score visibleDuration:(id)duration;
- (NSDictionary)eventDictionary;
- (NSString)eventName;
@end

@implementation TBJoinAnalyticsEvent

+ (id)joinRecommendationEventWithSource:(unint64_t)source action:(unint64_t)action BSSID:(id)d latitude:(id)latitude longitude:(id)longitude score:(id)score visibleDuration:(id)duration
{
  durationCopy = duration;
  scoreCopy = score;
  longitudeCopy = longitude;
  latitudeCopy = latitude;
  dCopy = d;
  v20 = objc_alloc_init(TBJoinAnalyticsEvent);
  [(TBJoinAnalyticsEvent *)v20 setType:0];
  [(TBJoinAnalyticsEvent *)v20 setSource:source];
  [(TBJoinAnalyticsEvent *)v20 setAction:action];
  [(TBJoinAnalyticsEvent *)v20 setBssid:dCopy];

  [(TBJoinAnalyticsEvent *)v20 setLatitude:latitudeCopy];
  [(TBJoinAnalyticsEvent *)v20 setLongitude:longitudeCopy];

  [(TBJoinAnalyticsEvent *)v20 setScore:scoreCopy];
  [(TBJoinAnalyticsEvent *)v20 setVisibleDuration:durationCopy];

  return v20;
}

+ (id)joinAlertEventWithSource:(unint64_t)source action:(unint64_t)action visibleDuration:(id)duration
{
  durationCopy = duration;
  v8 = objc_alloc_init(TBJoinAnalyticsEvent);
  [(TBJoinAnalyticsEvent *)v8 setType:1];
  [(TBJoinAnalyticsEvent *)v8 setSource:source];
  [(TBJoinAnalyticsEvent *)v8 setAction:action];
  [(TBJoinAnalyticsEvent *)v8 setVisibleDuration:durationCopy];

  return v8;
}

- (NSDictionary)eventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBJoinAnalyticsEvent action](self, "action")}];
  [v3 setObject:v4 forKey:@"action"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TBJoinAnalyticsEvent source](self, "source")}];
  [v3 setObject:v5 forKey:@"source"];

  bssid = [(TBJoinAnalyticsEvent *)self bssid];

  if (bssid)
  {
    bssid2 = [(TBJoinAnalyticsEvent *)self bssid];
    [v3 setObject:bssid2 forKey:@"BSSID"];
  }

  latitude = [(TBJoinAnalyticsEvent *)self latitude];

  if (latitude)
  {
    latitude2 = [(TBJoinAnalyticsEvent *)self latitude];
    [v3 setObject:latitude2 forKey:@"latitude"];
  }

  longitude = [(TBJoinAnalyticsEvent *)self longitude];

  if (longitude)
  {
    longitude2 = [(TBJoinAnalyticsEvent *)self longitude];
    [v3 setObject:longitude2 forKey:@"longitude"];
  }

  score = [(TBJoinAnalyticsEvent *)self score];

  if (score)
  {
    score2 = [(TBJoinAnalyticsEvent *)self score];
    [v3 setObject:score2 forKey:@"score"];
  }

  visibleDuration = [(TBJoinAnalyticsEvent *)self visibleDuration];

  if (visibleDuration)
  {
    visibleDuration2 = [(TBJoinAnalyticsEvent *)self visibleDuration];
    [v3 setObject:visibleDuration2 forKey:@"visibleDuration"];
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