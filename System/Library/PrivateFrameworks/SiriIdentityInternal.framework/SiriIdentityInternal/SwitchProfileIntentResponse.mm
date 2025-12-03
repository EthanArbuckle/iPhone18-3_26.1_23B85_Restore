@interface SwitchProfileIntentResponse
- (SwitchProfileIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SwitchProfileIntentResponse

- (SwitchProfileIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_266E9CFC4();
  }

  else
  {
    v3 = 0;
  }

  return SwitchProfileIntentResponse.init(propertiesByName:)(v3);
}

@end