@interface LaunchAppIntentResponse
- (LaunchAppIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation LaunchAppIntentResponse

- (LaunchAppIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_26618C840();
  }

  else
  {
    v3 = 0;
  }

  return LaunchAppIntentResponse.init(propertiesByName:)(v3);
}

@end