@interface GetContactAttributeIntentResponse
- (GetContactAttributeIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation GetContactAttributeIntentResponse

- (GetContactAttributeIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return GetContactAttributeIntentResponse.init(propertiesByName:)(v3);
}

@end