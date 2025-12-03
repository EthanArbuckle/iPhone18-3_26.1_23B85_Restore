@interface SBLeftOfHomeAppViewController
+ (BOOL)isEnabled;
- (void)viewDidLoad;
@end

@implementation SBLeftOfHomeAppViewController

+ (BOOL)isEnabled
{
  v2 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v2 homeScreenDefaults];

  leftOfHomeAppBundleIdentifier = [homeScreenDefaults leftOfHomeAppBundleIdentifier];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [leftOfHomeAppBundleIdentifier length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = SBLeftOfHomeAppViewController;
  [(SBLeftOfHomeAppViewController *)&v15 viewDidLoad];
  v3 = +[SBDefaults localDefaults];
  homeScreenDefaults = [v3 homeScreenDefaults];

  leftOfHomeAppBundleIdentifier = [homeScreenDefaults leftOfHomeAppBundleIdentifier];
  if (leftOfHomeAppBundleIdentifier)
  {
    v6 = +[SBApplicationController sharedInstance];
    v7 = [v6 applicationWithBundleIdentifier:leftOfHomeAppBundleIdentifier];
    v8 = [SBDeviceApplicationSceneEntity defaultEntityWithApplicationForMainDisplay:v7];

    v9 = [[SBAppViewController alloc] initWithIdentifier:@"LeftOfHomeApp" andApplicationSceneEntity:v8];
    appViewController = self->_appViewController;
    self->_appViewController = v9;

    [(SBAppViewController *)self->_appViewController setAutomatesLifecycle:1];
    view = [(SBAppViewController *)self->_appViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLeftOfHomeAppViewController *)self bs_addChildViewController:self->_appViewController];
    view2 = [(SBAppViewController *)self->_appViewController view];
    view3 = [(SBLeftOfHomeAppViewController *)self view];
    v14 = SBHPinViewWithinView();
  }
}

@end