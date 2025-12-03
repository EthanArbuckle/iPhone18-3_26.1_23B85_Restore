@interface PRQuickActionsSceneHostViewController
- (PRQuickActionsSceneHostViewController)initWithScene:(id)scene;
- (void)invalidate;
- (void)loadView;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)viewDidLayoutSubviews;
@end

@implementation PRQuickActionsSceneHostViewController

- (PRQuickActionsSceneHostViewController)initWithScene:(id)scene
{
  v33[4] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v32.receiver = self;
  v32.super_class = PRQuickActionsSceneHostViewController;
  v6 = [(PRQuickActionsSceneHostViewController *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
    [(FBScene *)v7->_scene configureParameters:&__block_literal_global_46];
    uiPresentationManager = [(FBScene *)v7->_scene uiPresentationManager];
    v9 = [uiPresentationManager createPresenterWithIdentifier:@"quickActions"];
    v31 = sceneCopy;
    scenePresenter = v7->_scenePresenter;
    v7->_scenePresenter = v9;

    [(UIScenePresenter *)v7->_scenePresenter modifyPresentationContext:&__block_literal_global_7_3];
    [(UIScenePresenter *)v7->_scenePresenter activate];
    presentationView = [(UIScenePresenter *)v7->_scenePresenter presentationView];
    [presentationView setClipsToBounds:1];
    layer = [presentationView layer];
    [layer setName:@"Scene View"];

    [(FBScene *)v7->_scene activateWithTransitionContext:0];
    view = [(PRQuickActionsSceneHostViewController *)v7 view];
    [view addSubview:presentationView];

    [presentationView setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(PRQuickActionsSceneHostViewController *)v7 view];
    v15 = MEMORY[0x1E695DF70];
    leadingAnchor = [presentationView leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v28;
    trailingAnchor = [presentationView trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[1] = v25;
    topAnchor = [presentationView topAnchor];
    topAnchor2 = [view2 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[2] = v17;
    bottomAnchor = [presentationView bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    v22 = [v15 arrayWithArray:v21];

    [MEMORY[0x1E696ACD8] activateConstraints:v22];
    sceneCopy = v31;
  }

  return v7;
}

void __55__PRQuickActionsSceneHostViewController_initWithScene___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699F7A8];
  v4 = a2;
  v3 = [v2 mainConfiguration];
  [v4 setDisplayConfiguration:v3];

  [v4 setForeground:1];
}

void __55__PRQuickActionsSceneHostViewController_initWithScene___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
  [v2 setShouldPassthroughHitTestEventsIfTransparent:1];
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
  v3 = objc_alloc_init(MEMORY[0x1E69C5650]);
  [(PRQuickActionsSceneHostViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PRQuickActionsSceneHostViewController;
  [(PRQuickActionsSceneHostViewController *)&v13 viewDidLayoutSubviews];
  view = [(PRQuickActionsSceneHostViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  [view bounds];
  scene = self->_scene;
  v12[1] = 3221225472;
  if ((interfaceOrientation - 3) >= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[2] = __62__PRQuickActionsSceneHostViewController_viewDidLayoutSubviews__block_invoke;
  v12[3] = &__block_descriptor_72_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
  if ((interfaceOrientation - 3) >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12[4] = 0;
  v12[5] = 0;
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = interfaceOrientation;
  [(FBScene *)scene performUpdate:v12];
}

void __62__PRQuickActionsSceneHostViewController_viewDidLayoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setFrame:{v3, v4, v5, v6}];
  [v7 setInterfaceOrientation:*(a1 + 8)];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PRQuickActionsSceneHostViewController;
  [(PRQuickActionsSceneHostViewController *)&v7 setOverrideUserInterfaceStyle:?];
  scene = self->_scene;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PRQuickActionsSceneHostViewController_setOverrideUserInterfaceStyle___block_invoke;
  v6[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
  v6[4] = style;
  [(FBScene *)scene performUpdate:v6];
}

@end