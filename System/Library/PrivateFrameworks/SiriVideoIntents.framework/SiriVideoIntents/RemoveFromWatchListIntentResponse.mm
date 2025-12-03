@interface RemoveFromWatchListIntentResponse
- (RemoveFromWatchListIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation RemoveFromWatchListIntentResponse

- (RemoveFromWatchListIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2698549E4();
  }

  else
  {
    v3 = 0;
  }

  return RemoveFromWatchListIntentResponse.init(propertiesByName:)(v3);
}

@end