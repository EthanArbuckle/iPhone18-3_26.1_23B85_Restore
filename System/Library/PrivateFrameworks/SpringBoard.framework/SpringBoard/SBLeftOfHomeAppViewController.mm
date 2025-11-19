@interface SBLeftOfHomeAppViewController
+ (BOOL)isEnabled;
- (void)viewDidLoad;
@end

@implementation SBLeftOfHomeAppViewController

+ (BOOL)isEnabled
{
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 homeScreenDefaults];

  v4 = [v3 leftOfHomeAppBundleIdentifier];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [v4 length] != 0;
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
  v4 = [v3 homeScreenDefaults];

  v5 = [v4 leftOfHomeAppBundleIdentifier];
  if (v5)
  {
    v6 = +[SBApplicationController sharedInstance];
    v7 = [v6 applicationWithBundleIdentifier:v5];
    v8 = [SBDeviceApplicationSceneEntity defaultEntityWithApplicationForMainDisplay:v7];

    v9 = [[SBAppViewController alloc] initWithIdentifier:@"LeftOfHomeApp" andApplicationSceneEntity:v8];
    appViewController = self->_appViewController;
    self->_appViewController = v9;

    [(SBAppViewController *)self->_appViewController setAutomatesLifecycle:1];
    v11 = [(SBAppViewController *)self->_appViewController view];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBLeftOfHomeAppViewController *)self bs_addChildViewController:self->_appViewController];
    v12 = [(SBAppViewController *)self->_appViewController view];
    v13 = [(SBLeftOfHomeAppViewController *)self view];
    v14 = SBHPinViewWithinView();
  }
}

@end