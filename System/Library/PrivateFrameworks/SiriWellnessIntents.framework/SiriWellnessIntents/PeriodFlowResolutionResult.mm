@interface PeriodFlowResolutionResult
+ (id)confirmationRequiredWithPeriodFlowToConfirm:(int64_t)confirm;
+ (id)successWithResolvedPeriodFlow:(int64_t)flow;
- (PeriodFlowResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation PeriodFlowResolutionResult

+ (id)successWithResolvedPeriodFlow:(int64_t)flow
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodFlowResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithPeriodFlowToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodFlowResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (PeriodFlowResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  MEMORY[0x277D82BE0](dictionary);
  MEMORY[0x277D82BE0](intent);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = PeriodFlowResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  MEMORY[0x277D82BD8](dictionary);
  return v8;
}

@end