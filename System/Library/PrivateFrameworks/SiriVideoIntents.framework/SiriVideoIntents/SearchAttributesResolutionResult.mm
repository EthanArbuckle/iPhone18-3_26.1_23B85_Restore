@interface SearchAttributesResolutionResult
+ (id)confirmationRequiredWithSearchAttributesToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithSearchAttributessToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSearchAttributes:(id)attributes;
@end

@implementation SearchAttributesResolutionResult

+ (id)successWithResolvedSearchAttributes:(id)attributes
{
  swift_getObjCClassMetadata();
  attributesCopy = attributes;
  v5 = static SearchAttributesResolutionResult.success(with:)(attributesCopy);

  return v5;
}

+ (id)disambiguationWithSearchAttributessToDisambiguate:(id)disambiguate
{
  type metadata accessor for SearchAttributes();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static SearchAttributesResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithSearchAttributesToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static SearchAttributesResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static SearchAttributesResolutionResult.disambiguation(with:)();
}

@end