@interface PeriodFlowResolutionResult
+ (id)confirmationRequiredWithPeriodFlowToConfirm:(int64_t)a3;
+ (id)successWithResolvedPeriodFlow:(int64_t)a3;
- (PeriodFlowResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation PeriodFlowResolutionResult

+ (id)successWithResolvedPeriodFlow:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodFlowResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithPeriodFlowToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodFlowResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (PeriodFlowResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = PeriodFlowResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

@end