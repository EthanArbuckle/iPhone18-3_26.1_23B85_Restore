@interface ContentSearchResolutionResult
+ (id)confirmationRequiredWithContentSearchToConfirm:(id)a3;
+ (id)disambiguationWithContentSearchsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedContentSearch:(id)a3;
@end

@implementation ContentSearchResolutionResult

+ (id)successWithResolvedContentSearch:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContentSearchResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithContentSearchsToDisambiguate:(id)a3
{
  type metadata accessor for ContentSearch();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ContentSearchResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContentSearchToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContentSearchResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static ContentSearchResolutionResult.disambiguation(with:)();
}

@end