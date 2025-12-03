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
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

+ (id)disambiguationWithSmartPromptButtonsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)successWithResolvedSmartPromptButton:(id)button
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFSmartPromptButtonResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, button);

  return v3;
}

@end