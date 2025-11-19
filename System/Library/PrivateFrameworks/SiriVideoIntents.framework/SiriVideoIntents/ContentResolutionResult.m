@interface ContentResolutionResult
+ (id)confirmationRequiredWithContentToConfirm:(id)a3;
+ (id)disambiguationWithContentsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedContent:(id)a3;
@end

@implementation ContentResolutionResult

+ (id)successWithResolvedContent:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContentResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithContentsToDisambiguate:(id)a3
{
  type metadata accessor for Content();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ContentResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContentToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContentResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static ContentResolutionResult.disambiguation(with:)();
}

@end