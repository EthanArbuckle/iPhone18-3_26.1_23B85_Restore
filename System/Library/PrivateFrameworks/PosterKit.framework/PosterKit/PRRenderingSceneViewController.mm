@interface PRRenderingSceneViewController
- (PRRenderingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 previewing:(BOOL)a5;
- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4;
- (void)doThing;
- (void)environmentViewController:(id)a3 didUpdateEnvironment:(id)a4;
- (void)setShowDebugGear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PRRenderingSceneViewController

- (PRRenderingSceneViewController)initWithProvider:(id)a3 contents:(id)a4 previewing:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = PRRenderingSceneViewController;
  result = [(PRSceneViewController *)&v6 _initWithProvider:a3 contents:a4 previewing:a5];
  if (result)
  {
    result->_showDebugGear = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v40[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PRRenderingSceneViewController;
  [(PRSceneViewController *)&v37 viewDidLoad];
  v3 = [MEMORY[0x1E699FB60] settings];
  settings = self->_settings;
  self->_settings = v3;

  [(FBSMutableSceneSettings *)self->_settings pui_setMode:1];
  v5 = self->_settings;
  v6 = MEMORY[0x1E698E650];
  v7 = arc4random_uniform(0x64u);
  v8 = arc4random_uniform(0x64u);
  v9 = [v6 colorWithRed:v7 / 100.0 green:v8 / 100.0 blue:arc4random_uniform(0x64u) / 100.0 alpha:1.0];
  [(FBSMutableSceneSettings *)v5 pr_setCaseColor:v9];

  v10 = [(PRRenderingSceneViewController *)self view];
  v32 = [v10 traitCollection];

  v11 = [[PRPosterEnvironmentImpl alloc] initWithSceneSettings:self->_settings traitCollection:v32 targetConfig:0 extensionBundleURL:0];
  environment = self->_environment;
  self->_environment = v11;

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v39 = *MEMORY[0x1E69DB648];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:52.0];
  v40[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v31 = [v13 initWithString:@"⚙️" attributes:v15];

  v33 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [v33 setAttributedTitle:v31];
  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69DC628];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __45__PRRenderingSceneViewController_viewDidLoad__block_invoke;
  v34[3] = &unk_1E7843448;
  objc_copyWeak(&v35, &location);
  v29 = [v16 actionWithHandler:v34];
  v17 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v33 primaryAction:?];
  button = self->_button;
  self->_button = v17;

  [(UIButton *)self->_button sizeToFit];
  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_button setHidden:!self->_showDebugGear];
  v19 = [(PRRenderingSceneViewController *)self view];
  [v19 addSubview:self->_button];
  v20 = MEMORY[0x1E696ACD8];
  v30 = [(UIButton *)self->_button centerXAnchor];
  v21 = [v19 safeAreaLayoutGuide];
  v22 = [v21 centerXAnchor];
  v23 = [v30 constraintEqualToAnchor:v22];
  v38[0] = v23;
  v24 = [(UIButton *)self->_button bottomAnchor];
  v25 = [v19 safeAreaLayoutGuide];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintLessThanOrEqualToAnchor:v26];
  v38[1] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v20 activateConstraints:v28];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __45__PRRenderingSceneViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doThing];
}

- (void)setShowDebugGear:(BOOL)a3
{
  if (self->_showDebugGear != a3)
  {
    self->_showDebugGear = a3;
    [(UIButton *)self->_button setHidden:!a3];
  }
}

- (void)doThing
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [[PRRenderingEnvironmentViewController alloc] initWithEnvironment:self->_environment delegate:self];
  v4 = [(PRRenderingEnvironmentViewController *)v3 sheetPresentationController];
  [v4 setSourceView:self->_button];

  v5 = [(PRRenderingEnvironmentViewController *)v3 sheetPresentationController];
  [(UIButton *)self->_button bounds];
  [v5 setSourceRect:?];

  v6 = [(PRRenderingEnvironmentViewController *)v3 sheetPresentationController];
  [v6 setPrefersEdgeAttachedInCompactHeight:1];

  v7 = [(PRRenderingEnvironmentViewController *)v3 sheetPresentationController];
  v8 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:@"EnvironmentDetent" resolver:&__block_literal_global_43];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v7 setDetents:v9];

  [(PRRenderingSceneViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PRRenderingSceneViewController;
  [(PRRenderingSceneViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(PRRenderingSceneViewController *)self view];
  [v3 bringSubviewToFront:self->_button];
}

- (void)_updateSceneSettings:(id)a3 transitionContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = PRRenderingSceneViewController;
  v6 = a3;
  [(PRSceneViewController *)&v7 _updateSceneSettings:v6 transitionContext:a4];
  [(PRPosterEnvironmentImpl *)self->_environment _applyToSceneSettings:v6, v7.receiver, v7.super_class];
}

- (void)environmentViewController:(id)a3 didUpdateEnvironment:(id)a4
{
  v6 = a4;
  objc_storeStrong(&self->_environment, a4);
  scene = self->super._scene;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PRRenderingSceneViewController_environmentViewController_didUpdateEnvironment___block_invoke;
  v9[3] = &unk_1E78448D0;
  v10 = v6;
  v8 = v6;
  [(FBScene *)scene updateSettingsWithBlock:v9];
}

@end