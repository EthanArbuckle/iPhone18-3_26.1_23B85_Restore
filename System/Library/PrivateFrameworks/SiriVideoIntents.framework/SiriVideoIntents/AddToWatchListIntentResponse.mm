@interface AddToWatchListIntentResponse
- (AddToWatchListIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation AddToWatchListIntentResponse

- (AddToWatchListIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2698549E4();
  }

  else
  {
    v3 = 0;
  }

  return AddToWatchListIntentResponse.init(propertiesByName:)(v3);
}

@end