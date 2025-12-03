@interface PlayVideoIntentResponse
- (PlayVideoIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation PlayVideoIntentResponse

- (PlayVideoIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2698549E4();
  }

  else
  {
    v3 = 0;
  }

  return PlayVideoIntentResponse.init(propertiesByName:)(v3);
}

@end