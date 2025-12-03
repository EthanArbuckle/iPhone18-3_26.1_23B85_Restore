@interface GetContactIntentResponse
- (GetContactIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation GetContactIntentResponse

- (GetContactIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return GetContactIntentResponse.init(propertiesByName:)(v3);
}

@end