@interface PlayLiveServiceIntentResponse
- (PlayLiveServiceIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation PlayLiveServiceIntentResponse

- (PlayLiveServiceIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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