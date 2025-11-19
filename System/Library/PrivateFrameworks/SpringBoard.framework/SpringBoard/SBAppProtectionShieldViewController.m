@interface SBAppProtectionShieldViewController
- (SBAppProtectionShieldViewController)initWithAssistant:(id)a3 systemAppOutlet:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBAppProtectionShieldViewController

- (SBAppProtectionShieldViewController)initWithAssistant:(id)a3 systemAppOutlet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBAppProtectionShieldViewController;
  v8 = [(SBAppProtectionShieldViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[SBAppProtectionShieldView alloc] initWithAssistant:v6 systemAppOutlet:v7];
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
  v3 = [(SBAppProtectionShieldViewController *)self view];
  [v3 addSubview:self->_shieldView];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBAppProtectionShieldViewController;
  [(SBAppProtectionShieldViewController *)&v5 viewWillLayoutSubviews];
  shieldView = self->_shieldView;
  v4 = [(SBAppProtectionShieldViewController *)self view];
  [v4 bounds];
  [(SBAppProtectionShieldView *)shieldView setFrame:?];
}

@end