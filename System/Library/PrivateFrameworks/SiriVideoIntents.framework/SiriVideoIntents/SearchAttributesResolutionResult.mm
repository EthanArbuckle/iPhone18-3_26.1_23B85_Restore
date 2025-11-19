@interface SearchAttributesResolutionResult
+ (id)confirmationRequiredWithSearchAttributesToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithSearchAttributessToDisambiguate:(id)a3;
+ (id)successWithResolvedSearchAttributes:(id)a3;
@end

@implementation SearchAttributesResolutionResult

+ (id)successWithResolvedSearchAttributes:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static SearchAttributesResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithSearchAttributessToDisambiguate:(id)a3
{
  type metadata accessor for SearchAttributes();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static SearchAttributesResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithSearchAttributesToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static SearchAttributesResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static SearchAttributesResolutionResult.disambiguation(with:)();
}

@end