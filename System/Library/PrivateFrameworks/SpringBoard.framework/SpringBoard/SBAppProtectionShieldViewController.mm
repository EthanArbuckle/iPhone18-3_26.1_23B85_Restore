@interface SBAppProtectionShieldViewController
- (SBAppProtectionShieldViewController)initWithAssistant:(id)assistant systemAppOutlet:(id)outlet;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBAppProtectionShieldViewController

- (SBAppProtectionShieldViewController)initWithAssistant:(id)assistant systemAppOutlet:(id)outlet
{
  assistantCopy = assistant;
  outletCopy = outlet;
  v12.receiver = self;
  v12.super_class = SBAppProtectionShieldViewController;
  v8 = [(SBAppProtectionShieldViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[SBAppProtectionShieldView alloc] initWithAssistant:assistantCopy systemAppOutlet:outletCopy];
    shieldView = v8->_shieldView;
    v8->_shieldView = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBAppProtectionShieldViewController;
  [(SBAppProtectionShieldViewController *)&v4 viewDidLoad];
  view = [(SBAppProtectionShieldViewController *)self view];
  [view addSubview:self->_shieldView];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBAppProtectionShieldViewController;
  [(SBAppProtectionShieldViewController *)&v5 viewWillLayoutSubviews];
  shieldView = self->_shieldView;
  view = [(SBAppProtectionShieldViewController *)self view];
  [view bounds];
  [(SBAppProtectionShieldView *)shieldView setFrame:?];
}

@end