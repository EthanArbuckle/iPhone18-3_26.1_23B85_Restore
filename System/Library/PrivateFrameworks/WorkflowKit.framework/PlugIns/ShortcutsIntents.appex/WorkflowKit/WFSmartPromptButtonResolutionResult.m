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
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

+ (id)disambiguationWithSmartPromptButtonsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)successWithResolvedSmartPromptButton:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

@end