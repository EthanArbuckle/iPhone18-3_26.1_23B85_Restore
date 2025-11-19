@interface PUEditPluginSession
- (BOOL)markupIsAvailable;
- (PUEditPluginSession)init;
- (PUEditPluginSessionDataSource)dataSource;
- (PUEditPluginSessionDelegate)delegate;
- (UIViewController)hostViewController;
- (id)_linkPresentationImage;
- (id)_localizedEditorListTitle;
- (unint64_t)pluginManagerMediaType;
- (void)_beginMarkupSessionWithAsset:(id)a3 fromViewController:(id)a4;
- (void)_beginSessionWithAsset:(id)a3 fromViewController:(id)a4 sourceElement:(id)a5 includeMarkupInList:(BOOL)a6;
- (void)_launchPlugin:(id)a3 afterDismissingViewController:(id)a4;
- (void)_pluginManagerPluginsDidChange:(id)a3;
- (void)_unlockScreenIfNeededWithCompletionHandler:(id)a3;
- (void)beginMarkupSessionWithAsset:(id)a3 fromViewController:(id)a4;
- (void)beginSessionWithAsset:(id)a3 fromViewController:(id)a4 sourceElement:(id)a5 includeMarkupInList:(BOOL)a6;
- (void)dealloc;
- (void)editExtensionActivityViewController:(id)a3 didSelectActivity:(id)a4;
- (void)editPluginHostViewController:(id)a3 commitContentEditingOutput:(id)a4 withCompletionHandler:(id)a5;
- (void)editPluginHostViewController:(id)a3 didFinishWithCompletionType:(unint64_t)a4;
- (void)editPluginHostViewController:(id)a3 loadItemProviderWithHandler:(id)a4;
- (void)loadItemProviderWithSupportedAdjustmentData:(id)a3 loadHandler:(id)a4;
- (void)presentAlertController:(id)a3;
- (void)setIsAvailable:(BOOL)a3;
- (void)updateAvailability;
- (void)updatePluginManager;
@end

@implementation PUEditPluginSession

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

- (PUEditPluginSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUEditPluginSessionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)editPluginHostViewController:(id)a3 didFinishWithCompletionType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PUEditPluginSession *)self hostViewController];
  if (!v7)
  {
    v7 = [v6 presentingViewController];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PUEditPluginSession_editPluginHostViewController_didFinishWithCompletionType___block_invoke;
  v8[3] = &unk_1E7B7FF70;
  v8[4] = self;
  v8[5] = a4;
  [v7 dismissViewControllerAnimated:1 completion:v8];
}

void __80__PUEditPluginSession_editPluginHostViewController_didFinishWithCompletionType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPlugin];
  v3 = [v2 extension];
  v6 = [v3 identifier];

  [*(a1 + 32) setCurrentPlugin:0];
  v4 = [*(a1 + 32) delegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 editPluginSession:*(a1 + 32) didEndWithCompletionType:*(a1 + 40) forPluginIdentifier:v6];
  }
}

- (void)editPluginHostViewController:(id)a3 commitContentEditingOutput:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PUEditPluginSession *)self dataSource];
  [v9 editPluginSession:self commitContentEditingOutput:v8 withCompletionHandler:v7];
}

- (void)editPluginHostViewController:(id)a3 loadItemProviderWithHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUEditPluginSession *)self currentPlugin];

  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:502 description:@"no current plugin"];
  }

  v10 = [(PUEditPluginSession *)self dataSource];

  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:503 description:@"data source missing"];
  }

  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithHandler", buf, 2u);
  }

  v12 = [(PUEditPluginSession *)self dataSource];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PUEditPluginSession_editPluginHostViewController_loadItemProviderWithHandler___block_invoke;
  v17[3] = &unk_1E7B76CE0;
  v18 = v7;
  v19 = self;
  v20 = v8;
  v13 = v8;
  v14 = v7;
  [v12 editPluginSession:self loadAdjustmentDataWithHandler:v17];
}

void __80__PUEditPluginSession_editPluginHostViewController_loadItemProviderWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithHandler; adjustment data loaded", buf, 2u);
  }

  v5 = dispatch_group_create();
  *buf = 0;
  v19 = buf;
  v20 = 0x2020000000;
  v21 = 0;
  if (![v3 isOpaque])
  {
    if (v3)
    {
      dispatch_group_enter(v5);
      v6 = *(a1 + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__PUEditPluginSession_editPluginHostViewController_loadItemProviderWithHandler___block_invoke_299;
      v15[3] = &unk_1E7B7E8D8;
      v17 = buf;
      v16 = v5;
      [v6 queryHandlingCapabilityForAdjustmentData:v3 withResponseHandler:v15 timeout:10.0];

      goto LABEL_8;
    }

    v7 = [*(a1 + 40) asset];
    v8 = [v7 isAdjusted];

    if (!v8)
    {
      goto LABEL_8;
    }
  }

  *(v19 + 3) = 2;
LABEL_8:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PUEditPluginSession_editPluginHostViewController_loadItemProviderWithHandler___block_invoke_2;
  v11[3] = &unk_1E7B76CB8;
  v14 = buf;
  v9 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v3;
  v13 = v9;
  v10 = v3;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v11);

  _Block_object_dispose(buf, 8);
}

void __80__PUEditPluginSession_editPluginHostViewController_loadItemProviderWithHandler___block_invoke_299(uint64_t a1, int a2)
{
  v2 = 1;
  if (!a2)
  {
    v2 = 2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __80__PUEditPluginSession_editPluginHostViewController_loadItemProviderWithHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAdjustmentType:*(*(*(a1 + 56) + 8) + 24)];
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 48);

  return [v2 loadItemProviderWithSupportedAdjustmentData:v3 loadHandler:v4];
}

- (void)_launchPlugin:(id)a3 afterDismissingViewController:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(PUEditPluginSession *)self currentPlugin];

  if (v9)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:437 description:@"previous plugin selected"];
  }

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 title];
    *buf = 138543362;
    v39 = v11;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "_launchPlugin: %{public}@", buf, 0xCu);
  }

  [(PUEditPluginSession *)self setCurrentPlugin:v7];
  v12 = [(PUEditPluginSession *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(PUEditPluginSession *)self delegate];
    [v14 editPluginSessionWillBegin:self];
  }

  v15 = dispatch_group_create();
  v16 = [[PUEditPluginHostViewController alloc] initWithPlugin:v7];
  [(PUEditPluginHostViewController *)v16 setDataSource:self];
  [(PUEditPluginHostViewController *)v16 setDelegate:self];
  dispatch_group_enter(v15);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke;
  v36[3] = &unk_1E7B76C90;
  v17 = v15;
  v37 = v17;
  [(PUEditPluginHostViewController *)v16 loadRemoteViewControllerWithCompletionHandler:v36];
  if (v8)
  {
    dispatch_group_enter(v17);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_2;
    aBlock[3] = &unk_1E7B80C38;
    v18 = v8;
    v34 = v18;
    v35 = v17;
    v19 = _Block_copy(aBlock);
    v20 = [v18 presentedViewController];

    if (v20)
    {
      v21 = [v18 presentedViewController];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_4;
      v31[3] = &unk_1E7B80C88;
      v32 = v19;
      [v21 dismissViewControllerAnimated:0 completion:v31];
    }

    else
    {
      v19[2](v19);
    }
  }

  v22 = [(PUEditPluginSession *)self hostViewController];
  v23 = [v22 view];

  v24 = [[PUProgressView alloc] initWithStyle:0];
  [(PUProgressView *)v24 showInView:v23 animated:1 afterDelay:2.0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_5;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v29 = v16;
  v30 = v24;
  v25 = v24;
  v26 = v16;
  dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);
}

void __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_3;
  v2[3] = &unk_1E7B80DD0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

void __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_5(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(*(a1 + 32) + 16) navigationBar];
  v6 = [v5 standardAppearance];
  v7 = [*(*(a1 + 32) + 16) navigationBar];
  [v7 setScrollEdgeAppearance:v6];

  v8 = +[PUInterfaceManager currentTheme];
  [v8 configureEditPluginNavigationController:*(*(a1 + 32) + 16)];

  [*(*(a1 + 32) + 16) setModalPresentationStyle:5];
  [*(*(a1 + 32) + 16) setModalTransitionStyle:2];
  v9 = +[PUPhotoEditProtoSettings sharedInstance];
  LOBYTE(v6) = [v9 lightModeEditor];

  if ((v6 & 1) == 0)
  {
    [*(*(a1 + 32) + 16) setOverrideUserInterfaceStyle:2];
  }

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "_launchPlugin; showing plugin controller", buf, 2u);
  }

  v11 = [*(a1 + 32) hostViewController];
  v12 = *(*(a1 + 32) + 16);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_292;
  v13[3] = &unk_1E7B80DD0;
  v14 = *(a1 + 48);
  [v11 presentViewController:v12 animated:1 completion:v13];
}

uint64_t __67__PUEditPluginSession__launchPlugin_afterDismissingViewController___block_invoke_292(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "_launchPlugin; plugin controller presentation completion", v4, 2u);
  }

  return [*(a1 + 32) hideAnimated:0];
}

- (void)presentAlertController:(id)a3
{
  v8 = a3;
  v4 = [(PUEditPluginSession *)self hostViewController];
  v5 = [v4 presentedViewController];

  if (v5)
  {
    do
    {
      v6 = [v4 presentedViewController];

      v7 = [v6 presentedViewController];

      v4 = v6;
    }

    while (v7);
  }

  else
  {
    v6 = v4;
  }

  [v6 presentViewController:v8 animated:1 completion:0];
}

- (void)editExtensionActivityViewController:(id)a3 didSelectActivity:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 plugin];
    if (!v9)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:405 description:@"no plugin selected"];
    }

    v10 = [(PUEditPluginSession *)self currentPlugin];

    if (v10)
    {
      v11 = PXAssertGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_error_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "previous plugin selected", location, 2u);
      }
    }

    v12 = [(PUEditPluginSession *)self currentPlugin];

    if (!v12)
    {
      objc_initWeak(location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __77__PUEditPluginSession_editExtensionActivityViewController_didSelectActivity___block_invoke;
      v14[3] = &unk_1E7B76C68;
      objc_copyWeak(&v17, location);
      v15 = v9;
      v16 = v7;
      [(PUEditPluginSession *)self shouldLaunchPlugin:v15 completion:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }
  }
}

void __77__PUEditPluginSession_editExtensionActivityViewController_didSelectActivity___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _launchPlugin:*(a1 + 32) afterDismissingViewController:*(a1 + 40)];
  }
}

- (id)_localizedEditorListTitle
{
  v2 = [(PUEditPluginSession *)self pluginManagerMediaType];
  if (v2 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = PULocalizedString(off_1E7B76D18[v2]);
  }

  return v3;
}

- (void)_beginSessionWithAsset:(id)a3 fromViewController:(id)a4 sourceElement:(id)a5 includeMarkupInList:(BOOL)a6
{
  v46[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a4;
  [(PUEditPluginSession *)self setAsset:a3];
  [(PUEditPluginSession *)self setHostViewController:v12];

  pluginManager = self->_pluginManager;
  if (a6)
  {
    [(PUEditPluginManager *)pluginManager pluginActivities];
  }

  else
  {
    [(PUEditPluginManager *)pluginManager pluginActivitiesExceptMarkup];
  }
  v14 = ;
  v15 = [(PUEditPluginSession *)self dataSource];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(PUEditPluginSession *)self dataSource];
    v18 = [v17 pluginActivitiesForEditPluginSession:self];

    v19 = [v14 arrayByAddingObjectsFromArray:v18];

    v14 = v19;
  }

  v20 = objc_alloc(MEMORY[0x1E695E000]);
  v21 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.mobileslideshow"];
  v22 = [v20 initWithSuiteName:v21];

  v23 = [[PUEditExtensionActivityViewController alloc] initWithUserDefaults:v22 userDefaultsIdentifier:@"com.apple.photos.photo-editors" applicationActivities:v14];
  [(PUEditExtensionActivityViewController *)v23 setConfigureForPhotosEdit:1];
  [(PUEditExtensionActivityViewController *)v23 setEditExtensionActivityViewControllerDelegate:self];
  v46[0] = *MEMORY[0x1E69CDA78];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  [(PUEditExtensionActivityViewController *)v23 setExcludedActivityTypes:v24];

  v25 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v26 = objc_alloc_init(MEMORY[0x1E696EC58]);
  v27 = [(PUEditPluginSession *)self _linkPresentationImage];
  [v26 setThumbnail:v27];

  v28 = +[PUPhotoEditProtoSettings sharedInstance];
  v29 = [v28 editMenuEnabled];
  v30 = @"PLUGIN_LIST_ACTIONSHEET_TITLE_LEGACY";
  if (v29)
  {
    v30 = @"PLUGIN_LIST_ACTIONSHEET_TITLE";
  }

  v31 = v30;

  v32 = PULocalizedString(v31);

  [v26 setName:v32];
  [v25 setSpecialization:v26];
  [(PUEditExtensionActivityViewController *)v23 setPhotosHeaderMetadata:v25];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:365 description:@"source element is not a UIView"];
  }

  v33 = v11;
  v34 = [(PUEditExtensionActivityViewController *)v23 popoverPresentationController];
  [v34 setSourceView:v33];

  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = [(PUEditExtensionActivityViewController *)v23 popoverPresentationController];
  [v43 setSourceRect:{v36, v38, v40, v42}];

  v44 = [(PUEditPluginSession *)self hostViewController];
  [v44 presentViewController:v23 animated:1 completion:0];
}

- (void)beginSessionWithAsset:(id)a3 fromViewController:(id)a4 sourceElement:(id)a5 includeMarkupInList:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__PUEditPluginSession_beginSessionWithAsset_fromViewController_sourceElement_includeMarkupInList___block_invoke;
  v16[3] = &unk_1E7B7AF08;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = a6;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(PUEditPluginSession *)self _unlockScreenIfNeededWithCompletionHandler:v16];
}

- (id)_linkPresentationImage
{
  v3 = [(PUEditPluginSession *)self asset];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v5 = objc_opt_class();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PUEditPluginSession__linkPresentationImage__block_invoke;
    v8[3] = &unk_1E7B77020;
    v8[4] = self;
    [v4 registerObjectOfClass:v5 visibility:0 loadHandler:v8];
    v6 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v4 properties:0 placeholderImage:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __45__PUEditPluginSession__linkPresentationImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PUEditPluginSession__linkPresentationImage__block_invoke_2;
  v8[3] = &unk_1E7B76C40;
  v9 = v3;
  v6 = v3;
  [v4 editPluginSession:v5 loadThumbnailImageWithSize:v8 loadHandler:{40.0, 40.0}];

  return 0;
}

void __45__PUEditPluginSession__linkPresentationImage__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 imageOrientation];
  [v5 size];
  v9 = v8;
  v11 = v10;
  _Q0 = 0uLL;
  v13 = -1.0;
  if (v7 <= 3)
  {
    switch(v7)
    {
      case 1:
LABEL_14:
        v14 = -1.0;
        goto LABEL_18;
      case 2:
        _Q0 = xmmword_1B3D0CE90;
        v14 = 0.0;
        v13 = 0.0;
        goto LABEL_17;
      case 3:
        _Q0 = xmmword_1B3D0CE80;
        v14 = 0.0;
        v13 = 0.0;
        v9 = 0.0;
        goto LABEL_18;
    }

LABEL_12:
    v14 = *MEMORY[0x1E695EFD0];
    _Q0 = *(MEMORY[0x1E695EFD0] + 8);
    v13 = *(MEMORY[0x1E695EFD0] + 24);
    v9 = *(MEMORY[0x1E695EFD0] + 32);
    v11 = *(MEMORY[0x1E695EFD0] + 40);
    goto LABEL_18;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      v9 = 0.0;
      v14 = 1.0;
      goto LABEL_18;
    }

    v11 = 0.0;
    v13 = 1.0;
    goto LABEL_14;
  }

  if (v7 == 6)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v14 = 0.0;
    v13 = 0.0;
    goto LABEL_18;
  }

  if (v7 != 7)
  {
    goto LABEL_12;
  }

  __asm { FMOV            V0.2D, #1.0 }

  v14 = 0.0;
  v13 = 0.0;
  v9 = 0.0;
LABEL_17:
  v11 = 0.0;
LABEL_18:
  v32.a = v14;
  v31 = _Q0;
  *&v32.b = _Q0;
  v32.d = v13;
  v32.tx = v9;
  v32.ty = v11;
  if (!CGAffineTransformIsIdentity(&v32))
  {
    v19 = [v5 CIImage];
    if (!v19)
    {
      v19 = [MEMORY[0x1E695F658] imageWithCGImage:{objc_msgSend(v5, "CGImage")}];
    }

    v32.a = v14;
    *&v32.b = v31;
    v32.d = v13;
    v32.tx = v9;
    v32.ty = v11;
    v20 = [v19 imageByApplyingTransform:{&v32, v31}];

    v21 = [MEMORY[0x1E69DCAB8] imageWithCIImage:v20];

    v5 = v21;
  }

  [v5 size];
  v23 = v22;
  [v5 size];
  v25 = v24;
  if ((PXFloatEqualToFloatWithTolerance() & 1) == 0)
  {
    if (v23 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    v27 = [v5 CGImage];
    v33.origin.x = v23 * 0.5 - v26 * 0.5;
    v33.origin.y = v25 * 0.5 - v26 * 0.5;
    v33.size.width = v26;
    v33.size.height = v26;
    v28 = CGImageCreateWithImageInRect(v27, v33);
    if (v28)
    {
      v29 = v28;
      v30 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v28 scale:objc_msgSend(v5 orientation:{"imageOrientation"), 1.0}];

      CGImageRelease(v29);
      v5 = v30;
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_beginMarkupSessionWithAsset:(id)a3 fromViewController:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "_beginMarkupSessionWithAsset", buf, 2u);
  }

  [(PUEditPluginSession *)self setAsset:v6];
  [(PUEditPluginSession *)self setHostViewController:v7];
  v9 = MEMORY[0x1E696ABD0];
  v10 = +[PUEditPlugin pu_defaultMarkupExtensionIdentifier];
  v21 = 0;
  v11 = [v9 extensionWithIdentifier:v10 error:&v21];
  v12 = v21;

  if (v11)
  {
    v13 = [[PUEditPlugin alloc] initWithExtension:v11 pluginCategoryType:0];
    v14 = [(PUEditPluginSession *)self currentPlugin];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = PXAssertGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "previous plugin selected", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__PUEditPluginSession__beginMarkupSessionWithAsset_fromViewController___block_invoke;
    v18[3] = &unk_1E7B79D28;
    objc_copyWeak(&v20, buf);
    v17 = v13;
    v19 = v17;
    [(PUEditPluginSession *)self shouldLaunchPlugin:v17 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Error fetching markup extension:%@", buf, 0xCu);
    }
  }
}

void __71__PUEditPluginSession__beginMarkupSessionWithAsset_fromViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _launchPlugin:*(a1 + 32) afterDismissingViewController:0];
  }
}

- (void)beginMarkupSessionWithAsset:(id)a3 fromViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUEditPluginSession *)self currentPlugin];

  if (!v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PUEditPluginSession_beginMarkupSessionWithAsset_fromViewController___block_invoke;
    v9[3] = &unk_1E7B809F0;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [(PUEditPluginSession *)self _unlockScreenIfNeededWithCompletionHandler:v9];
  }
}

- (void)_unlockScreenIfNeededWithCompletionHandler:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v25 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v4 = getSBSSpringBoardServerPortSymbolLoc_ptr;
  v29 = getSBSSpringBoardServerPortSymbolLoc_ptr;
  if (!getSBSSpringBoardServerPortSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getSBSSpringBoardServerPortSymbolLoc_block_invoke;
    v33 = &unk_1E7B800F0;
    v34 = &v26;
    v5 = SpringBoardServicesLibrary();
    v6 = dlsym(v5, "SBSSpringBoardServerPort");
    *(v34[1] + 24) = v6;
    getSBSSpringBoardServerPortSymbolLoc_ptr = *(v34[1] + 24);
    v4 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v4)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mach_port_t PUSBSSpringBoardServerPort(void)"];
    [v17 handleFailureInFunction:v18 file:@"PUEditPluginSession.m" lineNumber:48 description:{@"%s", dlerror()}];

    goto LABEL_24;
  }

  v7 = v4();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v8 = getSBGetScreenLockStatusSymbolLoc_ptr;
  v29 = getSBGetScreenLockStatusSymbolLoc_ptr;
  if (!getSBGetScreenLockStatusSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __getSBGetScreenLockStatusSymbolLoc_block_invoke;
    v33 = &unk_1E7B800F0;
    v34 = &v26;
    v9 = SpringBoardServicesLibrary();
    v10 = dlsym(v9, "SBGetScreenLockStatus");
    *(v34[1] + 24) = v10;
    getSBGetScreenLockStatusSymbolLoc_ptr = *(v34[1] + 24);
    v8 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v8)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kern_return_t PUSBGetScreenLockStatus(mach_port_t, uint8_t *, uint8_t *)"}];
    [v19 handleFailureInFunction:v20 file:@"PUEditPluginSession.m" lineNumber:47 description:{@"%s", dlerror()}];

    goto LABEL_24;
  }

  if (v8(v7, &v25 + 1, &v25))
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Unable to determine current lock screen state, functioning as if screen is locked.", buf, 2u);
    }

    v25 = 257;
  }

  v12 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = HIBYTE(v25);
    LOWORD(v31) = 1024;
    *(&v31 + 2) = v25;
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Got Springboard lock status: %d %d", buf, 0xEu);
  }

  if (v25)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__PUEditPluginSession__unlockScreenIfNeededWithCompletionHandler___block_invoke;
    v23[3] = &unk_1E7B76C18;
    v24 = v3;
    v13 = v23;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v14 = getSBSRequestPasscodeUnlockUISymbolLoc_ptr;
    v29 = getSBSRequestPasscodeUnlockUISymbolLoc_ptr;
    if (!getSBSRequestPasscodeUnlockUISymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __getSBSRequestPasscodeUnlockUISymbolLoc_block_invoke;
      v33 = &unk_1E7B800F0;
      v34 = &v26;
      v15 = SpringBoardServicesLibrary();
      v16 = dlsym(v15, "SBSRequestPasscodeUnlockUI");
      *(v34[1] + 24) = v16;
      getSBSRequestPasscodeUnlockUISymbolLoc_ptr = *(v34[1] + 24);
      v14 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (v14)
    {
      v14(v13);

      goto LABEL_20;
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void PUSBSRequestPasscodeUnlockUI(void (^__strong)(Boolean))"];
    [v21 handleFailureInFunction:v22 file:@"PUEditPluginSession.m" lineNumber:46 description:{@"%s", dlerror()}];

LABEL_24:
    __break(1u);
  }

  if (v3)
  {
    v3[2](v3);
  }

LABEL_20:
}

uint64_t __66__PUEditPluginSession__unlockScreenIfNeededWithCompletionHandler___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (BOOL)markupIsAvailable
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PUEditPluginManager *)self->_pluginManager hasMarkupPlugin];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "PUEditPluginSession markupIsAvailable: %@", &v7, 0xCu);
  }

  return [(PUEditPluginManager *)self->_pluginManager hasMarkupPlugin];
}

- (void)setIsAvailable:(BOOL)a3
{
  if (self->_isAvailable != a3)
  {
    self->_isAvailable = a3;
    v4 = [(PUEditPluginSession *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PUEditPluginSession *)self delegate];
      [v6 editPluginSessionAvailabilityDidChange:self];
    }
  }
}

- (void)updateAvailability
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PUEditPluginManager *)self->_pluginManager hasNonMarkupPlugins];
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "PUEditPluginSession isAvailable: %@ (hasNonMarkupPlugins)", &v13, 0xCu);
  }

  v6 = [(PUEditPluginSession *)self dataSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PUEditPluginSession *)self dataSource];
    v9 = [v8 pluginActivitiesForEditPluginSession:self];
  }

  else
  {
    v9 = 0;
  }

  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(__CFString *)v9 count];
    v13 = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "PUEditPluginSession pluginActionActivities: %{public}@ - count %ld", &v13, 0x16u);
  }

  if ([(__CFString *)v9 count])
  {
    v12 = 1;
  }

  else
  {
    v12 = v3;
  }

  [(PUEditPluginSession *)self setIsAvailable:v12];
}

- (void)_pluginManagerPluginsDidChange:(id)a3
{
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "_pluginManagerPluginsDidChange - now updating availability", v5, 2u);
  }

  [(PUEditPluginSession *)self updateAvailability];
}

- (void)loadItemProviderWithSupportedAdjustmentData:(id)a3 loadHandler:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:178 description:@"subclass to implement"];
}

- (unint64_t)pluginManagerMediaType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUEditPluginSession.m" lineNumber:173 description:@"subclass to implement"];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUEditPluginSession;
  [(PUEditPluginSession *)&v4 dealloc];
}

- (void)updatePluginManager
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "PUEditPluginSession: updatePluginManager", v7, 2u);
  }

  v4 = [PUEditPluginManager sharedManagerForMediaType:[(PUEditPluginSession *)self pluginManagerMediaType]];
  pluginManager = self->_pluginManager;
  self->_pluginManager = v4;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__pluginManagerPluginsDidChange_ name:@"PUEditPluginManagerPluginsDidChangeNotification" object:self->_pluginManager];

  [(PUEditPluginManager *)self->_pluginManager rediscoverAvailablePlugins];
  [(PUEditPluginSession *)self updateAvailability];
}

- (PUEditPluginSession)init
{
  v5.receiver = self;
  v5.super_class = PUEditPluginSession;
  v2 = [(PUEditPluginSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PUEditPluginSession *)v2 updatePluginManager];
  }

  return v3;
}

@end