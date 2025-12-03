@interface SHSheetCustomSceneViewController
+ (FBSceneWorkspace)sceneWorkspace;
- (SHSheetCustomSceneViewController)initWithProcessIdentity:(id)identity;
- (void)_setupScene;
- (void)_tearDownScene;
- (void)dealloc;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)viewDidLayoutSubviews;
@end

@implementation SHSheetCustomSceneViewController

+ (FBSceneWorkspace)sceneWorkspace
{
  if (sceneWorkspace_onceToken_0 != -1)
  {
    +[SHSheetCustomSceneViewController sceneWorkspace];
  }

  v3 = sceneWorkspace_sceneWorkspace_0;

  return v3;
}

void __50__SHSheetCustomSceneViewController_sceneWorkspace__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getFBSceneWorkspaceClass_softClass_0;
  v8 = getFBSceneWorkspaceClass_softClass_0;
  if (!getFBSceneWorkspaceClass_softClass_0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getFBSceneWorkspaceClass_block_invoke_0;
    v4[3] = &unk_1E71F91F0;
    v4[4] = &v5;
    __getFBSceneWorkspaceClass_block_invoke_0(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [[v0 alloc] initWithIdentifier:@"com.apple.sharinguiservice.customscene"];
  v3 = sceneWorkspace_sceneWorkspace_0;
  sceneWorkspace_sceneWorkspace_0 = v2;
}

- (SHSheetCustomSceneViewController)initWithProcessIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = SHSheetCustomSceneViewController;
  v6 = [(SHSheetCustomSceneViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processIdentity, identity);
  }

  return v7;
}

- (void)dealloc
{
  [(SHSheetCustomSceneViewController *)self _tearDownScene];
  v3.receiver = self;
  v3.super_class = SHSheetCustomSceneViewController;
  [(SHSheetCustomSceneViewController *)&v3 dealloc];
}

- (void)_tearDownScene
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(FBScene *)self->_scene setDelegate:0];
  [(FBScene *)self->_scene removeObserver:self];
  [(FBScene *)self->_scene invalidate];
  scene = self->_scene;
  self->_scene = 0;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SHSheetCustomSceneViewController;
  [(SHSheetCustomSceneViewController *)&v3 viewDidLayoutSubviews];
  [(SHSheetCustomSceneViewController *)self _setupScene];
}

- (void)_setupScene
{
  v3 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v3 stringWithFormat:@"scene::SharingUI::%@", uUID];

  scene = self->_scene;
  if (!scene)
  {
    sceneWorkspace = [objc_opt_class() sceneWorkspace];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__SHSheetCustomSceneViewController__setupScene__block_invoke;
    v20[3] = &unk_1E71FB328;
    v21 = v5;
    selfCopy = self;
    v8 = [sceneWorkspace createScene:v20];
    v9 = self->_scene;
    self->_scene = v8;

    [(FBScene *)self->_scene setDelegate:self];
    [(FBScene *)self->_scene addObserver:self];
    v10 = self->_scene;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__SHSheetCustomSceneViewController__setupScene__block_invoke_2;
    v19[3] = &unk_1E71F9D98;
    v19[4] = self;
    [(FBScene *)v10 configureParameters:v19];
    uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
    v12 = [uiPresentationManager createPresenterWithIdentifier:@"default"];
    scenePresenter = self->_scenePresenter;
    self->_scenePresenter = v12;

    [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_23];
    [(UIScenePresenter *)self->_scenePresenter activate];
    presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
    view = [(SHSheetCustomSceneViewController *)self view];
    [view insertSubview:presentationView atIndex:0];

    view2 = [(SHSheetCustomSceneViewController *)self view];
    [view2 setNeedsLayout];

    [(UIView *)presentationView setClipsToBounds:1];
    layer = [(UIView *)presentationView layer];
    [layer setName:@"Scene View"];

    sceneView = self->_sceneView;
    self->_sceneView = presentationView;

    scene = self->_scene;
  }

  [(FBScene *)scene activateWithTransitionContext:0];
}

void __47__SHSheetCustomSceneViewController__setupScene__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  v5 = +[(FBSSceneSpecification *)SHSheetSceneSpecification];
  [v4 setSpecification:v5];

  v6 = MEMORY[0x1E699FBD8];
  v8 = [*(a1 + 40) processIdentity];
  v7 = [v6 identityForProcessIdentity:v8];
  [v4 setClientIdentity:v7];
}

void __47__SHSheetCustomSceneViewController__setupScene__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__SHSheetCustomSceneViewController__setupScene__block_invoke_3;
  v3[3] = &unk_1E71F9D70;
  v3[4] = *(a1 + 32);
  v2 = a2;
  [v2 updateSettingsWithBlock:v3];
  [v2 updateClientSettingsWithBlock:&__block_literal_global_16];
}

void __47__SHSheetCustomSceneViewController__setupScene__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  [v4 frame];
  [v3 setFrame:?];

  [v3 setInterfaceOrientation:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = getFBDisplayManagerClass_softClass_0;
  v12 = getFBDisplayManagerClass_softClass_0;
  if (!getFBDisplayManagerClass_softClass_0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getFBDisplayManagerClass_block_invoke_0;
    v8[3] = &unk_1E71F91F0;
    v8[4] = &v9;
    __getFBDisplayManagerClass_block_invoke_0(v8);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  v7 = [v5 mainConfiguration];
  [v3 setDisplayConfiguration:v7];

  [v3 setForeground:1];
}

void __47__SHSheetCustomSceneViewController__setupScene__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  errorCopy = error;
  v8 = errorCopy;
  if (self->_scene == deactivateCopy)
  {
    if (errorCopy)
    {
      v9 = share_sheet_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "sceneDidDeactivate error:%@", &v10, 0xCu);
      }
    }

    [(SHSheetCustomSceneViewController *)self _setupScene];
  }
}

@end