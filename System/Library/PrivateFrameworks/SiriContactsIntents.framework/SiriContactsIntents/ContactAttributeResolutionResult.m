@interface ContactAttributeResolutionResult
+ (id)confirmationRequiredWithContactAttributeToConfirm:(id)a3;
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)disambiguationWithContactAttributesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedContactAttribute:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
@end

@implementation ContactAttributeResolutionResult

+ (id)successWithResolvedContactAttribute:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContactAttributeResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithContactAttributesToDisambiguate:(id)a3
{
  type metadata accessor for ContactAttribute();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactAttributeToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContactAttributeResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  v3 = a3;
  static ContactAttributeResolutionResult.success(with:)();
  return static ContactAttributeResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactAttributeResolutionResult.success(with:)();
  return static ContactAttributeResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  v3 = a3;
  static ContactAttributeResolutionResult.confirmationRequired(with:)();
  return ContactAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end