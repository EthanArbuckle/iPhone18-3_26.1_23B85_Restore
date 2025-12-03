@interface WatchSportsEventIntentResponse
- (WatchSportsEventIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation WatchSportsEventIntentResponse

- (WatchSportsEventIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
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