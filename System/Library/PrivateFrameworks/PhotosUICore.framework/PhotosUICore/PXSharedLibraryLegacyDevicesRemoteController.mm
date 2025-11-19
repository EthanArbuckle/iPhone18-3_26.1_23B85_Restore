@interface PXSharedLibraryLegacyDevicesRemoteController
+ (id)legacyDevicesRemoteControllerIfEnabledWithSharedLibraryOrPreviewPresent:(BOOL)a3;
- (PXSharedLibraryLegacyDevicesRemoteController)init;
- (id)_init;
- (id)accountsForAccountManager:(id)a3;
- (void)_updateStateOnMainQueue:(int64_t)a3;
- (void)beginRemoteUIRequestWithPresenter:(id)a3;
- (void)remoteUIDidEndFlow:(id)a3;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
- (void)remoteUIWillLoadRequest:(id)a3;
- (void)remoteUIWillPresentObjectModel:(id)a3 modally:(BOOL)a4;
- (void)setState:(int64_t)a3;
@end

@implementation PXSharedLibraryLegacyDevicesRemoteController

- (void)remoteUIWillPresentObjectModel:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 identifier];
    v9 = 138543618;
    v10 = v8;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevicesRemoteController: Presenting: %{public}@; modal: %d", &v9, 0x12u);
  }

  if (!v4)
  {
    [(PXSharedLibraryLegacyDevicesRemoteController *)self _updateStateOnMainQueue:2];
  }
}

- (void)remoteUIDidEndFlow:(id)a3
{
  v4 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevicesRemoteController: moving to completed state due to end of flow", v5, 2u);
  }

  [(PXSharedLibraryLegacyDevicesRemoteController *)self _updateStateOnMainQueue:3];
}

- (void)remoteUIWillLoadRequest:(id)a3
{
  v4 = a3;
  [(PXSharedLibraryLegacyDevicesRemoteController *)self _updateStateOnMainQueue:1];
  v5 = [v4 URL];

  v6 = [v5 path];
  v7 = [v6 hasSuffix:@"/goldilocks/skip"];

  if (v7)
  {
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevicesRemoteController: moving to completed state due to user request", v9, 2u);
    }

    [(PXSharedLibraryLegacyDevicesRemoteController *)self _updateStateOnMainQueue:3];
  }
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevicesRemoteController: Request complete: %@\nerror: %@", &v13, 0x16u);
  }

  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"statusCode"];
  v11 = [v10 integerValue];

  if (v11 >= 400)
  {
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "PXSharedLibraryLegacyDevicesRemoteController: Request error code %ld", &v13, 0xCu);
    }

    if ([(PXSharedLibraryLegacyDevicesRemoteController *)self state]!= 3)
    {
      [(PXSharedLibraryLegacyDevicesRemoteController *)self _updateStateOnMainQueue:4];
    }
  }
}

- (id)accountsForAccountManager:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v5 = getAIDAServiceTypeCloudSymbolLoc_ptr;
  v17 = getAIDAServiceTypeCloudSymbolLoc_ptr;
  if (!getAIDAServiceTypeCloudSymbolLoc_ptr)
  {
    v6 = AppleIDSSOAuthenticationLibrary();
    v15[3] = dlsym(v6, "AIDAServiceTypeCloud");
    getAIDAServiceTypeCloudSymbolLoc_ptr = v15[3];
    v5 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAIDAServiceTypeCloud(void)"];
    [v12 handleFailureInFunction:v13 file:@"PXSharedLibraryLegacyDevicesRemoteController+iOS.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }

  currentAccount = self->_currentAccount;
  v18 = *v5;
  v19[0] = currentAccount;
  v8 = MEMORY[0x1E695DF20];
  v9 = v18;
  v10 = [v8 dictionaryWithObjects:v19 forKeys:&v18 count:1];

  return v10;
}

- (void)_updateStateOnMainQueue:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PXSharedLibraryLegacyDevicesRemoteController__updateStateOnMainQueue___block_invoke;
  v3[3] = &unk_1E77498A0;
  v3[4] = self;
  v3[5] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __72__PXSharedLibraryLegacyDevicesRemoteController__updateStateOnMainQueue___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PXSharedLibraryLegacyDevicesRemoteController__updateStateOnMainQueue___block_invoke_2;
  v3[3] = &unk_1E7749D78;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 performChanges:v3];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PXSharedLibraryLegacyDevicesRemoteController *)self signalChange:1];
  }
}

- (void)beginRemoteUIRequestWithPresenter:(id)a3
{
  v4 = a3;
  [(PXSharedLibraryLegacyDevicesRemoteController *)self _updateStateOnMainQueue:1];
  objc_initWeak(&location, self);
  v5 = +[PXSharedLibrarySettings sharedInstance];
  v6 = [v5 simulateLegacyDevicesRemoteFailure];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __82__PXSharedLibraryLegacyDevicesRemoteController_beginRemoteUIRequestWithPresenter___block_invoke;
  v14 = &unk_1E772F970;
  v18 = v6;
  objc_copyWeak(&v17, &location);
  v15 = self;
  v7 = v4;
  v16 = v7;
  v8 = &v11;
  v9 = [MEMORY[0x1E698DDF8] bagForAltDSID:{0, v11, v12, v13, v14, v15}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___RequestURLForGoldilocksLegacyDevices_block_invoke;
  v20[3] = &unk_1E77473C0;
  v21 = v8;
  v10 = v8;
  [v9 urlForKey:@"goldilocksIncompatibleDevices" completion:v20];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __82__PXSharedLibraryLegacyDevicesRemoteController_beginRemoteUIRequestWithPresenter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && *(a1 + 56) != 1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PXSharedLibraryLegacyDevicesRemoteController_beginRemoteUIRequestWithPresenter___block_invoke_43;
    v11[3] = &unk_1E7748228;
    objc_copyWeak(&v14, (a1 + 48));
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v10;
    v13 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);

    objc_destroyWeak(&v14);
  }

  else
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      *buf = 67109634;
      v16 = v5 != 0;
      v17 = 1024;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryLegacyDevicesRemoteController: remote immediately unavailable with URL present: %d; simulate failure %d; error = %@", buf, 0x18u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _updateStateOnMainQueue:4];
  }
}

void __82__PXSharedLibraryLegacyDevicesRemoteController_beginRemoteUIRequestWithPresenter___block_invoke_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getAAUIGrandSlamRemoteUIPresenterClass_softClass;
  v13 = getAAUIGrandSlamRemoteUIPresenterClass_softClass;
  if (!getAAUIGrandSlamRemoteUIPresenterClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke;
    v9[3] = &unk_1E774BD00;
    v9[4] = &v10;
    __getAAUIGrandSlamRemoteUIPresenterClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = [[v3 alloc] initWithAccountManager:*(*(a1 + 32) + 96) presenter:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = v5;

  [*(*(a1 + 32) + 112) setDelegate:WeakRetained];
  v8 = objc_alloc_init(MEMORY[0x1E696AD68]);
  [v8 setURL:*(a1 + 48)];
  [v8 setHTTPMethod:@"GET"];
  [*(*(a1 + 32) + 112) loadRequest:v8 completion:0];
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = PXSharedLibraryLegacyDevicesRemoteController;
  v2 = [(PXSharedLibraryLegacyDevicesRemoteController *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v4 = getAIDAAccountManagerClass_softClass;
    v16 = getAIDAAccountManagerClass_softClass;
    if (!getAIDAAccountManagerClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getAIDAAccountManagerClass_block_invoke;
      v12[3] = &unk_1E774BD00;
      v12[4] = &v13;
      __getAIDAAccountManagerClass_block_invoke(v12);
      v4 = v14[3];
    }

    v5 = v4;
    _Block_object_dispose(&v13, 8);
    v6 = [[v4 alloc] initWithAccountStore:v3];
    accountManager = v2->_accountManager;
    v2->_accountManager = v6;

    [(AIDAAccountManager *)v2->_accountManager setDelegate:v2];
    v8 = [v3 cachedPrimaryAppleAccount];
    currentAccount = v2->_currentAccount;
    v2->_currentAccount = v8;
  }

  return v2;
}

- (PXSharedLibraryLegacyDevicesRemoteController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryLegacyDevicesRemoteController+iOS.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXSharedLibraryLegacyDevicesRemoteController init]"}];

  abort();
}

+ (id)legacyDevicesRemoteControllerIfEnabledWithSharedLibraryOrPreviewPresent:(BOOL)a3
{
  v4 = _os_feature_enabled_impl();
  v5 = 0;
  if (v4 && !a3)
  {
    v5 = [[PXSharedLibraryLegacyDevicesRemoteController alloc] _init];
  }

  return v5;
}

@end