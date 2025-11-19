@interface SiriMatchResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithSiriMatchToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSiriMatchsToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedSiriMatch:(id)a3;
@end

@implementation SiriMatchResolutionResult

+ (id)successWithResolvedSiriMatch:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static SiriMatchResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithSiriMatchsToDisambiguate:(id)a3
{
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static SiriMatchResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriMatchToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static SiriMatchResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  v3 = a3;
  static SiriMatchResolutionResult.success(with:)();
  return static SiriMatchResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static SiriMatchResolutionResult.success(with:)();
  return static SiriMatchResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  v3 = a3;
  static SiriMatchResolutionResult.confirmationRequired(with:)();
  return SiriMatchResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end