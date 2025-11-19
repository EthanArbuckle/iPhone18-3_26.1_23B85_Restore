@interface ApplicationResolutionResult
+ (id)confirmationRequiredWithApplicationToConfirm:(id)a3;
+ (id)disambiguationWithApplicationsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedApplication:(id)a3;
@end

@implementation ApplicationResolutionResult

+ (id)successWithResolvedApplication:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ApplicationResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithApplicationsToDisambiguate:(id)a3
{
  type metadata accessor for Application();
  v3 = sub_26618C9B0();
  swift_getObjCClassMetadata();
  v4 = static ApplicationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithApplicationToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static ApplicationResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_26618922C();
  sub_26618C9B0();
  static ApplicationResolutionResult.disambiguation(with:)();
}

@end