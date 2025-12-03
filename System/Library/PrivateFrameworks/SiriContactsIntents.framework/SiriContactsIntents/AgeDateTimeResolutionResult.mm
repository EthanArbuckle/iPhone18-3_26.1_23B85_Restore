@interface AgeDateTimeResolutionResult
+ (id)confirmationRequiredWithAgeDateTimeToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithAgeDateTimesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAgeDateTime:(id)time;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation AgeDateTimeResolutionResult

+ (id)successWithResolvedAgeDateTime:(id)time
{
  swift_getObjCClassMetadata();
  timeCopy = time;
  v5 = static AgeDateTimeResolutionResult.success(with:)(timeCopy);

  return v5;
}

+ (id)disambiguationWithAgeDateTimesToDisambiguate:(id)disambiguate
{
  type metadata accessor for AgeDateTime();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static AgeDateTimeResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithAgeDateTimeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static AgeDateTimeResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  objectCopy = object;
  static AgeDateTimeResolutionResult.success(with:)();
  return static AgeDateTimeResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static AgeDateTimeResolutionResult.success(with:)();
  return static AgeDateTimeResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  confirmCopy = confirm;
  static AgeDateTimeResolutionResult.confirmationRequired(with:)();
  return AgeDateTimeResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end