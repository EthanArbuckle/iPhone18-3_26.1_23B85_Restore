@interface PRComplicationsSnapshotSceneHostViewController
- (PRComplicationsSnapshotSceneHostViewController)initWithScene:(id)a3;
- (void)dealloc;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PRComplicationsSnapshotSceneHostViewController

- (PRComplicationsSnapshotSceneHostViewController)initWithScene:(id)a3
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = PRComplicationsSnapshotSceneHostViewController;
  v6 = [(PRComplicationsSnapshotSceneHostViewController *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, a3);
    [(FBScene *)v7->_scene configureParameters:&__block_literal_global_96];
    v8 = [(FBScene *)v7->_scene uiPresentationManager];
    v9 = [v8 createPresenterWithIdentifier:@"complications-snapshot"];
    v31 = v5;
    scenePresenter = v7->_scenePresenter;
    v7->_scenePresenter = v9;

    [(UIScenePresenter *)v7->_scenePresenter modifyPresentationContext:&__block_literal_global_103];
    [(UIScenePresenter *)v7->_scenePresenter activate];
    v11 = [(UIScenePresenter *)v7->_scenePresenter presentationView];
    [v11 setClipsToBounds:1];
    v12 = [v11 layer];
    [v12 setName:@"Scene View"];

    [(FBScene *)v7->_scene activateWithTransitionContext:0];
    v13 = [(PRComplicationsSnapshotSceneHostViewController *)v7 view];
    [v13 addSubview:v11];

    v14 = [(PRComplicationsSnapshotSceneHostViewController *)v7 view];
    v15 = MEMORY[0x1E695DF70];
    v30 = [v11 leadingAnchor];
    v29 = [v14 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v27 = [v11 trailingAnchor];
    v26 = [v14 trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v33[1] = v25;
    v24 = [v11 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v24 constraintEqualToAnchor:v16];
    v33[2] = v17;
    v18 = [v11 bottomAnchor];
    v19 = [v14 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v33[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    v22 = [v15 arrayWithArray:v21];

    [MEMORY[0x1E696ACD8] activateConstraints:v22];
    v5 = v31;
  }

  return v7;
}

void __64__PRComplicationsSnapshotSceneHostViewController_initWithScene___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699F7A8];
  v4 = a2;
  v3 = [v2 mainConfiguration];
  [v4 setDisplayConfiguration:v3];

  [v4 setForeground:1];
}

void __64__PRComplicationsSnapshotSceneHostViewController_initWithScene___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
  [v2 setShouldPassthroughHitTestEventsIfTransparent:1];
}

- (void)dealloc
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  [(FBScene *)self->_scene setDelegate:0];
  [(FBScene *)self->_scene invalidate];
  scene = self->_scene;
  self->_scene = 0;

  v5.receiver = self;
  v5.super_class = PRComplicationsSnapshotSceneHostViewController;
  [(PRComplicationsSnapshotSceneHostViewController *)&v5 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PRComplicationsSnapshotSceneHostViewController;
  [(PRComplicationsSnapshotSceneHostViewController *)&v5 viewDidLayoutSubviews];
  scene = self->_scene;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__PRComplicationsSnapshotSceneHostViewController_viewDidLayoutSubviews__block_invoke;
  v4[3] = &unk_1E7844708;
  v4[4] = self;
  [(FBScene *)scene performUpdate:v4];
}

void __71__PRComplicationsSnapshotSceneHostViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v12 = a2;
  v3 = [v2 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PRComplicationsSnapshotSceneHostViewController;
  [(PRComplicationsSnapshotSceneHostViewController *)&v7 setOverrideUserInterfaceStyle:?];
  scene = self->_scene;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PRComplicationsSnapshotSceneHostViewController_setOverrideUserInterfaceStyle___block_invoke;
  v6[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
  v6[4] = a3;
  [(FBScene *)scene performUpdate:v6];
}

@end