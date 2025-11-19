@interface PXCloudPhotoWelcomeViewController
- (PXCloudPhotoWelcomeViewController)initWithDefaultTitle;
- (PXCloudPhotoWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (PXCloudPhotoWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_cloudPhotoWelcomeViewGoButtonTapped:(id)a3;
- (void)_cloudPhotoWelcomeViewLearnMoreTapped:(id)a3;
- (void)_cloudPhotoWelcomeViewNotNowButtonTapped:(id)a3;
- (void)_continueWithoutStoragePurchase:(id)a3;
- (void)_enableCloudPhotoLibrary;
- (void)_enableCloudPhotoLibraryWithoutCheck;
- (void)_handleEnableError:(id)a3;
- (void)_setButtonsEnabled:(BOOL)a3;
- (void)_updateCurrentActivity;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)manager:(id)a3 willPresentViewController:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXCloudPhotoWelcomeViewController

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__PXCloudPhotoWelcomeViewController_genericTermsRemoteUI_didFinishWithSuccess___block_invoke;
  v4[3] = &unk_1E7749428;
  v5 = a4;
  v4[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __79__PXCloudPhotoWelcomeViewController_genericTermsRemoteUI_didFinishWithSuccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _enableCloudPhotoLibrary];
  }

  else
  {
    return [v2 _setButtonsEnabled:1];
  }
}

- (void)managerDidCancel:(id)a3
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "PXCloudPhotoWelcomeViewController: Up-sell offer was cancelled by the user.", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXCloudPhotoWelcomeViewController_managerDidCancel___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "PXCloudPhotoWelcomeViewController: Loading of Up-sell workflow failed with an error: %@", &v7, 0xCu);
  }

  [(PXCloudPhotoWelcomeViewController *)self _setButtonsEnabled:1];
}

- (void)manager:(id)a3 willPresentViewController:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "PXCloudPhotoWelcomeViewController: Up-sell offer will present.", v13, 2u);
  }

  v7 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_UPGRADE_STORAGE_TITLE", @"PhotosUICore");
  [v5 setTitle:v7];

  if ([(PXCloudPhotoWelcomeViewController *)self _requireStorageUpgrade])
  {
    [v5 px_removeFooterToolbar];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = PXLocalizedStringFromTable(@"ICLOUDPHOTOS_CONTINUE_WITHOUT_PURCHASE", @"PhotosUICore");
    v11 = [v9 initWithTitle:v10 style:0 target:self action:sel__continueWithoutStoragePurchase_];

    v14[0] = v8;
    v14[1] = v11;
    v14[2] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    [v5 px_insertFooterToolbarWithItems:v12];
  }
}

- (void)_setButtonsEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PXCloudPhotoWelcomeViewController *)self _buttons];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_handleEnableError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PXCloudPhotoWelcomeViewController__handleEnableError___block_invoke;
  v6[3] = &unk_1E774C620;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__PXCloudPhotoWelcomeViewController__handleEnableError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) code] == 10)
  {
    v2 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
    v3 = [v2 aa_primaryAppleAccount];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v4 = getAAUIGenericTermsRemoteUIClass_softClass;
    v27 = getAAUIGenericTermsRemoteUIClass_softClass;
    if (!getAAUIGenericTermsRemoteUIClass_softClass)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __getAAUIGenericTermsRemoteUIClass_block_invoke;
      v23[3] = &unk_1E774BD00;
      v23[4] = &v24;
      __getAAUIGenericTermsRemoteUIClass_block_invoke(v23);
      v4 = v25[3];
    }

    v5 = v4;
    _Block_object_dispose(&v24, 8);
    v6 = [[v4 alloc] initWithAccount:v3 inStore:v2];
    [*(a1 + 40) _setTermsManager:v6];

    v7 = *(a1 + 40);
    v8 = [v7 _termsManager];
    [v8 setDelegate:v7];

    v9 = [*(a1 + 40) _termsManager];
    [v9 presentFromViewController:*(a1 + 40) modal:1];
  }

  else
  {
    v10 = MEMORY[0x1E69DC650];
    v11 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__PXCloudPhotoWelcomeViewController__handleEnableError___block_invoke_2;
    v20[3] = &unk_1E774C620;
    v12 = v11;
    v13 = *(a1 + 40);
    v21 = v12;
    v22 = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__PXCloudPhotoWelcomeViewController__handleEnableError___block_invoke_3;
    v17[3] = &unk_1E774C620;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = v14;
    v19 = v15;
    v16 = [v10 px_alertForCPLEnableError:v12 actionHandler:v20 cancelHandler:v17];
    [*(a1 + 40) presentViewController:v16 animated:1 completion:0];

    v2 = v21;
  }
}

void __56__PXCloudPhotoWelcomeViewController__handleEnableError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v3 = *(a1 + 40);
  if (v2 == 7)
  {
    [v3 _setButtonsEnabled:0];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v4 = getICQUICloudStorageOffersManagerClass_softClass;
    v15 = getICQUICloudStorageOffersManagerClass_softClass;
    if (!getICQUICloudStorageOffersManagerClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getICQUICloudStorageOffersManagerClass_block_invoke;
      v11[3] = &unk_1E774BD00;
      v11[4] = &v12;
      __getICQUICloudStorageOffersManagerClass_block_invoke(v11);
      v4 = v13[3];
    }

    v5 = v4;
    _Block_object_dispose(&v12, 8);
    v6 = objc_alloc_init(v4);
    [*(a1 + 40) _setOffersManager:v6];

    v7 = *(a1 + 40);
    v8 = [v7 _offersManager];
    [v8 setDelegate:v7];

    v9 = [*(a1 + 40) _offersManager];
    v10 = [*(a1 + 40) navigationController];
    [v9 beginFlowWithNavigationController:v10 modally:1];
  }

  else
  {

    [v3 _setButtonsEnabled:1];
  }
}

uint64_t __56__PXCloudPhotoWelcomeViewController__handleEnableError___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) code] == 6 || objc_msgSend(*(a1 + 32), "code") == 8)
  {
    v2 = *(a1 + 40);

    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if ([*(a1 + 32) code] == 7)
    {
      PLRecordLibrarySizeWithReason();
    }

    v4 = *(a1 + 40);

    return [v4 _setButtonsEnabled:1];
  }
}

- (void)_enableCloudPhotoLibraryWithoutCheck
{
  [(PXCloudPhotoWelcomeViewController *)self _setButtonsEnabled:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__PXCloudPhotoWelcomeViewController__enableCloudPhotoLibraryWithoutCheck__block_invoke;
  v3[3] = &unk_1E774C5C0;
  v3[4] = self;
  [MEMORY[0x1E69BE328] enableCPL:v3];
}

void __73__PXCloudPhotoWelcomeViewController__enableCloudPhotoLibraryWithoutCheck__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXCloudPhotoWelcomeViewController__enableCloudPhotoLibraryWithoutCheck__block_invoke_2;
  block[3] = &unk_1E774B368;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__PXCloudPhotoWelcomeViewController__enableCloudPhotoLibraryWithoutCheck__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    return [v3 _handleEnableError:*(a1 + 40)];
  }
}

- (void)_enableCloudPhotoLibrary
{
  [(PXCloudPhotoWelcomeViewController *)self _setButtonsEnabled:0];
  v2 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  PLCanEnableCloudPhotoLibraryForAccount();
}

void __61__PXCloudPhotoWelcomeViewController__enableCloudPhotoLibrary__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  PLRecordiCPLEnableState();
  if (a2)
  {
    [*(a1 + 32) _enableCloudPhotoLibraryWithoutCheck];
  }

  else
  {
    [*(a1 + 32) _setRequireStorageUpgrade:PLCPLShouldRequireStorageUpgradeForError()];
    [*(a1 + 32) _handleEnableError:v5];
  }
}

- (void)_cloudPhotoWelcomeViewLearnMoreTapped:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/ios/photos/"];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)_cloudPhotoWelcomeViewNotNowButtonTapped:(id)a3
{
  PLRecordLibrarySizeWithReason();

  [(PXCloudPhotoWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_cloudPhotoWelcomeViewGoButtonTapped:(id)a3
{
  PLRecordLibrarySizeWithReason();
  [(PXCloudPhotoWelcomeViewController *)self _setButtonsEnabled:0];
  v4 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v5 = [v4 iTunesSyncedContentInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BE988]];
  v7 = [v6 integerValue];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BE998]];
    v9 = [v8 BOOLValue];

    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BE990]];
    v11 = [v10 BOOLValue];

    v13[4] = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke;
    v14[3] = &unk_1E774C648;
    v14[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke_4;
    v13[3] = &unk_1E774C648;
    v12 = [MEMORY[0x1E69DC650] px_deleteITunesContentAlertWithAssetCount:v7 includesPhotos:v11 includesVideos:v9 actionHandler:v14 cancelHandler:v13];
    [(PXCloudPhotoWelcomeViewController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    [(PXCloudPhotoWelcomeViewController *)self _enableCloudPhotoLibrary];
  }
}

void __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v3 = [v2 assetsdClient];

  v4 = [v3 libraryInternalClient];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke_2;
  v5[3] = &unk_1E774C5C0;
  v5[4] = *(a1 + 32);
  [v4 deleteiTunesSyncedContentWithCompletionHandler:v5];
}

void __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke_3;
  v2[3] = &unk_1E7749428;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __74__PXCloudPhotoWelcomeViewController__cloudPhotoWelcomeViewGoButtonTapped___block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _enableCloudPhotoLibrary];
  }

  return result;
}

- (void)_continueWithoutStoragePurchase:(id)a3
{
  [(PXCloudPhotoWelcomeViewController *)self _setEnableOnAppear:1];
  v4 = [(PXCloudPhotoWelcomeViewController *)self _offersManager];
  [v4 cancelLoad];
}

- (void)_updateCurrentActivity
{
  if ([(PXCloudPhotoWelcomeViewController *)self _enableOnAppear])
  {
    [(PXCloudPhotoWelcomeViewController *)self _enableCloudPhotoLibraryWithoutCheck];

    [(PXCloudPhotoWelcomeViewController *)self _setEnableOnAppear:0];
  }

  else
  {

    [(PXCloudPhotoWelcomeViewController *)self _setButtonsEnabled:1];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getMCProfileConnectionClass_softClass_98721;
  v22 = getMCProfileConnectionClass_softClass_98721;
  if (!getMCProfileConnectionClass_softClass_98721)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getMCProfileConnectionClass_block_invoke_98722;
    v17 = &unk_1E774BD00;
    v18 = &v19;
    __getMCProfileConnectionClass_block_invoke_98722(&v14);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v7 = [v5 sharedConnection];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v8 = getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr_98723;
  v22 = getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr_98723;
  if (!getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr_98723)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_block_invoke_98724;
    v17 = &unk_1E774BD00;
    v18 = &v19;
    v9 = ManagedConfigurationLibrary_98725();
    v10 = dlsym(v9, "MCFeatureCloudPhotoLibraryAllowed");
    *(v18[1] + 24) = v10;
    getMCFeatureCloudPhotoLibraryAllowedSymbolLoc_ptr_98723 = *(v18[1] + 24);
    v8 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v8)
  {
    v11 = [v7 BOOLRestrictionForFeature:*v8];

    if (v11 == 2)
    {
      [(PXCloudPhotoWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCFeatureCloudPhotoLibraryAllowed(void)"];
    [v12 handleFailureInFunction:v13 file:@"PXCloudPhotoWelcomeViewController.m" lineNumber:58 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXCloudPhotoWelcomeViewController;
  [(PXCloudPhotoWelcomeViewController *)&v4 viewWillAppear:a3];
  [(PXCloudPhotoWelcomeViewController *)self _updateCurrentActivity];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PXCloudPhotoWelcomeViewController;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

- (PXCloudPhotoWelcomeViewController)initWithDefaultTitle
{
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = PXLocalizedStringFromTable(@"CLOUD_PHOTOS_WELCOME_TITLE", @"PhotosUICore");
  v4 = PXLocalizedStringFromTable(@"CLOUD_PHOTOS_WELCOME_BODY", @"PhotosUICore");
  v5 = objc_alloc(MEMORY[0x1E69A8A00]);
  v6 = @"com.apple.mobileslideshow";
  v7 = [v5 initWithBundleIdentifier:@"com.apple.mobileslideshow"];

  v8 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:60.0 scale:{60.0, 2.0}];
  v9 = [v7 prepareImageForDescriptor:v8];
  v10 = [v9 CGImage];

  v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v10 scale:0 orientation:2.0];
  v31.receiver = self;
  v31.super_class = PXCloudPhotoWelcomeViewController;
  v12 = [(PXCloudPhotoWelcomeViewController *)&v31 initWithTitle:v3 detailText:v4 icon:v11 contentLayout:2];
  if (v12)
  {
    v30 = v7;
    v28 = PXLocalizedStringFromTable(@"CLOUD_PHOTOS_WELCOME_LEARN_MORE", @"PhotosUICore");
    v13 = [MEMORY[0x1E69B7D20] accessoryButton];
    [v13 setTitle:v28 forState:0];
    [v13 addTarget:v12 action:sel__cloudPhotoWelcomeViewLearnMoreTapped_ forControlEvents:0x2000];
    v14 = [(PXCloudPhotoWelcomeViewController *)v12 headerView];
    [v14 addAccessoryButton:v13];

    v15 = [(PXCloudPhotoWelcomeViewController *)v12 buttonTray];
    v16 = PXLocalizedStringFromTable(@"ICLOUD_PHOTOS_WELCOME_FINE_PRINT", @"PhotosUICore");
    [v15 setCaptionText:v16];

    v17 = PXLocalizedStringFromTable(@"CLOUD_PHOTOS_WELCOME_GO_BUTTON", @"PhotosUICore");
    v18 = [MEMORY[0x1E69B7D00] boldButton];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v18 setTitle:v17 forState:0];
    [v18 addTarget:v12 action:sel__cloudPhotoWelcomeViewGoButtonTapped_ forControlEvents:0x2000];
    [(PXCloudPhotoWelcomeViewController *)v12 buttonTray];
    v29 = v8;
    v19 = v4;
    v21 = v20 = v3;
    [v21 addButton:v18];

    v22 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__cloudPhotoWelcomeViewGoButtonTapped_];
    [(PXCloudPhotoWelcomeViewController *)v12 addKeyCommand:v22];

    v23 = PXLocalizedStringFromTable(@"ICLOUD_PHOTOS_WELCOME_NOT_NOW", @"PhotosUICore");
    v24 = [MEMORY[0x1E69B7D38] linkButton];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setTitle:v23 forState:0];
    [v24 addTarget:v12 action:sel__cloudPhotoWelcomeViewNotNowButtonTapped_ forControlEvents:0x2000];
    v25 = [(PXCloudPhotoWelcomeViewController *)v12 buttonTray];
    [v25 addButton:v24];

    [(PXCloudPhotoWelcomeViewController *)v12 setModalInPresentation:1];
    v32[0] = v13;
    v32[1] = v18;
    v32[2] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    [(PXCloudPhotoWelcomeViewController *)v12 _setButtons:v26];

    v3 = v20;
    v4 = v19;
    v8 = v29;

    v7 = v30;
  }

  return v12;
}

- (PXCloudPhotoWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeViewController.m" lineNumber:88 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeViewController initWithTitle:detailText:icon:contentLayout:]"}];

  abort();
}

- (PXCloudPhotoWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PXCloudPhotoWelcomeViewController.m" lineNumber:84 description:{@"%s is not available as initializer", "-[PXCloudPhotoWelcomeViewController initWithTitle:detailText:icon:]"}];

  abort();
}

@end