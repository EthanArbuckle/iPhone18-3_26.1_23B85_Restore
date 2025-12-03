@interface ContentResolutionResult
+ (id)confirmationRequiredWithContentToConfirm:(id)confirm;
+ (id)disambiguationWithContentsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContent:(id)content;
@end

@implementation ContentResolutionResult

+ (id)successWithResolvedContent:(id)content
{
  swift_getObjCClassMetadata();
  contentCopy = content;
  v5 = static ContentResolutionResult.success(with:)(contentCopy);

  return v5;
}

+ (id)disambiguationWithContentsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Content();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ContentResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContentToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContentResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static ContentResolutionResult.disambiguation(with:)();
}

@end