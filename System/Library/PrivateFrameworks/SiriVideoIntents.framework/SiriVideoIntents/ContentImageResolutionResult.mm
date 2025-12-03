@interface ContentImageResolutionResult
+ (id)confirmationRequiredWithContentImageToConfirm:(id)confirm;
+ (id)disambiguationWithContentImagesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedContentImage:(id)image;
@end

@implementation ContentImageResolutionResult

+ (id)successWithResolvedContentImage:(id)image
{
  swift_getObjCClassMetadata();
  imageCopy = image;
  v5 = static ContentImageResolutionResult.success(with:)(imageCopy);

  return v5;
}

+ (id)disambiguationWithContentImagesToDisambiguate:(id)disambiguate
{
  type metadata accessor for ContentImage();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ContentImageResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithContentImageToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ContentImageResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static ContentImageResolutionResult.disambiguation(with:)();
}

@end