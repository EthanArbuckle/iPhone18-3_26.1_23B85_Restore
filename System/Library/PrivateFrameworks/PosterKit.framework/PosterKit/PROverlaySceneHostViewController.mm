@interface PROverlaySceneHostViewController
- (PROverlaySceneHostViewController)initWithScene:(id)scene contentSettings:(id)settings contentsLuminance:(double)luminance safeAreaProvider:(id)provider;
- (id)_sanitizedTitleStyleConfigurationForContentsLuminance:(double)luminance;
- (void)invalidate;
- (void)loadView;
- (void)setContentSettings:(id)settings;
- (void)setContentsLuminance:(double)luminance;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)viewDidLayoutSubviews;
@end

@implementation PROverlaySceneHostViewController

- (PROverlaySceneHostViewController)initWithScene:(id)scene contentSettings:(id)settings contentsLuminance:(double)luminance safeAreaProvider:(id)provider
{
  sceneCopy = scene;
  settingsCopy = settings;
  providerCopy = provider;
  v36.receiver = self;
  v36.super_class = PROverlaySceneHostViewController;
  v14 = [(PROverlaySceneHostViewController *)&v36 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scene, scene);
    objc_storeStrong(&v15->_safeAreaProvider, provider);
    v15->_contentsLuminance = luminance;
    [(FBScene *)v15->_scene setDelegate:v15];
    scene = v15->_scene;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __101__PROverlaySceneHostViewController_initWithScene_contentSettings_contentsLuminance_safeAreaProvider___block_invoke;
    v31 = &unk_1E7845268;
    v32 = providerCopy;
    v17 = v15;
    v33 = v17;
    luminanceCopy = luminance;
    v34 = settingsCopy;
    [(FBScene *)scene configureParameters:&v28];
    v18 = [(FBScene *)v15->_scene uiPresentationManager:v28];
    v19 = [v18 createPresenterWithIdentifier:@"overlay"];
    v20 = v17[125];
    v17[125] = v19;

    [v17[125] modifyPresentationContext:&__block_literal_global_40];
    [v17[125] activate];
    presentationView = [v17[125] presentationView];
    [presentationView setClipsToBounds:1];
    layer = [presentationView layer];
    [layer setName:@"PREditorOverlaySceneView"];

    [(FBScene *)v15->_scene activateWithTransitionContext:0];
    view = [v17 view];
    view2 = [v17 view];
    [view2 addSubview:presentationView];

    [presentationView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = MEMORY[0x1E696ACD8];
    v26 = [view pui_constraintsPinningSubview:presentationView toEdges:15];
    [v25 activateConstraints:v26];
  }

  return v15;
}

void __101__PROverlaySceneHostViewController_initWithScene_contentSettings_contentsLuminance_safeAreaProvider___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__PROverlaySceneHostViewController_initWithScene_contentSettings_contentsLuminance_safeAreaProvider___block_invoke_2;
  v4[3] = &unk_1E7845240;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [a2 updateSettingsWithBlock:v4];
}

void __101__PROverlaySceneHostViewController_initWithScene_contentSettings_contentsLuminance_safeAreaProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E699F7A8];
  v4 = a2;
  v5 = [v3 mainConfiguration];
  [v4 setDisplayConfiguration:v5];

  [v4 setForeground:1];
  [*(a1 + 32) overlaySafeAreaInsets];
  [v4 setSafeAreaInsetsPortrait:?];
  v6 = [*(a1 + 40) _sanitizedTitleStyleConfigurationForContentsLuminance:*(a1 + 56)];
  [v4 pr_setPosterTitleStyleConfiguration:v6];
  [v4 pr_setPosterHostedContentSettings:*(a1 + 48)];
}

void __101__PROverlaySceneHostViewController_initWithScene_contentSettings_contentsLuminance_safeAreaProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
  [v2 setShouldPassthroughHitTestEventsIfTransparent:0];
}

- (void)setContentSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_contentSettings != settingsCopy)
  {
    objc_storeStrong(&self->_contentSettings, settings);
    scene = self->_scene;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PROverlaySceneHostViewController_setContentSettings___block_invoke;
    v7[3] = &unk_1E7844708;
    v8 = settingsCopy;
    [(FBScene *)scene performUpdate:v7];
  }
}

- (void)setContentsLuminance:(double)luminance
{
  if (self->_contentsLuminance != luminance)
  {
    v11 = v3;
    v12 = v4;
    self->_contentsLuminance = luminance;
    v6 = [(PROverlaySceneHostViewController *)self _sanitizedTitleStyleConfigurationForContentsLuminance:?];
    scene = self->_scene;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PROverlaySceneHostViewController_setContentsLuminance___block_invoke;
    v9[3] = &unk_1E7844708;
    v10 = v6;
    v8 = v6;
    [(FBScene *)scene performUpdate:v9];
  }
}

- (void)invalidate
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(FBScene *)self->_scene setDelegate:0];
  [(FBScene *)self->_scene invalidate];
  scene = self->_scene;
  self->_scene = 0;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69C5578]);
  [(PROverlaySceneHostViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PROverlaySceneHostViewController;
  [(PROverlaySceneHostViewController *)&v13 viewDidLayoutSubviews];
  view = [(PROverlaySceneHostViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  [view bounds];
  scene = self->_scene;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PROverlaySceneHostViewController_viewDidLayoutSubviews__block_invoke;
  v12[3] = &unk_1E7845290;
  if ((interfaceOrientation - 3) >= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v12[5] = 0;
  v12[6] = 0;
  if ((interfaceOrientation - 3) >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12[7] = v10;
  v12[8] = v11;
  v12[9] = interfaceOrientation;
  v12[4] = self;
  [(FBScene *)scene performUpdate:v12];
}

void __57__PROverlaySceneHostViewController_viewDidLayoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a2;
  [v7 setFrame:{v3, v4, v5, v6}];
  [v7 setInterfaceOrientation:*(a1 + 9)];
  [*(*(a1 + 4) + 1008) overlaySafeAreaInsets];
  [v7 setSafeAreaInsetsPortrait:?];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PROverlaySceneHostViewController;
  [(PROverlaySceneHostViewController *)&v7 setOverrideUserInterfaceStyle:?];
  scene = self->_scene;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PROverlaySceneHostViewController_setOverrideUserInterfaceStyle___block_invoke;
  v6[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
  v6[4] = style;
  [(FBScene *)scene performUpdate:v6];
}

- (id)_sanitizedTitleStyleConfigurationForContentsLuminance:(double)luminance
{
  v4 = objc_alloc_init(PRMutablePosterTitleStyleConfiguration);
  [(PRMutablePosterTitleStyleConfiguration *)v4 setContentsLuminance:luminance];

  return v4;
}

@end