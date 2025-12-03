@interface ModifyContactAttributeIntentResponse
- (ModifyContactAttributeIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation ModifyContactAttributeIntentResponse

- (ModifyContactAttributeIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return ModifyContactAttributeIntentResponse.init(propertiesByName:)(v3);
}

@end