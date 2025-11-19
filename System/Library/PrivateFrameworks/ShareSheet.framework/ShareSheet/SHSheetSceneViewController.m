@interface SHSheetSceneViewController
- (CGRect)_framePortrait;
- (SHSheetContentPresenter)presenter;
- (SHSheetSceneViewController)initWithSession:(id)a3;
- (UIEdgeInsets)_safeAreaInsetsPortrait;
- (id)_hostSheetPresentationController;
- (int64_t)_hostProcessType;
- (void)_installSceneView;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_willEnterForeground:(id)a3;
- (void)dealloc;
- (void)didUpdateAirDropTransferWithChange:(id)a3;
- (void)reloadActivity:(id)a3;
- (void)reloadContent;
- (void)reloadMetadata:(id)a3;
- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)scene:(id)a3 didReceiveAction:(id)a4;
- (void)scene:(id)a3 didReceiveDraggingAction:(id)a4;
- (void)scene:(id)a3 didReceiveMetadataUpdateAction:(id)a4;
- (void)scene:(id)a3 didReceiveSuggestionAction:(id)a4;
- (void)sceneSettingsDidChange:(id)a3;
- (void)startPulsingActivity:(id)a3 localizedTitle:(id)a4;
- (void)stopPulsingActivity:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithViewModel:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation SHSheetSceneViewController

- (SHSheetSceneViewController)initWithSession:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SHSheetSceneViewController;
  v6 = [(SHSheetSceneViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [v5 remoteScene];
    scene = v7->_scene;
    v7->_scene = v8;

    [(SHSheetScene *)v7->_scene setDelegate:v7];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v7 selector:sel__sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v7 selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE360] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DE348] object:0];

  v6 = [(SHSheetSceneViewController *)self scene];
  [v6 invalidate];

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
  v3 = [(SHSheetSceneViewController *)self session];
  v4 = [v3 activityViewController];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SHSheetSceneViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_1E71F9510;
  v8 = v4;
  v5 = v4;
  v6 = [(SHSheetSceneViewController *)self scene];
  [v6 setFenceCompletionHandler:v7];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v7 viewDidDisappear:a3];
  v4 = [(SHSheetSceneViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  [v6 _unregisterSettingsDiffActionArrayForKey:@"SHSheetSceneViewControllerSceneSettingsDiffAction"];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v18 viewIsAppearing:a3];
  v4 = objc_alloc_init(SHSheetSceneSettingsDiffAction);
  [(SHSheetSceneSettingsDiffAction *)v4 setDelegate:self];
  v5 = [(SHSheetSceneViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v19[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v7 _registerSettingsDiffActionArray:v8 forKey:@"SHSheetSceneViewControllerSceneSettingsDiffAction"];

  v9 = [(SHSheetSceneViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  v12 = [(SHSheetSceneViewController *)self _hostProcessType];
  v13 = [(SHSheetSceneViewController *)self scene];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__SHSheetSceneViewController_viewIsAppearing___block_invoke;
  v15[3] = &unk_1E71FADD8;
  v15[4] = self;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  [v13 updateWithChange:v15];
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
  v3 = [(SHSheetSceneViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (v5)
  {
    v6 = [(SHSheetSceneViewController *)self scene];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__SHSheetSceneViewController_viewDidLayoutSubviews__block_invoke;
    v7[3] = &unk_1E71FAE00;
    v7[4] = self;
    v8 = v5;
    [v6 updateWithChange:v7];
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

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = SHSheetSceneViewController;
  [(SHSheetSceneViewController *)&v6 traitCollectionDidChange:a3];
  v4 = [(SHSheetSceneViewController *)self scene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SHSheetSceneViewController_traitCollectionDidChange___block_invoke;
  v5[3] = &unk_1E71F9E00;
  v5[4] = self;
  [v4 updateWithChange:v5];
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
  v3 = [(SHSheetSceneViewController *)self scene];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__SHSheetSceneViewController_viewSafeAreaInsetsDidChange__block_invoke;
  v4[3] = &unk_1E71F9E00;
  v4[4] = self;
  [v3 updateWithChange:v4];
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
  v3 = [(SHSheetSceneViewController *)self scene];
  obj = [v3 sceneView];

  sceneView = self->_sceneView;
  if (sceneView != obj)
  {
    [(UIView *)sceneView removeFromSuperview];
    v5 = [(SHSheetSceneViewController *)self view];
    [v5 addSubview:obj];

    [(UIView *)obj setClipsToBounds:1];
    v6 = [(UIView *)obj layer];
    [v6 setName:@"SHSheetSceneView"];

    objc_storeStrong(&self->_sceneView, obj);
  }
}

- (CGRect)_framePortrait
{
  v3 = [(SHSheetSceneViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  v6 = [(SHSheetSceneViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v5 interfaceOrientation];
  if ((v15 - 3) >= 2)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  if ((v15 - 3) < 2)
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
  v3 = [(SHSheetSceneViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  v6 = [(SHSheetSceneViewController *)self view];
  [v6 safeAreaInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v5 traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    goto LABEL_2;
  }

  v24 = [v5 interfaceOrientation];
  if (v24 == 2)
  {
    v17 = v10;
    v18 = v8;
    v19 = v14;
    v14 = v12;
    goto LABEL_3;
  }

  if (v24 == 3)
  {
    v17 = v8;
    v18 = v14;
    v19 = v12;
    v14 = v10;
    goto LABEL_3;
  }

  if (v24 != 4)
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

- (void)sceneSettingsDidChange:(id)a3
{
  v4 = [(SHSheetSceneViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(SHSheetSceneViewController *)self scene];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__SHSheetSceneViewController_sceneSettingsDidChange___block_invoke;
    v7[3] = &unk_1E71F9E00;
    v7[4] = self;
    [v6 updateWithChange:v7];
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

- (void)_willEnterForeground:(id)a3
{
  v4 = [(SHSheetSceneViewController *)self scene];
  v5 = [v4 isActive];

  if ((v5 & 1) == 0)
  {
    v6 = [(SHSheetSceneViewController *)self scene];
    [v6 activate];
  }
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v9 = a3;
  v4 = [(SHSheetSceneViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6)
  {
    v7 = [v9 object];

    if (v7 == v6)
    {
      v8 = [(SHSheetSceneViewController *)self scene];
      [v8 updateWithChange:&__block_literal_global_34];
    }
  }
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetSceneViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 windowScene];

  if (v7)
  {
    v8 = [v4 object];
    v9 = v8;
    if (v8 == v7)
    {
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __55__SHSheetSceneViewController__sceneDidEnterBackground___block_invoke;
        v11[3] = &unk_1E71F9510;
        v11[4] = self;
        [v7 _performAfterSystemSnapshotsComplete:v11];
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
  v3 = [(SHSheetSceneViewController *)self viewIfLoaded];
  v4 = [v3 window];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SHSheetSceneViewController *)self viewIfLoaded];
  v6 = [v5 window];
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

- (void)scene:(id)a3 didReceiveAction:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v5 type];
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "did receive action with type:%ld", &v12, 0xCu);
  }

  v7 = [v5 type];
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v8 = [(SHSheetSceneViewController *)self presenter];
        [v8 handleClose];
      }

      else
      {
        v8 = [(SHSheetSceneViewController *)self presenter];
        [v8 handleActionsEdit];
      }

      goto LABEL_24;
    }

    switch(v7)
    {
      case 7:
        v8 = [(SHSheetSceneViewController *)self presenter];
        [v8 handleNext];
        goto LABEL_24;
      case 8:
        v8 = [(SHSheetSceneViewController *)self session];
        v11 = [v8 activityViewController];
        [v11 dismissViewControllerAnimated:0 completion:0];

        goto LABEL_24;
      case 9:
        v9 = [(SHSheetSceneViewController *)self currentTest];
        v10 = [v9 completionHandler];
        v10[2]();

        [(SHSheetSceneViewController *)self setCurrentTest:0];
        break;
    }
  }

  else
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = [(SHSheetSceneViewController *)self presenter];
        [v8 handleCollaborationOptions];
      }

      else if (v7 == 3)
      {
        v8 = [(SHSheetSceneViewController *)self presenter];
        [v8 didSelectCollaborativeAction];
      }

      else
      {
        v8 = [(SHSheetSceneViewController *)self presenter];
        [v8 didSelectSendCopyAction];
      }

      goto LABEL_24;
    }

    if (!v7)
    {
      v8 = [(SHSheetSceneViewController *)self presenter];
      [v8 handleCustomHeaderButton];
      goto LABEL_24;
    }

    if (v7 == 1)
    {
      v8 = [(SHSheetSceneViewController *)self presenter];
      [v8 handleOptions];
LABEL_24:
    }
  }
}

- (id)_hostSheetPresentationController
{
  v3 = [(SHSheetSceneViewController *)self sheetPresentationController];
  if (!v3)
  {
    v4 = [(SHSheetSceneViewController *)self session];
    v5 = [v4 activityViewController];
    v3 = [v5 _existingPresentationControllerImmediate:1 effective:1];
  }

  return v3;
}

- (void)scene:(id)a3 didReceiveMetadataUpdateAction:(id)a4
{
  v5 = [a4 metadata];
  [(SHSheetSceneViewController *)self setRemoteHeaderMetadata:v5];
}

- (void)scene:(id)a3 didReceiveSuggestionAction:(id)a4
{
  v5 = a4;
  v7 = [(SHSheetSceneViewController *)self presenter];
  v6 = [v5 suggestionReason];

  [v7 handleInfoSuggestionPress:v6];
}

- (void)scene:(id)a3 didReceiveDraggingAction:(id)a4
{
  v5 = a4;
  v19 = [(SHSheetSceneViewController *)self _hostSheetPresentationController];
  v6 = [v5 draggingEvent];

  v7 = [v6 type];
  switch(v7)
  {
    case 2:
      [v19 _remoteSheetInteractionDraggingDidEnd];
      break;
    case 1:
      [v6 translation];
      v14 = v13;
      v16 = v15;
      [v6 velocity];
      [v19 _remoteSheetInteractionDraggingDidChangeWithTranslation:objc_msgSend(v6 velocity:"shouldAnimate") animateChange:objc_msgSend(v6 dismissible:{"dismissible"), v14, v16, v17, v18}];
      break;
    case 0:
      [v6 rubberBandCoefficient];
      v9 = v8;
      v10 = [v6 dismissible];
      [v6 interruptedOffset];
      [v19 _remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:v10 dismissible:v9 interruptedOffset:{v11, v12}];
      break;
  }
}

- (void)updateWithViewModel:(id)a3
{
  v4 = [(SHSheetSceneViewController *)self session];
  v5 = [v4 createClientContext];

  v6 = [(SHSheetSceneViewController *)self scene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SHSheetSceneViewController_updateWithViewModel___block_invoke;
  v8[3] = &unk_1E71F9E00;
  v9 = v5;
  v7 = v5;
  [v6 updateWithChange:v8];
}

- (void)didUpdateAirDropTransferWithChange:(id)a3
{
  v4 = a3;
  v6 = [[SHSheetAirDropTransferUpdateAction alloc] initWithAirDropTransferChange:v4];

  v5 = [(SHSheetSceneViewController *)self scene];
  [v5 sendAction:v6];
}

- (void)reloadMetadata:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15[0] = v4;
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
  v3 = [(SHSheetSceneViewController *)self scene];
  [v3 sendAction:v4];
}

- (void)reloadActivity:(id)a3
{
  v4 = a3;
  v5 = [SHSheetContentReloadAction alloc];
  v6 = [v4 activityUUID];

  v8 = [(SHSheetContentReloadAction *)v5 initWithActivityUUID:v6];
  v7 = [(SHSheetSceneViewController *)self scene];
  [v7 sendAction:v8];
}

- (void)startPulsingActivity:(id)a3 localizedTitle:(id)a4
{
  v6 = a4;
  v7 = [a3 activityUUID];
  v10 = [SHSheetPulsingEvent startPulsingEventWithActivityUUID:v7 localizedTitle:v6];

  v8 = [[SHSheetPulsingAction alloc] initWithEvent:v10];
  v9 = [(SHSheetSceneViewController *)self scene];
  [v9 sendAction:v8];
}

- (void)stopPulsingActivity:(id)a3
{
  v4 = [a3 activityUUID];
  v7 = [SHSheetPulsingEvent stopPulsingEventWithActivityUUID:v4];

  v5 = [[SHSheetPulsingAction alloc] initWithEvent:v7];
  v6 = [(SHSheetSceneViewController *)self scene];
  [v6 sendAction:v5];
}

- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(SHSheetSceneViewController *)self currentTest];

  if (v10)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      [SHSheetRemoteSceneViewController runScrollingTestWithName:v8 type:self completionHandler:&v11->super];
    }
  }

  else
  {
    v11 = [[SHSheetScrollingTest alloc] initWithName:v8 type:a4 completionHandler:v9];
    [(SHSheetSceneViewController *)self setCurrentTest:v11];
    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2048;
      v18 = a4;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "sending scrolling test action with test name:%@ type:%ld", &v15, 0x16u);
    }

    v13 = [[SHSheetScrollingTestAction alloc] initWithTest:v11];
    v14 = [(SHSheetSceneViewController *)self scene];
    [v14 sendAction:v13];
  }
}

- (SHSheetContentPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end