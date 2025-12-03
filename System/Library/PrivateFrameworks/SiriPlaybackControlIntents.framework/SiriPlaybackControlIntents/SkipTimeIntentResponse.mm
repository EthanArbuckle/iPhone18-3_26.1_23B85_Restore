@interface SkipTimeIntentResponse
- (SkipTimeIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SkipTimeIntentResponse

- (SkipTimeIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SkipTimeIntentResponse.init(propertiesByName:)(v3);
}

@end