@interface SHSheetSceneViewController
- (CGRect)_framePortrait;
- (SHSheetContentPresenter)presenter;
- (SHSheetSceneViewController)initWithSession:(id)session;
- (UIEdgeInsets)_safeAreaInsetsPortrait;
- (id)_hostSheetPresentationController;
- (int64_t)_hostProcessType;
- (void)_installSceneView;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_willEnterForeground:(id)foreground;
- (void)dealloc;
- (void)didUpdateAirDropTransferWithChange:(id)change;
- (void)reloadActivity:(id)activity;
- (void)reloadContent;
- (void)reloadMetadata:(id)metadata;
- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler;
- (void)scene:(id)scene didReceiveAction:(id)action;
- (void)scene:(id)scene didReceiveDraggingAction:(id)action;
- (void)scene:(id)scene didReceiveMetadataUpdateAction:(id)action;
- (void)scene:(id)scene didReceiveSuggestionAction:(id)action;
- (void)sceneSettingsDidChange:(id)change;
- (void)startPulsingActivity:(id)activity localizedTitle:(id)title;
- (void)stopPulsingActivity:(id)activity;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithViewModel:(id)model;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation SHSheetSceneViewController

- (SHSheetSceneViewController)initWithSession:(id)session
{
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = SHSheetSceneViewController;
  v6 = [(SHSheetSceneViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    remoteScene = [sessionCopy remoteScene];
    scene = v7->_scene;
    v7->_scene = remoteScene;

    [(SHSheetScene *)v7->_scene setDelegate:v7];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE360] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DE348] object:0];

  scene = [(SHSheetSceneViewController *)self scene];
  [scene invalidate];

  v7.receiver = self;
  v7.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v9 viewDidLoad];
  [(SHSheetSceneViewController *)self _installSceneView];
  session = [(SHSheetSceneViewController *)self session];
  activityViewController = [session activityViewController];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SHSheetSceneViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_1E71F9510;
  v8 = activityViewController;
  v5 = activityViewController;
  scene = [(SHSheetSceneViewController *)self scene];
  [scene setFenceCompletionHandler:v7];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v7 viewDidDisappear:disappear];
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [windowScene _unregisterSettingsDiffActionArrayForKey:@"SHSheetSceneViewControllerSceneSettingsDiffAction"];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v18 viewIsAppearing:appearing];
  v4 = objc_alloc_init(SHSheetSceneSettingsDiffAction);
  [(SHSheetSceneSettingsDiffAction *)v4 setDelegate:self];
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v19[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [windowScene _registerSettingsDiffActionArray:v8 forKey:@"SHSheetSceneViewControllerSceneSettingsDiffAction"];

  view2 = [(SHSheetSceneViewController *)self view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];

  _hostProcessType = [(SHSheetSceneViewController *)self _hostProcessType];
  scene = [(SHSheetSceneViewController *)self scene];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__SHSheetSceneViewController_viewIsAppearing___block_invoke;
  v15[3] = &unk_1E71FADD8;
  v15[4] = self;
  v16 = windowScene2;
  v17 = _hostProcessType;
  v14 = windowScene2;
  [scene updateWithChange:v15];
}

void __46__SHSheetSceneViewController_viewIsAppearing___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  *a3 = 1;
  v4 = *(a1 + 32);
  v7 = a2;
  [v4 _framePortrait];
  [v7 setFramePortrait:?];
  [*(a1 + 32) _safeAreaInsetsPortrait];
  [v7 setSafeAreaInsetsPortrait:?];
  [v7 setInterfaceOrientation:{objc_msgSend(*(a1 + 40), "interfaceOrientation")}];
  v5 = [*(a1 + 40) screen];
  v6 = [v5 displayConfiguration];
  [v7 setDisplayConfiguration:v6];

  [v7 setHostProcessType:*(a1 + 48)];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v9 viewDidLayoutSubviews];
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    scene = [(SHSheetSceneViewController *)self scene];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SHSheetSceneViewController_viewDidLayoutSubviews__block_invoke;
    v7[3] = &unk_1E71FAE00;
    v7[4] = self;
    v8 = windowScene;
    [scene updateWithChange:v7];
  }
}

void __51__SHSheetSceneViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _framePortrait];
  [v4 setFramePortrait:?];
  [v4 setPresentationStyle:SHSheetPresentationControllerPresentationStyle(*(a1 + 32))];
  [*(a1 + 32) _safeAreaInsetsPortrait];
  [v4 setSafeAreaInsetsPortrait:?];
  [v4 setInterfaceOrientation:{objc_msgSend(*(a1 + 40), "interfaceOrientation")}];
  v5 = [*(a1 + 40) screen];
  v6 = [v5 displayConfiguration];
  [v4 setDisplayConfiguration:v6];

  v7 = [*(a1 + 32) traitCollection];
  [v4 setUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v6 traitCollectionDidChange:change];
  scene = [(SHSheetSceneViewController *)self scene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SHSheetSceneViewController_traitCollectionDidChange___block_invoke;
  v5[3] = &unk_1E71F9E00;
  v5[4] = self;
  [scene updateWithChange:v5];
}

void __55__SHSheetSceneViewController_traitCollectionDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 traitCollection];
  [v3 setUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v5 viewSafeAreaInsetsDidChange];
  scene = [(SHSheetSceneViewController *)self scene];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__SHSheetSceneViewController_viewSafeAreaInsetsDidChange__block_invoke;
  v4[3] = &unk_1E71F9E00;
  v4[4] = self;
  [scene updateWithChange:v4];
}

void __57__SHSheetSceneViewController_viewSafeAreaInsetsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _safeAreaInsetsPortrait];
  [v3 setSafeAreaInsetsPortrait:?];
}

- (void)_installSceneView
{
  scene = [(SHSheetSceneViewController *)self scene];
  obj = [scene sceneView];

  sceneView = self->_sceneView;
  if (sceneView != obj)
  {
    [(UIView *)sceneView removeFromSuperview];
    view = [(SHSheetSceneViewController *)self view];
    [view addSubview:obj];

    [(UIView *)obj setClipsToBounds:1];
    layer = [(UIView *)obj layer];
    [layer setName:@"SHSheetSceneView"];

    objc_storeStrong(&self->_sceneView, obj);
  }
}

- (CGRect)_framePortrait
{
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  view2 = [(SHSheetSceneViewController *)self view];
  [view2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  interfaceOrientation = [windowScene interfaceOrientation];
  if ((interfaceOrientation - 3) >= 2)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  if ((interfaceOrientation - 3) < 2)
  {
    v12 = v14;
  }

  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (UIEdgeInsets)_safeAreaInsetsPortrait
{
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  view2 = [(SHSheetSceneViewController *)self view];
  [view2 safeAreaInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  traitCollection = [windowScene traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    goto LABEL_2;
  }

  interfaceOrientation = [windowScene interfaceOrientation];
  if (interfaceOrientation == 2)
  {
    v17 = v10;
    v18 = v8;
    v19 = v14;
    v14 = v12;
    goto LABEL_3;
  }

  if (interfaceOrientation == 3)
  {
    v17 = v8;
    v18 = v14;
    v19 = v12;
    v14 = v10;
    goto LABEL_3;
  }

  if (interfaceOrientation != 4)
  {
LABEL_2:
    v17 = v14;
    v18 = v12;
    v19 = v10;
    v14 = v8;
  }

  else
  {
    v17 = v12;
    v18 = v10;
    v19 = v8;
  }

LABEL_3:

  v20 = v14;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)sceneSettingsDidChange:(id)change
{
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];

  if (window)
  {
    scene = [(SHSheetSceneViewController *)self scene];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__SHSheetSceneViewController_sceneSettingsDidChange___block_invoke;
    v7[3] = &unk_1E71F9E00;
    v7[4] = self;
    [scene updateWithChange:v7];
  }
}

void __53__SHSheetSceneViewController_sceneSettingsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  [v4 setInterfaceOrientation:{objc_msgSend(v7, "interfaceOrientation")}];

  v12 = [*(a1 + 32) view];
  v8 = [v12 window];
  v9 = [v8 windowScene];
  v10 = [v9 screen];
  v11 = [v10 displayConfiguration];
  [v4 setDisplayConfiguration:v11];
}

- (void)_willEnterForeground:(id)foreground
{
  scene = [(SHSheetSceneViewController *)self scene];
  isActive = [scene isActive];

  if ((isActive & 1) == 0)
  {
    scene2 = [(SHSheetSceneViewController *)self scene];
    [scene2 activate];
  }
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    object = [foregroundCopy object];

    if (object == windowScene)
    {
      scene = [(SHSheetSceneViewController *)self scene];
      [scene updateWithChange:&__block_literal_global_34];
    }
  }
}

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  view = [(SHSheetSceneViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    object = [backgroundCopy object];
    v9 = object;
    if (object == windowScene)
    {
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __55__SHSheetSceneViewController__sceneDidEnterBackground___block_invoke;
        v11[3] = &unk_1E71F9510;
        v11[4] = self;
        [windowScene _performAfterSystemSnapshotsComplete:v11];
      }
    }

    else
    {
    }
  }
}

void __55__SHSheetSceneViewController__sceneDidEnterBackground___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) scene];
  [v1 updateWithChange:&__block_literal_global_31];
}

- (int64_t)_hostProcessType
{
  viewIfLoaded = [(SHSheetSceneViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {
    return 0;
  }

  viewIfLoaded2 = [(SHSheetSceneViewController *)self viewIfLoaded];
  window2 = [viewIfLoaded2 window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)scene:(id)scene didReceiveAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    type = [actionCopy type];
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "did receive action with type:%ld", &v12, 0xCu);
  }

  type2 = [actionCopy type];
  if (type2 > 4)
  {
    if (type2 <= 6)
    {
      if (type2 == 5)
      {
        presenter = [(SHSheetSceneViewController *)self presenter];
        [presenter handleClose];
      }

      else
      {
        presenter = [(SHSheetSceneViewController *)self presenter];
        [presenter handleActionsEdit];
      }

      goto LABEL_24;
    }

    switch(type2)
    {
      case 7:
        presenter = [(SHSheetSceneViewController *)self presenter];
        [presenter handleNext];
        goto LABEL_24;
      case 8:
        presenter = [(SHSheetSceneViewController *)self session];
        activityViewController = [presenter activityViewController];
        [activityViewController dismissViewControllerAnimated:0 completion:0];

        goto LABEL_24;
      case 9:
        currentTest = [(SHSheetSceneViewController *)self currentTest];
        completionHandler = [currentTest completionHandler];
        completionHandler[2]();

        [(SHSheetSceneViewController *)self setCurrentTest:0];
        break;
    }
  }

  else
  {
    if (type2 > 1)
    {
      if (type2 == 2)
      {
        presenter = [(SHSheetSceneViewController *)self presenter];
        [presenter handleCollaborationOptions];
      }

      else if (type2 == 3)
      {
        presenter = [(SHSheetSceneViewController *)self presenter];
        [presenter didSelectCollaborativeAction];
      }

      else
      {
        presenter = [(SHSheetSceneViewController *)self presenter];
        [presenter didSelectSendCopyAction];
      }

      goto LABEL_24;
    }

    if (!type2)
    {
      presenter = [(SHSheetSceneViewController *)self presenter];
      [presenter handleCustomHeaderButton];
      goto LABEL_24;
    }

    if (type2 == 1)
    {
      presenter = [(SHSheetSceneViewController *)self presenter];
      [presenter handleOptions];
LABEL_24:
    }
  }
}

- (id)_hostSheetPresentationController
{
  sheetPresentationController = [(SHSheetSceneViewController *)self sheetPresentationController];
  if (!sheetPresentationController)
  {
    session = [(SHSheetSceneViewController *)self session];
    activityViewController = [session activityViewController];
    sheetPresentationController = [activityViewController _existingPresentationControllerImmediate:1 effective:1];
  }

  return sheetPresentationController;
}

- (void)scene:(id)scene didReceiveMetadataUpdateAction:(id)action
{
  metadata = [action metadata];
  [(SHSheetSceneViewController *)self setRemoteHeaderMetadata:metadata];
}

- (void)scene:(id)scene didReceiveSuggestionAction:(id)action
{
  actionCopy = action;
  presenter = [(SHSheetSceneViewController *)self presenter];
  suggestionReason = [actionCopy suggestionReason];

  [presenter handleInfoSuggestionPress:suggestionReason];
}

- (void)scene:(id)scene didReceiveDraggingAction:(id)action
{
  actionCopy = action;
  _hostSheetPresentationController = [(SHSheetSceneViewController *)self _hostSheetPresentationController];
  draggingEvent = [actionCopy draggingEvent];

  type = [draggingEvent type];
  switch(type)
  {
    case 2:
      [_hostSheetPresentationController _remoteSheetInteractionDraggingDidEnd];
      break;
    case 1:
      [draggingEvent translation];
      v14 = v13;
      v16 = v15;
      [draggingEvent velocity];
      [_hostSheetPresentationController _remoteSheetInteractionDraggingDidChangeWithTranslation:objc_msgSend(draggingEvent velocity:"shouldAnimate") animateChange:objc_msgSend(draggingEvent dismissible:{"dismissible"), v14, v16, v17, v18}];
      break;
    case 0:
      [draggingEvent rubberBandCoefficient];
      v9 = v8;
      dismissible = [draggingEvent dismissible];
      [draggingEvent interruptedOffset];
      [_hostSheetPresentationController _remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:dismissible dismissible:v9 interruptedOffset:{v11, v12}];
      break;
  }
}

- (void)updateWithViewModel:(id)model
{
  session = [(SHSheetSceneViewController *)self session];
  createClientContext = [session createClientContext];

  scene = [(SHSheetSceneViewController *)self scene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SHSheetSceneViewController_updateWithViewModel___block_invoke;
  v8[3] = &unk_1E71F9E00;
  v9 = createClientContext;
  v7 = createClientContext;
  [scene updateWithChange:v8];
}

- (void)didUpdateAirDropTransferWithChange:(id)change
{
  changeCopy = change;
  v6 = [[SHSheetAirDropTransferUpdateAction alloc] initWithAirDropTransferChange:changeCopy];

  scene = [(SHSheetSceneViewController *)self scene];
  [scene sendAction:v6];
}

- (void)reloadMetadata:(id)metadata
{
  v15[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v15[0] = metadataCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SHSheetSceneViewController_reloadMetadata___block_invoke;
  v9[3] = &unk_1E71F91C8;
  v9[4] = self;
  v6 = v5;
  v7 = v9;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr_0;
  v14 = getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr_0;
  if (!getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr_0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_block_invoke_0;
    v10[3] = &unk_1E71F91F0;
    v10[4] = &v11;
    __getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_block_invoke_0(v10);
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
    [SHSheetRemoteSceneViewController reloadMetadata:];
    __break(1u);
  }

  v8(v6, v7);
}

void __45__SHSheetSceneViewController_reloadMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  sf_dispatch_on_main_queue();
}

void __45__SHSheetSceneViewController_reloadMetadata___block_invoke_2(uint64_t a1)
{
  v2 = [SHSheetMetadataChangedAction alloc];
  v3 = [*(a1 + 32) firstObject];
  v5 = [(SHSheetMetadataChangedAction *)v2 initWithSerializedMetadata:v3];

  v4 = [*(a1 + 40) scene];
  [v4 sendAction:v5];
}

- (void)reloadContent
{
  v4 = [[SHSheetContentReloadAction alloc] initWithActivityUUID:0];
  scene = [(SHSheetSceneViewController *)self scene];
  [scene sendAction:v4];
}

- (void)reloadActivity:(id)activity
{
  activityCopy = activity;
  v5 = [SHSheetContentReloadAction alloc];
  activityUUID = [activityCopy activityUUID];

  v8 = [(SHSheetContentReloadAction *)v5 initWithActivityUUID:activityUUID];
  scene = [(SHSheetSceneViewController *)self scene];
  [scene sendAction:v8];
}

- (void)startPulsingActivity:(id)activity localizedTitle:(id)title
{
  titleCopy = title;
  activityUUID = [activity activityUUID];
  v10 = [SHSheetPulsingEvent startPulsingEventWithActivityUUID:activityUUID localizedTitle:titleCopy];

  v8 = [[SHSheetPulsingAction alloc] initWithEvent:v10];
  scene = [(SHSheetSceneViewController *)self scene];
  [scene sendAction:v8];
}

- (void)stopPulsingActivity:(id)activity
{
  activityUUID = [activity activityUUID];
  v7 = [SHSheetPulsingEvent stopPulsingEventWithActivityUUID:activityUUID];

  v5 = [[SHSheetPulsingAction alloc] initWithEvent:v7];
  scene = [(SHSheetSceneViewController *)self scene];
  [scene sendAction:v5];
}

- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  currentTest = [(SHSheetSceneViewController *)self currentTest];

  if (currentTest)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      [SHSheetRemoteSceneViewController runScrollingTestWithName:nameCopy type:self completionHandler:&v11->super];
    }
  }

  else
  {
    v11 = [[SHSheetScrollingTest alloc] initWithName:nameCopy type:type completionHandler:handlerCopy];
    [(SHSheetSceneViewController *)self setCurrentTest:v11];
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = nameCopy;
      v17 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "sending scrolling test action with test name:%@ type:%ld", &v15, 0x16u);
    }

    v13 = [[SHSheetScrollingTestAction alloc] initWithTest:v11];
    scene = [(SHSheetSceneViewController *)self scene];
    [scene sendAction:v13];
  }
}

- (SHSheetContentPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end