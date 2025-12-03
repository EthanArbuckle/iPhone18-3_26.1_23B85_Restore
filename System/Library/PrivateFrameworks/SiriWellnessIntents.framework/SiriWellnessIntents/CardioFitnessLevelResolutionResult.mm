@interface CardioFitnessLevelResolutionResult
+ (id)confirmationRequiredWithCardioFitnessLevelToConfirm:(int64_t)confirm;
+ (id)successWithResolvedCardioFitnessLevel:(int64_t)level;
- (CardioFitnessLevelResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation CardioFitnessLevelResolutionResult

+ (id)successWithResolvedCardioFitnessLevel:(int64_t)level
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static CardioFitnessLevelResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithCardioFitnessLevelToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static CardioFitnessLevelResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (CardioFitnessLevelResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  MEMORY[0x277D82BE0](dictionary);
  MEMORY[0x277D82BE0](intent);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = CardioFitnessLevelResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  MEMORY[0x277D82BD8](dictionary);
  return v8;
}

@end