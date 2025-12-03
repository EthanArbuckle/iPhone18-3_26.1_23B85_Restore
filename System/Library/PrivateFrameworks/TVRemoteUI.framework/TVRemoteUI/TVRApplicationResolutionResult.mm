@interface TVRApplicationResolutionResult
+ (id)confirmationRequiredWithApplicationToConfirm:(id)confirm;
+ (id)disambiguationWithApplicationsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedApplication:(id)application;
@end

@implementation TVRApplicationResolutionResult

+ (id)successWithResolvedApplication:(id)application
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, application);

  return v3;
}

+ (id)disambiguationWithApplicationsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithApplicationToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end