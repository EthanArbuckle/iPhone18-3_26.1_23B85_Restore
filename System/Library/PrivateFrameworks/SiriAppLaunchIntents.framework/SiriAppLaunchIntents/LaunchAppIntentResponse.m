@interface LaunchAppIntentResponse
- (LaunchAppIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation LaunchAppIntentResponse

- (LaunchAppIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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