@interface SPUISearchBarTransitionContext
- (BOOL)searchBarDidFocus;
- (void)setSearchBarDidFocus:(BOOL)focus;
@end

@implementation SPUISearchBarTransitionContext

- (void)setSearchBarDidFocus:(BOOL)focus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1000];
}

- (BOOL)searchBarDidFocus
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:1000];

  return v3;
}

@end