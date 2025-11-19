@interface TVRUINowPlayingController
+ (TVRUINowPlayingController)controllerWithHostingViewController:(id)a3;
- (BOOL)_nowPlayingViewControllerIsPresented;
- (BOOL)_shouldResetNowPlayingInfoTabSelection;
- (BOOL)_upNextViewControllerIsPresented;
- (BOOL)capellaInfoAvailable;
- (BOOL)isReadyForPresentationWithNowPlayingInfo:(id)a3;
- (TVRUINowPlayingController)initWithHostingViewController:(id)a3;
- (UINavigationController)nowPlayingNavController;
- (UINavigationController)upNextNavController;
- (id)_activeNavController;
- (id)actionButtonMenu;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (unint64_t)_layoutStyleForViewServiceLaunchContext:(int64_t)a3;
- (unint64_t)currentModalContext;
- (void)_dismissNowPlayingViewControllerAnimated:(BOOL)a3;
- (void)_dismissUpNextViewControllerAnimated:(BOOL)a3;
- (void)_infoButtonWasTappedForcingInfoTab:(BOOL)a3;
- (void)_invokeCommandHandlerWithCommand:(unint64_t)a3 paramDict:(id)a4;
- (void)_openURL:(id)a3;
- (void)_presentNowPlayingAnimated:(BOOL)a3 forceInfoTab:(BOOL)a4;
- (void)_presentUpNextAnimated:(BOOL)a3;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_refreshUpNextInfosIfNeeded;
- (void)_toggleDockAppearance;
- (void)_updateNowPlayingUIWithNowPlayingInfo:(id)a3;
- (void)dismissModalUI;
- (void)displayUpNext;
- (void)openURL:(id)a3;
- (void)presentMediaWithID:(id)a3 title:(id)a4 presentingViewController:(id)a5;
- (void)presentModalContext:(unint64_t)a3 animated:(BOOL)a4;
- (void)presentPersonWithID:(id)a3 name:(id)a4 image:(id)a5 presentingViewController:(id)a6;
- (void)setCommandHandler:(id)a3;
- (void)setDevice:(id)a3;
- (void)setNowPlayingInfo:(id)a3;
- (void)shareItem:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5;
@end

@implementation TVRUINowPlayingController

+ (TVRUINowPlayingController)controllerWithHostingViewController:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHostingViewController:v4];

  return v5;
}

- (TVRUINowPlayingController)initWithHostingViewController:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = TVRUINowPlayingController;
  v6 = [(TVRUINowPlayingController *)&v21 init];
  if (v6)
  {
    v7 = [v5 traitCollection];
    v6->_isPad = [v7 userInterfaceIdiom] == 1;

    v8 = objc_alloc_init(TVRUIUpNextController);
    upNextController = v6->_upNextController;
    v6->_upNextController = v8;

    objc_storeStrong(&v6->_hostingViewController, a3);
    v10 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v6->_styleProvider;
    v6->_styleProvider = v10;

    v12 = objc_alloc_init(TVRUINowPlayingViewController);
    [(TVRUINowPlayingController *)v6 setNowPlayingViewController:v12];

    v13 = [(TVRUINowPlayingController *)v6 styleProvider];
    v14 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [v14 setStyleProvider:v13];

    v15 = v6->_upNextController;
    v16 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [v16 setUpNextProvider:v15];

    v17 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [v17 setActionProvider:v6];

    v18 = v6->_styleProvider;
    v19 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [v19 setStyleProvider:v18];
  }

  return v6;
}

- (BOOL)capellaInfoAvailable
{
  v2 = self;
  v3 = [(TVRUINowPlayingController *)self nowPlayingInfo];
  LOBYTE(v2) = [(TVRUINowPlayingController *)v2 isReadyForPresentationWithNowPlayingInfo:v3];

  return v2;
}

- (void)setNowPlayingInfo:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 tvrui_isSimplePlaybackRateUpdate])
    {
      v7 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 playbackRate];
        *buf = 138412290;
        v62 = v8;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_INFO, "Updating playbackRate to %@", buf, 0xCu);
      }

      v9 = [v6 playbackRate];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setPlaybackRate:v9];
    }

    else if ([v6 tvrui_isSimplePlaybackStateUpdate])
    {
      v16 = [v6 playbackState];
      v17 = [v16 integerValue];

      v18 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
        *buf = 138412290;
        v62 = v19;
        _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_INFO, "Updating playbackState to %@", buf, 0xCu);
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setPlaybackState:v20];

      if (v17 == 3)
      {
        v48 = [MEMORY[0x277CCAB98] defaultCenter];
        [v48 postNotificationName:@"TVRUINowPlayingControllerMediaStoppedNotification" object:0];
      }

      else if (v17 == 1)
      {
        v21 = [MEMORY[0x277CCAB98] defaultCenter];
        [v21 postNotificationName:@"TVRUINowPlayingControllerMediaStartedNotification" object:0];
      }
    }

    else if ([v6 tvrui_isSimpleCaptionStateUpdate])
    {
      v29 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v6 captionsEnabled];
        v31 = [v6 hasValidCaptionOptions];
        *buf = 138412546;
        v62 = v30;
        v63 = 2112;
        v64 = v31;
        _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_INFO, "Updating captionsEnabled to %@; hasValidCaptionsOptoins to %@", buf, 0x16u);
      }

      v32 = [v6 captionsEnabled];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setCaptionsEnabled:v32];

      v33 = [v6 hasValidCaptionOptions];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setHasValidCaptionOptions:v33];
    }

    else
    {
      v38 = [v6 identifier];
      p_nowPlayingInfo = &self->_nowPlayingInfo;
      v40 = [(TVRCNowPlayingInfo *)self->_nowPlayingInfo identifier];
      v41 = [v38 isEqualToString:v40];

      if (v41)
      {
        v42 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo nowPlayingInfoMergedWithNowPlayingInfo:v6];
        v43 = *p_nowPlayingInfo;
        *p_nowPlayingInfo = v42;

        v44 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo metadata];
          v46 = [v45 canonicalID];
          *buf = 138412290;
          v62 = v46;
          _os_log_impl(&dword_26CFEB000, v44, OS_LOG_TYPE_INFO, "Updating nowPlayingInfo (identifiers remained the same; merging info) for canonicalID=%@", buf, 0xCu);
        }
      }

      else
      {
        v49 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [v6 identifier];
          v51 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo identifier];
          *buf = 138412546;
          v62 = v50;
          v63 = 2112;
          v64 = v51;
          _os_log_impl(&dword_26CFEB000, v49, OS_LOG_TYPE_INFO, "Updating nowPlayingInfo via identified change %@ -> %@", buf, 0x16u);
        }

        v52 = [v6 identifier];
        if ([v52 length])
        {
          v53 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo identifier];
          v54 = [v53 length] == 0;

          objc_storeStrong(&self->_nowPlayingInfo, a3);
          if (!v54)
          {
            +[TVRUIUpNextController refreshDelayOnMediaDidChangeTimeInterval];
            v56 = dispatch_time(0, (v55 * 1000000000.0));
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __47__TVRUINowPlayingController_setNowPlayingInfo___block_invoke;
            block[3] = &unk_279D87C20;
            block[4] = self;
            dispatch_after(v56, MEMORY[0x277D85CD0], block);
          }
        }

        else
        {

          objc_storeStrong(&self->_nowPlayingInfo, a3);
        }
      }
    }

    v10 = [v6 tvrui_effectiveCanonicalID];
    v11 = [v6 metadata];
    if (v11)
    {
      v12 = [v6 metadata];
      v13 = [v12 isMissingCriticalMetadata];

      v14 = v13 ^ 1;
    }

    else
    {
      v14 = 1;
    }

    if (([v10 length] == 0) | v14 & 1)
    {
      v22 = [(TVRUINowPlayingController *)self nowPlayingInfo];
      [(TVRUINowPlayingController *)self _updateNowPlayingUIWithNowPlayingInfo:v22];
    }

    else
    {
      v23 = [(TVRUINowPlayingController *)self cachedMediaInfo];
      v24 = [v23 identifier];
      v25 = [v10 isEqualToString:v24];

      if (v25)
      {
        v26 = [(TVRCNowPlayingInfo *)self->_nowPlayingInfo metadata];
        v27 = [(TVRUINowPlayingController *)self cachedMediaInfo];
        v28 = [v26 metadataMergedFromTVRCMediaInfo:v27];
        [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setMetadata:v28];

        [(TVRUINowPlayingController *)self _updateNowPlayingUIWithNowPlayingInfo:self->_nowPlayingInfo];
      }

      else
      {
        v34 = [(TVRUINowPlayingController *)self canonicalIDOfCurrentUTSRequest];
        v35 = [v10 isEqualToString:v34];

        v36 = _TVRUINowPlayingLog();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
        if (v35)
        {
          if (v37)
          {
            *buf = 138412290;
            v62 = v10;
            _os_log_impl(&dword_26CFEB000, v36, OS_LOG_TYPE_INFO, "Already requesting metadata from UTS for canonicalID=%@ ... will not request again.", buf, 0xCu);
          }
        }

        else
        {
          if (v37)
          {
            *buf = 138412290;
            v62 = v10;
            _os_log_impl(&dword_26CFEB000, v36, OS_LOG_TYPE_INFO, "Requesting metadata from UTS for canonicalID=%@", buf, 0xCu);
          }

          [(TVRUINowPlayingController *)self setCanonicalIDOfCurrentUTSRequest:v10];
          v47 = objc_alloc_init(MEMORY[0x277D6C540]);
          objc_initWeak(buf, self);
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __47__TVRUINowPlayingController_setNowPlayingInfo___block_invoke_13;
          v57[3] = &unk_279D89130;
          objc_copyWeak(&v59, buf);
          v57[4] = self;
          v58 = v10;
          [v47 requestForCanonicalID:v58 completion:v57];

          objc_destroyWeak(&v59);
          objc_destroyWeak(buf);
        }
      }
    }
  }

  else
  {
    nowPlayingInfo = self->_nowPlayingInfo;
    self->_nowPlayingInfo = 0;
  }
}

void __47__TVRUINowPlayingController_setNowPlayingInfo___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) upNextController];
  [v1 refresh];
}

void __47__TVRUINowPlayingController_setNowPlayingInfo___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCanonicalIDOfCurrentUTSRequest:0];
    if (v6)
    {
      v9 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __47__TVRUINowPlayingController_setNowPlayingInfo___block_invoke_13_cold_1();
      }
    }

    else
    {
      v10 = [*(a1 + 32) nowPlayingInfo];
      v11 = [v10 metadata];
      v12 = [v11 canonicalID];
      v13 = [v5 identifier];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        [*(a1 + 32) setCachedMediaInfo:v5];
        v15 = [*(a1 + 32) nowPlayingInfo];
        v9 = [v15 metadata];

        v16 = [v9 metadataMergedFromTVRCMediaInfo:v5];
        v17 = [*(a1 + 32) nowPlayingInfo];
        [v17 setMetadata:v16];

        v18 = *(a1 + 32);
        v19 = [v18 nowPlayingInfo];
        [v18 _updateNowPlayingUIWithNowPlayingInfo:v19];

        v20 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 40);
          v23 = 138412290;
          v24 = v21;
          _os_log_impl(&dword_26CFEB000, v20, OS_LOG_TYPE_INFO, "Received metadata from UTS for canonicalID=%@", &v23, 0xCu);
        }
      }

      else
      {
        v9 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 40);
          v23 = 138412290;
          v24 = v22;
          _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_INFO, "Received metadata from UTS but request canonicalID=%@ has changed so discarding info", &v23, 0xCu);
        }
      }
    }
  }
}

- (unint64_t)currentModalContext
{
  if ([(TVRUINowPlayingController *)self _upNextViewControllerIsPresented])
  {
    return 2;
  }

  else
  {
    return [(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented];
  }
}

- (void)shareItem:(id)a3 presentingViewController:(id)a4 sourceView:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v18 = a3;
  v10 = MEMORY[0x277CBEA60];
  v11 = a3;
  v12 = [v10 arrayWithObjects:&v18 count:1];
  v13 = objc_alloc(MEMORY[0x277D546D8]);

  v14 = [v12 copy];
  v15 = [v13 initWithActivityItems:v14 applicationActivities:0];

  if ([(TVRUINowPlayingController *)self isPad])
  {
    v16 = [v15 popoverPresentationController];
    [v16 setSourceView:v9];
    [v15 setOverrideUserInterfaceStyle:2];
    v17 = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [v17 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    [v8 presentViewController:v15 animated:1 completion:0];
  }
}

- (void)openURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([(TVRUINowPlayingController *)self isPad])
    {
      [(TVRUINowPlayingController *)self dismissModalUI];
    }

    [(TVRUINowPlayingController *)self _openURL:v5];
    v4 = v5;
  }
}

- (void)presentPersonWithID:(id)a3 name:(id)a4 image:(id)a5 presentingViewController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TVRUINowPlayingController *)self _activeNavController];
  if (v14 || ([v13 navigationController], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v16 = objc_alloc_init(TVRUIPersonViewController);
    [(TVRUIPersonViewController *)v16 setActionProvider:self];
    v17 = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIPersonViewController *)v16 setUpNextProvider:v17];

    [(TVRUIPersonViewController *)v16 setPersonName:v11];
    [(TVRUIPersonViewController *)v16 setPersonImage:v12];
    [(TVRUIPersonViewController *)v16 setPersonID:v10];
    [(TVRUIPersonViewController *)v15 pushViewController:v16 animated:1];
  }

  else
  {
    v15 = objc_alloc_init(TVRUIPersonViewController);
    [(TVRUIPersonViewController *)v15 setActionProvider:self];
    v18 = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIPersonViewController *)v15 setUpNextProvider:v18];

    [(TVRUIPersonViewController *)v15 setPersonName:v11];
    [(TVRUIPersonViewController *)v15 setPersonImage:v12];
    [(TVRUIPersonViewController *)v15 setPersonID:v10];
    v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
    [(TVRUIPersonViewController *)v16 setOverrideUserInterfaceStyle:2];
    if ([(TVRUINowPlayingController *)self isPad])
    {
      v19 = objc_alloc(MEMORY[0x277D751E0]);
      v20 = MEMORY[0x277D750C8];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __85__TVRUINowPlayingController_presentPersonWithID_name_image_presentingViewController___block_invoke;
      v24[3] = &unk_279D89158;
      v25 = v16;
      v21 = [v20 actionWithHandler:v24];
      v22 = [v19 initWithBarButtonSystemItem:0 primaryAction:v21];

      v23 = [(TVRUIPersonViewController *)v15 navigationItem];
      [v23 setLeftBarButtonItem:v22];
    }

    [(TVRUINowPlayingController *)self _presentViewController:v16 animated:1 completion:0];
  }
}

- (void)presentMediaWithID:(id)a3 title:(id)a4 presentingViewController:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TVRUINowPlayingController *)self _activeNavController];
  if (v10 || ([v9 navigationController], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = objc_alloc_init(TVRUIMediaViewController);
    [(TVRUIMediaViewController *)v12 setActionProvider:self];
    v13 = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIMediaViewController *)v12 setUpNextProvider:v13];

    [(TVRUIMediaViewController *)v12 setMediaTitle:v8];
    [(TVRUIMediaViewController *)v12 setMediaIdentifier:v14];
    [v11 pushViewController:v12 animated:1];
  }
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  if (self->_device != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_device, a3);
    v6 = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [v6 setActiveDevice:v8];

    v7 = [(TVRUINowPlayingController *)self upNextController];
    [v7 setActiveDevice:v8];

    v5 = v8;
  }
}

- (void)displayUpNext
{
  if ([(TVRUINowPlayingController *)self _upNextViewControllerIsPresented]|| [(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented])
  {
    v3 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [TVRUINowPlayingController displayUpNext];
    }

LABEL_5:

    return;
  }

  v4 = [(TVRUINowPlayingController *)self device];

  if (!v4)
  {
    v3 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [TVRUINowPlayingController displayUpNext];
    }

    goto LABEL_5;
  }

  [(TVRUINowPlayingController *)self _presentUpNext];
}

- (void)dismissModalUI
{
  if ([(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented])
  {

    [(TVRUINowPlayingController *)self _dismissNowPlayingViewControllerAnimated:0];
  }

  else if ([(TVRUINowPlayingController *)self _upNextViewControllerIsPresented])
  {

    [(TVRUINowPlayingController *)self _dismissUpNextViewControllerAnimated:0];
  }
}

- (void)_infoButtonWasTappedForcingInfoTab:(BOOL)a3
{
  v3 = a3;
  if (![(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented])
  {
    [(TVRUINowPlayingController *)self _refreshUpNextInfosIfNeeded];

    [(TVRUINowPlayingController *)self _presentNowPlayingAnimated:1 forceInfoTab:v3];
  }
}

- (BOOL)_nowPlayingViewControllerIsPresented
{
  v2 = [(TVRUINowPlayingController *)self nowPlayingNavController];
  v3 = [v2 view];
  v4 = [v3 superview];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_upNextViewControllerIsPresented
{
  v2 = [(TVRUINowPlayingController *)self upNextNavController];
  v3 = [v2 view];
  v4 = [v3 superview];
  v5 = v4 != 0;

  return v5;
}

- (void)_updateNowPlayingUIWithNowPlayingInfo:(id)a3
{
  v4 = a3;
  v5 = [(TVRUINowPlayingController *)self nowPlayingViewController];
  [v5 setNowPlayingInfo:v4];

  v6 = [(TVRUINowPlayingController *)self capellaInfoDidChangeHandler];

  if (v6)
  {
    v7 = [(TVRUINowPlayingController *)self capellaInfoDidChangeHandler];
    (v7)[2](v7, [(TVRUINowPlayingController *)self capellaInfoAvailable]);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"TVRUINowPlayingControllerInfoDidChangeNotification" object:0];
}

- (void)setCommandHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  commandHandler = self->_commandHandler;
  self->_commandHandler = v5;

  v7 = [(TVRUINowPlayingController *)self nowPlayingViewController];
  [v7 setCommandHandler:v4];
}

- (id)actionButtonMenu
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (+[TVRUIFeatures replaceMuteButtonWithContextMenu])
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D753F0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__TVRUINowPlayingController_actionButtonMenu__block_invoke;
    v9[3] = &unk_279D88B40;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    v4 = [v3 elementWithUncachedProvider:v9];
    v5 = MEMORY[0x277D75710];
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v5 menuWithChildren:v6];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__TVRUINowPlayingController_actionButtonMenu__block_invoke(uint64_t a1, void *a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v40 = WeakRetained;
    v6 = MEMORY[0x277D750C8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"TVRemoteUIMute" value:&stru_287E6AEF8 table:@"Localizable"];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.slash"];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_2;
    v53[3] = &unk_279D87C68;
    objc_copyWeak(&v54, (a1 + 40));
    v44 = [v6 actionWithTitle:v8 image:v9 identifier:0 handler:v53];

    v10 = [*(a1 + 32) device];
    LOBYTE(v7) = [v10 supportsMute];

    if ((v7 & 1) == 0)
    {
      [v44 setAttributes:1];
    }

    v11 = MEMORY[0x277D750C8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"TVRemoteUIControlCenter" value:&stru_287E6AEF8 table:@"Localizable"];
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"switch.2"];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_3;
    v51[3] = &unk_279D87C68;
    objc_copyWeak(&v52, (a1 + 40));
    v43 = [v11 actionWithTitle:v13 image:v14 identifier:0 handler:v51];

    v15 = MEMORY[0x277D750C8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"TVRemoteUISearch" value:&stru_287E6AEF8 table:@"Localizable"];
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_4;
    v49[3] = &unk_279D87C68;
    objc_copyWeak(&v50, (a1 + 40));
    v41 = [v15 actionWithTitle:v17 image:v18 identifier:0 handler:v49];

    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v19 localizedStringForKey:@"TVRemoteUIOpenUpNext" value:&stru_287E6AEF8 table:@"Localizable"];

    v20 = MEMORY[0x277D750C8];
    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_5;
    v47[3] = &unk_279D87C68;
    objc_copyWeak(&v48, (a1 + 40));
    v22 = [v20 actionWithTitle:v42 image:v21 identifier:0 handler:v47];

    v23 = +[TVRUIFeatures isDockEnabled];
    v24 = @"Show Dock";
    if (v23)
    {
      v24 = @"Hide Dock";
    }

    v25 = v24;
    v26 = MEMORY[0x277D750C8];
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"dock.rectangle"];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_6;
    v45[3] = &unk_279D87C68;
    objc_copyWeak(&v46, (a1 + 40));
    v28 = [v26 actionWithTitle:v25 image:v27 identifier:0 handler:v45];

    v29 = MEMORY[0x277D75710];
    v58[0] = v44;
    v58[1] = v43;
    v58[2] = v41;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
    v31 = [v29 menuWithTitle:&stru_287E6AEF8 image:0 identifier:0 options:1 children:v30];

    [v31 setPreferredElementSize:1];
    v32 = MEMORY[0x277D75710];
    v57 = v22;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v34 = [v32 menuWithTitle:&stru_287E6AEF8 image:0 identifier:0 options:1 children:v33];

    v56[0] = v31;
    v56[1] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    if ([MEMORY[0x277D6C4E8] isInternalInstall])
    {
      v36 = MEMORY[0x277D75710];
      v55 = v28;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      v38 = [v36 menuWithTitle:@"Internal Only" image:0 identifier:0 options:1 children:v37];

      v39 = [v35 arrayByAddingObject:v38];

      v35 = v39;
    }

    v3[2](v3, v35);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);

    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);

    objc_destroyWeak(&v54);
    v5 = v40;
  }

  else
  {
    v3[2](v3, MEMORY[0x277CBEBF8]);
  }
}

void __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCommandHandlerWithCommand:10];
}

void __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCommandHandlerWithCommand:11];
}

void __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCommandHandlerWithCommand:14];
}

void __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentUpNext];
}

void __45__TVRUINowPlayingController_actionButtonMenu__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleDockAppearance];
}

- (UINavigationController)nowPlayingNavController
{
  nowPlayingNavController = self->_nowPlayingNavController;
  if (!nowPlayingNavController)
  {
    v4 = objc_alloc(MEMORY[0x277D757A0]);
    v5 = [(TVRUINowPlayingController *)self nowPlayingViewController];
    v6 = [v4 initWithRootViewController:v5];
    v7 = self->_nowPlayingNavController;
    self->_nowPlayingNavController = v6;

    if ([(TVRUINowPlayingController *)self isPad])
    {
      objc_initWeak(&location, self);
      v8 = objc_alloc(MEMORY[0x277D751E0]);
      v9 = MEMORY[0x277D750C8];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __52__TVRUINowPlayingController_nowPlayingNavController__block_invoke;
      v17 = &unk_279D87C68;
      objc_copyWeak(&v18, &location);
      v10 = [v9 actionWithHandler:&v14];
      v11 = [v8 initWithBarButtonSystemItem:0 primaryAction:{v10, v14, v15, v16, v17}];

      v12 = [(TVRUINowPlayingViewController *)self->_nowPlayingViewController navigationItem];
      [v12 setRightBarButtonItem:v11];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    [(UINavigationController *)self->_nowPlayingNavController setOverrideUserInterfaceStyle:2];
    nowPlayingNavController = self->_nowPlayingNavController;
  }

  return nowPlayingNavController;
}

void __52__TVRUINowPlayingController_nowPlayingNavController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained nowPlayingNavController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (UINavigationController)upNextNavController
{
  upNextNavController = self->_upNextNavController;
  if (!upNextNavController)
  {
    v4 = objc_alloc_init(TVRUIUpNextViewController);
    [(TVRUIUpNextViewController *)v4 setMode:1];
    v5 = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIUpNextViewController *)v4 setUpNextProvider:v5];

    [(TVRUIUpNextViewController *)v4 setActionProvider:self];
    [(TVRUIUpNextViewController *)v4 setNowPlayingProvider:self];
    v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
    v7 = self->_upNextNavController;
    self->_upNextNavController = v6;

    [(UINavigationController *)self->_upNextNavController setOverrideUserInterfaceStyle:2];
    upNextNavController = self->_upNextNavController;
  }

  return upNextNavController;
}

- (void)_openURL:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1F00];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8 = *MEMORY[0x277D0AC58];
  v9[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 setFrontBoardOptions:v6];

  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v7 openURL:v4 configuration:v5 completionHandler:&__block_literal_global_23];
}

void __38__TVRUINowPlayingController__openURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__TVRUINowPlayingController__openURL___block_invoke_cold_1();
    }
  }
}

- (void)_refreshUpNextInfosIfNeeded
{
  v3 = [(TVRUINowPlayingController *)self upNextController];
  v4 = [v3 infos];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(TVRUINowPlayingController *)self upNextController];
    [v6 refresh];
  }
}

- (void)_invokeCommandHandlerWithCommand:(unint64_t)a3 paramDict:(id)a4
{
  v9 = a4;
  v6 = [(TVRUINowPlayingController *)self commandHandler];

  if (v6)
  {
    v7 = [(TVRUINowPlayingController *)self commandHandler];
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = MEMORY[0x277CBEC10];
    }

    (v7)[2](v7, a3, v8);
  }
}

- (BOOL)isReadyForPresentationWithNowPlayingInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 tvrui_hasMetadata];
  if ([v3 tvrui_hasArtworkImage])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 metadata];
    v7 = [v6 imageURLTemplate];
    v5 = [v7 length] == 0;
  }

  v8 = [v3 tvrui_mediaIsStopped];
  v9 = [v3 tvrui_effectiveCanonicalID];
  v10 = [v9 length];

  v11 = (v10 != 0) & ~v8;
  if (v5)
  {
    v11 = 0;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)presentModalContext:(unint64_t)a3 animated:(BOOL)a4
{
  if (a3 == 1)
  {
    [(TVRUINowPlayingController *)self _presentNowPlayingAnimated:a4];
  }

  else if (a3 == 2)
  {
    [(TVRUINowPlayingController *)self _presentUpNextAnimated:a4];
  }
}

- (void)_presentNowPlayingAnimated:(BOOL)a3 forceInfoTab:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [v6 forceTabSelectionToInfoTab];
  }

  else
  {
    if (![(TVRUINowPlayingController *)self _shouldResetNowPlayingInfoTabSelection])
    {
      goto LABEL_6;
    }

    v6 = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [v6 resetTabSelection];
  }

LABEL_6:
  v7 = [MEMORY[0x277CBEAA8] now];
  [(TVRUINowPlayingController *)self setLastPresentedNowPlaying:v7];

  v8 = [(TVRUINowPlayingController *)self nowPlayingNavController];
  [(TVRUINowPlayingController *)self _presentViewController:v8 animated:v4 completion:0];
}

- (void)_toggleDockAppearance
{
  +[TVRUIFeatures setDockEnabled:](TVRUIFeatures, "setDockEnabled:", +[TVRUIFeatures isDockEnabled]^ 1);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__TVRUINowPlayingController__toggleDockAppearance__block_invoke;
  v3[3] = &unk_279D87C20;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.3];
}

void __50__TVRUINowPlayingController__toggleDockAppearance__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) layoutHandler];
    v3[2]();
  }
}

- (void)_presentUpNextAnimated:(BOOL)a3
{
  v3 = a3;
  [(TVRUINowPlayingController *)self setUpNextNavController:0];
  v5 = [(TVRUINowPlayingController *)self upNextNavController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TVRUINowPlayingController__presentUpNextAnimated___block_invoke;
  v6[3] = &unk_279D87C20;
  v6[4] = self;
  [(TVRUINowPlayingController *)self _presentViewController:v5 animated:v3 completion:v6];
}

void __52__TVRUINowPlayingController__presentUpNextAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) upNextController];
  [v1 refreshIfNeeded];
}

- (void)_dismissNowPlayingViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(TVRUINowPlayingController *)self nowPlayingNavController];
  [v4 dismissViewControllerAnimated:v3 completion:0];
}

- (void)_dismissUpNextViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(TVRUINowPlayingController *)self upNextNavController];
  [v4 dismissViewControllerAnimated:v3 completion:0];
}

- (unint64_t)_layoutStyleForViewServiceLaunchContext:(int64_t)a3
{
  if (a3 > 0xB)
  {
    return 1;
  }

  if (((1 << a3) & 0x864) != 0)
  {
    return 2;
  }

  if (a3 != 3)
  {
    return 1;
  }

  if ([(TVRUINowPlayingController *)self isPad:v3])
  {
    return 2;
  }

  return 1;
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  if ([(TVRUINowPlayingController *)self isPad])
  {
    [v9 setTransitioningDelegate:self];
    [v9 setModalPresentationStyle:4];
    v13 = [(TVRUINowPlayingController *)self hostingViewController];
    [v13 presentViewController:v9 animated:v5 completion:v8];
  }

  else
  {
    v10 = +[TVRUIFeatures isSolariumEnabled];
    v13 = [v9 sheetPresentationController];
    [v13 setPrefersGrabberVisible:!v10];
    if (v10)
    {
      v11 = -2;
    }

    else
    {
      v11 = 1;
    }

    [v9 setModalPresentationStyle:v11];
    v12 = [(TVRUINowPlayingController *)self hostingViewController];
    [v12 presentViewController:v9 animated:v5 completion:v8];

    v8 = v9;
    v9 = v12;
  }
}

- (id)_activeNavController
{
  if ([(TVRUINowPlayingController *)self _upNextViewControllerIsPresented])
  {
    v3 = [(TVRUINowPlayingController *)self upNextNavController];
  }

  else if ([(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented])
  {
    v3 = [(TVRUINowPlayingController *)self nowPlayingNavController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldResetNowPlayingInfoTabSelection
{
  v3 = [(TVRUINowPlayingController *)self lastPresentedNowPlaying];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TVRUINowPlayingController *)self lastPresentedNowPlaying];
  [v4 timeIntervalSinceNow];
  v6 = fabs(v5);

  return v6 >= 480.0;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_TVRUIControlCenterSheetPresentationController alloc] initWithPresentedViewController:v10 presentingViewController:v9];

  [(_TVRUIControlCenterSheetPresentationController *)v11 setSourceViewController:v8];
  [(_TVRUIControlCenterSheetPresentationController *)v11 setLayoutStyle:[(TVRUINowPlayingController *)self _layoutStyleForViewServiceLaunchContext:[(TVRUINowPlayingController *)self viewServiceLaunchContext]]];

  return v11;
}

@end