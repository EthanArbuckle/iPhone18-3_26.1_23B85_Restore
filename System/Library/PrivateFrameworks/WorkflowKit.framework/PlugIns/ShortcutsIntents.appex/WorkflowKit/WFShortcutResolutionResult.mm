@interface WFShortcutResolutionResult
+ (id)confirmationRequiredWithShortcutToConfirm:(id)confirm;
+ (id)disambiguationWithShortcutsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedShortcut:(id)shortcut;
@end

@implementation WFShortcutResolutionResult

+ (id)confirmationRequiredWithShortcutToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

+ (id)disambiguationWithShortcutsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)successWithResolvedShortcut:(id)shortcut
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", shortcut);

  return v3;
}

@end