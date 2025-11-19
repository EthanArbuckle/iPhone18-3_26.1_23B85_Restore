@interface PostalAddressResolutionResult
+ (id)confirmationRequiredWithObjectToConfirm:(id)a3;
+ (id)confirmationRequiredWithPostalAddressToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithPostalAddresssToDisambiguate:(id)a3;
+ (id)successWithResolvedObject:(id)a3;
+ (id)successWithResolvedPostalAddress:(id)a3;
@end

@implementation PostalAddressResolutionResult

+ (id)successWithResolvedPostalAddress:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static PostalAddressResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithPostalAddresssToDisambiguate:(id)a3
{
  type metadata accessor for PostalAddress();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = static PostalAddressResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithPostalAddressToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static PostalAddressResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)successWithResolvedObject:(id)a3
{
  v3 = a3;
  static PostalAddressResolutionResult.success(with:)();
  return static PostalAddressResolutionResult.disambiguation(with:)();
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  type metadata accessor for INObject();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static PostalAddressResolutionResult.success(with:)();
  return static PostalAddressResolutionResult.confirmationRequired(with:)();
}

+ (id)confirmationRequiredWithObjectToConfirm:(id)a3
{
  v3 = a3;
  static PostalAddressResolutionResult.confirmationRequired(with:)();
  return PostalAddressResolutionResult.__allocating_init(JSONDictionary:intent:)();
}

@end