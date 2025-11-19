@interface GetContactIntentResponse
- (GetContactIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation GetContactIntentResponse

- (GetContactIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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