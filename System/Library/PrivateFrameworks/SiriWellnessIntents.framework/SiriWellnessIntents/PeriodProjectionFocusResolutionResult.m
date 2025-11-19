@interface PeriodProjectionFocusResolutionResult
+ (id)confirmationRequiredWithPeriodProjectionFocusToConfirm:(int64_t)a3;
+ (id)successWithResolvedPeriodProjectionFocus:(int64_t)a3;
- (PeriodProjectionFocusResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation PeriodProjectionFocusResolutionResult

+ (id)successWithResolvedPeriodProjectionFocus:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodProjectionFocusResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithPeriodProjectionFocusToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodProjectionFocusResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (PeriodProjectionFocusResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = PeriodProjectionFocusResolutionResult.init(JSONDictionary:intent:)(v4, a4);
  MEMORY[0x277D82BD8](a3);
  return v8;
}

@end