@interface UtsSearchParamResolutionResult
+ (id)confirmationRequiredWithUtsSearchParamToConfirm:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)disambiguationWithUtsSearchParamsToDisambiguate:(id)a3;
+ (id)successWithResolvedUtsSearchParam:(id)a3;
@end

@implementation UtsSearchParamResolutionResult

+ (id)successWithResolvedUtsSearchParam:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static UtsSearchParamResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithUtsSearchParamsToDisambiguate:(id)a3
{
  type metadata accessor for UtsSearchParam();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static UtsSearchParamResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithUtsSearchParamToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static UtsSearchParamResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static UtsSearchParamResolutionResult.disambiguation(with:)();
}

@end