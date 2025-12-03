@interface ContactResolutionResult
+ (id)confirmationRequiredWithContactToConfirm:(id)confirm;
+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm;
+ (id)disambiguationWithContactsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContact:(id)contact;
+ (id)successWithResolvedObject:(id)object;
@end

@implementation ContactResolutionResult

+ (id)successWithResolvedContact:(id)contact
{
  swift_getObjCClassMetadata();
  contactCopy = contact;
  v5 = static ContactResolutionResult.success(with:)(contactCopy);

  return v5;
}

+ (id)disambiguationWithContactsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Contact();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static ContactResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContactToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContactResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)successWithResolvedObject:(id)object
{
  objectCopy = object;
  static ContactResolutionResult.success(with:)();
  return static ContactResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static ContactResolutionResult.success(with:)();
  return static ContactResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)confirm
{
  confirmCopy = confirm;
  static ContactResolutionResult.confirmationRequired(with:)();
  return ContactResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end