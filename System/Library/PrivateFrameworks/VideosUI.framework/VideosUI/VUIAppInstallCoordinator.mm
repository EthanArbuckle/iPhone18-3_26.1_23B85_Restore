@interface VUIAppInstallCoordinator
- (BOOL)isEqual:(id)a3;
- (VUIAppInstallCoordinator)initWithChannelDetails:(id)a3 contentTitle:(id)a4;
- (unint64_t)hash;
- (void)_installAppWithChannel:(id)a3 punchoutURL:(id)a4 completion:(id)a5;
- (void)installAppWithPunchoutURL:(id)a3 completion:(id)a4;
@end

@implementation VUIAppInstallCoordinator

- (VUIAppInstallCoordinator)initWithChannelDetails:(id)a3 contentTitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = VUIAppInstallCoordinator;
  v9 = [(VUIAppInstallCoordinator *)&v14 init];
  v10 = v9;
  if (v7)
  {
    if (v9)
    {
      objc_storeStrong(&v9->_contentTitle, a4);
      objc_storeStrong(&v10->_channelDetails, a3);
      v11 = objc_opt_new();
      uuid = v10->_uuid;
      v10->_uuid = v11;
    }

    else
    {
      uuid = 0;
    }
  }

  else
  {
    uuid = v9;
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(VUIAppInstallCoordinator *)self uuid];
  v3 = [v2 UUIDString];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(VUIAppInstallCoordinator *)self uuid];
    v7 = [(VUIAppInstallCoordinator *)v5 uuid];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)installAppWithPunchoutURL:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(WLKChannelDetails *)self->_channelDetails appBundleIDs];
  v8 = [v7 firstObject];

  if ([v8 length])
  {
    [(VUIAppInstallCoordinator *)self _installAppWithChannel:self->_channelDetails punchoutURL:v9 completion:v6];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0, 0, 0);
  }
}

- (void)_installAppWithChannel:(id)a3 punchoutURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke;
    v15 = &unk_1E872DFB8;
    objc_copyWeak(&v19, &location);
    v16 = v8;
    v17 = v9;
    v18 = v11;
    v12 = v13;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v14(v12);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0, 0);
  }
}

void __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[VUIInterfaceFactory sharedInstance];
  v4 = [v3 controllerPresenter];

  if (!v4)
  {
    v4 = +[VUIApplicationRouter topMostVisibleViewController];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _os_feature_enabled_impl();
    v6 = [VUIAppInstallerViewController alloc];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v5)
    {
      v9 = [(VUIAppInstallerViewController *)v6 initWithVUIInstallable:v7 punchoutURL:v8];
    }

    else
    {
      v9 = [(VUIAppInstallerViewController *)v6 initWithInstallable:v7 punchoutURL:v8];
    }

    v10 = v9;
    v11 = [WeakRetained contentTitle];
    if (v11)
    {
      [v10 setLocalizedContentTitle:v11];
    }

    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 2)
    {
      v14 = 8;
    }

    else
    {
      v15 = [MEMORY[0x1E69DC938] currentDevice];
      v16 = [v15 userInterfaceIdiom] != 0;

      v14 = 2 * v16;
    }

    [v10 setModalPresentationStyle:v14];
    [WeakRetained setInstallerViewController:v10];
    v17 = VUIDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [*(a1 + 32) channelID];
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "Presenting app installation flow for channel ID: %@", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke_8;
    v20[3] = &unk_1E872DF68;
    v21 = *(a1 + 32);
    v22 = v10;
    v23 = WeakRetained;
    v24 = *(a1 + 48);
    v19 = v10;
    [v4 presentViewController:v19 animated:1 completion:v20];
  }
}

void __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke_8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) channelID];
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "Beginning app installation flow for channel ID: %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke_9;
  v10[3] = &unk_1E87326C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v7 = *(&v9 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v11 = v8;
  v12 = v9;
  [v4 beginInstallingAppWithProgressHandler:0 completion:v10];
}

void __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) channelID];
    *buf = 138412802;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "Completed app installation flow for channel ID: %@, success: %d isHeadless:%d", buf, 0x18u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v13 = __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke_10;
  v14 = &unk_1E872D768;
  v15 = *(a1 + 40);
  if (![MEMORY[0x1E696AF00] isMainThread])
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13(block);
  if (a2)
  {
LABEL_7:
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"VUIFederatedAppDidInstallNotification" object:*(a1 + 32) userInfo:0];
  }

LABEL_8:
  [*(a1 + 48) setInstallerViewController:0];
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3, v7);
  }
}

void __74__VUIAppInstallCoordinator__installAppWithChannel_punchoutURL_completion___block_invoke_10(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

@end