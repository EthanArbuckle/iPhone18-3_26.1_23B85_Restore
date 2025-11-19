@interface ContactResolutionResult
+ (id)confirmationRequiredWithContactToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithContactsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedContact:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation ContactResolutionResult

+ (id)successWithResolvedContact:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContactResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithContactsToDisambiguate:(id)a3
{
  type metadata accessor for Contact();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContactResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  v3 = a3;
  static ContactResolutionResult.success(with:)();
  return static ContactResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactResolutionResult.success(with:)();
  return static ContactResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  v3 = a3;
  static ContactResolutionResult.confirmationRequired(with:)();
  return ContactResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end