@interface SHSheetRemoteSceneViewController
- (SHSheetContentPresenter)presenter;
- (SHSheetRemoteSceneViewController)initWithSession:(id)session;
- (id)_localCustomizationForRemoteProxy:(id)proxy;
- (int64_t)_hostProcessType;
- (void)_applyValueFromRemoteCustomization:(id)customization toLocalCustomization:(id)localCustomization;
- (void)_handleCollaborationOptions;
- (void)_handleLocalOptions;
- (void)_handleOptions;
- (void)dealloc;
- (void)didUpdateAirDropTransferWithChange:(id)change;
- (void)installSceneHostingView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)reloadActivity:(id)activity;
- (void)reloadContent;
- (void)reloadMetadata:(id)metadata;
- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler;
- (void)scene:(id)scene didReceiveAction:(id)action;
- (void)scene:(id)scene didReceiveCollaborationOptionUpdateAction:(id)action;
- (void)scene:(id)scene didReceiveMetadataUpdateAction:(id)action;
- (void)scene:(id)scene didReceiveOptionUpdateAction:(id)action;
- (void)scene:(id)scene didReceiveSizeUpdateAction:(id)action;
- (void)scene:(id)scene didReceiveSuggestionAction:(id)action;
- (void)sceneDidBecomeActive:(id)active;
- (void)startPulsingActivity:(id)activity localizedTitle:(id)title;
- (void)stopPulsingActivity:(id)activity;
- (void)updateWithViewModel:(id)model;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation SHSheetRemoteSceneViewController

- (int64_t)_hostProcessType
{
  viewIfLoaded = [(SHSheetRemoteSceneViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {
    return 0;
  }

  viewIfLoaded2 = [(SHSheetRemoteSceneViewController *)self viewIfLoaded];
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

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v7 viewDidLayoutSubviews];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController: viewDidLayoutSubviews", buf, 2u);
  }

  scene = [(SHSheetRemoteSceneViewController *)self scene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SHSheetRemoteSceneViewController_viewDidLayoutSubviews__block_invoke;
  v5[3] = &unk_1E71F9150;
  v5[4] = self;
  [scene updateWithChange:v5];
}

void __57__SHSheetRemoteSceneViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPresentationStyle:{objc_msgSend(v2, "effectivePresentationStyle")}];
}

- (SHSheetRemoteSceneViewController)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = SHSheetRemoteSceneViewController;
  v6 = [(SHSheetRemoteSceneViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    remoteScene = [sessionCopy remoteScene];
    scene = v7->_scene;
    v7->_scene = remoteScene;

    [(SHSheetRemoteScene *)v7->_scene setDelegate:v7];
    [(SHSheetRemoteSceneViewController *)v7 installSceneHostingView];
  }

  return v7;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v13 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v8.receiver = self;
  v8.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  [(SHSheetRemoteSceneViewController *)self setPreferredContentSize:?];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    [containerCopy preferredContentSize];
    v7 = NSStringFromCGSize(v14);
    *buf = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "%@: preferredContentSizeDidChangeForChildContentContainer:%@", buf, 0x16u);
  }
}

- (void)installSceneHostingView
{
  v27 = *MEMORY[0x1E69E9840];
  if (![(SHSheetRemoteSceneViewController *)self didInstallHostingView])
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "remote scene view controller %@ installing hosting view", buf, 0xCu);
    }

    [(SHSheetRemoteSceneViewController *)self setDidInstallHostingView:1];
    scene = [(SHSheetRemoteSceneViewController *)self scene];
    hostingController = [scene hostingController];
    sceneViewController = [hostingController sceneViewController];

    v23 = sceneViewController;
    [(SHSheetRemoteSceneViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(SHSheetRemoteSceneViewController *)self view];
    [view2 setAccessibilityIdentifier:@"ShareSheet.RemoteContainerView"];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v20;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v16;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[2] = v11;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v15];

    [v23 didMoveToParentViewController:self];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v5 viewDidLoad];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController: viewDidLoad", v4, 2u);
  }

  [(SHSheetRemoteSceneViewController *)self installSceneHostingView];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v9.receiver = self;
  v9.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v9 viewIsAppearing:appearing];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController: viewIsAppearing", buf, 2u);
  }

  _hostProcessType = [(SHSheetRemoteSceneViewController *)self _hostProcessType];
  scene = [(SHSheetRemoteSceneViewController *)self scene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SHSheetRemoteSceneViewController_viewIsAppearing___block_invoke;
  v7[3] = &unk_1E71F9178;
  v7[4] = self;
  v7[5] = _hostProcessType;
  [scene updateWithChange:v7];
}

void __52__SHSheetRemoteSceneViewController_viewIsAppearing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setHostProcessType:v3];
  [v4 setPresentationStyle:{objc_msgSend(*(a1 + 32), "effectivePresentationStyle")}];
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController: sceneDidBecomeActive", v5, 2u);
  }

  [(SHSheetRemoteSceneViewController *)self installSceneHostingView];
}

- (void)dealloc
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController: dealloc", buf, 2u);
  }

  scene = [(SHSheetRemoteSceneViewController *)self scene];
  [scene invalidate];

  v5.receiver = self;
  v5.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v5 dealloc];
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
  if (type2 > 5)
  {
    if (type2 <= 8)
    {
      if (type2 == 6)
      {
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleActionsEdit];
      }

      else if (type2 == 7)
      {
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleNext];
      }

      else
      {
        presenter = [(SHSheetRemoteSceneViewController *)self session];
        activityViewController = [presenter activityViewController];
        [activityViewController dismissViewControllerAnimated:0 completion:0];
      }

      goto LABEL_30;
    }

    switch(type2)
    {
      case 9:
        currentTest = [(SHSheetRemoteSceneViewController *)self currentTest];
        completionHandler = [currentTest completionHandler];
        completionHandler[2]();

        [(SHSheetRemoteSceneViewController *)self setCurrentTest:0];
        break;
      case 12:
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleRemoteCustomPresentation];
        goto LABEL_30;
      case 13:
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleRemoteCustomDismissal];
        goto LABEL_30;
    }
  }

  else
  {
    if (type2 > 2)
    {
      if (type2 == 3)
      {
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter didSelectCollaborativeAction];
      }

      else if (type2 == 4)
      {
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter didSelectSendCopyAction];
      }

      else
      {
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleClose];
      }

      goto LABEL_30;
    }

    switch(type2)
    {
      case 0:
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleCustomHeaderButton];
        goto LABEL_30;
      case 1:
        if (!_ShareSheetPlatformWantsRemoteOptions())
        {
          presenter = [(SHSheetRemoteSceneViewController *)self presenter];
          [presenter handleOptions];
          goto LABEL_30;
        }

        [(SHSheetRemoteSceneViewController *)self _handleOptions];
        break;
      case 2:
        presenter = [(SHSheetRemoteSceneViewController *)self presenter];
        [presenter handleCollaborationOptions];
LABEL_30:

        break;
    }
  }
}

- (void)scene:(id)scene didReceiveSizeUpdateAction:(id)action
{
  actionCopy = action;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received size update", v9, 2u);
  }

  -[SHSheetRemoteSceneViewController setIsCompactSize:](self, "setIsCompactSize:", [actionCopy isCompact]);
  -[SHSheetRemoteSceneViewController setIsResizable:](self, "setIsResizable:", [actionCopy isResizable]);
  isSLMEnabled = [actionCopy isSLMEnabled];

  [(SHSheetRemoteSceneViewController *)self setIsSLMEnabled:isSLMEnabled];
  presenter = [(SHSheetRemoteSceneViewController *)self presenter];
  [presenter didUpdateSheetSize];
}

- (void)scene:(id)scene didReceiveMetadataUpdateAction:(id)action
{
  actionCopy = action;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received metadata update", v8, 2u);
  }

  metadata = [actionCopy metadata];

  [(SHSheetRemoteSceneViewController *)self setRemoteHeaderMetadata:metadata];
}

- (void)scene:(id)scene didReceiveSuggestionAction:(id)action
{
  actionCopy = action;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received suggestion action", v9, 2u);
  }

  presenter = [(SHSheetRemoteSceneViewController *)self presenter];
  suggestionReason = [actionCopy suggestionReason];

  [presenter handleInfoSuggestionPress:suggestionReason];
}

- (void)scene:(id)scene didReceiveOptionUpdateAction:(id)action
{
  actionCopy = action;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received option update", v10, 2u);
  }

  customization = [actionCopy customization];

  v8 = [(SHSheetRemoteSceneViewController *)self _localCustomizationForRemoteProxy:customization];
  if (v8)
  {
    [(SHSheetRemoteSceneViewController *)self _applyValueFromRemoteCustomization:customization toLocalCustomization:v8];
  }

  else
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SHSheetRemoteSceneViewController scene:v9 didReceiveOptionUpdateAction:?];
    }
  }
}

- (void)scene:(id)scene didReceiveCollaborationOptionUpdateAction:(id)action
{
  actionCopy = action;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received collaboration options update", v9, 2u);
  }

  session = [(SHSheetRemoteSceneViewController *)self session];
  collaborationItem = [session collaborationItem];
  [collaborationItem setShareOptions:actionCopy];
}

- (id)_localCustomizationForRemoteProxy:(id)proxy
{
  v35 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  session = [(SHSheetRemoteSceneViewController *)self session];
  customizationGroups = [session customizationGroups];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = customizationGroups;
  v23 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v8 = *v30;
    v24 = v7;
    v22 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        customizations = [v10 customizations];
        v12 = [customizations countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(customizations);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              identifier = [v16 identifier];
              identifier2 = [proxyCopy identifier];
              v19 = [identifier isEqualToString:identifier2];

              if (v19)
              {
                v20 = v16;

                v7 = v24;
                goto LABEL_19;
              }
            }

            v13 = [customizations countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v24;
        v8 = v22;
      }

      v20 = 0;
      v23 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  return v20;
}

- (void)_applyValueFromRemoteCustomization:(id)customization toLocalCustomization:(id)localCustomization
{
  customizationCopy = customization;
  localCustomizationCopy = localCustomization;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = localCustomizationCopy;
    -[NSObject _setValue:](v8, "_setValue:", [customizationCopy value]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = localCustomizationCopy;
      text = [customizationCopy text];
      [v9 _setText:text];

      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = localCustomizationCopy;
      -[NSObject _setSelectedOptionIndex:](v8, "_setSelectedOptionIndex:", [customizationCopy selectedOptionIndex]);
    }

    else
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SHSheetRemoteSceneViewController *)customizationCopy _applyValueFromRemoteCustomization:localCustomizationCopy toLocalCustomization:v8];
      }
    }
  }

LABEL_6:
  [(SHSheetRemoteSceneViewController *)self _handleOptions];
}

- (void)_handleOptions
{
  session = [(SHSheetRemoteSceneViewController *)self session];
  supportsCollaboration = [session supportsCollaboration];

  if (supportsCollaboration)
  {

    [(SHSheetRemoteSceneViewController *)self _handleCollaborationOptions];
  }

  else
  {

    [(SHSheetRemoteSceneViewController *)self _handleLocalOptions];
  }
}

- (void)_handleLocalOptions
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController sending options to remote", buf, 2u);
  }

  session = [(SHSheetRemoteSceneViewController *)self session];
  customizationGroups = [session customizationGroups];

  scene = [(SHSheetRemoteSceneViewController *)self scene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__SHSheetRemoteSceneViewController__handleLocalOptions__block_invoke;
  v8[3] = &unk_1E71F9150;
  v9 = customizationGroups;
  v7 = customizationGroups;
  [scene updateWithChange:v8];
}

- (void)_handleCollaborationOptions
{
  session = [(SHSheetRemoteSceneViewController *)self session];
  collaborationItem = [session collaborationItem];
  shareOptions = [collaborationItem shareOptions];

  scene = [(SHSheetRemoteSceneViewController *)self scene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__SHSheetRemoteSceneViewController__handleCollaborationOptions__block_invoke;
  v8[3] = &unk_1E71F9150;
  v9 = shareOptions;
  v7 = shareOptions;
  [scene updateWithChange:v8];
}

- (void)updateWithViewModel:(id)model
{
  v14 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = modelCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController updating remote with view model: %@", buf, 0xCu);
  }

  session = [(SHSheetRemoteSceneViewController *)self session];
  createClientContext = [session createClientContext];

  scene = [(SHSheetRemoteSceneViewController *)self scene];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SHSheetRemoteSceneViewController_updateWithViewModel___block_invoke;
  v10[3] = &unk_1E71F9150;
  v11 = createClientContext;
  v9 = createClientContext;
  [scene updateWithChange:v10];
}

- (void)didUpdateAirDropTransferWithChange:(id)change
{
  changeCopy = change;
  v6 = [[SHSheetAirDropTransferUpdateAction alloc] initWithAirDropTransferChange:changeCopy];

  scene = [(SHSheetRemoteSceneViewController *)self scene];
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
  v9[2] = __51__SHSheetRemoteSceneViewController_reloadMetadata___block_invoke;
  v9[3] = &unk_1E71F91C8;
  v9[4] = self;
  v6 = v5;
  v7 = v9;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr;
  v14 = getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr;
  if (!getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_ptr)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_block_invoke;
    v10[3] = &unk_1E71F91F0;
    v10[4] = &v11;
    __getSFUILinkMetadataSerializationForLocalUseOnlySymbolLoc_block_invoke(v10);
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

void __51__SHSheetRemoteSceneViewController_reloadMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  sf_dispatch_on_main_queue();
}

void __51__SHSheetRemoteSceneViewController_reloadMetadata___block_invoke_2(uint64_t a1)
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
  scene = [(SHSheetRemoteSceneViewController *)self scene];
  [scene sendAction:v4];
}

- (void)reloadActivity:(id)activity
{
  activityCopy = activity;
  v5 = [SHSheetContentReloadAction alloc];
  activityUUID = [activityCopy activityUUID];

  v8 = [(SHSheetContentReloadAction *)v5 initWithActivityUUID:activityUUID];
  scene = [(SHSheetRemoteSceneViewController *)self scene];
  [scene sendAction:v8];
}

- (void)startPulsingActivity:(id)activity localizedTitle:(id)title
{
  titleCopy = title;
  activityUUID = [activity activityUUID];
  v10 = [SHSheetPulsingEvent startPulsingEventWithActivityUUID:activityUUID localizedTitle:titleCopy];

  v8 = [[SHSheetPulsingAction alloc] initWithEvent:v10];
  scene = [(SHSheetRemoteSceneViewController *)self scene];
  [scene sendAction:v8];
}

- (void)stopPulsingActivity:(id)activity
{
  activityUUID = [activity activityUUID];
  v7 = [SHSheetPulsingEvent stopPulsingEventWithActivityUUID:activityUUID];

  v5 = [[SHSheetPulsingAction alloc] initWithEvent:v7];
  scene = [(SHSheetRemoteSceneViewController *)self scene];
  [scene sendAction:v5];
}

- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  currentTest = [(SHSheetRemoteSceneViewController *)self currentTest];

  v11 = share_sheet_log();
  v12 = v11;
  if (currentTest)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SHSheetRemoteSceneViewController runScrollingTestWithName:nameCopy type:self completionHandler:&v12->super];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = nameCopy;
      _os_log_impl(&dword_18B359000, &v12->super, OS_LOG_TYPE_DEFAULT, "run scrolling test with name:%@", &v16, 0xCu);
    }

    v12 = [[SHSheetScrollingTest alloc] initWithName:nameCopy type:type completionHandler:handlerCopy];
    [(SHSheetRemoteSceneViewController *)self setCurrentTest:v12];
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = nameCopy;
      v18 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "sending scrolling test action with test name:%@ type:%ld", &v16, 0x16u);
    }

    v14 = [[SHSheetScrollingTestAction alloc] initWithTest:v12];
    scene = [(SHSheetRemoteSceneViewController *)self scene];
    [scene sendAction:v14];
  }
}

- (SHSheetContentPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_applyValueFromRemoteCustomization:(os_log_t)log toLocalCustomization:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "Could not apply value from remote customization %@ to local customization %@", &v3, 0x16u);
}

- (uint64_t)reloadMetadata:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [SHSheetRemoteSceneViewController runScrollingTestWithName:v0 type:? completionHandler:?];
}

- (void)runScrollingTestWithName:(uint64_t)a1 type:(void *)a2 completionHandler:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 currentTest];
  v6 = [v5 name];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "request to run scrolling test with name:%@ failed because we already have a running test:%@", &v7, 0x16u);
}

@end