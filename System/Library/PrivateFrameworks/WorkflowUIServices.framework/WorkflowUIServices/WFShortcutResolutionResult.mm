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
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

+ (id)disambiguationWithShortcutsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)successWithResolvedShortcut:(id)shortcut
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFShortcutResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, shortcut);

  return v3;
}

@end