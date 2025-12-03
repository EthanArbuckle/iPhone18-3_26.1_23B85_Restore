@interface SetRepeatStateIntentResponse
- (SetRepeatStateIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SetRepeatStateIntentResponse

- (SetRepeatStateIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SetRepeatStateIntentResponse.init(propertiesByName:)(v3);
}

@end