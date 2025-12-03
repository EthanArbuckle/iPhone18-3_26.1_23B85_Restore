@interface CloseAppIntentResponse
- (CloseAppIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation CloseAppIntentResponse

- (CloseAppIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_26618C840();
  }

  else
  {
    v3 = 0;
  }

  return CloseAppIntentResponse.init(propertiesByName:)(v3);
}

@end