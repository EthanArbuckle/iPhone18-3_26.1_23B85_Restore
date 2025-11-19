@interface SHSheetRemoteSceneViewController
- (SHSheetContentPresenter)presenter;
- (SHSheetRemoteSceneViewController)initWithSession:(id)a3;
- (id)_localCustomizationForRemoteProxy:(id)a3;
- (int64_t)_hostProcessType;
- (void)_applyValueFromRemoteCustomization:(id)a3 toLocalCustomization:(id)a4;
- (void)_handleCollaborationOptions;
- (void)_handleLocalOptions;
- (void)_handleOptions;
- (void)dealloc;
- (void)didUpdateAirDropTransferWithChange:(id)a3;
- (void)installSceneHostingView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)reloadActivity:(id)a3;
- (void)reloadContent;
- (void)reloadMetadata:(id)a3;
- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)scene:(id)a3 didReceiveAction:(id)a4;
- (void)scene:(id)a3 didReceiveCollaborationOptionUpdateAction:(id)a4;
- (void)scene:(id)a3 didReceiveMetadataUpdateAction:(id)a4;
- (void)scene:(id)a3 didReceiveOptionUpdateAction:(id)a4;
- (void)scene:(id)a3 didReceiveSizeUpdateAction:(id)a4;
- (void)scene:(id)a3 didReceiveSuggestionAction:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)startPulsingActivity:(id)a3 localizedTitle:(id)a4;
- (void)stopPulsingActivity:(id)a3;
- (void)updateWithViewModel:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SHSheetRemoteSceneViewController

- (int64_t)_hostProcessType
{
  v3 = [(SHSheetRemoteSceneViewController *)self viewIfLoaded];
  v4 = [v3 window];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SHSheetRemoteSceneViewController *)self viewIfLoaded];
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

  v4 = [(SHSheetRemoteSceneViewController *)self scene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SHSheetRemoteSceneViewController_viewDidLayoutSubviews__block_invoke;
  v5[3] = &unk_1E71F9150;
  v5[4] = self;
  [v4 updateWithChange:v5];
}

void __57__SHSheetRemoteSceneViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPresentationStyle:{objc_msgSend(v2, "effectivePresentationStyle")}];
}

- (SHSheetRemoteSceneViewController)initWithSession:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHSheetRemoteSceneViewController;
  v6 = [(SHSheetRemoteSceneViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [v5 remoteScene];
    scene = v7->_scene;
    v7->_scene = v8;

    [(SHSheetRemoteScene *)v7->_scene setDelegate:v7];
    [(SHSheetRemoteSceneViewController *)v7 installSceneHostingView];
  }

  return v7;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  [(SHSheetRemoteSceneViewController *)self setPreferredContentSize:?];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    [v4 preferredContentSize];
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
      v26 = self;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "remote scene view controller %@ installing hosting view", buf, 0xCu);
    }

    [(SHSheetRemoteSceneViewController *)self setDidInstallHostingView:1];
    v4 = [(SHSheetRemoteSceneViewController *)self scene];
    v5 = [v4 hostingController];
    v6 = [v5 sceneViewController];

    v23 = v6;
    [(SHSheetRemoteSceneViewController *)self addChildViewController:v6];
    v7 = [v6 view];
    v8 = [(SHSheetRemoteSceneViewController *)self view];
    [v8 setAccessibilityIdentifier:@"ShareSheet.RemoteContainerView"];
    [v8 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x1E696ACD8];
    v22 = [v7 leadingAnchor];
    v21 = [v8 leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v19 = [v7 trailingAnchor];
    v18 = [v8 trailingAnchor];
    v16 = [v19 constraintEqualToAnchor:v18];
    v24[1] = v16;
    v9 = [v7 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v24[2] = v11;
    v12 = [v7 bottomAnchor];
    v13 = [v8 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
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

- (void)viewIsAppearing:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v9 viewIsAppearing:a3];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController: viewIsAppearing", buf, 2u);
  }

  v5 = [(SHSheetRemoteSceneViewController *)self _hostProcessType];
  v6 = [(SHSheetRemoteSceneViewController *)self scene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SHSheetRemoteSceneViewController_viewIsAppearing___block_invoke;
  v7[3] = &unk_1E71F9178;
  v7[4] = self;
  v7[5] = v5;
  [v6 updateWithChange:v7];
}

void __52__SHSheetRemoteSceneViewController_viewIsAppearing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setHostProcessType:v3];
  [v4 setPresentationStyle:{objc_msgSend(*(a1 + 32), "effectivePresentationStyle")}];
}

- (void)sceneDidBecomeActive:(id)a3
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

  v4 = [(SHSheetRemoteSceneViewController *)self scene];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = SHSheetRemoteSceneViewController;
  [(SHSheetRemoteSceneViewController *)&v5 dealloc];
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
  if (v7 > 5)
  {
    if (v7 <= 8)
    {
      if (v7 == 6)
      {
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleActionsEdit];
      }

      else if (v7 == 7)
      {
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleNext];
      }

      else
      {
        v8 = [(SHSheetRemoteSceneViewController *)self session];
        v9 = [v8 activityViewController];
        [v9 dismissViewControllerAnimated:0 completion:0];
      }

      goto LABEL_30;
    }

    switch(v7)
    {
      case 9:
        v10 = [(SHSheetRemoteSceneViewController *)self currentTest];
        v11 = [v10 completionHandler];
        v11[2]();

        [(SHSheetRemoteSceneViewController *)self setCurrentTest:0];
        break;
      case 12:
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleRemoteCustomPresentation];
        goto LABEL_30;
      case 13:
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleRemoteCustomDismissal];
        goto LABEL_30;
    }
  }

  else
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 didSelectCollaborativeAction];
      }

      else if (v7 == 4)
      {
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 didSelectSendCopyAction];
      }

      else
      {
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleClose];
      }

      goto LABEL_30;
    }

    switch(v7)
    {
      case 0:
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleCustomHeaderButton];
        goto LABEL_30;
      case 1:
        if (!_ShareSheetPlatformWantsRemoteOptions())
        {
          v8 = [(SHSheetRemoteSceneViewController *)self presenter];
          [v8 handleOptions];
          goto LABEL_30;
        }

        [(SHSheetRemoteSceneViewController *)self _handleOptions];
        break;
      case 2:
        v8 = [(SHSheetRemoteSceneViewController *)self presenter];
        [v8 handleCollaborationOptions];
LABEL_30:

        break;
    }
  }
}

- (void)scene:(id)a3 didReceiveSizeUpdateAction:(id)a4
{
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received size update", v9, 2u);
  }

  -[SHSheetRemoteSceneViewController setIsCompactSize:](self, "setIsCompactSize:", [v5 isCompact]);
  -[SHSheetRemoteSceneViewController setIsResizable:](self, "setIsResizable:", [v5 isResizable]);
  v7 = [v5 isSLMEnabled];

  [(SHSheetRemoteSceneViewController *)self setIsSLMEnabled:v7];
  v8 = [(SHSheetRemoteSceneViewController *)self presenter];
  [v8 didUpdateSheetSize];
}

- (void)scene:(id)a3 didReceiveMetadataUpdateAction:(id)a4
{
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received metadata update", v8, 2u);
  }

  v7 = [v5 metadata];

  [(SHSheetRemoteSceneViewController *)self setRemoteHeaderMetadata:v7];
}

- (void)scene:(id)a3 didReceiveSuggestionAction:(id)a4
{
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received suggestion action", v9, 2u);
  }

  v7 = [(SHSheetRemoteSceneViewController *)self presenter];
  v8 = [v5 suggestionReason];

  [v7 handleInfoSuggestionPress:v8];
}

- (void)scene:(id)a3 didReceiveOptionUpdateAction:(id)a4
{
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received option update", v10, 2u);
  }

  v7 = [v5 customization];

  v8 = [(SHSheetRemoteSceneViewController *)self _localCustomizationForRemoteProxy:v7];
  if (v8)
  {
    [(SHSheetRemoteSceneViewController *)self _applyValueFromRemoteCustomization:v7 toLocalCustomization:v8];
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

- (void)scene:(id)a3 didReceiveCollaborationOptionUpdateAction:(id)a4
{
  v5 = a4;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController received collaboration options update", v9, 2u);
  }

  v7 = [(SHSheetRemoteSceneViewController *)self session];
  v8 = [v7 collaborationItem];
  [v8 setShareOptions:v5];
}

- (id)_localCustomizationForRemoteProxy:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SHSheetRemoteSceneViewController *)self session];
  v6 = [v5 customizationGroups];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
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
        v11 = [v10 customizations];
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              v17 = [v16 identifier];
              v18 = [v4 identifier];
              v19 = [v17 isEqualToString:v18];

              if (v19)
              {
                v20 = v16;

                v7 = v24;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
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

- (void)_applyValueFromRemoteCustomization:(id)a3 toLocalCustomization:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    -[NSObject _setValue:](v8, "_setValue:", [v6 value]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [v6 text];
      [v9 _setText:v10];

      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      -[NSObject _setSelectedOptionIndex:](v8, "_setSelectedOptionIndex:", [v6 selectedOptionIndex]);
    }

    else
    {
      v8 = share_sheet_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SHSheetRemoteSceneViewController *)v6 _applyValueFromRemoteCustomization:v7 toLocalCustomization:v8];
      }
    }
  }

LABEL_6:
  [(SHSheetRemoteSceneViewController *)self _handleOptions];
}

- (void)_handleOptions
{
  v3 = [(SHSheetRemoteSceneViewController *)self session];
  v4 = [v3 supportsCollaboration];

  if (v4)
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

  v4 = [(SHSheetRemoteSceneViewController *)self session];
  v5 = [v4 customizationGroups];

  v6 = [(SHSheetRemoteSceneViewController *)self scene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__SHSheetRemoteSceneViewController__handleLocalOptions__block_invoke;
  v8[3] = &unk_1E71F9150;
  v9 = v5;
  v7 = v5;
  [v6 updateWithChange:v8];
}

- (void)_handleCollaborationOptions
{
  v3 = [(SHSheetRemoteSceneViewController *)self session];
  v4 = [v3 collaborationItem];
  v5 = [v4 shareOptions];

  v6 = [(SHSheetRemoteSceneViewController *)self scene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__SHSheetRemoteSceneViewController__handleCollaborationOptions__block_invoke;
  v8[3] = &unk_1E71F9150;
  v9 = v5;
  v7 = v5;
  [v6 updateWithChange:v8];
}

- (void)updateWithViewModel:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteSceneViewController updating remote with view model: %@", buf, 0xCu);
  }

  v6 = [(SHSheetRemoteSceneViewController *)self session];
  v7 = [v6 createClientContext];

  v8 = [(SHSheetRemoteSceneViewController *)self scene];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SHSheetRemoteSceneViewController_updateWithViewModel___block_invoke;
  v10[3] = &unk_1E71F9150;
  v11 = v7;
  v9 = v7;
  [v8 updateWithChange:v10];
}

- (void)didUpdateAirDropTransferWithChange:(id)a3
{
  v4 = a3;
  v6 = [[SHSheetAirDropTransferUpdateAction alloc] initWithAirDropTransferChange:v4];

  v5 = [(SHSheetRemoteSceneViewController *)self scene];
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
  v3 = [(SHSheetRemoteSceneViewController *)self scene];
  [v3 sendAction:v4];
}

- (void)reloadActivity:(id)a3
{
  v4 = a3;
  v5 = [SHSheetContentReloadAction alloc];
  v6 = [v4 activityUUID];

  v8 = [(SHSheetContentReloadAction *)v5 initWithActivityUUID:v6];
  v7 = [(SHSheetRemoteSceneViewController *)self scene];
  [v7 sendAction:v8];
}

- (void)startPulsingActivity:(id)a3 localizedTitle:(id)a4
{
  v6 = a4;
  v7 = [a3 activityUUID];
  v10 = [SHSheetPulsingEvent startPulsingEventWithActivityUUID:v7 localizedTitle:v6];

  v8 = [[SHSheetPulsingAction alloc] initWithEvent:v10];
  v9 = [(SHSheetRemoteSceneViewController *)self scene];
  [v9 sendAction:v8];
}

- (void)stopPulsingActivity:(id)a3
{
  v4 = [a3 activityUUID];
  v7 = [SHSheetPulsingEvent stopPulsingEventWithActivityUUID:v4];

  v5 = [[SHSheetPulsingAction alloc] initWithEvent:v7];
  v6 = [(SHSheetRemoteSceneViewController *)self scene];
  [v6 sendAction:v5];
}

- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(SHSheetRemoteSceneViewController *)self currentTest];

  v11 = share_sheet_log();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SHSheetRemoteSceneViewController runScrollingTestWithName:v8 type:self completionHandler:&v12->super];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_18B359000, &v12->super, OS_LOG_TYPE_DEFAULT, "run scrolling test with name:%@", &v16, 0xCu);
    }

    v12 = [[SHSheetScrollingTest alloc] initWithName:v8 type:a4 completionHandler:v9];
    [(SHSheetRemoteSceneViewController *)self setCurrentTest:v12];
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "sending scrolling test action with test name:%@ type:%ld", &v16, 0x16u);
    }

    v14 = [[SHSheetScrollingTestAction alloc] initWithTest:v12];
    v15 = [(SHSheetRemoteSceneViewController *)self scene];
    [v15 sendAction:v14];
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