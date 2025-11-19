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
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

+ (id)disambiguationWithShortcutsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)successWithResolvedShortcut:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

@end