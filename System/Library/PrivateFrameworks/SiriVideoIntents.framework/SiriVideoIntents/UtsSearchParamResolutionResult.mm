@interface UtsSearchParamResolutionResult
+ (id)confirmationRequiredWithUtsSearchParamToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithUtsSearchParamsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedUtsSearchParam:(id)param;
@end

@implementation UtsSearchParamResolutionResult

+ (id)successWithResolvedUtsSearchParam:(id)param
{
  swift_getObjCClassMetadata();
  paramCopy = param;
  v5 = static UtsSearchParamResolutionResult.success(with:)(paramCopy);

  return v5;
}

+ (id)disambiguationWithUtsSearchParamsToDisambiguate:(id)disambiguate
{
  type metadata accessor for UtsSearchParam();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static UtsSearchParamResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithUtsSearchParamToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static UtsSearchParamResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static UtsSearchParamResolutionResult.disambiguation(with:)();
}

@end