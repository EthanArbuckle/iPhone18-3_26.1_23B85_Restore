@interface SkipContentIntentResponse
- (SkipContentIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SkipContentIntentResponse

- (SkipContentIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SkipContentIntentResponse.init(propertiesByName:)(v3);
}

@end