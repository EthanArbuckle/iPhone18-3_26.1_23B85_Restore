@interface WBSContentRuleListController
+ (void)determineContentRuleListStateForWebpagePreferences:(id)a3 wasLoadedWithContentBlockersEnabled:(BOOL)a4 wasLoadedWithAdvancedPrivacyProtectionsEnabled:(BOOL)a5;
@end

@implementation WBSContentRuleListController

+ (void)determineContentRuleListStateForWebpagePreferences:(id)a3 wasLoadedWithContentBlockersEnabled:(BOOL)a4 wasLoadedWithAdvancedPrivacyProtectionsEnabled:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (objc_opt_respondsToSelector())
  {
    if (v6 == v5)
    {
      [v8 _setContentRuleListsEnabled:v6 exceptions:0];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.WebPrivacy.TrackingResourceRequestContentBlocker"];
      [v8 _setContentRuleListsEnabled:v6 exceptions:v7];
    }
  }
}

@end