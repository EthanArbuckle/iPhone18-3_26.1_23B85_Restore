@interface SeekTimeIntentResponse
- (SeekTimeIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation SeekTimeIntentResponse

- (SeekTimeIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return SeekTimeIntentResponse.init(propertiesByName:)(v3);
}

@end