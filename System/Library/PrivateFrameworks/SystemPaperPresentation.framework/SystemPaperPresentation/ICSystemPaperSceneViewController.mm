@interface ICSystemPaperSceneViewController
- (ICSystemPaperSceneViewController)initWithCoder:(id)a3;
- (ICSystemPaperSceneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICSystemPaperSceneViewController)initWithUserActivityData:(id)a3;
- (id)uiActivityContinuationActionForUserActivityData:(id)a3;
- (void)_adjustParentScene;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_teardown;
- (void)_update;
- (void)_updateSceneSafeAreaInsets;
- (void)_updateSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5 fence:(id)a6;
- (void)_updateSceneUIApplicationSceneSettingsWithBlock:(id)a3;
- (void)_updateSceneUserInterfaceStyle;
- (void)createLinkWithUserActivityData:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)registerForTraitChanges;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withError:(id)a4;
- (void)setActive:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICSystemPaperSceneViewController

- (ICSystemPaperSceneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(ICSystemPaperSceneViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (ICSystemPaperSceneViewController)initWithCoder:(id)a3
{
  [(ICSystemPaperSceneViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICSystemPaperSceneViewController)initWithUserActivityData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICSystemPaperSceneViewController;
  v5 = [(ICSystemPaperSceneViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    userActivityData = v5->_userActivityData;
    v5->_userActivityData = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ICSystemPaperSceneViewController;
  [(ICSystemPaperSceneViewController *)&v29 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [(ICSystemPaperSceneViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  sceneContainerView = self->_sceneContainerView;
  self->_sceneContainerView = v5;

  [(UIView *)self->_sceneContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(ICSystemPaperSceneViewController *)self view];
  [v7 addSubview:self->_sceneContainerView];

  v21 = MEMORY[0x277CCAAD0];
  v27 = [(UIView *)self->_sceneContainerView leadingAnchor];
  v28 = [(ICSystemPaperSceneViewController *)self view];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v23 = [(UIView *)self->_sceneContainerView trailingAnchor];
  v24 = [(ICSystemPaperSceneViewController *)self view];
  v22 = [v24 trailingAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v30[1] = v20;
  v8 = [(UIView *)self->_sceneContainerView topAnchor];
  v9 = [(ICSystemPaperSceneViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [(UIView *)self->_sceneContainerView bottomAnchor];
  v13 = [(ICSystemPaperSceneViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v21 activateConstraints:v16];

  v17 = [MEMORY[0x277D75348] systemBackgroundColor];
  v18 = [(ICSystemPaperSceneViewController *)self view];
  [v18 setBackgroundColor:v17];

  [(ICSystemPaperSceneViewController *)self registerForTraitChanges];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v17 = [v7 containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v17;
  }

  else
  {
    v8 = [v17 window];
  }

  v9 = v8;
  if (v7)
  {
    v10 = [v8 _toWindowOrientation];
    v11 = [(UIScene *)self->_uiParentScene _synchronizedDrawingFence];
    v12 = MEMORY[0x277CF0B70];
    [v7 transitionDuration];
    v13 = [v12 settingsWithDuration:?];
    [(ICSystemPaperSceneViewController *)self _updateSceneToSize:v10 orientation:v13 withAnimationSettings:v11 fence:width, height];
  }

  else
  {
    v14 = [(ICSystemPaperSceneViewController *)self interfaceOrientation];
    v13 = [(ICSystemPaperSceneViewController *)self view];
    [v13 bounds];
    [(ICSystemPaperSceneViewController *)self _updateSceneToSize:v14 orientation:0 withAnimationSettings:0 fence:v15, v16];
  }

  [v7 animateAlongsideTransition:&__block_literal_global completion:&__block_literal_global_15];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = ICSystemPaperSceneViewController;
  [(ICSystemPaperSceneViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(ICSystemPaperSceneViewController *)self view];
  [v3 bounds];
  [(ICSystemPaperSceneViewController *)self _updateSceneToSize:[(ICSystemPaperSceneViewController *)self interfaceOrientation] orientation:0 withAnimationSettings:0 fence:v4, v5];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ICSystemPaperSceneViewController;
  [(ICSystemPaperSceneViewController *)&v2 dealloc];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      invalidated = self->_invalidated;
      v5 = 134218240;
      v6 = self;
      v7 = 1024;
      v8 = invalidated;
      _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: invalidated is now %{BOOL}i", &v5, 0x12u);
    }

    [(ICSystemPaperSceneViewController *)self _teardown];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_active != v3)
  {
    self->_active = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      active = self->_active;
      v7 = 134218240;
      v8 = self;
      v9 = 1024;
      v10 = active;
      _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: active is now %{BOOL}i", &v7, 0x12u);
    }

    [(ICSystemPaperSceneViewController *)self _update];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_teardown
{
  v13 = *MEMORY[0x277D85DE8];
  scenePresenter = self->_scenePresenter;
  if (scenePresenter)
  {
    [(UIScenePresenter *)scenePresenter invalidate];
    v4 = self->_scenePresenter;
    self->_scenePresenter = 0;
  }

  if (self->_scene)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FBScene *)self->_scene identityToken];
      v6 = [v5 stringRepresentation];
      v9 = 134218242;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: invalidating scene %@", &v9, 0x16u);
    }

    [(FBScene *)self->_scene setDelegate:0];
    [(FBScene *)self->_scene invalidate];
    scene = self->_scene;
    self->_scene = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_update
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    [(ICSystemPaperSceneViewController *)self _adjustParentScene];
    v3 = [(ICSystemPaperSceneViewController *)self view];
    [v3 bounds];
    [(ICSystemPaperSceneViewController *)self _updateSceneToSize:[(ICSystemPaperSceneViewController *)self interfaceOrientation] orientation:0 withAnimationSettings:0 fence:v4, v5];

    if (!self->_scenePresenter)
    {
      v6 = [(FBScene *)self->_scene uiPresentationManager];
      v7 = [v6 createPresenterWithIdentifier:@"QuickNote"];
      scenePresenter = self->_scenePresenter;
      self->_scenePresenter = v7;

      [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_25];
      [(UIScenePresenter *)self->_scenePresenter activate];
      sceneContainerView = self->_sceneContainerView;
      v10 = [(UIScenePresenter *)self->_scenePresenter presentationView];
      [(UIView *)sceneContainerView addSubview:v10];
    }
  }
}

void __43__ICSystemPaperSceneViewController__update__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:0];
}

- (void)_adjustParentScene
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICSystemPaperSceneViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  uiParentScene = self->_uiParentScene;
  if (uiParentScene != v5)
  {
    if (v5)
    {
      objc_storeStrong(&self->_uiParentScene, v5);
      v7 = self->_uiParentScene;
      v15[0] = self;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [(UIScene *)v7 _registerSettingsDiffActionArray:v8 forKey:v10];
    }

    else
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [(UIScene *)uiParentScene _unregisterSettingsDiffActionArrayForKey:v12];

      v13 = self->_uiParentScene;
      self->_uiParentScene = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateSceneToSize:(CGSize)a3 orientation:(int64_t)a4 withAnimationSettings:(id)a5 fence:(id)a6
{
  height = a3.height;
  width = a3.width;
  v72 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  if ((a4 - 3) >= 2)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  if ((a4 - 3) >= 2)
  {
    height = width;
  }

  v14 = [(UIScene *)self->_uiParentScene _FBSScene];
  v15 = [v14 settings];
  v16 = [v15 deactivationReasons];

  if (!(v11 | v12))
  {
    v17 = [(ICSystemPaperSceneViewController *)self userActivityData];

    if (!v17)
    {
      v63 = 0;
      goto LABEL_15;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277D75188]);
  [v18 setAnimationSettings:v11];
  [v18 setAnimationFence:v12];
  v19 = [(ICSystemPaperSceneViewController *)self userActivityData];
  v63 = v18;
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v19;
  scene = self->_scene;
  if (!scene)
  {

    goto LABEL_13;
  }

  v22 = [(FBScene *)scene isActive];

  if ((v22 & 1) == 0)
  {
LABEL_13:
    v23 = [(ICSystemPaperSceneViewController *)self userActivityData];
    v24 = [(ICSystemPaperSceneViewController *)self uiActivityContinuationActionForUserActivityData:v23];

    v25 = [MEMORY[0x277CBEB98] setWithObject:v24];
    [v18 setActions:v25];
  }

LABEL_15:
  v26 = self->_scene;
  if (!v26)
  {
    v27 = [MEMORY[0x277D0AD48] definition];
    v28 = MEMORY[0x277D0ADC0];
    [MEMORY[0x277CCAD78] UUID];
    v62 = v16;
    v30 = v29 = v11;
    [v30 UUIDString];
    v31 = a4;
    v33 = v32 = v12;
    v34 = [@"com.apple.mobilenotes" stringByAppendingString:@".QuickNote"];
    v35 = [v28 identityForIdentifier:v33 workspaceIdentifier:v34];
    [v27 setIdentity:v35];

    v12 = v32;
    a4 = v31;

    v11 = v29;
    v16 = v62;
    v36 = MEMORY[0x277D0ADA8];
    v37 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.mobilenotes"];
    v38 = [v36 identityForProcessIdentity:v37];
    [v27 setClientIdentity:v38];

    v39 = [NSClassFromString(&cfstr_Sbsuisystemnot.isa) specification];
    [v27 setSpecification:v39];

    v40 = [MEMORY[0x277D0AAD8] sharedInstance];
    v41 = [v40 createSceneWithDefinition:v27];
    v42 = self->_scene;
    self->_scene = v41;

    [(FBScene *)self->_scene setDelegate:self];
    v26 = self->_scene;
  }

  v43 = v16 & 0x100;
  v44 = [(FBScene *)v26 settings];
  v45 = [v44 mutableCopy];

  [v45 setInterfaceOrientation:a4];
  if (self->_visible)
  {
    active = self->_active;
    if ([v45 isForeground] == active)
    {
      goto LABEL_25;
    }

    v47 = active;
  }

  else
  {
    if (([v45 isForeground] & 1) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(active) = 0;
    v47 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v48 = [(FBScene *)self->_scene identityToken];
    v49 = [v48 stringRepresentation];
    *buf = 134218498;
    v67 = self;
    v68 = 1024;
    v69 = active;
    v70 = 2112;
    v71 = v49;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: foreground changed to %{BOOL}i on %@", buf, 0x1Cu);
  }

  [v45 setForeground:v47];
LABEL_25:
  v50 = [(ICSystemPaperSceneViewController *)self _screen];
  v51 = [v50 displayConfiguration];
  [v45 setDisplayConfiguration:v51];

  [v45 setFrame:{0.0, 0.0, height, v13}];
  v52 = [(ICSystemPaperSceneViewController *)self traitCollection];
  [v45 setUserInterfaceStyle:{objc_msgSend(v52, "userInterfaceStyle")}];

  v53 = [(ICSystemPaperSceneViewController *)self view];
  [v53 safeAreaInsets];
  [v45 setSafeAreaInsetsPortrait:?];

  v54 = [v45 deactivationReasons] & 0xFFFFFFFFFFFFFEFFLL | v43;
  if ([v45 deactivationReasons] != v54)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v55 = [(FBScene *)self->_scene identityToken];
      v56 = [v55 stringRepresentation];
      *buf = 134218498;
      v67 = self;
      v68 = 1024;
      v69 = v43 >> 8;
      v70 = 2112;
      v71 = v56;
      _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: keyboardSuppression changed to %{BOOL}i on %@", buf, 0x1Cu);
    }

    [v45 setDeactivationReasons:v54];
  }

  v57 = [(FBScene *)self->_scene isActive];
  v58 = self->_scene;
  if (v57)
  {
    v59 = v63;
    [(FBScene *)self->_scene updateSettings:v45 withTransitionContext:v63];
  }

  else
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __95__ICSystemPaperSceneViewController__updateSceneToSize_orientation_withAnimationSettings_fence___block_invoke;
    v64[3] = &unk_279D33D08;
    v60 = v45;
    v65 = v60;
    [(FBScene *)v58 configureParameters:v64];
    if ([v60 isForeground])
    {
      [(FBScene *)self->_scene activateWithTransitionContext:v63];
    }

    v59 = v63;
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_updateSceneUIApplicationSceneSettingsWithBlock:(id)a3
{
  v4 = a3;
  scene = self->_scene;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__ICSystemPaperSceneViewController__updateSceneUIApplicationSceneSettingsWithBlock___block_invoke;
  v7[3] = &unk_279D33D30;
  v8 = v4;
  v6 = v4;
  [(FBScene *)scene updateSettingsWithBlock:v7];
}

void __84__ICSystemPaperSceneViewController__updateSceneUIApplicationSceneSettingsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "#sceneHosting Expected scene's settings to be UIMutableApplicationSceneSettings, but they weren't {actualClass: %@}", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateSceneSafeAreaInsets
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ICSystemPaperSceneViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18.top = v5;
    v18.left = v7;
    v18.bottom = v9;
    v18.right = v11;
    v12 = NSStringFromUIEdgeInsets(v18);
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "#sceneHosting Updating scene's safe area insets {newSafeAreaInsets: %@}", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ICSystemPaperSceneViewController__updateSceneSafeAreaInsets__block_invoke;
  v14[3] = &__block_descriptor_64_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  *&v14[4] = v5;
  *&v14[5] = v7;
  *&v14[6] = v9;
  *&v14[7] = v11;
  [(ICSystemPaperSceneViewController *)self _updateSceneUIApplicationSceneSettingsWithBlock:v14];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = ICSystemPaperSceneViewController;
  [(ICSystemPaperSceneViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(ICSystemPaperSceneViewController *)self _updateSceneSafeAreaInsets];
}

- (void)_updateSceneUserInterfaceStyle
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__ICSystemPaperSceneViewController__updateSceneUserInterfaceStyle__block_invoke;
  v2[3] = &unk_279D33D78;
  v2[4] = self;
  [(ICSystemPaperSceneViewController *)self _updateSceneUIApplicationSceneSettingsWithBlock:v2];
}

void __66__ICSystemPaperSceneViewController__updateSceneUserInterfaceStyle__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  [v3 setUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];
}

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identityToken];
    v9 = [v8 stringRepresentation];
    *buf = 134218498;
    v26 = self;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did receive actions %@", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    v14 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v16 dismissalReason];
            *buf = 134218242;
            v26 = self;
            v27 = 2114;
            v28 = v17;
            _os_log_impl(&dword_26C4A3000, v14, OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: dismiss for reason: %{public}@", buf, 0x16u);
          }

          v18 = [(ICSystemPaperSceneViewController *)self presentingViewController];
          [v18 dismissViewControllerAnimated:1 completion:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a3;
    v6 = [v5 identityToken];
    v7 = [v6 stringRepresentation];
    [v5 contentState];

    v8 = NSStringFromFBSceneContentState();
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did change content state to %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidActivate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a3 identityToken];
    v6 = [v5 stringRepresentation];
    v8 = 134218242;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did activate", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidDeactivate:(id)a3 withError:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identityToken];
    v9 = [v8 stringRepresentation];
    v17 = 134218498;
    v18 = self;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did deactivate with error %@", &v17, 0x20u);
  }

  v10 = [v7 domain];
  if ([v10 isEqualToString:*MEMORY[0x277D0AA48]])
  {
    v11 = [v7 code];

    if (v11 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 identityToken];
        v13 = [v12 stringRepresentation];
        v17 = 134218498;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did deactivate with fatal error %@", &v17, 0x20u);
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 identityToken];
    v15 = [v14 stringRepresentation];
    v17 = 134218498;
    v18 = self;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did deactivate with transient error %@", &v17, 0x20u);
  }

  [(ICSystemPaperSceneViewController *)self _update];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = a6;
    v11 = a4;
    v12 = [a3 identityToken];
    v13 = [v12 stringRepresentation];

    v15 = 134218754;
    v16 = self;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did update client settings with diff %@, transition %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a6;
  v11 = [a4 settings];
  [v11 deactivationReasons];

  [v10 deactivationReasons];
  if ((BSEqualBools() & 1) == 0)
  {

    [(ICSystemPaperSceneViewController *)self _update];
  }
}

- (void)createLinkWithUserActivityData:(id)a3
{
  v6 = [(ICSystemPaperSceneViewController *)self uiActivityContinuationActionForUserActivityData:a3];
  scene = self->_scene;
  v5 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [(FBScene *)scene sendActions:v5];
}

- (id)uiActivityContinuationActionForUserActivityData:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE58];
  v4 = a3;
  v5 = [[v3 alloc] _initWithUserActivityData:v4];
  v6 = objc_alloc(MEMORY[0x277D750D8]);
  v15[0] = v4;
  v14[0] = &unk_287CFD1A8;
  v14[1] = &unk_287CFD1C0;
  v7 = [v5 activityType];
  v15[1] = v7;
  v14[2] = &unk_287CFD1D8;
  v8 = [v5 activityType];
  v15[2] = v8;
  v14[3] = &unk_287CFD1F0;
  v9 = [MEMORY[0x277CBEAA8] date];
  v15[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v11 = [v6 initWithSettings:v10];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)registerForTraitChanges
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [(ICSystemPaperSceneViewController *)self registerForTraitChanges:v3 withAction:sel__updateSceneUserInterfaceStyle];

  v5 = *MEMORY[0x277D85DE8];
}

@end