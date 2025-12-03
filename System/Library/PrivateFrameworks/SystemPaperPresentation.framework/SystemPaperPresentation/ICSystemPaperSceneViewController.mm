@interface ICSystemPaperSceneViewController
- (ICSystemPaperSceneViewController)initWithCoder:(id)coder;
- (ICSystemPaperSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICSystemPaperSceneViewController)initWithUserActivityData:(id)data;
- (id)uiActivityContinuationActionForUserActivityData:(id)data;
- (void)_adjustParentScene;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_teardown;
- (void)_update;
- (void)_updateSceneSafeAreaInsets;
- (void)_updateSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings fence:(id)fence;
- (void)_updateSceneUIApplicationSceneSettingsWithBlock:(id)block;
- (void)_updateSceneUserInterfaceStyle;
- (void)createLinkWithUserActivityData:(id)data;
- (void)dealloc;
- (void)invalidate;
- (void)registerForTraitChanges;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withError:(id)error;
- (void)setActive:(BOOL)active;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICSystemPaperSceneViewController

- (ICSystemPaperSceneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(ICSystemPaperSceneViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (ICSystemPaperSceneViewController)initWithCoder:(id)coder
{
  [(ICSystemPaperSceneViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICSystemPaperSceneViewController)initWithUserActivityData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ICSystemPaperSceneViewController;
  v5 = [(ICSystemPaperSceneViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [dataCopy copy];
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
  view = [(ICSystemPaperSceneViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  sceneContainerView = self->_sceneContainerView;
  self->_sceneContainerView = v5;

  [(UIView *)self->_sceneContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(ICSystemPaperSceneViewController *)self view];
  [view2 addSubview:self->_sceneContainerView];

  v21 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIView *)self->_sceneContainerView leadingAnchor];
  view3 = [(ICSystemPaperSceneViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v25;
  trailingAnchor = [(UIView *)self->_sceneContainerView trailingAnchor];
  view4 = [(ICSystemPaperSceneViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v20;
  topAnchor = [(UIView *)self->_sceneContainerView topAnchor];
  view5 = [(ICSystemPaperSceneViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v11;
  bottomAnchor = [(UIView *)self->_sceneContainerView bottomAnchor];
  view6 = [(ICSystemPaperSceneViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v21 activateConstraints:v16];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view7 = [(ICSystemPaperSceneViewController *)self view];
  [view7 setBackgroundColor:systemBackgroundColor];

  [(ICSystemPaperSceneViewController *)self registerForTraitChanges];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  containerView = [coordinatorCopy containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = containerView;
  }

  else
  {
    window = [containerView window];
  }

  v9 = window;
  if (coordinatorCopy)
  {
    _toWindowOrientation = [window _toWindowOrientation];
    _synchronizedDrawingFence = [(UIScene *)self->_uiParentScene _synchronizedDrawingFence];
    v12 = MEMORY[0x277CF0B70];
    [coordinatorCopy transitionDuration];
    view = [v12 settingsWithDuration:?];
    [(ICSystemPaperSceneViewController *)self _updateSceneToSize:_toWindowOrientation orientation:view withAnimationSettings:_synchronizedDrawingFence fence:width, height];
  }

  else
  {
    interfaceOrientation = [(ICSystemPaperSceneViewController *)self interfaceOrientation];
    view = [(ICSystemPaperSceneViewController *)self view];
    [view bounds];
    [(ICSystemPaperSceneViewController *)self _updateSceneToSize:interfaceOrientation orientation:0 withAnimationSettings:0 fence:v15, v16];
  }

  [coordinatorCopy animateAlongsideTransition:&__block_literal_global completion:&__block_literal_global_15];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = ICSystemPaperSceneViewController;
  [(ICSystemPaperSceneViewController *)&v6 viewDidLayoutSubviews];
  view = [(ICSystemPaperSceneViewController *)self view];
  [view bounds];
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
      selfCopy = self;
      v7 = 1024;
      v8 = invalidated;
      _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: invalidated is now %{BOOL}i", &v5, 0x12u);
    }

    [(ICSystemPaperSceneViewController *)self _teardown];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v11 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_active != activeCopy)
  {
    self->_active = activeCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      active = self->_active;
      v7 = 134218240;
      selfCopy = self;
      v9 = 1024;
      activeCopy2 = active;
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
      identityToken = [(FBScene *)self->_scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = stringRepresentation;
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
    view = [(ICSystemPaperSceneViewController *)self view];
    [view bounds];
    [(ICSystemPaperSceneViewController *)self _updateSceneToSize:[(ICSystemPaperSceneViewController *)self interfaceOrientation] orientation:0 withAnimationSettings:0 fence:v4, v5];

    if (!self->_scenePresenter)
    {
      uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
      v7 = [uiPresentationManager createPresenterWithIdentifier:@"QuickNote"];
      scenePresenter = self->_scenePresenter;
      self->_scenePresenter = v7;

      [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_25];
      [(UIScenePresenter *)self->_scenePresenter activate];
      sceneContainerView = self->_sceneContainerView;
      presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
      [(UIView *)sceneContainerView addSubview:presentationView];
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
  view = [(ICSystemPaperSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  uiParentScene = self->_uiParentScene;
  if (uiParentScene != windowScene)
  {
    if (windowScene)
    {
      objc_storeStrong(&self->_uiParentScene, windowScene);
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

- (void)_updateSceneToSize:(CGSize)size orientation:(int64_t)orientation withAnimationSettings:(id)settings fence:(id)fence
{
  height = size.height;
  width = size.width;
  v72 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  fenceCopy = fence;
  if ((orientation - 3) >= 2)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  if ((orientation - 3) >= 2)
  {
    height = width;
  }

  _FBSScene = [(UIScene *)self->_uiParentScene _FBSScene];
  settings = [_FBSScene settings];
  deactivationReasons = [settings deactivationReasons];

  if (!(settingsCopy | fenceCopy))
  {
    userActivityData = [(ICSystemPaperSceneViewController *)self userActivityData];

    if (!userActivityData)
    {
      v63 = 0;
      goto LABEL_15;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277D75188]);
  [v18 setAnimationSettings:settingsCopy];
  [v18 setAnimationFence:fenceCopy];
  userActivityData2 = [(ICSystemPaperSceneViewController *)self userActivityData];
  v63 = v18;
  if (!userActivityData2)
  {
    goto LABEL_15;
  }

  v20 = userActivityData2;
  scene = self->_scene;
  if (!scene)
  {

    goto LABEL_13;
  }

  isActive = [(FBScene *)scene isActive];

  if ((isActive & 1) == 0)
  {
LABEL_13:
    userActivityData3 = [(ICSystemPaperSceneViewController *)self userActivityData];
    v24 = [(ICSystemPaperSceneViewController *)self uiActivityContinuationActionForUserActivityData:userActivityData3];

    v25 = [MEMORY[0x277CBEB98] setWithObject:v24];
    [v18 setActions:v25];
  }

LABEL_15:
  v26 = self->_scene;
  if (!v26)
  {
    definition = [MEMORY[0x277D0AD48] definition];
    v28 = MEMORY[0x277D0ADC0];
    [MEMORY[0x277CCAD78] UUID];
    v62 = deactivationReasons;
    v30 = v29 = settingsCopy;
    [v30 UUIDString];
    orientationCopy = orientation;
    v33 = v32 = fenceCopy;
    v34 = [@"com.apple.mobilenotes" stringByAppendingString:@".QuickNote"];
    v35 = [v28 identityForIdentifier:v33 workspaceIdentifier:v34];
    [definition setIdentity:v35];

    fenceCopy = v32;
    orientation = orientationCopy;

    settingsCopy = v29;
    deactivationReasons = v62;
    v36 = MEMORY[0x277D0ADA8];
    v37 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.mobilenotes"];
    v38 = [v36 identityForProcessIdentity:v37];
    [definition setClientIdentity:v38];

    specification = [NSClassFromString(&cfstr_Sbsuisystemnot.isa) specification];
    [definition setSpecification:specification];

    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v41 = [mEMORY[0x277D0AAD8] createSceneWithDefinition:definition];
    v42 = self->_scene;
    self->_scene = v41;

    [(FBScene *)self->_scene setDelegate:self];
    v26 = self->_scene;
  }

  v43 = deactivationReasons & 0x100;
  settings2 = [(FBScene *)v26 settings];
  v45 = [settings2 mutableCopy];

  [v45 setInterfaceOrientation:orientation];
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
    identityToken = [(FBScene *)self->_scene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    *buf = 134218498;
    selfCopy2 = self;
    v68 = 1024;
    v69 = active;
    v70 = 2112;
    v71 = stringRepresentation;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: foreground changed to %{BOOL}i on %@", buf, 0x1Cu);
  }

  [v45 setForeground:v47];
LABEL_25:
  _screen = [(ICSystemPaperSceneViewController *)self _screen];
  displayConfiguration = [_screen displayConfiguration];
  [v45 setDisplayConfiguration:displayConfiguration];

  [v45 setFrame:{0.0, 0.0, height, v13}];
  traitCollection = [(ICSystemPaperSceneViewController *)self traitCollection];
  [v45 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  view = [(ICSystemPaperSceneViewController *)self view];
  [view safeAreaInsets];
  [v45 setSafeAreaInsetsPortrait:?];

  v54 = [v45 deactivationReasons] & 0xFFFFFFFFFFFFFEFFLL | v43;
  if ([v45 deactivationReasons] != v54)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      identityToken2 = [(FBScene *)self->_scene identityToken];
      stringRepresentation2 = [identityToken2 stringRepresentation];
      *buf = 134218498;
      selfCopy2 = self;
      v68 = 1024;
      v69 = v43 >> 8;
      v70 = 2112;
      v71 = stringRepresentation2;
      _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: keyboardSuppression changed to %{BOOL}i on %@", buf, 0x1Cu);
    }

    [v45 setDeactivationReasons:v54];
  }

  isActive2 = [(FBScene *)self->_scene isActive];
  v58 = self->_scene;
  if (isActive2)
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

- (void)_updateSceneUIApplicationSceneSettingsWithBlock:(id)block
{
  blockCopy = block;
  scene = self->_scene;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__ICSystemPaperSceneViewController__updateSceneUIApplicationSceneSettingsWithBlock___block_invoke;
  v7[3] = &unk_279D33D30;
  v8 = blockCopy;
  v6 = blockCopy;
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
  view = [(ICSystemPaperSceneViewController *)self view];
  [view safeAreaInsets];
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

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v31 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [sceneCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    *buf = 134218498;
    selfCopy2 = self;
    v27 = 2112;
    v28 = stringRepresentation;
    v29 = 2112;
    v30 = actionsCopy;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did receive actions %@", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = actionsCopy;
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
            dismissalReason = [v16 dismissalReason];
            *buf = 134218242;
            selfCopy2 = self;
            v27 = 2114;
            v28 = dismissalReason;
            _os_log_impl(&dword_26C4A3000, v14, OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: dismiss for reason: %{public}@", buf, 0x16u);
          }

          presentingViewController = [(ICSystemPaperSceneViewController *)self presentingViewController];
          [presentingViewController dismissViewControllerAnimated:1 completion:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sceneContentStateDidChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    changeCopy = change;
    identityToken = [changeCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [changeCopy contentState];

    v8 = NSStringFromFBSceneContentState();
    v10 = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = stringRepresentation;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did change content state to %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidActivate:(id)activate
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [activate identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v8 = 134218242;
    selfCopy = self;
    v10 = 2112;
    v11 = stringRepresentation;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did activate", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidDeactivate:(id)deactivate withError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [deactivateCopy identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v17 = 134218498;
    selfCopy3 = self;
    v19 = 2112;
    v20 = stringRepresentation;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did deactivate with error %@", &v17, 0x20u);
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D0AA48]])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        identityToken2 = [deactivateCopy identityToken];
        stringRepresentation2 = [identityToken2 stringRepresentation];
        v17 = 134218498;
        selfCopy3 = self;
        v19 = 2112;
        v20 = stringRepresentation2;
        v21 = 2112;
        v22 = errorCopy;
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
    identityToken3 = [deactivateCopy identityToken];
    stringRepresentation3 = [identityToken3 stringRepresentation];
    v17 = 134218498;
    selfCopy3 = self;
    v19 = 2112;
    v20 = stringRepresentation3;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did deactivate with transient error %@", &v17, 0x20u);
  }

  [(ICSystemPaperSceneViewController *)self _update];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    contextCopy = context;
    diffCopy = diff;
    identityToken = [scene identityToken];
    stringRepresentation = [identityToken stringRepresentation];

    v15 = 134218754;
    selfCopy = self;
    v17 = 2112;
    v18 = stringRepresentation;
    v19 = 2112;
    v20 = diffCopy;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_26C4A3000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ICSystemPaperSceneViewController-%p: scene %@ did update client settings with diff %@, transition %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  settingsCopy = settings;
  settings = [sScene settings];
  [settings deactivationReasons];

  [settingsCopy deactivationReasons];
  if ((BSEqualBools() & 1) == 0)
  {

    [(ICSystemPaperSceneViewController *)self _update];
  }
}

- (void)createLinkWithUserActivityData:(id)data
{
  v6 = [(ICSystemPaperSceneViewController *)self uiActivityContinuationActionForUserActivityData:data];
  scene = self->_scene;
  v5 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [(FBScene *)scene sendActions:v5];
}

- (id)uiActivityContinuationActionForUserActivityData:(id)data
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAE58];
  dataCopy = data;
  v5 = [[v3 alloc] _initWithUserActivityData:dataCopy];
  v6 = objc_alloc(MEMORY[0x277D750D8]);
  v15[0] = dataCopy;
  v14[0] = &unk_287CFD1A8;
  v14[1] = &unk_287CFD1C0;
  activityType = [v5 activityType];
  v15[1] = activityType;
  v14[2] = &unk_287CFD1D8;
  activityType2 = [v5 activityType];
  v15[2] = activityType2;
  v14[3] = &unk_287CFD1F0;
  date = [MEMORY[0x277CBEAA8] date];
  v15[3] = date;
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