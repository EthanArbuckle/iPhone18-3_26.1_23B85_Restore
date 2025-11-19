@interface ContentImageResolutionResult
+ (id)confirmationRequiredWithContentImageToConfirm:(id)a3;
+ (id)disambiguationWithContentImagesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedContentImage:(id)a3;
@end

@implementation ContentImageResolutionResult

+ (id)successWithResolvedContentImage:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContentImageResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithContentImagesToDisambiguate:(id)a3
{
  type metadata accessor for ContentImage();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ContentImageResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContentImageToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ContentImageResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static ContentImageResolutionResult.disambiguation(with:)();
}

@end