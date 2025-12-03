@interface PeriodProjectionFocusResolutionResult
+ (id)confirmationRequiredWithPeriodProjectionFocusToConfirm:(int64_t)confirm;
+ (id)successWithResolvedPeriodProjectionFocus:(int64_t)focus;
- (PeriodProjectionFocusResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation PeriodProjectionFocusResolutionResult

+ (id)successWithResolvedPeriodProjectionFocus:(int64_t)focus
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodProjectionFocusResolutionResult.success(with:)();

  return v3;
}

+ (id)confirmationRequiredWithPeriodProjectionFocusToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v3 = static PeriodProjectionFocusResolutionResult.confirmationRequired(with:)();

  return v3;
}

- (PeriodProjectionFocusResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  MEMORY[0x277D82BE0](dictionary);
  MEMORY[0x277D82BE0](intent);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = PeriodProjectionFocusResolutionResult.init(JSONDictionary:intent:)(v4, intent);
  MEMORY[0x277D82BD8](dictionary);
  return v8;
}

@end