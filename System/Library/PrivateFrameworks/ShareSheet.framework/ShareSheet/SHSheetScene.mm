@interface SHSheetScene
+ (FBSceneWorkspace)sceneWorkspace;
- (BOOL)isActive;
- (CGRect)framePortrait;
- (SHSheetScene)initWithSession:(id)a3;
- (SHSheetSceneDelegate)delegate;
- (SHSheetSession)session;
- (UIEdgeInsets)safeAreaInsetsPortrait;
- (void)_configureSceneSettings:(id)a3;
- (void)_registerForApplicationStateChangeNotification;
- (void)_setSheetConfiguration:(id)a3;
- (void)_unregisterForApplicationStateChangeNotification;
- (void)_updateSettingsWithFence:(id)a3 transitionCoordinator:(id)a4;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)sendAction:(id)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setForeground:(BOOL)a3;
- (void)setFramePortrait:(CGRect)a3;
- (void)setHostProcessType:(int64_t)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setPresentationStyle:(int64_t)a3;
- (void)setSafeAreaInsetsPortrait:(UIEdgeInsets)a3;
- (void)setSessionContext:(id)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)updateWithChange:(id)a3 transitionCoordinator:(id)a4;
- (void)updateWithSessionContext:(id)a3;
@end

@implementation SHSheetScene

+ (FBSceneWorkspace)sceneWorkspace
{
  if (sceneWorkspace_onceToken != -1)
  {
    +[SHSheetScene sceneWorkspace];
  }

  v3 = sceneWorkspace_sceneWorkspace;

  return v3;
}

void __30__SHSheetScene_sceneWorkspace__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getFBSceneWorkspaceClass_softClass;
  v8 = getFBSceneWorkspaceClass_softClass;
  if (!getFBSceneWorkspaceClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getFBSceneWorkspaceClass_block_invoke;
    v4[3] = &unk_1E71F91F0;
    v4[4] = &v5;
    __getFBSceneWorkspaceClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [[v0 alloc] initWithIdentifier:@"com.apple.sharinguiservice"];
  v3 = sceneWorkspace_sceneWorkspace;
  sceneWorkspace_sceneWorkspace = v2;
}

- (SHSheetScene)initWithSession:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SHSheetScene;
  v5 = [(SHSheetScene *)&v28 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, v4);
    v7 = [v4 createClientContext];
    sessionContext = v6->_sessionContext;
    v6->_sessionContext = v7;

    v9 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    if (v15 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    if (v15 >= v17)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    v6->_framePortrait.origin.x = v11;
    v6->_framePortrait.origin.y = v13;
    v6->_framePortrait.size.width = v18;
    v6->_framePortrait.size.height = v19;
    v20 = [v4 activityViewController];
    v21 = [v20 traitCollection];
    v6->_userInterfaceStyle = [v21 userInterfaceStyle];

    v22 = [v4 activityViewController];
    v6->_presentationStyle = SHSheetPresentationControllerPresentationStyle(v22);

    v6->_interfaceOrientation = 1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v23 = getFBDisplayManagerClass_softClass;
    v33 = getFBDisplayManagerClass_softClass;
    if (!getFBDisplayManagerClass_softClass)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __getFBDisplayManagerClass_block_invoke;
      v29[3] = &unk_1E71F91F0;
      v29[4] = &v30;
      __getFBDisplayManagerClass_block_invoke(v29);
      v23 = v31[3];
    }

    v24 = v23;
    _Block_object_dispose(&v30, 8);
    v25 = [v23 mainConfiguration];
    displayConfiguration = v6->_displayConfiguration;
    v6->_displayConfiguration = v25;

    v6->_hostProcessType = 0;
    v6->_foreground = 1;
    [(SHSheetScene *)v6 _registerForApplicationStateChangeNotification];
  }

  return v6;
}

- (void)dealloc
{
  [(SHSheetScene *)self _unregisterForApplicationStateChangeNotification];
  v3.receiver = self;
  v3.super_class = SHSheetScene;
  [(SHSheetScene *)&v3 dealloc];
}

- (BOOL)isActive
{
  v2 = [(SHSheetScene *)self scene];
  v3 = [v2 isActive];

  return v3;
}

- (void)activate
{
  v31 = *MEMORY[0x1E69E9840];
  if (([(FBScene *)self->_scene isActive]& 1) == 0)
  {
    if (!self->_scene)
    {
      v3 = share_sheet_log();
      v4 = share_sheet_log();
      v5 = [(SHSheetScene *)self session];
      v6 = [v5 activityViewController];
      v7 = os_signpost_id_make_with_pointer(v4, v6);

      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetupScene", " enableTelemetry=YES ", buf, 2u);
      }

      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "setting up new scene", buf, 2u);
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = [(SHSheetScene *)self session];
      v11 = [v10 identifier];
      v12 = [v9 stringWithFormat:@"scene::SharingUI::%@", v11];

      v13 = [objc_opt_class() sceneWorkspace];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __24__SHSheetScene_activate__block_invoke;
      v27[3] = &unk_1E71F9D48;
      v28 = v12;
      v14 = v12;
      v15 = [v13 createScene:v27];
      scene = self->_scene;
      self->_scene = v15;

      [(FBScene *)self->_scene setDelegate:self];
      [(FBScene *)self->_scene addObserver:self];
      v17 = self->_scene;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __24__SHSheetScene_activate__block_invoke_2;
      v26[3] = &unk_1E71F9D98;
      v26[4] = self;
      [(FBScene *)v17 configureParameters:v26];
      v18 = [(FBScene *)self->_scene uiPresentationManager];
      v19 = [v18 createPresenterWithIdentifier:@"default"];
      scenePresenter = self->_scenePresenter;
      self->_scenePresenter = v19;

      [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_20];
      [(UIScenePresenter *)self->_scenePresenter activate];
    }

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_scene;
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "activating scene:%@", buf, 0xCu);
    }

    [(FBScene *)self->_scene activateWithTransitionContext:0];
    v23 = [(SHSheetScene *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(SHSheetScene *)self delegate];
      [v25 sceneDidBecomeActive:self];
    }
  }
}

void __24__SHSheetScene_activate__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentifier:v2];
  v4 = +[(FBSSceneSpecification *)SHSheetSceneSpecification];
  [v3 setSpecification:v4];

  v6 = [MEMORY[0x1E69C75F0] identityForAngelJobLabel:@"com.apple.sharinguiservice"];
  v5 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:v6];
  [v3 setClientIdentity:v5];
}

uint64_t __24__SHSheetScene_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __24__SHSheetScene_activate__block_invoke_3;
  v3[3] = &unk_1E71F9D70;
  v3[4] = *(a1 + 32);
  return [a2 updateSettingsWithBlock:v3];
}

void __24__SHSheetScene_activate__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _configureSceneSettings:v4];
  }

  [v4 setInterfaceOrientationMode:2];
  [v4 setInterfaceOrientation:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];
  v3 = [*(a1 + 32) displayConfiguration];
  [v4 setDisplayConfiguration:v3];

  [v4 setForeground:1];
}

void __24__SHSheetScene_activate__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setBackgroundColorWhileHosting:0];
  [v2 setBackgroundColorWhileNotHosting:0];
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_scene)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      scene = self->_scene;
      v7 = 138412290;
      v8 = scene;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "invalidating scene:%@", &v7, 0xCu);
    }

    [(UIScenePresenter *)self->_scenePresenter invalidate];
    scenePresenter = self->_scenePresenter;
    self->_scenePresenter = 0;

    [(FBScene *)self->_scene setDelegate:0];
    [(FBScene *)self->_scene removeObserver:self];
    [(FBScene *)self->_scene invalidate];
    v6 = self->_scene;
    self->_scene = 0;
  }
}

- (void)_registerForApplicationStateChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__didUpdateApplicationState_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 addObserver:self selector:sel__didUpdateApplicationState_ name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)_unregisterForApplicationStateChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];
}

- (void)_setSheetConfiguration:(id)a3
{
  v5 = a3;
  v6 = self->__sheetConfiguration;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (v6 != 0))
    {
      v9 = [(_UISheetPresentationControllerConfiguration *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->__sheetConfiguration, a3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__SHSheetScene__setSheetConfiguration___block_invoke;
    v10[3] = &unk_1E71F9D70;
    v11 = v8;
    [(SHSheetScene *)self _updateSettingsWithFence:v10 transitionCoordinator:0];
  }

LABEL_8:
}

void __39__SHSheetScene__setSheetConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setSheetConfiguration:*(a1 + 32)];
  }
}

- (void)setSessionContext:(id)a3
{
  v4 = a3;
  sessionContext = [(SHSheetScene *)self sessionContext];
  v6 = v4;
  v10 = v6;
  if (sessionContext == v6)
  {

LABEL_8:
    v8 = v10;
    goto LABEL_9;
  }

  if ((v6 == 0) == (sessionContext != 0))
  {

    v8 = v10;
    goto LABEL_7;
  }

  v7 = [(SHSheetUIServiceClientContext *)sessionContext isEqual:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_7:
    v9 = v8;
    sessionContext = self->_sessionContext;
    self->_sessionContext = v9;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setSafeAreaInsetsPortrait:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_safeAreaInsetsPortrait.top), vceqq_f64(v4, *&self->_safeAreaInsetsPortrait.bottom)))) & 1) == 0)
  {
    self->_safeAreaInsetsPortrait = a3;
    [(SHSheetScene *)self setNeedsFenceAnimation:1];
  }
}

- (void)setFramePortrait:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_framePortrait))
  {
    self->_framePortrait.origin.x = x;
    self->_framePortrait.origin.y = y;
    self->_framePortrait.size.width = width;
    self->_framePortrait.size.height = height;

    [(SHSheetScene *)self setNeedsFenceAnimation:1];
  }
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
  }
}

- (void)setPresentationStyle:(int64_t)a3
{
  if (self->_presentationStyle != a3)
  {
    self->_presentationStyle = a3;
  }
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  if (self->_interfaceOrientation != a3)
  {
    self->_interfaceOrientation = a3;
    [(SHSheetScene *)self setNeedsFenceAnimation:1];
  }
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  displayConfiguration = self->_displayConfiguration;
  p_displayConfiguration = &self->_displayConfiguration;
  if (displayConfiguration != v5)
  {
    v8 = v5;
    objc_storeStrong(p_displayConfiguration, a3);
    v5 = v8;
  }
}

- (void)setHostProcessType:(int64_t)a3
{
  hostProcessType = self->_hostProcessType;
  if (hostProcessType != a3 && hostProcessType <= 0)
  {
    self->_hostProcessType = a3;
  }
}

- (void)setForeground:(BOOL)a3
{
  if (self->_foreground != a3)
  {
    self->_foreground = a3;
  }
}

- (void)sendAction:(id)a3
{
  v5 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v4 = [(SHSheetScene *)self scene];
  [v4 sendActions:v5];
}

- (void)updateWithSessionContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SHSheetScene_updateWithSessionContext___block_invoke;
  v6[3] = &unk_1E71F9E00;
  v7 = v4;
  v5 = v4;
  [(SHSheetScene *)self updateWithChange:v6];
}

- (void)updateWithChange:(id)a3 transitionCoordinator:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(SHSheetScene *)self setActiveUpdate:1];
  v17 = 0;
  v7[2](v7, self, &v17);

  v8 = 0;
  if ((v17 & 1) == 0)
  {
    v8 = [(SHSheetScene *)self needsFenceAnimation];
  }

  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBOOL();
    *buf = 138412290;
    v19 = v10;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "scene update change with fenceAnimation:%@", buf, 0xCu);
  }

  if (v8)
  {
    v11 = [(SHSheetScene *)self fenceCompletionHandler];
    [(SHSheetScene *)self setFenceCompletionHandler:0];
    if (v11)
    {
      v12 = MEMORY[0x1E6979518];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke;
      v15[3] = &unk_1E71F9360;
      v16 = v11;
      [v12 addCommitHandler:v15 forPhase:5];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke_3;
    v14[3] = &unk_1E71F9D70;
    v14[4] = self;
    [(SHSheetScene *)self _updateSettingsWithFence:v14 transitionCoordinator:v6];
  }

  else
  {
    v11 = [(SHSheetScene *)self scene];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke_4;
    v13[3] = &unk_1E71F9E28;
    v13[4] = self;
    [v11 performUpdate:v13];
  }

  [(SHSheetScene *)self setNeedsFenceAnimation:0];
  [(SHSheetScene *)self setActiveUpdate:0];
}

void __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke_2;
  block[3] = &unk_1E71F9360;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _configureSceneSettings:v3];
  }
}

void __55__SHSheetScene_updateWithChange_transitionCoordinator___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _configureSceneSettings:v3];
  }
}

- (void)_updateSettingsWithFence:(id)a3 transitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHSheetScene *)self scene];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SHSheetScene__updateSettingsWithFence_transitionCoordinator___block_invoke;
  v11[3] = &unk_1E71F9E50;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  [v8 updateSettingsWithTransitionBlock:v11];
}

id __63__SHSheetScene__updateSettingsWithFence_transitionCoordinator___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = MEMORY[0x1E698E608];
      [v2 transitionDuration];
      [v3 settingsWithDuration:?];
    }

    else
    {
      [MEMORY[0x1E69DD250] _currentAnimationSettings];
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E69DC6A0] transitionContext];
  [v5 setAnimationSettings:v4];
  v6 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  [v5 setAnimationFence:v6];

  return v5;
}

- (void)_configureSceneSettings:(id)a3
{
  v8 = a3;
  [(SHSheetScene *)self safeAreaInsetsPortrait];
  [v8 setSafeAreaInsetsPortrait:?];
  [v8 setUserInterfaceStyle:{-[SHSheetScene userInterfaceStyle](self, "userInterfaceStyle")}];
  [(SHSheetScene *)self framePortrait];
  [v8 setFrame:?];
  [v8 setPresentationStyle:{-[SHSheetScene presentationStyle](self, "presentationStyle")}];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v8 setApplicationState:{objc_msgSend(v4, "applicationState")}];

  v5 = [(SHSheetScene *)self sessionContext];
  [v8 setSessionContext:v5];

  [v8 setInterfaceOrientation:{-[SHSheetScene interfaceOrientation](self, "interfaceOrientation")}];
  v6 = [(SHSheetScene *)self displayConfiguration];

  if (v6)
  {
    v7 = [(SHSheetScene *)self displayConfiguration];
    [v8 setDisplayConfiguration:v7];
  }

  [v8 setHostProcessType:{-[SHSheetScene hostProcessType](self, "hostProcessType")}];
  [v8 setForeground:{-[SHSheetScene foreground](self, "foreground")}];
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v6 = a4;
  if (v6 && self->_scene == a3)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SHSheetScene sceneDidDeactivate:v6 withError:v7];
    }

    [(SHSheetScene *)self activate];
  }
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = v7;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "did receive actions:%@ from scene:%@", buf, 0x16u);
  }

  v29 = v6;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = 0x1E71F8000uLL;
    v14 = 0x1E71F8000uLL;
    v30 = self;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          if ([v17 type] == 10)
          {
            v18 = [(SHSheetScene *)self session];
            [v18 activityViewController];
            v19 = v11;
            v20 = v12;
            v21 = v13;
            v22 = v9;
            v24 = v23 = v14;
            [v24 _endDelayingPresentation];

            v14 = v23;
            v9 = v22;
            v13 = v21;
            v12 = v20;
            v11 = v19;
            self = v30;
          }

          v25 = [(SHSheetScene *)self delegate];
          [v25 scene:self didReceiveAction:v17];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v16;
            v25 = [(SHSheetScene *)self delegate];
            [v25 scene:self didReceiveMetadataUpdateAction:v26];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v16;
              v25 = [(SHSheetScene *)self delegate];
              [v25 scene:self didReceiveSuggestionAction:v27];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_19;
              }

              v28 = v16;
              v25 = [(SHSheetScene *)self delegate];
              [v25 scene:self didReceiveDraggingAction:v28];
            }
          }
        }

LABEL_19:
        ++v15;
      }

      while (v11 != v15);
      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }
}

- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5
{
  v6 = share_sheet_log();
  v7 = share_sheet_log();
  v8 = [(SHSheetScene *)self session];
  v9 = [v8 activityViewController];
  v10 = os_signpost_id_make_with_pointer(v7, v9);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v6, OS_SIGNPOST_INTERVAL_END, v10, "SetupScene", " enableTelemetry=YES ", v11, 2u);
  }
}

- (SHSheetSceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)framePortrait
{
  x = self->_framePortrait.origin.x;
  y = self->_framePortrait.origin.y;
  width = self->_framePortrait.size.width;
  height = self->_framePortrait.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsPortrait
{
  top = self->_safeAreaInsetsPortrait.top;
  left = self->_safeAreaInsetsPortrait.left;
  bottom = self->_safeAreaInsetsPortrait.bottom;
  right = self->_safeAreaInsetsPortrait.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SHSheetSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)sceneDidDeactivate:(uint64_t)a1 withError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "scene did deactivate with error:%@", &v2, 0xCu);
}

@end