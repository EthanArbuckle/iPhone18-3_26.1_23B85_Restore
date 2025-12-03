@interface PauseMediaIntentResponse
- (PauseMediaIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation PauseMediaIntentResponse

- (PauseMediaIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return PauseMediaIntentResponse.init(propertiesByName:)(v3);
}

@end