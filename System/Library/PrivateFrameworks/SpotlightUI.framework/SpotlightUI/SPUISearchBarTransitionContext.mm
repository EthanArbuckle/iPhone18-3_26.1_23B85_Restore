@interface SPUISearchBarTransitionContext
- (BOOL)searchBarDidFocus;
- (void)setSearchBarDidFocus:(BOOL)a3;
@end

@implementation SPUISearchBarTransitionContext

- (void)setSearchBarDidFocus:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1000];
}

- (BOOL)searchBarDidFocus
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:1000];

  return v3;
}

@end