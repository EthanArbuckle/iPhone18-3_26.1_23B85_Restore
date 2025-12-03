@interface LiveServiceResolutionResult
+ (id)confirmationRequiredWithLiveServiceToConfirm:(id)confirm;
+ (id)disambiguationWithLiveServicesToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedLiveService:(id)service;
@end

@implementation LiveServiceResolutionResult

+ (id)successWithResolvedLiveService:(id)service
{
  swift_getObjCClassMetadata();
  serviceCopy = service;
  v5 = static LiveServiceResolutionResult.success(with:)(serviceCopy);

  return v5;
}

+ (id)disambiguationWithLiveServicesToDisambiguate:(id)disambiguate
{
  type metadata accessor for LiveService();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static LiveServiceResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithLiveServiceToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static LiveServiceResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26984C7F8();
  sub_269854CB4();
  static LiveServiceResolutionResult.disambiguation(with:)();
}

@end