@interface PPLPeopleEntityViewController
- (CGRect)initialSceneFrame;
- (CGRect)sceneSettingsFrameFromRect:(CGRect)rect;
- (NSURL)personURL;
- (PPLPeopleEntityViewController)initWithMetadata:(id)metadata;
- (PPLPeopleEntityViewController)initWithMetadata:(id)metadata sceneManager:(id)manager;
- (PPLPeopleEntityViewControllerDelegate)delegate;
- (UIEdgeInsets)safeAreaInsetFromSceneSettings:(id)settings;
- (UIEdgeInsets)sceneSafeAreaInsetPortrait;
- (void)sceneManager:(id)manager didGrantOwnershipOfScene:(id)scene;
- (void)sceneManager:(id)manager didRevokeOwnershipOfScene:(id)scene;
- (void)sceneManager:(id)manager sceneDidRequestDismissal:(id)dismissal;
- (void)viewDidLayoutSubviews;
@end

@implementation PPLPeopleEntityViewController

- (PPLPeopleEntityViewController)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = +[PPLPeopleAppSceneManager sharedSceneManager];
  v6 = [(PPLPeopleEntityViewController *)self initWithMetadata:metadataCopy sceneManager:v5];

  return v6;
}

- (PPLPeopleEntityViewController)initWithMetadata:(id)metadata sceneManager:(id)manager
{
  metadataCopy = metadata;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PPLPeopleEntityViewController;
  v9 = [(PPLPeopleEntityViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    objc_storeStrong(&v10->_sceneManager, manager);
  }

  return v10;
}

- (CGRect)initialSceneFrame
{
  view = [(PPLPeopleEntityViewController *)self view];
  [view bounds];
  [(PPLPeopleEntityViewController *)self sceneSettingsFrameFromRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (NSURL)personURL
{
  metadata = [(PPLPeopleEntityViewController *)self metadata];
  v3 = [metadata url];

  return v3;
}

- (void)sceneManager:(id)manager didGrantOwnershipOfScene:(id)scene
{
  sceneCopy = scene;
  scene = [(PPLPeopleEntityViewController *)self scene];

  if (!scene)
  {
    [(PPLPeopleEntityViewController *)self setScene:sceneCopy];
    scene2 = [(PPLPeopleEntityViewController *)self scene];
    uiPresentationManager = [scene2 uiPresentationManager];

    v9 = MEMORY[0x277CCACA8];
    identifier = [sceneCopy identifier];
    v11 = [v9 stringWithFormat:@"%@-%p", identifier, self];

    v12 = [uiPresentationManager createPresenterWithIdentifier:v11];
    [(PPLPeopleEntityViewController *)self setPresenter:v12];
    presentationView = [v12 presentationView];
    [(PPLPeopleEntityViewController *)self setHostView:presentationView];

    [v12 modifyPresentationContext:&__block_literal_global];
    [v12 activate];
    view = [(PPLPeopleEntityViewController *)self view];
    hostView = [(PPLPeopleEntityViewController *)self hostView];
    hostView2 = [(PPLPeopleEntityViewController *)self hostView];
    [view addSubview:hostView2];

    hostView3 = [(PPLPeopleEntityViewController *)self hostView];
    [hostView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    leadingAnchor = [hostView leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v20 setActive:1];

    trailingAnchor = [hostView trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v23 setActive:1];

    topAnchor = [hostView topAnchor];
    topAnchor2 = [view topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v26 setActive:1];

    bottomAnchor = [hostView bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v29 setActive:1];

    v30 = PPLPeopleViewServiceLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E21C000, v30, OS_LOG_TYPE_DEFAULT, "created scene", buf, 2u);
    }

    view2 = [(PPLPeopleEntityViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

void __71__PPLPeopleEntityViewController_sceneManager_didGrantOwnershipOfScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setBackgroundColorWhileHosting:0];
}

- (void)sceneManager:(id)manager didRevokeOwnershipOfScene:(id)scene
{
  [(PPLPeopleEntityViewController *)self setScene:0, scene];
  presenter = [(PPLPeopleEntityViewController *)self presenter];
  [presenter invalidate];

  [(PPLPeopleEntityViewController *)self setPresenter:0];
  hostView = [(PPLPeopleEntityViewController *)self hostView];
  [hostView removeFromSuperview];

  [(PPLPeopleEntityViewController *)self setHostView:0];
}

- (void)sceneManager:(id)manager sceneDidRequestDismissal:(id)dismissal
{
  v5 = PPLPeopleViewServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E21C000, v5, OS_LOG_TYPE_DEFAULT, "scene requested dismissal", v7, 2u);
  }

  delegate = [(PPLPeopleEntityViewController *)self delegate];
  [delegate peopleEntityViewControllerDidRequestDismissal:self];
}

- (void)viewDidLayoutSubviews
{
  v40.receiver = self;
  v40.super_class = PPLPeopleEntityViewController;
  [(PPLPeopleEntityViewController *)&v40 viewDidLayoutSubviews];
  view = [(PPLPeopleEntityViewController *)self view];
  [view bounds];
  [(PPLPeopleEntityViewController *)self sceneSettingsFrameFromRect:?];
  v5 = v4;
  v37 = v6;
  v8 = v7;
  v10 = v9;

  [(PPLPeopleEntityViewController *)self sceneSafeAreaInsetPortrait];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v38 = v17;
  scene = [(PPLPeopleEntityViewController *)self scene];
  settings = [scene settings];
  [(PPLPeopleEntityViewController *)self safeAreaInsetFromSceneSettings:settings];
  v21 = v20;
  v23 = v22;
  v35 = v24;
  v36 = v25;

  scene2 = [(PPLPeopleEntityViewController *)self scene];
  settings2 = [scene2 settings];
  [settings2 frame];
  v42.origin.x = v28;
  v42.origin.y = v29;
  v42.size.width = v30;
  v42.size.height = v31;
  v41.origin.x = v5;
  v41.origin.y = v37;
  v41.size.width = v8;
  v41.size.height = v10;
  v32 = CGRectEqualToRect(v41, v42);

  if (!v32 || v14 != v23 || v12 != v21 || (v33 = v38, v38 != v36) || (v33 = v35, v16 != v35))
  {
    scene3 = [(PPLPeopleEntityViewController *)self scene];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __54__PPLPeopleEntityViewController_viewDidLayoutSubviews__block_invoke;
    v39[3] = &__block_descriptor_96_e33_v16__0__FBSMutableSceneSettings_8l;
    *&v39[4] = v5;
    *&v39[5] = v37;
    *&v39[6] = v8;
    *&v39[7] = v10;
    *&v39[8] = v12;
    *&v39[9] = v14;
    *&v39[10] = v16;
    *&v39[11] = v38;
    [scene3 updateSettingsWithBlock:v39];
  }
}

void __54__PPLPeopleEntityViewController_viewDidLayoutSubviews__block_invoke(double *a1, void *a2)
{
  v3 = a2;
  [v3 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
  if ([v3 isUISubclass])
  {
    [v3 setSafeAreaInsetsPortrait:{a1[8], a1[9], a1[10], a1[11]}];
  }
}

- (CGRect)sceneSettingsFrameFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = v8;
  v11 = v10;

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectEqualToRect(v17, *MEMORY[0x277CBF3A0]);
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = width;
  }

  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = height;
  }

  v15 = x;
  v16 = y;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (UIEdgeInsets)sceneSafeAreaInsetPortrait
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  [(PPLPeopleEntityViewController *)self initialSceneFrame];
  v9 = v8;
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    view = [(PPLPeopleEntityViewController *)self view];
    window = [view window];
    _scene = [window _scene];
    settings = [_scene settings];

    if (settings && ([settings isUISubclass] & 1) != 0)
    {
      [settings safeAreaInsetsPortrait];
      v13 = v21;
      v14 = v22;
      v15 = v23;
      v16 = v24;
    }

    else
    {
      v13 = *MEMORY[0x277D768C8];
      v14 = *(MEMORY[0x277D768C8] + 8);
      v15 = *(MEMORY[0x277D768C8] + 16);
      v16 = *(MEMORY[0x277D768C8] + 24);
    }
  }

  else
  {
    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (UIEdgeInsets)safeAreaInsetFromSceneSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy isUISubclass])
  {
    [settingsCopy safeAreaInsetsPortrait];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (PPLPeopleEntityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end