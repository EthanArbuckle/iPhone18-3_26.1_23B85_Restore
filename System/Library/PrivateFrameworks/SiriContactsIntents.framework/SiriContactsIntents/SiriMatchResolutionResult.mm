@interface SiriMatchResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)confirmationRequiredWithSiriMatchToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSiriMatchsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedObject:(id)object;
+ (id)successWithResolvedSiriMatch:(id)match;
@end

@implementation SiriMatchResolutionResult

+ (id)successWithResolvedSiriMatch:(id)match
{
  swift_getObjCClassMetadata();
  matchCopy = match;
  v5 = static SiriMatchResolutionResult.success(with:)(matchCopy);

  return v5;
}

+ (id)disambiguationWithSiriMatchsToDisambiguate:(id)disambiguate
{
  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static SiriMatchResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithSiriMatchToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static SiriMatchResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  objectCopy = object;
  static SiriMatchResolutionResult.success(with:)();
  return static SiriMatchResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static SiriMatchResolutionResult.success(with:)();
  return static SiriMatchResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  confirmCopy = confirm;
  static SiriMatchResolutionResult.confirmationRequired(with:)();
  return SiriMatchResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end