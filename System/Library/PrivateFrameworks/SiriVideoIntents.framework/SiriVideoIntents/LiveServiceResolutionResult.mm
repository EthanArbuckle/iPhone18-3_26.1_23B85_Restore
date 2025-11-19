@interface LiveServiceResolutionResult
+ (id)confirmationRequiredWithLiveServiceToConfirm:(id)a3;
+ (id)disambiguationWithLiveServicesToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedLiveService:(id)a3;
@end

@implementation LiveServiceResolutionResult

+ (id)successWithResolvedLiveService:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static LiveServiceResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithLiveServicesToDisambiguate:(id)a3
{
  type metadata accessor for LiveService();
  v3 = sub_269854CB4();
  swift_getObjCClassMetadata();
  v4 = static LiveServiceResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithLiveServiceToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static LiveServiceResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26984C7F8();
  sub_269854CB4();
  static LiveServiceResolutionResult.disambiguation(with:)();
}

@end