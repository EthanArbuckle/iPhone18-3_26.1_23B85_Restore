@interface DeepLaunchIntentResponse
- (DeepLaunchIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation DeepLaunchIntentResponse

- (DeepLaunchIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_26618C840();
  }

  else
  {
    v3 = 0;
  }

  return DeepLaunchIntentResponse.init(propertiesByName:)(v3);
}

@end