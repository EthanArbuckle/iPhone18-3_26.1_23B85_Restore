@interface ApplicationResolutionResult
+ (id)confirmationRequiredWithApplicationToConfirm:(id)confirm;
+ (id)disambiguationWithApplicationsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedApplication:(id)application;
@end

@implementation ApplicationResolutionResult

+ (id)successWithResolvedApplication:(id)application
{
  swift_getObjCClassMetadata();
  applicationCopy = application;
  v5 = static ApplicationResolutionResult.success(with:)(applicationCopy);

  return v5;
}

+ (id)disambiguationWithApplicationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Application();
  v3 = sub_26618C9B0();
  swift_getObjCClassMetadata();
  v4 = static ApplicationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithApplicationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static ApplicationResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_26618922C();
  sub_26618C9B0();
  static ApplicationResolutionResult.disambiguation(with:)();
}

@end