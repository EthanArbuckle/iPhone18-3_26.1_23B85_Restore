@interface ContentSearchResolutionResult
+ (id)confirmationRequiredWithContentSearchToConfirm:(id)confirm;
+ (id)disambiguationWithContentSearchsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContentSearch:(id)search;
@end

@implementation ContentSearchResolutionResult

+ (id)successWithResolvedContentSearch:(id)search
{
  swift_getObjCClassMetadata();
  searchCopy = search;
  v5 = static ContentSearchResolutionResult.success(with:)(searchCopy);

  return v5;
}

+ (id)disambiguationWithContentSearchsToDisambiguate:(id)disambiguate
{
  type metadata accessor for ContentSearch();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ContentSearchResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContentSearchToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContentSearchResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static ContentSearchResolutionResult.disambiguation(with:)();
}

@end