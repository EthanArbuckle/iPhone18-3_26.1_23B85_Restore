@interface WFSmartPromptButtonResolutionResult
+ (id)confirmationRequiredWithSmartPromptButtonToConfirm:(id)confirm;
+ (id)disambiguationWithSmartPromptButtonsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedSmartPromptButton:(id)button;
@end

@implementation WFSmartPromptButtonResolutionResult

+ (id)confirmationRequiredWithSmartPromptButtonToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

+ (id)disambiguationWithSmartPromptButtonsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)successWithResolvedSmartPromptButton:(id)button
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", button);

  return v3;
}

@end