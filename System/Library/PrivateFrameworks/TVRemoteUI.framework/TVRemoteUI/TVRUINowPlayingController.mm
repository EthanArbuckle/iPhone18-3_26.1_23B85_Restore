@interface TVRUINowPlayingController
+ (TVRUINowPlayingController)controllerWithHostingViewController:(id)controller;
- (BOOL)_nowPlayingViewControllerIsPresented;
- (BOOL)_shouldResetNowPlayingInfoTabSelection;
- (BOOL)_upNextViewControllerIsPresented;
- (BOOL)capellaInfoAvailable;
- (BOOL)isReadyForPresentationWithNowPlayingInfo:(id)info;
- (TVRUINowPlayingController)initWithHostingViewController:(id)controller;
- (UINavigationController)nowPlayingNavController;
- (UINavigationController)upNextNavController;
- (id)_activeNavController;
- (id)actionButtonMenu;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (unint64_t)_layoutStyleForViewServiceLaunchContext:(int64_t)context;
- (unint64_t)currentModalContext;
- (void)_dismissNowPlayingViewControllerAnimated:(BOOL)animated;
- (void)_dismissUpNextViewControllerAnimated:(BOOL)animated;
- (void)_infoButtonWasTappedForcingInfoTab:(BOOL)tab;
- (void)_invokeCommandHandlerWithCommand:(unint64_t)command paramDict:(id)dict;
- (void)_openURL:(id)l;
- (void)_presentNowPlayingAnimated:(BOOL)animated forceInfoTab:(BOOL)tab;
- (void)_presentUpNextAnimated:(BOOL)animated;
- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_refreshUpNextInfosIfNeeded;
- (void)_toggleDockAppearance;
- (void)_updateNowPlayingUIWithNowPlayingInfo:(id)info;
- (void)dismissModalUI;
- (void)displayUpNext;
- (void)openURL:(id)l;
- (void)presentMediaWithID:(id)d title:(id)title presentingViewController:(id)controller;
- (void)presentModalContext:(unint64_t)context animated:(BOOL)animated;
- (void)presentPersonWithID:(id)d name:(id)name image:(id)image presentingViewController:(id)controller;
- (void)setCommandHandler:(id)handler;
- (void)setDevice:(id)device;
- (void)setNowPlayingInfo:(id)info;
- (void)shareItem:(id)item presentingViewController:(id)controller sourceView:(id)view;
@end

@implementation TVRUINowPlayingController

+ (TVRUINowPlayingController)controllerWithHostingViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[self alloc] initWithHostingViewController:controllerCopy];

  return v5;
}

- (TVRUINowPlayingController)initWithHostingViewController:(id)controller
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = TVRUINowPlayingController;
  v6 = [(TVRUINowPlayingController *)&v21 init];
  if (v6)
  {
    traitCollection = [controllerCopy traitCollection];
    v6->_isPad = [traitCollection userInterfaceIdiom] == 1;

    v8 = objc_alloc_init(TVRUIUpNextController);
    upNextController = v6->_upNextController;
    v6->_upNextController = v8;

    objc_storeStrong(&v6->_hostingViewController, controller);
    v10 = objc_alloc_init(TVRUIDarkStyleProvider);
    styleProvider = v6->_styleProvider;
    v6->_styleProvider = v10;

    v12 = objc_alloc_init(TVRUINowPlayingViewController);
    [(TVRUINowPlayingController *)v6 setNowPlayingViewController:v12];

    styleProvider = [(TVRUINowPlayingController *)v6 styleProvider];
    nowPlayingViewController = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [nowPlayingViewController setStyleProvider:styleProvider];

    v15 = v6->_upNextController;
    nowPlayingViewController2 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [nowPlayingViewController2 setUpNextProvider:v15];

    nowPlayingViewController3 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [nowPlayingViewController3 setActionProvider:v6];

    v18 = v6->_styleProvider;
    nowPlayingViewController4 = [(TVRUINowPlayingController *)v6 nowPlayingViewController];
    [nowPlayingViewController4 setStyleProvider:v18];
  }

  return v6;
}

- (BOOL)capellaInfoAvailable
{
  selfCopy = self;
  nowPlayingInfo = [(TVRUINowPlayingController *)self nowPlayingInfo];
  LOBYTE(selfCopy) = [(TVRUINowPlayingController *)selfCopy isReadyForPresentationWithNowPlayingInfo:nowPlayingInfo];

  return selfCopy;
}

- (void)setNowPlayingInfo:(id)info
{
  v65 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = infoCopy;
  if (infoCopy)
  {
    if ([infoCopy tvrui_isSimplePlaybackRateUpdate])
    {
      v7 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        playbackRate = [v6 playbackRate];
        *buf = 138412290;
        v62 = playbackRate;
        _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_INFO, "Updating playbackRate to %@", buf, 0xCu);
      }

      playbackRate2 = [v6 playbackRate];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setPlaybackRate:playbackRate2];
    }

    else if ([v6 tvrui_isSimplePlaybackStateUpdate])
    {
      playbackState = [v6 playbackState];
      integerValue = [playbackState integerValue];

      v18 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
        *buf = 138412290;
        v62 = v19;
        _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_INFO, "Updating playbackState to %@", buf, 0xCu);
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setPlaybackState:v20];

      if (integerValue == 3)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"TVRUINowPlayingControllerMediaStoppedNotification" object:0];
      }

      else if (integerValue == 1)
      {
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 postNotificationName:@"TVRUINowPlayingControllerMediaStartedNotification" object:0];
      }
    }

    else if ([v6 tvrui_isSimpleCaptionStateUpdate])
    {
      v29 = _TVRUINowPlayingLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        captionsEnabled = [v6 captionsEnabled];
        hasValidCaptionOptions = [v6 hasValidCaptionOptions];
        *buf = 138412546;
        v62 = captionsEnabled;
        v63 = 2112;
        v64 = hasValidCaptionOptions;
        _os_log_impl(&dword_26CFEB000, v29, OS_LOG_TYPE_INFO, "Updating captionsEnabled to %@; hasValidCaptionsOptoins to %@", buf, 0x16u);
      }

      captionsEnabled2 = [v6 captionsEnabled];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setCaptionsEnabled:captionsEnabled2];

      hasValidCaptionOptions2 = [v6 hasValidCaptionOptions];
      [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setHasValidCaptionOptions:hasValidCaptionOptions2];
    }

    else
    {
      identifier = [v6 identifier];
      p_nowPlayingInfo = &self->_nowPlayingInfo;
      identifier2 = [(TVRCNowPlayingInfo *)self->_nowPlayingInfo identifier];
      v41 = [identifier isEqualToString:identifier2];

      if (v41)
      {
        v42 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo nowPlayingInfoMergedWithNowPlayingInfo:v6];
        v43 = *p_nowPlayingInfo;
        *p_nowPlayingInfo = v42;

        v44 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          metadata = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo metadata];
          canonicalID = [metadata canonicalID];
          *buf = 138412290;
          v62 = canonicalID;
          _os_log_impl(&dword_26CFEB000, v44, OS_LOG_TYPE_INFO, "Updating nowPlayingInfo (identifiers remained the same; merging info) for canonicalID=%@", buf, 0xCu);
        }
      }

      else
      {
        v49 = _TVRUINowPlayingLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          identifier3 = [v6 identifier];
          identifier4 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo identifier];
          *buf = 138412546;
          v62 = identifier3;
          v63 = 2112;
          v64 = identifier4;
          _os_log_impl(&dword_26CFEB000, v49, OS_LOG_TYPE_INFO, "Updating nowPlayingInfo via identified change %@ -> %@", buf, 0x16u);
        }

        identifier5 = [v6 identifier];
        if ([identifier5 length])
        {
          identifier6 = [(TVRCNowPlayingInfo *)*p_nowPlayingInfo identifier];
          v54 = [identifier6 length] == 0;

          objc_storeStrong(&self->_nowPlayingInfo, info);
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

          objc_storeStrong(&self->_nowPlayingInfo, info);
        }
      }
    }

    tvrui_effectiveCanonicalID = [v6 tvrui_effectiveCanonicalID];
    metadata2 = [v6 metadata];
    if (metadata2)
    {
      metadata3 = [v6 metadata];
      isMissingCriticalMetadata = [metadata3 isMissingCriticalMetadata];

      v14 = isMissingCriticalMetadata ^ 1;
    }

    else
    {
      v14 = 1;
    }

    if (([tvrui_effectiveCanonicalID length] == 0) | v14 & 1)
    {
      nowPlayingInfo = [(TVRUINowPlayingController *)self nowPlayingInfo];
      [(TVRUINowPlayingController *)self _updateNowPlayingUIWithNowPlayingInfo:nowPlayingInfo];
    }

    else
    {
      cachedMediaInfo = [(TVRUINowPlayingController *)self cachedMediaInfo];
      identifier7 = [cachedMediaInfo identifier];
      v25 = [tvrui_effectiveCanonicalID isEqualToString:identifier7];

      if (v25)
      {
        metadata4 = [(TVRCNowPlayingInfo *)self->_nowPlayingInfo metadata];
        cachedMediaInfo2 = [(TVRUINowPlayingController *)self cachedMediaInfo];
        v28 = [metadata4 metadataMergedFromTVRCMediaInfo:cachedMediaInfo2];
        [(TVRCNowPlayingInfo *)self->_nowPlayingInfo setMetadata:v28];

        [(TVRUINowPlayingController *)self _updateNowPlayingUIWithNowPlayingInfo:self->_nowPlayingInfo];
      }

      else
      {
        canonicalIDOfCurrentUTSRequest = [(TVRUINowPlayingController *)self canonicalIDOfCurrentUTSRequest];
        v35 = [tvrui_effectiveCanonicalID isEqualToString:canonicalIDOfCurrentUTSRequest];

        v36 = _TVRUINowPlayingLog();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
        if (v35)
        {
          if (v37)
          {
            *buf = 138412290;
            v62 = tvrui_effectiveCanonicalID;
            _os_log_impl(&dword_26CFEB000, v36, OS_LOG_TYPE_INFO, "Already requesting metadata from UTS for canonicalID=%@ ... will not request again.", buf, 0xCu);
          }
        }

        else
        {
          if (v37)
          {
            *buf = 138412290;
            v62 = tvrui_effectiveCanonicalID;
            _os_log_impl(&dword_26CFEB000, v36, OS_LOG_TYPE_INFO, "Requesting metadata from UTS for canonicalID=%@", buf, 0xCu);
          }

          [(TVRUINowPlayingController *)self setCanonicalIDOfCurrentUTSRequest:tvrui_effectiveCanonicalID];
          v47 = objc_alloc_init(MEMORY[0x277D6C540]);
          objc_initWeak(buf, self);
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __47__TVRUINowPlayingController_setNowPlayingInfo___block_invoke_13;
          v57[3] = &unk_279D89130;
          objc_copyWeak(&v59, buf);
          v57[4] = self;
          v58 = tvrui_effectiveCanonicalID;
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

- (void)shareItem:(id)item presentingViewController:(id)controller sourceView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  v10 = MEMORY[0x277CBEA60];
  itemCopy2 = item;
  v12 = [v10 arrayWithObjects:&itemCopy count:1];
  v13 = objc_alloc(MEMORY[0x277D546D8]);

  v14 = [v12 copy];
  v15 = [v13 initWithActivityItems:v14 applicationActivities:0];

  if ([(TVRUINowPlayingController *)self isPad])
  {
    popoverPresentationController = [v15 popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];
    [v15 setOverrideUserInterfaceStyle:2];
    nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [nowPlayingViewController presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    [controllerCopy presentViewController:v15 animated:1 completion:0];
  }
}

- (void)openURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    if ([(TVRUINowPlayingController *)self isPad])
    {
      [(TVRUINowPlayingController *)self dismissModalUI];
    }

    [(TVRUINowPlayingController *)self _openURL:v5];
    lCopy = v5;
  }
}

- (void)presentPersonWithID:(id)d name:(id)name image:(id)image presentingViewController:(id)controller
{
  dCopy = d;
  nameCopy = name;
  imageCopy = image;
  controllerCopy = controller;
  _activeNavController = [(TVRUINowPlayingController *)self _activeNavController];
  if (_activeNavController || ([controllerCopy navigationController], (_activeNavController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = _activeNavController;
    v16 = objc_alloc_init(TVRUIPersonViewController);
    [(TVRUIPersonViewController *)v16 setActionProvider:self];
    upNextController = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIPersonViewController *)v16 setUpNextProvider:upNextController];

    [(TVRUIPersonViewController *)v16 setPersonName:nameCopy];
    [(TVRUIPersonViewController *)v16 setPersonImage:imageCopy];
    [(TVRUIPersonViewController *)v16 setPersonID:dCopy];
    [(TVRUIPersonViewController *)v15 pushViewController:v16 animated:1];
  }

  else
  {
    v15 = objc_alloc_init(TVRUIPersonViewController);
    [(TVRUIPersonViewController *)v15 setActionProvider:self];
    upNextController2 = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIPersonViewController *)v15 setUpNextProvider:upNextController2];

    [(TVRUIPersonViewController *)v15 setPersonName:nameCopy];
    [(TVRUIPersonViewController *)v15 setPersonImage:imageCopy];
    [(TVRUIPersonViewController *)v15 setPersonID:dCopy];
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

      navigationItem = [(TVRUIPersonViewController *)v15 navigationItem];
      [navigationItem setLeftBarButtonItem:v22];
    }

    [(TVRUINowPlayingController *)self _presentViewController:v16 animated:1 completion:0];
  }
}

- (void)presentMediaWithID:(id)d title:(id)title presentingViewController:(id)controller
{
  dCopy = d;
  titleCopy = title;
  controllerCopy = controller;
  _activeNavController = [(TVRUINowPlayingController *)self _activeNavController];
  if (_activeNavController || ([controllerCopy navigationController], (_activeNavController = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = _activeNavController;
    v12 = objc_alloc_init(TVRUIMediaViewController);
    [(TVRUIMediaViewController *)v12 setActionProvider:self];
    upNextController = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIMediaViewController *)v12 setUpNextProvider:upNextController];

    [(TVRUIMediaViewController *)v12 setMediaTitle:titleCopy];
    [(TVRUIMediaViewController *)v12 setMediaIdentifier:dCopy];
    [v11 pushViewController:v12 animated:1];
  }
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  if (self->_device != deviceCopy)
  {
    v8 = deviceCopy;
    objc_storeStrong(&self->_device, device);
    nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [nowPlayingViewController setActiveDevice:v8];

    upNextController = [(TVRUINowPlayingController *)self upNextController];
    [upNextController setActiveDevice:v8];

    deviceCopy = v8;
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

  device = [(TVRUINowPlayingController *)self device];

  if (!device)
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

- (void)_infoButtonWasTappedForcingInfoTab:(BOOL)tab
{
  tabCopy = tab;
  if (![(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented])
  {
    [(TVRUINowPlayingController *)self _refreshUpNextInfosIfNeeded];

    [(TVRUINowPlayingController *)self _presentNowPlayingAnimated:1 forceInfoTab:tabCopy];
  }
}

- (BOOL)_nowPlayingViewControllerIsPresented
{
  nowPlayingNavController = [(TVRUINowPlayingController *)self nowPlayingNavController];
  view = [nowPlayingNavController view];
  superview = [view superview];
  v5 = superview != 0;

  return v5;
}

- (BOOL)_upNextViewControllerIsPresented
{
  upNextNavController = [(TVRUINowPlayingController *)self upNextNavController];
  view = [upNextNavController view];
  superview = [view superview];
  v5 = superview != 0;

  return v5;
}

- (void)_updateNowPlayingUIWithNowPlayingInfo:(id)info
{
  infoCopy = info;
  nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
  [nowPlayingViewController setNowPlayingInfo:infoCopy];

  capellaInfoDidChangeHandler = [(TVRUINowPlayingController *)self capellaInfoDidChangeHandler];

  if (capellaInfoDidChangeHandler)
  {
    capellaInfoDidChangeHandler2 = [(TVRUINowPlayingController *)self capellaInfoDidChangeHandler];
    (capellaInfoDidChangeHandler2)[2](capellaInfoDidChangeHandler2, [(TVRUINowPlayingController *)self capellaInfoAvailable]);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVRUINowPlayingControllerInfoDidChangeNotification" object:0];
}

- (void)setCommandHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [handlerCopy copy];
  commandHandler = self->_commandHandler;
  self->_commandHandler = v5;

  nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
  [nowPlayingViewController setCommandHandler:handlerCopy];
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
    nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
    v6 = [v4 initWithRootViewController:nowPlayingViewController];
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

      navigationItem = [(TVRUINowPlayingViewController *)self->_nowPlayingViewController navigationItem];
      [navigationItem setRightBarButtonItem:v11];

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
    upNextController = [(TVRUINowPlayingController *)self upNextController];
    [(TVRUIUpNextViewController *)v4 setUpNextProvider:upNextController];

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

- (void)_openURL:(id)l
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1F00];
  lCopy = l;
  v5 = objc_alloc_init(v3);
  v8 = *MEMORY[0x277D0AC58];
  v9[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 setFrontBoardOptions:v6];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openURL:lCopy configuration:v5 completionHandler:&__block_literal_global_23];
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
  upNextController = [(TVRUINowPlayingController *)self upNextController];
  infos = [upNextController infos];
  v5 = [infos count];

  if (!v5)
  {
    upNextController2 = [(TVRUINowPlayingController *)self upNextController];
    [upNextController2 refresh];
  }
}

- (void)_invokeCommandHandlerWithCommand:(unint64_t)command paramDict:(id)dict
{
  dictCopy = dict;
  commandHandler = [(TVRUINowPlayingController *)self commandHandler];

  if (commandHandler)
  {
    commandHandler2 = [(TVRUINowPlayingController *)self commandHandler];
    if (dictCopy)
    {
      v8 = dictCopy;
    }

    else
    {
      v8 = MEMORY[0x277CBEC10];
    }

    (commandHandler2)[2](commandHandler2, command, v8);
  }
}

- (BOOL)isReadyForPresentationWithNowPlayingInfo:(id)info
{
  infoCopy = info;
  tvrui_hasMetadata = [infoCopy tvrui_hasMetadata];
  if ([infoCopy tvrui_hasArtworkImage])
  {
    v5 = 0;
  }

  else
  {
    metadata = [infoCopy metadata];
    imageURLTemplate = [metadata imageURLTemplate];
    v5 = [imageURLTemplate length] == 0;
  }

  tvrui_mediaIsStopped = [infoCopy tvrui_mediaIsStopped];
  tvrui_effectiveCanonicalID = [infoCopy tvrui_effectiveCanonicalID];
  v10 = [tvrui_effectiveCanonicalID length];

  v11 = (v10 != 0) & ~tvrui_mediaIsStopped;
  if (v5)
  {
    v11 = 0;
  }

  if (tvrui_hasMetadata)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)presentModalContext:(unint64_t)context animated:(BOOL)animated
{
  if (context == 1)
  {
    [(TVRUINowPlayingController *)self _presentNowPlayingAnimated:animated];
  }

  else if (context == 2)
  {
    [(TVRUINowPlayingController *)self _presentUpNextAnimated:animated];
  }
}

- (void)_presentNowPlayingAnimated:(BOOL)animated forceInfoTab:(BOOL)tab
{
  animatedCopy = animated;
  if (tab)
  {
    nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [nowPlayingViewController forceTabSelectionToInfoTab];
  }

  else
  {
    if (![(TVRUINowPlayingController *)self _shouldResetNowPlayingInfoTabSelection])
    {
      goto LABEL_6;
    }

    nowPlayingViewController = [(TVRUINowPlayingController *)self nowPlayingViewController];
    [nowPlayingViewController resetTabSelection];
  }

LABEL_6:
  v7 = [MEMORY[0x277CBEAA8] now];
  [(TVRUINowPlayingController *)self setLastPresentedNowPlaying:v7];

  nowPlayingNavController = [(TVRUINowPlayingController *)self nowPlayingNavController];
  [(TVRUINowPlayingController *)self _presentViewController:nowPlayingNavController animated:animatedCopy completion:0];
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

- (void)_presentUpNextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(TVRUINowPlayingController *)self setUpNextNavController:0];
  upNextNavController = [(TVRUINowPlayingController *)self upNextNavController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TVRUINowPlayingController__presentUpNextAnimated___block_invoke;
  v6[3] = &unk_279D87C20;
  v6[4] = self;
  [(TVRUINowPlayingController *)self _presentViewController:upNextNavController animated:animatedCopy completion:v6];
}

void __52__TVRUINowPlayingController__presentUpNextAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) upNextController];
  [v1 refreshIfNeeded];
}

- (void)_dismissNowPlayingViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  nowPlayingNavController = [(TVRUINowPlayingController *)self nowPlayingNavController];
  [nowPlayingNavController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)_dismissUpNextViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  upNextNavController = [(TVRUINowPlayingController *)self upNextNavController];
  [upNextNavController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (unint64_t)_layoutStyleForViewServiceLaunchContext:(int64_t)context
{
  if (context > 0xB)
  {
    return 1;
  }

  if (((1 << context) & 0x864) != 0)
  {
    return 2;
  }

  if (context != 3)
  {
    return 1;
  }

  if ([(TVRUINowPlayingController *)self isPad:v3])
  {
    return 2;
  }

  return 1;
}

- (void)_presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  if ([(TVRUINowPlayingController *)self isPad])
  {
    [controllerCopy setTransitioningDelegate:self];
    [controllerCopy setModalPresentationStyle:4];
    hostingViewController = [(TVRUINowPlayingController *)self hostingViewController];
    [hostingViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v10 = +[TVRUIFeatures isSolariumEnabled];
    hostingViewController = [controllerCopy sheetPresentationController];
    [hostingViewController setPrefersGrabberVisible:!v10];
    if (v10)
    {
      v11 = -2;
    }

    else
    {
      v11 = 1;
    }

    [controllerCopy setModalPresentationStyle:v11];
    hostingViewController2 = [(TVRUINowPlayingController *)self hostingViewController];
    [hostingViewController2 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];

    completionCopy = controllerCopy;
    controllerCopy = hostingViewController2;
  }
}

- (id)_activeNavController
{
  if ([(TVRUINowPlayingController *)self _upNextViewControllerIsPresented])
  {
    upNextNavController = [(TVRUINowPlayingController *)self upNextNavController];
  }

  else if ([(TVRUINowPlayingController *)self _nowPlayingViewControllerIsPresented])
  {
    upNextNavController = [(TVRUINowPlayingController *)self nowPlayingNavController];
  }

  else
  {
    upNextNavController = 0;
  }

  return upNextNavController;
}

- (BOOL)_shouldResetNowPlayingInfoTabSelection
{
  lastPresentedNowPlaying = [(TVRUINowPlayingController *)self lastPresentedNowPlaying];

  if (!lastPresentedNowPlaying)
  {
    return 0;
  }

  lastPresentedNowPlaying2 = [(TVRUINowPlayingController *)self lastPresentedNowPlaying];
  [lastPresentedNowPlaying2 timeIntervalSinceNow];
  v6 = fabs(v5);

  return v6 >= 480.0;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  sourceViewControllerCopy = sourceViewController;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v11 = [[_TVRUIControlCenterSheetPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [(_TVRUIControlCenterSheetPresentationController *)v11 setSourceViewController:sourceViewControllerCopy];
  [(_TVRUIControlCenterSheetPresentationController *)v11 setLayoutStyle:[(TVRUINowPlayingController *)self _layoutStyleForViewServiceLaunchContext:[(TVRUINowPlayingController *)self viewServiceLaunchContext]]];

  return v11;
}

@end