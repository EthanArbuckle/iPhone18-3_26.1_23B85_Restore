@interface VUIDownloadButtonActionHandler
- (BOOL)_shouldShowRenewalOption;
- (BOOL)ignoreDownloadActionIfInRetailDemoMode;
- (UIView)parentView;
- (UIViewController)presentingViewController;
- (VUIDownloadButtonActionHandler)initWithViewModel:(id)model;
- (id)_localize:(id)_localize token:(id)token value:(id)value;
- (id)_renewalAlertAction;
- (id)topPresentedViewController;
- (void)_askUserAndDeleteIfNeeded;
- (void)_checkForAccountSignInWithCompletionHandler:(id)handler;
- (void)_dismissConfirmationAlertController;
- (void)_handleAppDidEnterBackgroundNotification:(id)notification;
- (void)_presentSeasonsDownloadList;
- (void)_showDownloadingInfoDialog;
- (void)_startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download;
- (void)performAction:(BOOL)action confirmBeforeStopDownloading:(BOOL)downloading prefer3DOrImmersiveDownload:(BOOL)download;
@end

@implementation VUIDownloadButtonActionHandler

- (VUIDownloadButtonActionHandler)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = VUIDownloadButtonActionHandler;
  v6 = [(VUIDownloadButtonActionHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
  }

  return v7;
}

- (void)performAction:(BOOL)action confirmBeforeStopDownloading:(BOOL)downloading prefer3DOrImmersiveDownload:(BOOL)download
{
  downloadCopy = download;
  downloadingCopy = downloading;
  v44[4] = *MEMORY[0x1E69E9840];
  if (![(VUIDownloadButtonActionHandler *)self ignoreDownloadActionIfInRetailDemoMode])
  {
    if (action)
    {
      v9 = @"LibraryButton_Download";
    }

    else
    {
      viewModel = [(VUIDownloadButtonActionHandler *)self viewModel];
      videosPlayable = [viewModel videosPlayable];
      canonicalID = [videosPlayable canonicalID];
      v13 = canonicalID;
      if (canonicalID)
      {
        v9 = canonicalID;
      }

      else
      {
        viewModel2 = [(VUIDownloadButtonActionHandler *)self viewModel];
        canonicalId = [viewModel2 canonicalId];
        v16 = canonicalId;
        v17 = @"BannerButton_Download";
        if (canonicalId)
        {
          v17 = canonicalId;
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
    viewModel3 = [(VUIDownloadButtonActionHandler *)self viewModel];
    downloadStateStringValue = [viewModel3 downloadStateStringValue];
    v42 = downloadStateStringValue;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v44[3] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];

    viewModel4 = [(VUIDownloadButtonActionHandler *)self viewModel];
    locationPosition = [viewModel4 locationPosition];

    if (locationPosition)
    {
      v24 = [v21 mutableCopy];
      [v24 setObject:locationPosition forKeyedSubscript:@"locationPosition"];
      v25 = [v24 copy];

      v21 = v25;
    }

    v26 = +[VUIMetricsController sharedInstance];
    [v26 recordClick:v21];

    viewModel5 = [(VUIDownloadButtonActionHandler *)self viewModel];
    downloadType = [viewModel5 downloadType];

    if (downloadType == 1)
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

    viewModel6 = [(VUIDownloadButtonActionHandler *)self viewModel];
    downloadType2 = [viewModel6 downloadType];

    if (downloadType2 == 2)
    {
      viewModel9 = VUIDefaultLogObject();
      if (!os_log_type_enabled(viewModel9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_31:

        goto LABEL_32;
      }

      *v40 = 0;
      v33 = "Requested to show episode list but this is an error condition.";
LABEL_19:
      _os_log_impl(&dword_1E323F000, viewModel9, OS_LOG_TYPE_DEFAULT, v33, v40, 2u);
      goto LABEL_31;
    }

    viewModel7 = [(VUIDownloadButtonActionHandler *)self viewModel];
    downloadState = [viewModel7 downloadState];

    if (downloadState <= 5)
    {
      if (((1 << downloadState) & 0x26) == 0)
      {
        if (((1 << downloadState) & 9) != 0)
        {
          viewModel8 = [(VUIDownloadButtonActionHandler *)self viewModel];
          downloadExpirationDate = [viewModel8 downloadExpirationDate];

          if (downloadExpirationDate && ([downloadExpirationDate vui_isInThePast] & 1) != 0)
          {
            [(VUIDownloadButtonActionHandler *)self _askUserAndDeleteIfNeeded];
          }

          else
          {
            [(VUIDownloadButtonActionHandler *)self _startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:1 prefer3DOrImmersiveDownload:downloadCopy];
          }

          goto LABEL_32;
        }

        if (!+[VUIUtilities isInRetailDemoMode])
        {
          [(VUIDownloadButtonActionHandler *)self _askUserAndDeleteIfNeeded];
          goto LABEL_32;
        }

        viewModel9 = VUIDefaultLogObject();
        if (!os_log_type_enabled(viewModel9, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *v40 = 0;
        v33 = "application running in demo mode so not showing delete menu from download button.";
        goto LABEL_19;
      }

      if (!downloadingCopy)
      {
        acknowledgementDownloadCancelledBlock = [(VUIDownloadButtonActionHandler *)self acknowledgementDownloadCancelledBlock];

        if (acknowledgementDownloadCancelledBlock)
        {
          acknowledgementDownloadCancelledBlock2 = [(VUIDownloadButtonActionHandler *)self acknowledgementDownloadCancelledBlock];
          acknowledgementDownloadCancelledBlock2[2]();
        }

        viewModel9 = [(VUIDownloadButtonActionHandler *)self viewModel];
        [viewModel9 stopDownload];
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
    viewModel = [(VUIDownloadButtonActionHandler *)self viewModel];
    videosPlayable = [viewModel videosPlayable];

    if (videosPlayable)
    {
      videosPlayable = [(VUIDownloadButtonActionHandler *)self viewModel];
      v4VideosPlayable = [videosPlayable videosPlayable];
      channelName = [v4VideosPlayable channelName];

      v7 = [channelName length];
      LOBYTE(videosPlayable) = v7 != 0;
      if (v7)
      {
        v8 = +[VUILocalizationManager sharedInstance];
        v9 = [v8 localizedStringForKey:@"TV.StoreDemo.DownloadAlertTitle"];
        v10 = [(VUIDownloadButtonActionHandler *)self _localize:v9 token:@"channel" value:channelName];

        v11 = +[VUILocalizationManager sharedInstance];
        v12 = [v11 localizedStringForKey:@"TV.StoreDemo.DownloadAlertDescription"];
        v13 = [(VUIDownloadButtonActionHandler *)self _localize:v12 token:@"channel" value:channelName];

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
    LOBYTE(videosPlayable) = 0;
  }

  return videosPlayable;
}

- (void)_askUserAndDeleteIfNeeded
{
  v3 = [VUIAlertController vui_alertControllerWithTitle:&stru_1F5DB25C0 message:&stru_1F5DB25C0 preferredStyle:0];
  isPad = [MEMORY[0x1E69DF6F0] isPad];
  v5 = @"REMOVE_DOWNLOAD_ALERT_TITLE_IPHONE";
  if (isPad)
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
    viewModel = [(VUIDownloadButtonActionHandler *)self viewModel];
    downloadExpirationDate = [viewModel downloadExpirationDate];

    if (!downloadExpirationDate)
    {
LABEL_22:

      goto LABEL_23;
    }

    if ([downloadExpirationDate vui_isInThePast])
    {
      if ([MEMORY[0x1E69DF6F0] isVision])
      {
        v13 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_VISION_PRO";
      }

      else
      {
        isPad2 = [MEMORY[0x1E69DF6F0] isPad];
        v13 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPHONE";
        if (isPad2)
        {
          v13 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPAD";
        }
      }

      v19 = v13;

      viewModel2 = [(VUIDownloadButtonActionHandler *)self viewModel];
      brandName = [viewModel2 brandName];

      v23 = MEMORY[0x1E696AEC0];
      v24 = +[VUILocalizationManager sharedInstance];
      v25 = [v24 localizedStringForKey:v19];
      v26 = [v23 stringWithValidatedFormat:v25 validFormatSpecifiers:@"%@" error:0, brandName];

      _renewalAlertAction = [(VUIDownloadButtonActionHandler *)self _renewalAlertAction];
      brandID = brandName;
      [v3 vui_addAction:_renewalAlertAction];
      v55 = v26;
    }

    else
    {
      viewModel3 = [(VUIDownloadButtonActionHandler *)self viewModel];
      brandID = [viewModel3 brandID];

      if (![brandID length])
      {
LABEL_21:

        goto LABEL_22;
      }

      v16 = +[VUIFeaturesConfiguration sharedInstance];
      downloadConfig = [v16 downloadConfig];
      _renewalAlertAction = [downloadConfig blacklistedEarlyRenewalBrands];

      if (_renewalAlertAction && ([_renewalAlertAction containsObject:brandID] & 1) != 0)
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
          isPad3 = [MEMORY[0x1E69DF6F0] isPad];
          v27 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPHONE";
          if (isPad3)
          {
            v27 = @"DOWNLOAD_RENEW_TO_KEEP_THIS_DOWNLOAD_MESSAGE_IPAD";
          }
        }

        v19 = v27;

        viewModel4 = [(VUIDownloadButtonActionHandler *)self viewModel];
        brandName2 = [viewModel4 brandName];

        v31 = MEMORY[0x1E696AEC0];
        v32 = +[VUILocalizationManager sharedInstance];
        v33 = [v32 localizedStringForKey:v19];
        v53 = [v31 stringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:0, brandName2];

        _renewalAlertAction2 = [(VUIDownloadButtonActionHandler *)self _renewalAlertAction];
        [v3 vui_addAction:_renewalAlertAction2];

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
  parentView = [(VUIDownloadButtonActionHandler *)self parentView];
  [parentView bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  popoverPresentationController = [v3 popoverPresentationController];
  [popoverPresentationController setSourceView:parentView];
  [popoverPresentationController setSourceRect:{v40, v42, v44, v46}];
  v48 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_153];
  [popoverPresentationController setBackgroundColor:v48];
  [popoverPresentationController setPermittedArrowDirections:15];
  topPresentedViewController = [(VUIDownloadButtonActionHandler *)self topPresentedViewController];
  [(VUIDownloadButtonActionHandler *)self setDeleteConfirmationAlertController:v3];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleAppDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];

  presentAlertBlock = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];

  if (presentAlertBlock)
  {
    presentAlertBlock2 = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];
    (presentAlertBlock2)[2](presentAlertBlock2, v3);
  }

  else
  {
    [v3 vui_presentAlertFromPresentingController:topPresentedViewController animated:1 completion:0];
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
  presentAlertBlock = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];

  if (presentAlertBlock)
  {
    presentAlertBlock2 = [(VUIDownloadButtonActionHandler *)self presentAlertBlock];
    (presentAlertBlock2)[2](presentAlertBlock2, v5);
  }

  else
  {
    presentAlertBlock2 = [(VUIDownloadButtonActionHandler *)self topPresentedViewController];
    [v5 vui_presentAlertFromPresentingController:presentAlertBlock2 animated:1 completion:0];
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
  viewModel = [(VUIDownloadButtonActionHandler *)self viewModel];
  allowsManualDownloadRenewal = [viewModel allowsManualDownloadRenewal];

  v5 = +[VUILocalizationManager sharedInstance];
  v6 = v5;
  if (allowsManualDownloadRenewal)
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
  v13 = allowsManualDownloadRenewal;
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
  viewModel = [(VUIDownloadButtonActionHandler *)self viewModel];
  renewsOfflineKeysAutomatically = [viewModel renewsOfflineKeysAutomatically];
  downloadExpirationDate = [viewModel downloadExpirationDate];
  availabilityEndDate = [viewModel availabilityEndDate];
  if (downloadExpirationDate)
  {
    vui_isInThePast = [downloadExpirationDate vui_isInThePast];
    if (!renewsOfflineKeysAutomatically)
    {
      goto LABEL_6;
    }
  }

  else
  {
    vui_isInThePast = 0;
    if (!renewsOfflineKeysAutomatically)
    {
      goto LABEL_6;
    }
  }

  if (!vui_isInThePast)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_6:
  if (availabilityEndDate && ![availabilityEndDate vui_isInTheFuture])
  {
    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (void)_startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download
{
  presentingViewController = [(VUIDownloadButtonActionHandler *)self presentingViewController];
  if (presentingViewController)
  {
    controllerPresenter = presentingViewController;
LABEL_5:
    objc_initWeak(&location, self);
    viewModel = [(VUIDownloadButtonActionHandler *)self viewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __124__VUIDownloadButtonActionHandler__startDownloadIfPossibleRemovingFromUIOnCancellationOrFailure_prefer3DOrImmersiveDownload___block_invoke;
    v13[3] = &unk_1E8736F20;
    objc_copyWeak(&v14, &location);
    failureCopy = failure;
    downloadCopy = download;
    [viewModel preflightPresentingViewController:controllerPresenter completion:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);

    return;
  }

  v9 = +[VUIInterfaceFactory sharedInstance];
  controllerPresenter = [v9 controllerPresenter];

  if (controllerPresenter)
  {
    goto LABEL_5;
  }

  v10 = +[VUITVAppLauncher sharedInstance];
  appController = [v10 appController];

  controllerPresenter = [appController navigationController];

  if (controllerPresenter)
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

- (void)_checkForAccountSignInWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[VUIAuthenticationManager userHasActiveAccount])
  {
    handlerCopy[2](handlerCopy, 1);
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
    v6 = handlerCopy;
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
  parentView = [(VUIDownloadButtonActionHandler *)self parentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentView;
  }

  else
  {
    v3 = 0;
  }

  seasonDownloadDataSourceProvider = [v3 seasonDownloadDataSourceProvider];
  v5 = +[VUIInterfaceFactory sharedInstance];
  seasonsControllerCreator = [v5 seasonsControllerCreator];

  if (seasonDownloadDataSourceProvider && seasonsControllerCreator)
  {
    v7 = [seasonsControllerCreator seasonsDownloadViewControllerWith:seasonDownloadDataSourceProvider];
    if (v7)
    {
      topPresentedViewController = [(VUIDownloadButtonActionHandler *)self topPresentedViewController];
      [topPresentedViewController presentViewController:v7 animated:1 completion:0];
    }
  }
}

- (void)_handleAppDidEnterBackgroundNotification:(id)notification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DF7E0] object:0];

  [(VUIDownloadButtonActionHandler *)self _dismissConfirmationAlertController];
}

- (void)_dismissConfirmationAlertController
{
  deleteConfirmationAlertController = [(VUIDownloadButtonActionHandler *)self deleteConfirmationAlertController];

  if (deleteConfirmationAlertController)
  {
    deleteConfirmationAlertController2 = [(VUIDownloadButtonActionHandler *)self deleteConfirmationAlertController];
    [deleteConfirmationAlertController2 vui_dismissViewControllerAnimated:1 completion:0];

    [(VUIDownloadButtonActionHandler *)self setDeleteConfirmationAlertController:0];
  }
}

- (id)_localize:(id)_localize token:(id)token value:(id)value
{
  v7 = MEMORY[0x1E696AEC0];
  valueCopy = value;
  _localizeCopy = _localize;
  token = [v7 stringWithFormat:@"@@%@@@", token];
  v11 = [_localizeCopy stringByReplacingOccurrencesOfString:token withString:valueCopy];

  return v11;
}

- (id)topPresentedViewController
{
  presentingViewController = [(VUIDownloadButtonActionHandler *)self presentingViewController];
  if (!presentingViewController)
  {
    presentingViewController = +[VUIApplicationRouter topPresentedViewController];
  }

  return presentingViewController;
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