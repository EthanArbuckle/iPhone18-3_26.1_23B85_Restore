@interface ContactAttributeResolutionResult
+ (id)confirmationRequiredWithContactAttributeToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithContactAttributesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContactAttribute:(id)attribute;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation ContactAttributeResolutionResult

+ (id)successWithResolvedContactAttribute:(id)attribute
{
  swift_getObjCClassMetadata();
  attributeCopy = attribute;
  v5 = static ContactAttributeResolutionResult.success(with:)(attributeCopy);

  return v5;
}

+ (id)disambiguationWithContactAttributesToDisambiguate:(id)disambiguate
{
  type metadata accessor for ContactAttribute();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactAttributeResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactAttributeToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContactAttributeResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  objectCopy = object;
  static ContactAttributeResolutionResult.success(with:)();
  return static ContactAttributeResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactAttributeResolutionResult.success(with:)();
  return static ContactAttributeResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  confirmCopy = confirm;
  static ContactAttributeResolutionResult.confirmationRequired(with:)();
  return ContactAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end