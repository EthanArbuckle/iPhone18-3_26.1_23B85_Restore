@interface SkipContentIntentResponse
- (SkipContentIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation SkipContentIntentResponse

- (SkipContentIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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