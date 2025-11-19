@interface TVRApplicationResolutionResult
+ (id)confirmationRequiredWithApplicationToConfirm:(id)a3;
+ (id)disambiguationWithApplicationsToDisambiguate:(id)a3;
+ (id)successWithResolvedApplication:(id)a3;
@end

@implementation TVRApplicationResolutionResult

+ (id)successWithResolvedApplication:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithApplicationsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithApplicationToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRApplicationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end