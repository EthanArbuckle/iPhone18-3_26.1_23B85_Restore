@interface CardioFitnessLevelResolutionResult
+ (id)confirmationRequiredWithCardioFitnessLevelToConfirm:(int64_t)a3;
+ (id)successWithResolvedCardioFitnessLevel:(int64_t)a3;
- (CardioFitnessLevelResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation CardioFitnessLevelResolutionResult

+ (id)successWithResolvedCardioFitnessLevel:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static CardioFitnessLevelResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithCardioFitnessLevelToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static CardioFitnessLevelResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (CardioFitnessLevelResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = CardioFitnessLevelResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

@end