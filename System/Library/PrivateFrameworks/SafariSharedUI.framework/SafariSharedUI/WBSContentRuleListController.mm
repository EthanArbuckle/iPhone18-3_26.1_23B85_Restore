@interface WBSContentRuleListController
+ (void)determineContentRuleListStateForWebpagePreferences:(id)preferences wasLoadedWithContentBlockersEnabled:(BOOL)enabled wasLoadedWithAdvancedPrivacyProtectionsEnabled:(BOOL)protectionsEnabled;
@end

@implementation WBSContentRuleListController

+ (void)determineContentRuleListStateForWebpagePreferences:(id)preferences wasLoadedWithContentBlockersEnabled:(BOOL)enabled wasLoadedWithAdvancedPrivacyProtectionsEnabled:(BOOL)protectionsEnabled
{
  protectionsEnabledCopy = protectionsEnabled;
  enabledCopy = enabled;
  preferencesCopy = preferences;
  if (objc_opt_respondsToSelector())
  {
    if (enabledCopy == protectionsEnabledCopy)
    {
      [preferencesCopy _setContentRuleListsEnabled:enabledCopy exceptions:0];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.WebPrivacy.TrackingResourceRequestContentBlocker"];
      [preferencesCopy _setContentRuleListsEnabled:enabledCopy exceptions:v7];
    }
  }
}

@end