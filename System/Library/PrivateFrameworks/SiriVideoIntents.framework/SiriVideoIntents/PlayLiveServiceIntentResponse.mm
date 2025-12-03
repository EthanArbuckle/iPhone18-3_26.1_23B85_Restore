@interface PlayLiveServiceIntentResponse
- (PlayLiveServiceIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation PlayLiveServiceIntentResponse

- (PlayLiveServiceIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2698549E4();
  }

  else
  {
    v3 = 0;
  }

  return PlayLiveServiceIntentResponse.init(propertiesByName:)(v3);
}

@end