@interface ModifyContactAttributeIntentResponse
- (ModifyContactAttributeIntentResponse)initWithPropertiesByName:(id)a3;
@end

@implementation ModifyContactAttributeIntentResponse

- (ModifyContactAttributeIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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