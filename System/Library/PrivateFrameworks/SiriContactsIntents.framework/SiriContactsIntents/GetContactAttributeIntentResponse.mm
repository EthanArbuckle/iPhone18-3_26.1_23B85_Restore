@interface GetContactAttributeIntentResponse
- (GetContactAttributeIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation GetContactAttributeIntentResponse

- (GetContactAttributeIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
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