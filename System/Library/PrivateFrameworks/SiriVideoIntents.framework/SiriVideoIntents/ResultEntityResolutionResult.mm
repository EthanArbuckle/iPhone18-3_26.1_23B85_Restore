@interface ResultEntityResolutionResult
+ (id)confirmationRequiredWithResultEntityToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithResultEntitysToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedResultEntity:(id)entity;
@end

@implementation ResultEntityResolutionResult

+ (id)successWithResolvedResultEntity:(id)entity
{
  swift_getObjCClassMetadata();
  entityCopy = entity;
  v5 = static ResultEntityResolutionResult.success(with:)(entityCopy);

  return v5;
}

+ (id)disambiguationWithResultEntitysToDisambiguate:(id)disambiguate
{
  type metadata accessor for ResultEntity();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ResultEntityResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithResultEntityToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ResultEntityResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static ResultEntityResolutionResult.disambiguation(with:)();
}

@end