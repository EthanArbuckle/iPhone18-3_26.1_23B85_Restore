@interface PUCloudPhotoWelcomeViewController
+ (void)presentIfNecessaryFromViewController:(id)a3 presentationHandler:(id)a4 completionHandler:(id)a5;
+ (void)resetLastPresentationInfo;
- (PUCloudPhotoWelcomeViewController)initWithCompletionHandler:(id)a3;
- (PUCloudPhotoWelcomeViewController)initWithDefaultTitle;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation PUCloudPhotoWelcomeViewController

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__PUCloudPhotoWelcomeViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E7B80B48;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = PUCloudPhotoWelcomeViewController;
  v7 = v6;
  [(PUCloudPhotoWelcomeViewController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
}

void __78__PUCloudPhotoWelcomeViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) _completionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) _completionHandler];
    v4[2](v4, 1);

    v5 = *(a1 + 32);

    [v5 _setCompletionHandler:0];
  }
}

- (PUCloudPhotoWelcomeViewController)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUCloudPhotoWelcomeViewController;
  v5 = [(PXCloudPhotoWelcomeViewController *)&v8 initWithDefaultTitle];
  if (v5)
  {
    v6 = [v4 copy];
    [(PUCloudPhotoWelcomeViewController *)v5 _setCompletionHandler:v6];
  }

  return v5;
}

- (PUCloudPhotoWelcomeViewController)initWithDefaultTitle
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUCloudPhotoWelcomeViewController.m" lineNumber:140 description:{@"%s is not available as initializer", "-[PUCloudPhotoWelcomeViewController initWithDefaultTitle]"}];

  abort();
}

+ (void)resetLastPresentationInfo
{
  CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenWelcomedAccountIdentifiers", 0, @"com.apple.mobileslideshow");
  CFPreferencesSetAppValue(@"iCloudPhotoLibraryHasBeenEnabledAccountIdentifiers", 0, @"com.apple.mobileslideshow");

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

+ (void)presentIfNecessaryFromViewController:(id)a3 presentationHandler:(id)a4 completionHandler:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 presentedViewController];
  if (v10)
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      *&buf[24] = objc_opt_class();
      *v51 = 2048;
      *&v51[2] = v10;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "PUCloudPhotoWelcomeViewController: Bailing out! Presenting view controller:<%@:%p>, already has a presented view controller:<%@:%p>", buf, 0x2Au);
    }

    v9[2](v9, 2);
    goto LABEL_25;
  }

  v12 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  v40 = [v12 cachedPrimaryAppleAccount];

  v37 = [v40 isEnabledForDataclass:*MEMORY[0x1E6959AE8]];
  v52 = xmmword_1B3D0D0F0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v13 = getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr;
  v49 = getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr;
  if (!getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSCNetworkReachabilityCreateWithAddressSymbolLoc_block_invoke;
    *&buf[24] = &unk_1E7B800F0;
    *v51 = &v46;
    v14 = SystemConfigurationLibrary();
    v15 = dlsym(v14, "SCNetworkReachabilityCreateWithAddress");
    *(*(*v51 + 8) + 24) = v15;
    getSCNetworkReachabilityCreateWithAddressSymbolLoc_ptr = *(*(*v51 + 8) + 24);
    v13 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v13)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"SCNetworkReachabilityRef PLSCNetworkReachabilityCreateWithAddress(CFAllocatorRef, const struct sockaddr *)"}];
    [v31 handleFailureInFunction:v32 file:@"PUCloudPhotoWelcomeViewController.m" lineNumber:29 description:{@"%s", dlerror()}];

    goto LABEL_28;
  }

  v16 = v13(*MEMORY[0x1E695E480], &v52);
  if (v16)
  {
    v45 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v17 = getSCNetworkReachabilityGetFlagsSymbolLoc_ptr;
    v49 = getSCNetworkReachabilityGetFlagsSymbolLoc_ptr;
    if (!getSCNetworkReachabilityGetFlagsSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSCNetworkReachabilityGetFlagsSymbolLoc_block_invoke;
      *&buf[24] = &unk_1E7B800F0;
      *v51 = &v46;
      v18 = SystemConfigurationLibrary();
      v19 = dlsym(v18, "SCNetworkReachabilityGetFlags");
      *(*(*v51 + 8) + 24) = v19;
      getSCNetworkReachabilityGetFlagsSymbolLoc_ptr = *(*(*v51 + 8) + 24);
      v17 = v47[3];
    }

    _Block_object_dispose(&v46, 8);
    if (v17)
    {
      v17(v16, &v45);
      v20 = v45;
      CFRelease(v16);
      v36 = (v20 >> 1) & 1;
      goto LABEL_14;
    }

    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean PLSCNetworkReachabilityGetFlags(SCNetworkReachabilityRef, SCNetworkReachabilityFlags *)"}];
    [v33 handleFailureInFunction:v34 file:@"PUCloudPhotoWelcomeViewController.m" lineNumber:30 description:{@"%s", dlerror()}];

LABEL_28:
    __break(1u);
  }

  v36 = 0;
LABEL_14:
  v21 = PLCPLHasBeenEnabledForCurrentAccount();
  v22 = PLCPLHasBeenWelcomedForCurrentAccount();
  v23 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v24 = [v23 BOOLRestrictionForFeature:*MEMORY[0x1E69ADE38]];

  v25 = PLIsRunningInStoreDemoMode();
  v26 = +[PUWelcomeSettings sharedInstance];
  v27 = [v26 cloudPhotoWelcomeBehavior];

  v28 = 1;
  if (!v27)
  {
    goto LABEL_21;
  }

  if (v27 == 1)
  {
    goto LABEL_18;
  }

  if (v27 != 2)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:a1 file:@"PUCloudPhotoWelcomeViewController.m" lineNumber:106 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v28 = 0;
  if ((v40 == 0) | (v36 ^ 1) & 1 | v37 & 1 | (v21 | v22) & 1 | (v24 == 2) | v25 & 1)
  {
LABEL_18:
    v29 = PLUIGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110656;
      *&buf[4] = v40 != 0;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      *&buf[16] = v21;
      *&buf[20] = 1024;
      *&buf[22] = v36;
      *&buf[26] = 1024;
      *&buf[28] = v22;
      *v51 = 1024;
      *&v51[2] = v24 == 2;
      *&v51[6] = 1024;
      *&v51[8] = v28;
      _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "PUCloudPhotoWelcomeViewController: Skipping! (iCloud:%d, iCPL Now:%d, iCPL Before:%d, Online:%d, Already Shown:%d, Restricted:%d, Debug Override:%d)", buf, 0x2Cu);
    }

    v9[2](v9, 0);
  }

  else
  {
LABEL_21:
    v30 = PLUIGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110656;
      *&buf[4] = v40 != 0;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      *&buf[16] = v21;
      *&buf[20] = 1024;
      *&buf[22] = v36;
      *&buf[26] = 1024;
      *&buf[28] = v22;
      *v51 = 1024;
      *&v51[2] = v24 == 2;
      *&v51[6] = 1024;
      *&v51[8] = v28;
      _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_DEFAULT, "PUCloudPhotoWelcomeViewController: Presenting! (iCloud:%d, iCPL Now:%d, iCPL Before:%d, Online:%d, Already Shown:%d, Restricted:%d, Debug Override:%d)", buf, 0x2Cu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__PUCloudPhotoWelcomeViewController_presentIfNecessaryFromViewController_presentationHandler_completionHandler___block_invoke;
    block[3] = &unk_1E7B80A40;
    v43 = v9;
    v42 = v7;
    v44 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_25:
}

void __112__PUCloudPhotoWelcomeViewController_presentIfNecessaryFromViewController_presentationHandler_completionHandler___block_invoke(uint64_t a1)
{
  PLCPLRecordWelcomeForCurrentAccount();
  v3 = [[PUCloudPhotoWelcomeViewController alloc] initWithCompletionHandler:*(a1 + 40)];
  v2 = [objc_alloc(MEMORY[0x1E69C33C0]) initWithWelcomeController:v3];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
  (*(*(a1 + 48) + 16))();
}

@end