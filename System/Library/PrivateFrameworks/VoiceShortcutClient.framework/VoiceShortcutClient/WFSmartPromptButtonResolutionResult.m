@interface WFSmartPromptButtonResolutionResult
+ (id)confirmationRequiredWithSmartPromptButtonToConfirm:(id)a3;
+ (id)disambiguationWithSmartPromptButtonsToDisambiguate:(id)a3;
+ (id)successWithResolvedSmartPromptButton:(id)a3;
@end

@implementation WFSmartPromptButtonResolutionResult

+ (id)confirmationRequiredWithSmartPromptButtonToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

+ (id)disambiguationWithSmartPromptButtonsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)successWithResolvedSmartPromptButton:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

@end