@interface ResultEntityResolutionResult
+ (id)confirmationRequiredWithResultEntityToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithResultEntitysToDisambiguate:(id)a3;
+ (id)successWithResolvedResultEntity:(id)a3;
@end

@implementation ResultEntityResolutionResult

+ (id)successWithResolvedResultEntity:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ResultEntityResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithResultEntitysToDisambiguate:(id)a3
{
  type metadata accessor for ResultEntity();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static ResultEntityResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithResultEntityToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ResultEntityResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static ResultEntityResolutionResult.disambiguation(with:)();
}

@end