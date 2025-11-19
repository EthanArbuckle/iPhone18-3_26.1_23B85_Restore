@interface AgeDateTimeResolutionResult
+ (id)confirmationRequiredWithAgeDateTimeToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithAgeDateTimesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedAgeDateTime:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation AgeDateTimeResolutionResult

+ (id)successWithResolvedAgeDateTime:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AgeDateTimeResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithAgeDateTimesToDisambiguate:(id)a3
{
  type metadata accessor for AgeDateTime();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static AgeDateTimeResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithAgeDateTimeToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AgeDateTimeResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  v3 = a3;
  static AgeDateTimeResolutionResult.success(with:)();
  return static AgeDateTimeResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static AgeDateTimeResolutionResult.success(with:)();
  return static AgeDateTimeResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  v3 = a3;
  static AgeDateTimeResolutionResult.confirmationRequired(with:)();
  return AgeDateTimeResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end