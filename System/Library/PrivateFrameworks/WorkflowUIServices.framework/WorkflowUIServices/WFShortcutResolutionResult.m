@interface WFShortcutResolutionResult
+ (id)confirmationRequiredWithShortcutToConfirm:(id)a3;
+ (id)disambiguationWithShortcutsToDisambiguate:(id)a3;
+ (id)successWithResolvedShortcut:(id)a3;
@end

@implementation WFShortcutResolutionResult

+ (id)confirmationRequiredWithShortcutToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

+ (id)disambiguationWithShortcutsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)successWithResolvedShortcut:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

@end