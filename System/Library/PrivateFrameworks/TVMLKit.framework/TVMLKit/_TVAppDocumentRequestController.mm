@interface _TVAppDocumentRequestController
- (BOOL)isPlaying;
- (BOOL)tv_handleEventForDocument:(id)a3 eventName:(id)a4 targetResponder:(id)a5 viewElement:(id)a6 extraInfo:(id *)a7;
- (TVMediaProviding)mediaProvider;
- (TVShowcasing)showcasingController;
- (UIImage)coverImage;
- (_TVAppDocumentRequestController)initWithAppDocument:(id)a3;
- (_TVAppDocumentRequestController)initWithDocumentServiceRequest:(id)a3 loadImmediately:(BOOL)a4;
- (id)_hostingFocusEnvironment;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 fromViewController:(id)a4;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 toViewController:(id)a4;
- (id)preferredFocusEnvironments;
- (id)relinquishOwnership;
- (void)_hostMediaControllerIfPossible;
- (void)_updateMediaInfo;
- (void)_updateShowcaseFactor;
- (void)addObserver:(id)a3 forEvent:(id)a4;
- (void)adoptMediaController:(id)a3;
- (void)coverImageDidChangeForMediaController:(id)a3;
- (void)dealloc;
- (void)didChangeDocumentContext;
- (void)documentDidChangeForDocumentServiceRequest:(id)a3;
- (void)evaluateSwipeUpMessageForMediaPlaybackManager:(id)a3;
- (void)featuresManager:(id)a3 currentContextDidChangeForFeature:(id)a4;
- (void)handleEvent:(id)a3 sender:(id)a4 withUserInfo:(id)a5;
- (void)mediaPlaybackManager:(id)a3 shouldHideUI:(BOOL)a4 animated:(BOOL)a5 animations:(id)a6 completion:(id)a7;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forEvent:(id)a4;
- (void)sendInitialRequestIfNeeded;
- (void)serviceRequest:(id)a3 didCompleteWithStatus:(int64_t)a4 errorDictionary:(id)a5;
- (void)setAppDelegate:(id)a3;
- (void)setMediaController:(id)a3;
- (void)setMediaProvider:(id)a3;
- (void)setShowcasingController:(id)a3;
- (void)stateDidChangeForMediaController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willHostTemplateViewController:(id)a3 usesTransitions:(BOOL *)a4;
@end

@implementation _TVAppDocumentRequestController

- (_TVAppDocumentRequestController)initWithAppDocument:(id)a3
{
  v9.receiver = self;
  v9.super_class = _TVAppDocumentRequestController;
  v3 = [(_TVAppDocumentController *)&v9 initWithAppDocument:a3];
  if (v3)
  {
    v4 = objc_alloc_init(TVObservableEventController);
    observableEventController = v3->_observableEventController;
    v3->_observableEventController = v4;

    v6 = objc_alloc_init(TVTemplateFeaturesManager);
    featuresManager = v3->_featuresManager;
    v3->_featuresManager = v6;

    [(TVTemplateFeaturesManager *)v3->_featuresManager setDelegate:v3];
    [(TVTemplateFeaturesManager *)v3->_featuresManager pushContext:v3 forFeature:&unk_287E9FB40];
    v3->_showcaseFactor = NAN;
  }

  return v3;
}

- (_TVAppDocumentRequestController)initWithDocumentServiceRequest:(id)a3 loadImmediately:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [v7 appDocument];
  v9 = [(_TVAppDocumentRequestController *)self initWithAppDocument:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_documentServiceRequest, a3);
    [(IKDocumentServiceRequest *)v9->_documentServiceRequest setDelegate:v9];
    if (v4)
    {
      v9->_flags.initialRequestSent = 1;
      [(IKDocumentServiceRequest *)v9->_documentServiceRequest send];
    }
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(_TVAppDocumentRequestController *)self documentServiceRequest];
  [v3 setDelegate:0];

  v4 = [(_TVAppDocumentRequestController *)self documentServiceRequest];
  [v4 cancel];

  [(TVTemplateFeaturesManager *)self->_featuresManager popContext:self forFeature:&unk_287E9FB40];
  [(_TVAppDocumentRequestController *)self setShowcasingController:0];
  [(_TVAppDocumentRequestController *)self setMediaProvider:0];
  v5.receiver = self;
  v5.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v5 dealloc];
}

- (void)setAppDelegate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v6 setAppDelegate:v4];
  if ([v4 conformsToProtocol:&unk_287EADB78])
  {
    self->_adrcDelegateFlags.hasSelectedMediaInfoDidChange = objc_opt_respondsToSelector() & 1;
    self->_adrcDelegateFlags.hasDidHideUI = objc_opt_respondsToSelector() & 1;
    self->_adrcDelegateFlags.hasShowcaseFactorDidChange = objc_opt_respondsToSelector() & 1;
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
    *&self->_adrcDelegateFlags.hasSelectedMediaInfoDidChange = 0;
    self->_adrcDelegateFlags.hasShowcaseFactorDidChange = 0;
  }

  self->_adrcDelegateFlags.hasDidCompleteDocumentCreation = v5 & 1;
}

- (void)setMediaController:(id)a3
{
  v18 = a3;
  if (self->_mediaController != v18)
  {
    if ([(_TVAppDocumentRequestController *)self isViewLoaded])
    {
      v5 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];

      if (v5)
      {
        v6 = [(TVMediaController *)self->_mediaController view];
        v7 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
        v8 = [v7 menuGestureRecognizer];
        [v6 removeGestureRecognizer:v8];

        v9 = [(_TVAppDocumentRequestController *)self view];
        v10 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
        v11 = [v10 swipeUpGestureRecognizer];
        [v9 removeGestureRecognizer:v11];
      }
    }

    [(_TVAppDocumentRequestController *)self setMediaPlaybackManager:0];
    objc_storeStrong(&self->_mediaController, a3);
    mediaController = self->_mediaController;
    if (mediaController)
    {
      [(TVMediaController *)mediaController setDelegate:self];
      v13 = [[TVMediaPlaybackManager alloc] initWithMediaController:self->_mediaController];
      [(_TVAppDocumentRequestController *)self setMediaPlaybackManager:v13];

      [(TVMediaPlaybackManager *)self->_mediaPlaybackManager setDelegate:self];
      if ([(_TVAppDocumentRequestController *)self isViewLoaded])
      {
        v14 = [(TVMediaController *)self->_mediaController view];
        v15 = [(TVMediaPlaybackManager *)self->_mediaPlaybackManager menuGestureRecognizer];
        [v14 addGestureRecognizer:v15];

        v16 = [(_TVAppDocumentRequestController *)self view];
        v17 = [(TVMediaPlaybackManager *)self->_mediaPlaybackManager swipeUpGestureRecognizer];
        [v16 addGestureRecognizer:v17];
      }
    }
  }
}

- (void)setShowcasingController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_showcasingController);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_showcasingController);
    [v5 removeObserver:self forEvent:@"TVShowcaseFactorDidChangeEvent"];

    v6 = objc_storeWeak(&self->_showcasingController, obj);
    [(_TVAppDocumentRequestController *)self showcaseInset];
    [obj setShowcaseInset:?];

    v7 = objc_loadWeakRetained(&self->_showcasingController);
    [v7 addObserver:self forEvent:@"TVShowcaseFactorDidChangeEvent"];

    [(_TVAppDocumentRequestController *)self _updateShowcaseFactor];
  }
}

- (void)setMediaProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mediaProvider);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_mediaProvider);
    [v5 removeObserver:self forEvent:@"TVSelectedMediaInfoDidChangeEvent"];

    v6 = objc_storeWeak(&self->_mediaProvider, obj);
    [obj addObserver:self forEvent:@"TVSelectedMediaInfoDidChangeEvent"];

    [(_TVAppDocumentRequestController *)self _updateMediaInfo];
  }
}

- (void)sendInitialRequestIfNeeded
{
  if (!self->_flags.initialRequestSent)
  {
    self->_flags.initialRequestSent = 1;
    v3 = [(_TVAppDocumentRequestController *)self documentServiceRequest];
    [v3 send];
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v11 viewDidLoad];
  v3 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];

  if (v3)
  {
    v4 = [(_TVAppDocumentRequestController *)self mediaController];
    v5 = [v4 view];
    v6 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
    v7 = [v6 menuGestureRecognizer];
    [v5 addGestureRecognizer:v7];

    v8 = [(_TVAppDocumentRequestController *)self view];
    v9 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
    v10 = [v9 swipeUpGestureRecognizer];
    [v8 addGestureRecognizer:v10];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v16 viewWillAppear:a3];
  if (!self->_flags.initialRequestSent)
  {
    self->_flags.initialRequestSent = 1;
    v4 = [(_TVAppDocumentRequestController *)self documentServiceRequest];
    [v4 send];
  }

  v5 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  if (v5)
  {
    v6 = v5;
    v7 = [(_TVAppDocumentController *)self templateViewController];
    v8 = [v7 isViewLoaded];

    if (v8)
    {
      v9 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
      if ([v9 shouldHideUI])
      {
        self->_flags.shouldHideUI = 1;
        p_shouldHideUI = &self->_flags.shouldHideUI;
      }

      else
      {
        v11 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
        self->_flags.shouldHideUI = [v11 currentUIMode] == 1;
        p_shouldHideUI = &self->_flags.shouldHideUI;
      }

      v12 = [(_TVAppDocumentController *)self templateViewController];
      v13 = [v12 view];
      v14 = v13;
      v15 = 1.0;
      if (*p_shouldHideUI)
      {
        v15 = 0.0;
      }

      [v13 setAlpha:v15];
    }
  }

  [(_TVAppDocumentRequestController *)self _hostMediaControllerIfPossible];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v5 viewDidAppear:a3];
  v4 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [v4 onAppear];

  [(_TVAppDocumentRequestController *)self _hostMediaControllerIfPossible];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v5 viewWillDisappear:a3];
  v4 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [v4 onDisappear];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v18 viewDidLayoutSubviews];
  v3 = [(_TVAppDocumentRequestController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(_TVAppDocumentRequestController *)self swipeUpMessageView];
  [v8 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  if (v10 > 0.0)
  {
    v11 = v9;
    v12 = v10;
    [v8 setCenter:{v5 * 0.5, v7 * 0.5}];
    [v8 setBounds:{0.0, 0.0, v11, v12}];
    [(_TVAppDocumentRequestController *)self showcaseInset];
    v14 = v13 <= 0.0;
    v15 = 34.0;
    if (!v14)
    {
      v15 = 64.0;
    }

    v16 = v7 * 0.5 - v15;
    v17 = [v8 layer];
    [v17 setAnchorPoint:{0.5, v16 / v12}];

    [v3 bringSubviewToFront:v8];
  }
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_flags.shouldHideUI && ([(_TVAppDocumentRequestController *)self mediaController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(_TVAppDocumentRequestController *)self mediaController];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVAppDocumentRequestController;
    v5 = [(_TVAppDocumentController *)&v7 preferredFocusEnvironments];
  }

  return v5;
}

- (void)willHostTemplateViewController:(id)a3 usesTransitions:(BOOL *)a4
{
  if (self->_flags.shouldHideUI)
  {
    v5 = [a3 view];
    [v5 setAlpha:0.0];

    *a4 = 0;
  }
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 fromViewController:(id)a4
{
  v6 = a4;
  v7 = [(_TVAppDocumentController *)self adoptsContext];
  if (a3 == 1 && v7)
  {
    v8 = objc_alloc_init(TVMediaTransitionAnimator);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _TVAppDocumentRequestController;
    v8 = [(_TVAppDocumentController *)&v11 customAnimatorForNavigationControllerOperation:a3 fromViewController:v6];
  }

  v9 = v8;

  return v9;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)a3 toViewController:(id)a4
{
  v6 = a4;
  v7 = [(_TVAppDocumentController *)self adoptsContext];
  if (a3 == 2 && v7)
  {
    v8 = objc_alloc_init(TVMediaTransitionAnimator);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _TVAppDocumentRequestController;
    v8 = [(_TVAppDocumentController *)&v11 customAnimatorForNavigationControllerOperation:a3 toViewController:v6];
  }

  v9 = v8;

  return v9;
}

- (id)relinquishOwnership
{
  v3 = [(_TVAppDocumentRequestController *)self mediaController];
  [(_TVAppDocumentRequestController *)self setMediaController:0];
  if (v3)
  {
    v4 = [v3 parentViewController];

    if (v4 == self)
    {
      [v3 willMoveToParentViewController:0];
      v5 = [v3 view];
      [v5 removeFromSuperview];

      [v3 removeFromParentViewController];
    }
  }

  return v3;
}

- (void)adoptMediaController:(id)a3
{
  v4 = a3;
  [v4 setShouldZoomWhenTransitioningToBackground:1];
  [v4 transitionToForeground:0 animated:1];
  [(_TVAppDocumentRequestController *)self setMediaController:v4];
}

- (void)featuresManager:(id)a3 currentContextDidChangeForFeature:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (&unk_287EA0F28 == v6)
  {
    v8 = [(TVTemplateFeaturesManager *)self->_featuresManager currentContextForFeature:?];
    [(_TVAppDocumentRequestController *)self setShowcasingController:v8];
  }

  else
  {
    if (&unk_287E8B710 != v6)
    {
      goto LABEL_6;
    }

    v8 = [(TVTemplateFeaturesManager *)self->_featuresManager currentContextForFeature:?];
    [(_TVAppDocumentRequestController *)self setMediaProvider:v8];
  }

LABEL_6:
}

- (void)coverImageDidChangeForMediaController:(id)a3
{
  v4 = [(_TVAppDocumentRequestController *)self observableEventController];
  [v4 dispatchEvent:@"TVMediaPlayingCoverImageDidChangeEvent" sender:self withUserInfo:0];
}

- (void)stateDidChangeForMediaController:(id)a3
{
  v4 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [v4 onMediaControllerStateDidChange];

  v5 = [(_TVAppDocumentRequestController *)self observableEventController];
  [v5 dispatchEvent:@"TVMediaPlayingStateDidChangeEvent" sender:self withUserInfo:0];
}

- (void)mediaPlaybackManager:(id)a3 shouldHideUI:(BOOL)a4 animated:(BOOL)a5 animations:(id)a6 completion:(id)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(_TVAppDocumentController *)self templateViewController];
  v16 = [v15 isViewLoaded];

  if (v16)
  {
    if ([v12 currentUIMode] == 1)
    {
      [(_TVAppDocumentRequestController *)self shouldHideSupplementaryUI:v10 animated:v9 completion:v14];
    }

    else if (self->_flags.shouldHideUI != v10)
    {
      self->_flags.shouldHideUI = v10;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke;
      v25[3] = &unk_279D6E6D0;
      v26 = v10;
      v25[4] = self;
      v17 = MEMORY[0x26D6AFBB0](v25);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke_2;
      v22[3] = &unk_279D6FA60;
      v24 = v10;
      v22[4] = self;
      v23 = v13;
      v18 = MEMORY[0x26D6AFBB0](v22);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke_3;
      v20[3] = &unk_279D70E88;
      v20[4] = self;
      v21 = v14;
      v19 = MEMORY[0x26D6AFBB0](v20);
      if (v9)
      {
        v17[2](v17);
        [MEMORY[0x277D75D18] animateWithDuration:0 delay:v18 options:v19 animations:0.25 completion:0.0];
      }

      else
      {
        v18[2](v18);
        v19[2](v19, 1);
      }
    }
  }

  else if (v14)
  {
    (*(v14 + 2))(v14, 1);
  }
}

- (void)evaluateSwipeUpMessageForMediaPlaybackManager:(id)a3
{
  v14 = [(_TVAppDocumentRequestController *)self swipeUpMessageView];
  v4 = [(_TVAppDocumentRequestController *)self mediaController];
  v5 = [v4 state];

  if (v5 == 4 || (-[_TVAppDocumentRequestController mediaPlaybackManager](self, "mediaPlaybackManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 swipeUpGestureRecognizer], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEnabled"), v7, v6, !v8))
  {
    [v14 setEnabled:0];
  }

  else
  {
    if (!v14)
    {
      v14 = objc_opt_new();
      v9 = _TVMLLocString(@"TVMediaPlaybackSwipeUpMessage", @"Localizable");
      [v14 setMessage:v9];

      v10 = [MEMORY[0x277D75348] tv_opacityColorForType:1 userInterfaceStyle:2];
      [v14 setTintColor:v10];

      v11 = [(_TVAppDocumentRequestController *)self view];
      [v11 addSubview:v14];

      [(_TVAppDocumentRequestController *)self setSwipeUpMessageView:v14];
    }

    v12 = [(_TVAppDocumentRequestController *)self mediaController];
    v13 = [v12 mediaInfo];
    [v14 setEnabled:{objc_msgSend(v13, "intent") == 0}];
  }
}

- (void)addObserver:(id)a3 forEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_TVAppDocumentRequestController *)self observableEventController];
  [v8 addObserver:v7 forEvent:v6];
}

- (void)removeObserver:(id)a3 forEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_TVAppDocumentRequestController *)self observableEventController];
  [v8 removeObserver:v7 forEvent:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(_TVAppDocumentRequestController *)self observableEventController];
  [v5 removeObserver:v4];
}

- (void)handleEvent:(id)a3 sender:(id)a4 withUserInfo:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (@"TVSelectedMediaInfoDidChangeEvent" == v10)
  {
    [(_TVAppDocumentRequestController *)self _updateMediaInfo];
  }

  else if (@"TVShowcaseFactorDidChangeEvent" == v10)
  {
    [(_TVAppDocumentRequestController *)self _updateShowcaseFactor];
  }
}

- (UIImage)coverImage
{
  v2 = [(_TVAppDocumentRequestController *)self mediaController];
  v3 = [v2 coverImage];

  return v3;
}

- (BOOL)isPlaying
{
  v2 = [(_TVAppDocumentRequestController *)self mediaController];
  v3 = [v2 state];

  return (v3 - 2) < 3;
}

- (void)serviceRequest:(id)a3 didCompleteWithStatus:(int64_t)a4 errorDictionary:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [(_TVAppDocumentRequestController *)self documentServiceRequest];

  if (v9 == v14)
  {
    [v14 setDelegate:0];
    if (self->_adrcDelegateFlags.hasDidCompleteDocumentCreation)
    {
      v12 = [(_TVAppDocumentController *)self appDelegate];
      [v12 appDocumentController:self didCompleteDocumentCreationWithStatus:a4 errorDictionary:v8];
    }

    [(_TVAppDocumentRequestController *)self didCompleteDocumentCreationWithStatus:a4 errorDictionary:v8];
  }

  else
  {
    v10 = [(_TVAppDocumentRequestController *)self updateServiceRequest];

    if (v10 == v14)
    {
      [v14 setDelegate:0];
      [(_TVAppDocumentRequestController *)self setUpdateServiceRequest:0];
      if (a4)
      {
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVDocumentErrorDomain" code:a4 != 1 userInfo:v8];
        [(TVDocumentViewController *)self didFailUpdateWithError:v11];
      }

      else
      {
        v11 = [v14 serviceContext];
        v13 = [v11 contextDictionary];
        [(TVDocumentViewController *)self didUpdateWithContext:v13];
      }
    }
  }
}

- (void)documentDidChangeForDocumentServiceRequest:(id)a3
{
  v5 = [(_TVAppDocumentRequestController *)self documentServiceRequest];
  v4 = [v5 appDocument];
  [(_TVAppDocumentController *)self replaceAppDocumentWithAppDocument:v4];
}

- (BOOL)tv_handleEventForDocument:(id)a3 eventName:(id)a4 targetResponder:(id)a5 viewElement:(id)a6 extraInfo:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [v14 onEvent];

  v15 = [v13 tv_associatedViewElement];
  v16 = [(TVDocumentViewController *)self handleEvent:v11 withElement:v15 targetResponder:v12];

  v17 = v16 || [(_TVAppDocumentRequestController *)self handleEvent:v11 targetResponder:v12 viewElement:v13 extraInfo:a7];
  return v17;
}

- (void)didChangeDocumentContext
{
  v14 = [(TVDocumentViewController *)self documentContext];
  v3 = [(_TVAppDocumentRequestController *)self updateServiceRequest];

  if (v3)
  {
    v4 = [(_TVAppDocumentRequestController *)self updateServiceRequest];
    [v4 setDelegate:0];

    v5 = [(_TVAppDocumentRequestController *)self updateServiceRequest];
    [v5 cancel];
  }

  v6 = objc_alloc(MEMORY[0x277D1B0D8]);
  v7 = [(_TVAppDocumentController *)self appDocument];
  v8 = [v7 templateElement];
  v9 = [v6 initWithContextDictionary:v14 element:v8];

  v10 = objc_alloc(MEMORY[0x277D1B118]);
  v11 = [(_TVAppDocumentController *)self appDocument];
  v12 = [v11 appContext];
  v13 = [v10 initWithAppContext:v12 serviceContext:v9];

  [v13 setDelegate:self];
  [(_TVAppDocumentRequestController *)self setUpdateServiceRequest:v13];
  [v13 send];
}

- (void)_hostMediaControllerIfPossible
{
  v3 = [(_TVAppDocumentRequestController *)self mediaController];
  if (v3)
  {
    v14 = v3;
    v4 = [v3 parentViewController];

    v3 = v14;
    if (!v4)
    {
      if ([v14 isViewLoaded])
      {
        v5 = [v14 view];
        v6 = [v5 superview];
        v7 = [(_TVAppDocumentRequestController *)self view];
        v8 = [v6 isDescendantOfView:v7];

        if ((v8 & 1) == 0)
        {
          v9 = [v14 view];
          [v9 removeFromSuperview];
        }
      }

      [(_TVAppDocumentRequestController *)self addChildViewController:v14];
      v10 = [v14 view];
      v11 = [(_TVAppDocumentRequestController *)self view];
      [v11 bounds];
      [v10 setFrame:?];

      v12 = [(_TVAppDocumentRequestController *)self view];
      v13 = [v14 view];
      [v12 insertSubview:v13 atIndex:0];

      [v14 didMoveToParentViewController:self];
      v3 = v14;
    }
  }
}

- (id)_hostingFocusEnvironment
{
  v3 = [(_TVAppDocumentRequestController *)self mediaController];
  v4 = [v3 view];

  v5 = self;
  v6 = v5;
  if (v4 && v5)
  {
    do
    {
      v7 = [v6 view];
      v8 = [v4 isDescendantOfView:v7];

      if (v8)
      {
        break;
      }

      v9 = [v6 parentViewController];

      v6 = v9;
    }

    while (v9);
  }

  return v6;
}

- (void)_updateMediaInfo
{
  v3 = [(_TVAppDocumentRequestController *)self mediaProvider];
  obj = [v3 selectedMediaInfo];

  v4 = obj;
  selectedMediaInfo = self->_selectedMediaInfo;
  if (selectedMediaInfo != obj)
  {
    selectedMediaInfo = [selectedMediaInfo isEqual:obj];
    v4 = obj;
    if ((selectedMediaInfo & 1) == 0)
    {
      objc_storeStrong(&self->_selectedMediaInfo, obj);
      [(_TVAppDocumentRequestController *)self showcaseFactor];
      v6 = [(_TVAppDocumentRequestController *)self mediaController];
      v7 = [(_TVAppDocumentRequestController *)self selectedMediaInfo];
      [v6 setMediaInfo:v7];

      selectedMediaInfo = [(_TVAppDocumentRequestController *)self mediaInfoDidChange];
      v4 = obj;
      if (self->_adrcDelegateFlags.hasSelectedMediaInfoDidChange)
      {
        v8 = [(_TVAppDocumentController *)self appDelegate];
        [v8 selectedMediaInfoDidChangeForAppDocumentController:self];

        v4 = obj;
      }
    }
  }

  MEMORY[0x2821F96F8](selectedMediaInfo, v4);
}

- (void)_updateShowcaseFactor
{
  if (self->_flags.shouldHideUI)
  {
    v3 = NAN;
  }

  else
  {
    v4 = [(_TVAppDocumentRequestController *)self showcasingController];
    [v4 showcaseFactor];
    v3 = v5;
  }

  if (self->_showcaseFactor != v3)
  {
    self->_showcaseFactor = v3;
    [(_TVAppDocumentRequestController *)self showcaseFactor];
    v6 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
    [(_TVAppDocumentRequestController *)self showcaseFactor];
    [v6 setShowcaseFactor:?];

    [(_TVAppDocumentRequestController *)self showcaseFactorDidChange];
    if (self->_adrcDelegateFlags.hasShowcaseFactorDidChange)
    {
      v7 = [(_TVAppDocumentController *)self appDelegate];
      [v7 showcaseFactorDidChangeForAppDocumentController:self];
    }
  }
}

- (TVShowcasing)showcasingController
{
  WeakRetained = objc_loadWeakRetained(&self->_showcasingController);

  return WeakRetained;
}

- (TVMediaProviding)mediaProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaProvider);

  return WeakRetained;
}

@end