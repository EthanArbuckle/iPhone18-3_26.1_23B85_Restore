@interface WatchSportsEventIntentResponse
- (WatchSportsEventIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation WatchSportsEventIntentResponse

- (WatchSportsEventIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_2698549E4();
  }

  else
  {
    v3 = 0;
  }

  return WatchSportsEventIntentResponse.init(propertiesByName:)(v3);
}

@end