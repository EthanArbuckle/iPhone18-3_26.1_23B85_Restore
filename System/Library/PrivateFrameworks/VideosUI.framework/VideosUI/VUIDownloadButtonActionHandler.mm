@interface VUIDownloadButtonActionHandler
- (BOOL)_shouldShowRenewalOption;
- (BOOL)ignoreDownloadActionIfInRetailDemoMode;
- (UIView)parentView;
- (UIViewController)presentingViewController;
- (VUIDownloadButtonActionHandler)initWithViewModel:(id)a3;
- (id)_localize:(id)a3 token:(id)a4 value:(id)a5;
- (id)_renewalAlertAction;
- (id)topPresentedViewController;
- (void)_askUserAndDeleteIfNeeded;
- (void)_checkForAccountSignInWithCompletionHandler:(id)a3;
- (void)_dismissConfirmationAlertController;
- (void)_handleAppDidEnterBackgroundNotification:(id)a3;
- (void)_presentSeasonsDownloadList;
- (void)_showDownloadingInfoDialog;
- (void)_startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:(BOOL)a3 prefer3DOrImmersiveDownload:(BOOL)a4;
- (void)performAction:(BOOL)a3 confirmBeforeStopDownloading:(BOOL)a4 prefer3DOrImmersiveDownload:(BOOL)a5;
@end

@implementation VUIDownloadButtonActionHandler

- (VUIDownloadButtonActionHandler)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIDownloadButtonActionHandler;
  v6 = [(VUIDownloadButtonActionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

- (void)performAction:(BOOL)a3 confirmBeforeStopDownloading:(BOOL)a4 prefer3DOrImmersiveDownload:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v44[4] = *MEMORY[0x1E69E9840];
  if (![(VUIDownloadButtonActionHandler *)self ignoreDownloadActionIfInRetailDemoMode])
  {
    if (a3)
    {
      v9 = @"LibraryButton_Download";
    }

    else
    {
      v10 = [(VUIDownloadButtonActionHandler *)self viewModel];
      v11 = [v10 videosPlayable];
      v12 = [v11 canonicalID];
      v13 = v12;
      if (v12)
      {
        v9 = v12;
      }

      else
      {
        v14 = [(VUIDownloadButtonActionHandler *)self viewModel];
        v15 = [v14 canonicalId];
        v16 = v15;
        v17 = @"BannerButton_Download";
        if (v15)
        {
          v17 = v15;
        }

        v9 = v17;
      }
    }

    v43[0] = @"actionType";
    v43[1] = @"targetType";
    v44[0] = @"Download";
    v44[1] = @"DownloadButton";
    v44[2] = v9;
    v43[2] = @"targetId";
    v43[3] = @"actionDetails";
    v41 = @"CurrentState";
    v18 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v19 = [v18 downloadStateStringValue];
    v42 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v44[3] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];

    v22 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v23 = [v22 locationPosition];

    if (v23)
    {
      v24 = [v21 mutableCopy];
      [v24 setObject:v23 forKeyedSubscript:@"locationPosition"];
      v25 = [v24 copy];

      v21 = v25;
    }

    v26 = +[VUIMetricsController sharedInstance];
    [v26 recordClick:v21];

    v27 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v28 = [v27 downloadType];

    if (v28 == 1)
    {
      v29 = VUIDefaultLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Showing seasons list.", v40, 2u);
      }

      [(VUIDownloadButtonActionHandler *)self _presentSeasonsDownloadList];
      goto LABEL_32;
    }

    v30 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v31 = [v30 downloadType];

    if (v31 == 2)
    {
      v32 = VUIDefaultLogObject();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
LABEL_31:

        goto LABEL_32;
      }

      *v40 = 0;
      v33 = "Requested to show episode list but this is an error condition.";
LABEL_19:
      _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, v33, v40, 2u);
      goto LABEL_31;
    }

    v34 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v35 = [v34 downloadState];

    if (v35 <= 5)
    {
      if (((1 << v35) & 0x26) == 0)
      {
        if (((1 << v35) & 9) != 0)
        {
          v36 = [(VUIDownloadButtonActionHandler *)self viewModel];
          v37 = [v36 downloadExpirationDate];

          if (v37 && ([v37 vui_isInThePast] & 1) != 0)
          {
            [(VUIDownloadButtonActionHandler *)self _askUserAndDeleteIfNeeded];
          }

          else
          {
            [(VUIDownloadButtonActionHandler *)self _startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:1 prefer3DOrImmersiveDownload:v5];
          }

          goto LABEL_32;
        }

        if (!+[VUIUtilities isInRetailDemoMode])
        {
          [(VUIDownloadButtonActionHandler *)self _askUserAndDeleteIfNeeded];
          goto LABEL_32;
        }

        v32 = VUIDefaultLogObject();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *v40 = 0;
        v33 = "application running in demo mode so not showing delete menu from download button.";
        goto LABEL_19;
      }

      if (!v6)
      {
        v38 = [(VUIDownloadButtonActionHandler *)self acknowledgementDownloadCancelledBlock];

        if (v38)
        {
          v39 = [(VUIDownloadButtonActionHandler *)self acknowledgementDownloadCancelledBlock];
          v39[2]();
        }

        v32 = [(VUIDownloadButtonActionHandler *)self viewModel];
        [v32 stopDownload];
        goto LABEL_31;
      }

      [(VUIDownloadButtonActionHandler *)self _showDownloadingInfoDialog];
    }

LABEL_32:
  }
}

- (BOOL)ignoreDownloadActionIfInRetailDemoMode
{
  if (+[VUIUtilities isInRetailDemoMode])
  {
    v3 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v4 = [v3 videosPlayable];

    if (v4)
    {
      v4 = [(VUIDownloadButtonActionHandler *)self viewModel];
      v5 = [v4 videosPlayable];
      v6 = [v5 channelName];

      v7 = [v6 length];
      LOBYTE(v4) = v7 != 0;
      if (v7)
      {
        v8 = +[VUILocalizationManager sharedInstance];
        v9 = [v8 localizedStringForKey:@"TV.StoreDemo.DownloadAlertTitle"];
        v10 = [(VUIDownloadButtonActionHandler *)self _localize:v9 token:@"channel" value:v6];

        v11 = +[VUILocalizationManager sharedInstance];
        v12 = [v11 localizedStringForKey:@"TV.StoreDemo.DownloadAlertDescription"];
        v13 = [(VUIDownloadButtonActionHandler *)self _localize:v12 token:@"channel" value:v6];

        v14 = [VUIAlertController vui_alertControllerWithTitle:v10 message:v13 preferredStyle:1];
        v15 = +[VUILocalizationManager sharedInstance];
        v16 = [v15 localizedStringForKey:@"OK"];
        v17 = [VUIAlertAction vui_actionWithTitle:v16 style:1 handler:0];

        [v14 vui_addAction:v17];
        v18 = +[VUIApplicationRouter topPresentedViewController];
        [v18 presentViewController:v14 animated:1 completion:0];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_askUserAndDeleteIfNeeded
{
  v3 = [VUIAlertController vui_alertControllerWithTitle:&stru_1F5DB25C0 message:&stru_1F5DB25C0 preferredStyle:0];
  v4 = [MEMORY[0x1E69DF6F0] isPad];
  v5 = @"REMOVE_DOWNLOAD_ALERT_TITLE_IPHONE";
  if (v4)
  {
    v5 = @"REMOVE_DOWNLOAD_ALERT_TITLE_IPAD";
  }

  v6 = v5;
  v7 = +[VUILocalizationManager sharedInstance];
  v55 = [v7 localizedStringForKey:v6];

  v8 = +[VUILocalizationManager sharedInstance];
  v9 = [v8 localizedStringForKey:@"CANCEL"];
  v10 = [VUIAlertAction vui_actionWithTitle:v9 style:1 handler:0];

  v54 = v10;
  [v3 vui_addAction:v10];
  objc_initWeak(&location, self);
  if ([(VUIDownloadButtonActionHandler *)self _shouldShowRenewalOption])
  {
    v11 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v12 = [v11 downloadExpirationDate];

    if (!v12)
    {
LABEL_22:

      goto LABEL_23;
    }

    if ([v12 vui_isInThePast])
    {
      if ([MEMORY[0x1E69DF6F0] isVision])
      {
        v13 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_VISION_PRO";
      }

      else
      {
        v20 = [MEMORY[0x1E69DF6F0] isPad];
        v13 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPHONE";
        if (v20)
        {
          v13 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPAD";
        }
      }

      v19 = v13;

      v21 = [(VUIDownloadButtonActionHandler *)self viewModel];
      v22 = [v21 brandName];

      v23 = MEMORY[0x1E696AEC0];
      v24 = +[VUILocalizationManager sharedInstance];
      v25 = [v24 localizedStringForKey:v19];
      v26 = [v23 stringWithValidatedFormat:v25 validFormatSpecifiers:@"%@" error:0, v22];

      v18 = [(VUIDownloadButtonActionHandler *)self _renewalAlertAction];
      v15 = v22;
      [v3 vui_addAction:v18];
      v55 = v26;
    }

    else
    {
      v14 = [(VUIDownloadButtonActionHandler *)self viewModel];
      v15 = [v14 brandID];

      if (![v15 length])
      {
LABEL_21:

        goto LABEL_22;
      }

      v16 = +[VUIFeaturesConfiguration sharedInstance];
      v17 = [v16 downloadConfig];
      v18 = [v17 blacklistedEarlyRenewalBrands];

      if (v18 && ([v18 containsObject:v15] & 1) != 0)
      {
        v19 = v6;
      }

      else
      {
        if ([MEMORY[0x1E69DF6F0] isVision])
        {
          v27 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_VISION_PRO";
        }

        else
        {
          v28 = [MEMORY[0x1E69DF6F0] isPad];
          v27 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPHONE";
          if (v28)
          {
            v27 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPAD";
          }
        }

        v19 = v27;

        v29 = [(VUIDownloadButtonActionHandler *)self viewModel];
        v30 = [v29 brandName];

        v31 = MEMORY[0x1E696AEC0];
        v32 = +[VUILocalizationManager sharedInstance];
        v33 = [v32 localizedStringForKey:v19];
        v53 = [v31 stringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:0, v30];

        v34 = [(VUIDownloadButtonActionHandler *)self _renewalAlertAction];
        [v3 vui_addAction:v34];

        v55 = v53;
      }
    }

    v6 = v19;
    goto LABEL_21;
  }

LABEL_23:
  v35 = +[VUILocalizationManager sharedInstance];
  v36 = [v35 localizedStringForKey:@"REMOVE_DOWNLOAD"];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __59__VUIDownloadButtonActionHandler__askUserAndDeleteIfNeeded__block_invoke;
  v56[3] = &unk_1E87342A0;
  objc_copyWeak(&v57, &location);
  v37 = [VUIAlertAction vui_actionWithTitle:v36 style:2 handler:v56];

  [v3 vui_addAction:v37];
  [v3 setVuiTitle:v55];
  v38 = [(VUIDownloadButtonActionHandler *)self parentView];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [v3 popoverPresentationController];
  [v47 setSourceView:v38];
  [v47 setSourceRect:{v40, v42, v44, v46}];
  v48 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_153];
  [v47 setBackgroundColor:v48];
  [v47 setPermittedArrowDirections:15];
  v49 = [(VUIDownloadButtonActionHandler *)self topPresentedViewController];
  [(VUIDownloadButtonActionHandler *)self setDeleteConfirmationAlertController:v3];
  v50 = [MEMORY[0x1E696AD88] defaultCenter];
  [v50 addObserver:self selector:sel__handleAppDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];

  v51 = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];

  if (v51)
  {
    v52 = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];
    (v52)[2](v52, v3);
  }

  else
  {
    [v3 vui_presentAlertFromPresentingController:v49 animated:1 completion:0];
  }

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
}

void __59__VUIDownloadButtonActionHandler__askUserAndDeleteIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained acknowledgementDownloadDeletedBlock];

    if (v2)
    {
      v3 = [v5 acknowledgementDownloadDeletedBlock];
      v3[2]();
    }

    v4 = [v5 viewModel];
    [v4 deleteDownload];

    WeakRetained = v5;
  }
}

id __59__VUIDownloadButtonActionHandler__askUserAndDeleteIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v2 = ;

  return v2;
}

- (void)_showDownloadingInfoDialog
{
  objc_initWeak(&location, self);
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"DOWNLOADING"];

  v5 = [VUIAlertController vui_alertControllerWithTitle:v4 message:&stru_1F5DB25C0 preferredStyle:1];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"REMOVE_DOWNLOAD"];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __60__VUIDownloadButtonActionHandler__showDownloadingInfoDialog__block_invoke;
  v17 = &unk_1E87342A0;
  objc_copyWeak(&v18, &location);
  v8 = [VUIAlertAction vui_actionWithTitle:v7 style:2 handler:&v14];

  [v5 vui_addAction:{v8, v14, v15, v16, v17}];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"CANCEL"];
  v11 = [VUIAlertAction vui_actionWithTitle:v10 style:1 handler:0];

  [v5 vui_addAction:v11];
  v12 = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];

  if (v12)
  {
    v13 = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];
    (v13)[2](v13, v5);
  }

  else
  {
    v13 = [(VUIDownloadButtonActionHandler *)self topPresentedViewController];
    [v5 vui_presentAlertFromPresentingController:v13 animated:1 completion:0];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __60__VUIDownloadButtonActionHandler__showDownloadingInfoDialog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained acknowledgementDownloadDeletedBlock];

    if (v2)
    {
      v3 = [v5 acknowledgementDownloadDeletedBlock];
      v3[2]();
    }

    v4 = [v5 viewModel];
    [v4 deleteDownload];

    WeakRetained = v5;
  }
}

- (id)_renewalAlertAction
{
  v3 = [(VUIDownloadButtonActionHandler *)self viewModel];
  v4 = [v3 allowsManualDownloadRenewal];

  v5 = +[VUILocalizationManager sharedInstance];
  v6 = v5;
  if (v4)
  {
    v7 = @"RENEW_DOWNLOAD";
  }

  else
  {
    v7 = @"DOWNLOAD_AGAIN_BUTTON_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__VUIDownloadButtonActionHandler__renewalAlertAction__block_invoke;
  v11[3] = &unk_1E8736EF8;
  objc_copyWeak(&v12, &location);
  v13 = v4;
  v9 = [VUIAlertAction vui_actionWithTitle:v8 style:0 handler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __53__VUIDownloadButtonActionHandler__renewalAlertAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      v3 = [WeakRetained viewModel];
      [v3 fetchNewKeysForDownloadedVideo];
    }

    else
    {
      [WeakRetained _startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1];
    }

    WeakRetained = v4;
  }
}

- (BOOL)_shouldShowRenewalOption
{
  v2 = [(VUIDownloadButtonActionHandler *)self viewModel];
  v3 = [v2 renewsOfflineKeysAutomatically];
  v4 = [v2 downloadExpirationDate];
  v5 = [v2 availabilityEndDate];
  if (v4)
  {
    v6 = [v4 vui_isInThePast];
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  if (!v6)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_6:
  if (v5 && ![v5 vui_isInTheFuture])
  {
    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (void)_startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:(BOOL)a3 prefer3DOrImmersiveDownload:(BOOL)a4
{
  v7 = [(VUIDownloadButtonActionHandler *)self presentingViewController];
  if (v7)
  {
    v8 = v7;
LABEL_5:
    objc_initWeak(&location, self);
    v12 = [(VUIDownloadButtonActionHandler *)self viewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __124__VUIDownloadButtonActionHandler__startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure_prefer3DOrImmersiveDownload___block_invoke;
    v13[3] = &unk_1E8736F20;
    objc_copyWeak(&v14, &location);
    v15 = a3;
    v16 = a4;
    [v12 preflightPresentingViewController:v8 completion:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);

    return;
  }

  v9 = +[VUIInterfaceFactory sharedInstance];
  v8 = [v9 controllerPresenter];

  if (v8)
  {
    goto LABEL_5;
  }

  v10 = +[VUITVAppLauncher sharedInstance];
  v11 = [v10 appController];

  v8 = [v11 navigationController];

  if (v8)
  {
    goto LABEL_5;
  }
}

void __124__VUIDownloadButtonActionHandler__startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure_prefer3DOrImmersiveDownload___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v10 = WeakRetained;
    v9 = [WeakRetained viewModel];
    [v9 startDownloadAllowingCellular:a3 shouldMarkAsDeletedOnCancellationOrFailure:*(a1 + 40) quality:a4 prefer3DOrImmersiveDownload:*(a1 + 41)];

    WeakRetained = v10;
  }
}

- (void)_checkForAccountSignInWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (+[VUIAuthenticationManager userHasActiveAccount])
  {
    v3[2](v3, 1);
  }

  else
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "User not logged in, asking to Auth before downloading", buf, 2u);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78__VUIDownloadButtonActionHandler__checkForAccountSignInWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E872E470;
    v6 = v3;
    [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v5];
  }
}

void __78__VUIDownloadButtonActionHandler__checkForAccountSignInWithCompletionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v2 = __78__VUIDownloadButtonActionHandler__checkForAccountSignInWithCompletionHandler___block_invoke_2;
  v3 = &unk_1E872D7E0;
  v4 = *(a1 + 32);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_presentSeasonsDownloadList
{
  v9 = [(VUIDownloadButtonActionHandler *)self parentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v9;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 seasonDownloadDataSourceProvider];
  v5 = +[VUIInterfaceFactory sharedInstance];
  v6 = [v5 seasonsControllerCreator];

  if (v4 && v6)
  {
    v7 = [v6 seasonsDownloadViewControllerWith:v4];
    if (v7)
    {
      v8 = [(VUIDownloadButtonActionHandler *)self topPresentedViewController];
      [v8 presentViewController:v7 animated:1 completion:0];
    }
  }
}

- (void)_handleAppDidEnterBackgroundNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DF7E0] object:0];

  [(VUIDownloadButtonActionHandler *)self _dismissConfirmationAlertController];
}

- (void)_dismissConfirmationAlertController
{
  v3 = [(VUIDownloadButtonActionHandler *)self deleteConfirmationAlertController];

  if (v3)
  {
    v4 = [(VUIDownloadButtonActionHandler *)self deleteConfirmationAlertController];
    [v4 vui_dismissViewControllerAnimated:1 completion:0];

    [(VUIDownloadButtonActionHandler *)self setDeleteConfirmationAlertController:0];
  }
}

- (id)_localize:(id)a3 token:(id)a4 value:(id)a5
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a5;
  v9 = a3;
  v10 = [v7 stringWithFormat:@"@@%@@@", a4];
  v11 = [v9 stringByReplacingOccurrencesOfString:v10 withString:v8];

  return v11;
}

- (id)topPresentedViewController
{
  v2 = [(VUIDownloadButtonActionHandler *)self presentingViewController];
  if (!v2)
  {
    v2 = +[VUIApplicationRouter topPresentedViewController];
  }

  return v2;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (UIView)parentView
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);

  return WeakRetained;
}

@end