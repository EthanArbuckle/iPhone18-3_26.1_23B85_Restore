@interface _TVAppDocumentRequestController
- (BOOL)isPlaying;
- (BOOL)tv_handleEventForDocument:(id)document eventName:(id)name targetResponder:(id)responder viewElement:(id)element extraInfo:(id *)info;
- (TVMediaProviding)mediaProvider;
- (TVShowcasing)showcasingController;
- (UIImage)coverImage;
- (_TVAppDocumentRequestController)initWithAppDocument:(id)document;
- (_TVAppDocumentRequestController)initWithDocumentServiceRequest:(id)request loadImmediately:(BOOL)immediately;
- (id)_hostingFocusEnvironment;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation fromViewController:(id)controller;
- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation toViewController:(id)controller;
- (id)preferredFocusEnvironments;
- (id)relinquishOwnership;
- (void)_hostMediaControllerIfPossible;
- (void)_updateMediaInfo;
- (void)_updateShowcaseFactor;
- (void)addObserver:(id)observer forEvent:(id)event;
- (void)adoptMediaController:(id)controller;
- (void)coverImageDidChangeForMediaController:(id)controller;
- (void)dealloc;
- (void)didChangeDocumentContext;
- (void)documentDidChangeForDocumentServiceRequest:(id)request;
- (void)evaluateSwipeUpMessageForMediaPlaybackManager:(id)manager;
- (void)featuresManager:(id)manager currentContextDidChangeForFeature:(id)feature;
- (void)handleEvent:(id)event sender:(id)sender withUserInfo:(id)info;
- (void)mediaPlaybackManager:(id)manager shouldHideUI:(BOOL)i animated:(BOOL)animated animations:(id)animations completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer forEvent:(id)event;
- (void)sendInitialRequestIfNeeded;
- (void)serviceRequest:(id)request didCompleteWithStatus:(int64_t)status errorDictionary:(id)dictionary;
- (void)setAppDelegate:(id)delegate;
- (void)setMediaController:(id)controller;
- (void)setMediaProvider:(id)provider;
- (void)setShowcasingController:(id)controller;
- (void)stateDidChangeForMediaController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willHostTemplateViewController:(id)controller usesTransitions:(BOOL *)transitions;
@end

@implementation _TVAppDocumentRequestController

- (_TVAppDocumentRequestController)initWithAppDocument:(id)document
{
  v9.receiver = self;
  v9.super_class = _TVAppDocumentRequestController;
  v3 = [(_TVAppDocumentController *)&v9 initWithAppDocument:document];
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

- (_TVAppDocumentRequestController)initWithDocumentServiceRequest:(id)request loadImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  requestCopy = request;
  appDocument = [requestCopy appDocument];
  v9 = [(_TVAppDocumentRequestController *)self initWithAppDocument:appDocument];

  if (v9)
  {
    objc_storeStrong(&v9->_documentServiceRequest, request);
    [(IKDocumentServiceRequest *)v9->_documentServiceRequest setDelegate:v9];
    if (immediatelyCopy)
    {
      v9->_flags.initialRequestSent = 1;
      [(IKDocumentServiceRequest *)v9->_documentServiceRequest send];
    }
  }

  return v9;
}

- (void)dealloc
{
  documentServiceRequest = [(_TVAppDocumentRequestController *)self documentServiceRequest];
  [documentServiceRequest setDelegate:0];

  documentServiceRequest2 = [(_TVAppDocumentRequestController *)self documentServiceRequest];
  [documentServiceRequest2 cancel];

  [(TVTemplateFeaturesManager *)self->_featuresManager popContext:self forFeature:&unk_287E9FB40];
  [(_TVAppDocumentRequestController *)self setShowcasingController:0];
  [(_TVAppDocumentRequestController *)self setMediaProvider:0];
  v5.receiver = self;
  v5.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v5 dealloc];
}

- (void)setAppDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6.receiver = self;
  v6.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v6 setAppDelegate:delegateCopy];
  if ([delegateCopy conformsToProtocol:&unk_287EADB78])
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

- (void)setMediaController:(id)controller
{
  controllerCopy = controller;
  if (self->_mediaController != controllerCopy)
  {
    if ([(_TVAppDocumentRequestController *)self isViewLoaded])
    {
      mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];

      if (mediaPlaybackManager)
      {
        view = [(TVMediaController *)self->_mediaController view];
        mediaPlaybackManager2 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
        menuGestureRecognizer = [mediaPlaybackManager2 menuGestureRecognizer];
        [view removeGestureRecognizer:menuGestureRecognizer];

        view2 = [(_TVAppDocumentRequestController *)self view];
        mediaPlaybackManager3 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
        swipeUpGestureRecognizer = [mediaPlaybackManager3 swipeUpGestureRecognizer];
        [view2 removeGestureRecognizer:swipeUpGestureRecognizer];
      }
    }

    [(_TVAppDocumentRequestController *)self setMediaPlaybackManager:0];
    objc_storeStrong(&self->_mediaController, controller);
    mediaController = self->_mediaController;
    if (mediaController)
    {
      [(TVMediaController *)mediaController setDelegate:self];
      v13 = [[TVMediaPlaybackManager alloc] initWithMediaController:self->_mediaController];
      [(_TVAppDocumentRequestController *)self setMediaPlaybackManager:v13];

      [(TVMediaPlaybackManager *)self->_mediaPlaybackManager setDelegate:self];
      if ([(_TVAppDocumentRequestController *)self isViewLoaded])
      {
        view3 = [(TVMediaController *)self->_mediaController view];
        menuGestureRecognizer2 = [(TVMediaPlaybackManager *)self->_mediaPlaybackManager menuGestureRecognizer];
        [view3 addGestureRecognizer:menuGestureRecognizer2];

        view4 = [(_TVAppDocumentRequestController *)self view];
        swipeUpGestureRecognizer2 = [(TVMediaPlaybackManager *)self->_mediaPlaybackManager swipeUpGestureRecognizer];
        [view4 addGestureRecognizer:swipeUpGestureRecognizer2];
      }
    }
  }
}

- (void)setShowcasingController:(id)controller
{
  obj = controller;
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

- (void)setMediaProvider:(id)provider
{
  obj = provider;
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
    documentServiceRequest = [(_TVAppDocumentRequestController *)self documentServiceRequest];
    [documentServiceRequest send];
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v11 viewDidLoad];
  mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];

  if (mediaPlaybackManager)
  {
    mediaController = [(_TVAppDocumentRequestController *)self mediaController];
    view = [mediaController view];
    mediaPlaybackManager2 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
    menuGestureRecognizer = [mediaPlaybackManager2 menuGestureRecognizer];
    [view addGestureRecognizer:menuGestureRecognizer];

    view2 = [(_TVAppDocumentRequestController *)self view];
    mediaPlaybackManager3 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
    swipeUpGestureRecognizer = [mediaPlaybackManager3 swipeUpGestureRecognizer];
    [view2 addGestureRecognizer:swipeUpGestureRecognizer];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v16 viewWillAppear:appear];
  if (!self->_flags.initialRequestSent)
  {
    self->_flags.initialRequestSent = 1;
    documentServiceRequest = [(_TVAppDocumentRequestController *)self documentServiceRequest];
    [documentServiceRequest send];
  }

  mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  if (mediaPlaybackManager)
  {
    v6 = mediaPlaybackManager;
    templateViewController = [(_TVAppDocumentController *)self templateViewController];
    isViewLoaded = [templateViewController isViewLoaded];

    if (isViewLoaded)
    {
      mediaPlaybackManager2 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
      if ([mediaPlaybackManager2 shouldHideUI])
      {
        self->_flags.shouldHideUI = 1;
        p_shouldHideUI = &self->_flags.shouldHideUI;
      }

      else
      {
        mediaPlaybackManager3 = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
        self->_flags.shouldHideUI = [mediaPlaybackManager3 currentUIMode] == 1;
        p_shouldHideUI = &self->_flags.shouldHideUI;
      }

      templateViewController2 = [(_TVAppDocumentController *)self templateViewController];
      view = [templateViewController2 view];
      v14 = view;
      v15 = 1.0;
      if (*p_shouldHideUI)
      {
        v15 = 0.0;
      }

      [view setAlpha:v15];
    }
  }

  [(_TVAppDocumentRequestController *)self _hostMediaControllerIfPossible];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v5 viewDidAppear:appear];
  mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [mediaPlaybackManager onAppear];

  [(_TVAppDocumentRequestController *)self _hostMediaControllerIfPossible];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v5 viewWillDisappear:disappear];
  mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [mediaPlaybackManager onDisappear];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = _TVAppDocumentRequestController;
  [(_TVAppDocumentController *)&v18 viewDidLayoutSubviews];
  view = [(_TVAppDocumentRequestController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  swipeUpMessageView = [(_TVAppDocumentRequestController *)self swipeUpMessageView];
  [swipeUpMessageView sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  if (v10 > 0.0)
  {
    v11 = v9;
    v12 = v10;
    [swipeUpMessageView setCenter:{v5 * 0.5, v7 * 0.5}];
    [swipeUpMessageView setBounds:{0.0, 0.0, v11, v12}];
    [(_TVAppDocumentRequestController *)self showcaseInset];
    v14 = v13 <= 0.0;
    v15 = 34.0;
    if (!v14)
    {
      v15 = 64.0;
    }

    v16 = v7 * 0.5 - v15;
    layer = [swipeUpMessageView layer];
    [layer setAnchorPoint:{0.5, v16 / v12}];

    [view bringSubviewToFront:swipeUpMessageView];
  }
}

- (id)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_flags.shouldHideUI && ([(_TVAppDocumentRequestController *)self mediaController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    mediaController = [(_TVAppDocumentRequestController *)self mediaController];
    v8[0] = mediaController;
    preferredFocusEnvironments = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _TVAppDocumentRequestController;
    preferredFocusEnvironments = [(_TVAppDocumentController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)willHostTemplateViewController:(id)controller usesTransitions:(BOOL *)transitions
{
  if (self->_flags.shouldHideUI)
  {
    view = [controller view];
    [view setAlpha:0.0];

    *transitions = 0;
  }
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation fromViewController:(id)controller
{
  controllerCopy = controller;
  adoptsContext = [(_TVAppDocumentController *)self adoptsContext];
  if (operation == 1 && adoptsContext)
  {
    v8 = objc_alloc_init(TVMediaTransitionAnimator);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _TVAppDocumentRequestController;
    v8 = [(_TVAppDocumentController *)&v11 customAnimatorForNavigationControllerOperation:operation fromViewController:controllerCopy];
  }

  v9 = v8;

  return v9;
}

- (id)customAnimatorForNavigationControllerOperation:(int64_t)operation toViewController:(id)controller
{
  controllerCopy = controller;
  adoptsContext = [(_TVAppDocumentController *)self adoptsContext];
  if (operation == 2 && adoptsContext)
  {
    v8 = objc_alloc_init(TVMediaTransitionAnimator);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _TVAppDocumentRequestController;
    v8 = [(_TVAppDocumentController *)&v11 customAnimatorForNavigationControllerOperation:operation toViewController:controllerCopy];
  }

  v9 = v8;

  return v9;
}

- (id)relinquishOwnership
{
  mediaController = [(_TVAppDocumentRequestController *)self mediaController];
  [(_TVAppDocumentRequestController *)self setMediaController:0];
  if (mediaController)
  {
    parentViewController = [mediaController parentViewController];

    if (parentViewController == self)
    {
      [mediaController willMoveToParentViewController:0];
      view = [mediaController view];
      [view removeFromSuperview];

      [mediaController removeFromParentViewController];
    }
  }

  return mediaController;
}

- (void)adoptMediaController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setShouldZoomWhenTransitioningToBackground:1];
  [controllerCopy transitionToForeground:0 animated:1];
  [(_TVAppDocumentRequestController *)self setMediaController:controllerCopy];
}

- (void)featuresManager:(id)manager currentContextDidChangeForFeature:(id)feature
{
  managerCopy = manager;
  featureCopy = feature;
  v7 = featureCopy;
  if (&unk_287EA0F28 == featureCopy)
  {
    v8 = [(TVTemplateFeaturesManager *)self->_featuresManager currentContextForFeature:?];
    [(_TVAppDocumentRequestController *)self setShowcasingController:v8];
  }

  else
  {
    if (&unk_287E8B710 != featureCopy)
    {
      goto LABEL_6;
    }

    v8 = [(TVTemplateFeaturesManager *)self->_featuresManager currentContextForFeature:?];
    [(_TVAppDocumentRequestController *)self setMediaProvider:v8];
  }

LABEL_6:
}

- (void)coverImageDidChangeForMediaController:(id)controller
{
  observableEventController = [(_TVAppDocumentRequestController *)self observableEventController];
  [observableEventController dispatchEvent:@"TVMediaPlayingCoverImageDidChangeEvent" sender:self withUserInfo:0];
}

- (void)stateDidChangeForMediaController:(id)controller
{
  mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [mediaPlaybackManager onMediaControllerStateDidChange];

  observableEventController = [(_TVAppDocumentRequestController *)self observableEventController];
  [observableEventController dispatchEvent:@"TVMediaPlayingStateDidChangeEvent" sender:self withUserInfo:0];
}

- (void)mediaPlaybackManager:(id)manager shouldHideUI:(BOOL)i animated:(BOOL)animated animations:(id)animations completion:(id)completion
{
  animatedCopy = animated;
  iCopy = i;
  managerCopy = manager;
  animationsCopy = animations;
  completionCopy = completion;
  templateViewController = [(_TVAppDocumentController *)self templateViewController];
  isViewLoaded = [templateViewController isViewLoaded];

  if (isViewLoaded)
  {
    if ([managerCopy currentUIMode] == 1)
    {
      [(_TVAppDocumentRequestController *)self shouldHideSupplementaryUI:iCopy animated:animatedCopy completion:completionCopy];
    }

    else if (self->_flags.shouldHideUI != iCopy)
    {
      self->_flags.shouldHideUI = iCopy;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke;
      v25[3] = &unk_279D6E6D0;
      v26 = iCopy;
      v25[4] = self;
      v17 = MEMORY[0x26D6AFBB0](v25);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke_2;
      v22[3] = &unk_279D6FA60;
      v24 = iCopy;
      v22[4] = self;
      v23 = animationsCopy;
      v18 = MEMORY[0x26D6AFBB0](v22);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __100___TVAppDocumentRequestController_mediaPlaybackManager_shouldHideUI_animated_animations_completion___block_invoke_3;
      v20[3] = &unk_279D70E88;
      v20[4] = self;
      v21 = completionCopy;
      v19 = MEMORY[0x26D6AFBB0](v20);
      if (animatedCopy)
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

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)evaluateSwipeUpMessageForMediaPlaybackManager:(id)manager
{
  swipeUpMessageView = [(_TVAppDocumentRequestController *)self swipeUpMessageView];
  mediaController = [(_TVAppDocumentRequestController *)self mediaController];
  state = [mediaController state];

  if (state == 4 || (-[_TVAppDocumentRequestController mediaPlaybackManager](self, "mediaPlaybackManager"), v6 = objc_claimAutoreleasedReturnValue(), [v6 swipeUpGestureRecognizer], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEnabled"), v7, v6, !v8))
  {
    [swipeUpMessageView setEnabled:0];
  }

  else
  {
    if (!swipeUpMessageView)
    {
      swipeUpMessageView = objc_opt_new();
      v9 = _TVMLLocString(@"TVMediaPlaybackSwipeUpMessage", @"Localizable");
      [swipeUpMessageView setMessage:v9];

      v10 = [MEMORY[0x277D75348] tv_opacityColorForType:1 userInterfaceStyle:2];
      [swipeUpMessageView setTintColor:v10];

      view = [(_TVAppDocumentRequestController *)self view];
      [view addSubview:swipeUpMessageView];

      [(_TVAppDocumentRequestController *)self setSwipeUpMessageView:swipeUpMessageView];
    }

    mediaController2 = [(_TVAppDocumentRequestController *)self mediaController];
    mediaInfo = [mediaController2 mediaInfo];
    [swipeUpMessageView setEnabled:{objc_msgSend(mediaInfo, "intent") == 0}];
  }
}

- (void)addObserver:(id)observer forEvent:(id)event
{
  eventCopy = event;
  observerCopy = observer;
  observableEventController = [(_TVAppDocumentRequestController *)self observableEventController];
  [observableEventController addObserver:observerCopy forEvent:eventCopy];
}

- (void)removeObserver:(id)observer forEvent:(id)event
{
  eventCopy = event;
  observerCopy = observer;
  observableEventController = [(_TVAppDocumentRequestController *)self observableEventController];
  [observableEventController removeObserver:observerCopy forEvent:eventCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observableEventController = [(_TVAppDocumentRequestController *)self observableEventController];
  [observableEventController removeObserver:observerCopy];
}

- (void)handleEvent:(id)event sender:(id)sender withUserInfo:(id)info
{
  eventCopy = event;
  senderCopy = sender;
  infoCopy = info;
  if (@"TVSelectedMediaInfoDidChangeEvent" == eventCopy)
  {
    [(_TVAppDocumentRequestController *)self _updateMediaInfo];
  }

  else if (@"TVShowcaseFactorDidChangeEvent" == eventCopy)
  {
    [(_TVAppDocumentRequestController *)self _updateShowcaseFactor];
  }
}

- (UIImage)coverImage
{
  mediaController = [(_TVAppDocumentRequestController *)self mediaController];
  coverImage = [mediaController coverImage];

  return coverImage;
}

- (BOOL)isPlaying
{
  mediaController = [(_TVAppDocumentRequestController *)self mediaController];
  state = [mediaController state];

  return (state - 2) < 3;
}

- (void)serviceRequest:(id)request didCompleteWithStatus:(int64_t)status errorDictionary:(id)dictionary
{
  requestCopy = request;
  dictionaryCopy = dictionary;
  documentServiceRequest = [(_TVAppDocumentRequestController *)self documentServiceRequest];

  if (documentServiceRequest == requestCopy)
  {
    [requestCopy setDelegate:0];
    if (self->_adrcDelegateFlags.hasDidCompleteDocumentCreation)
    {
      appDelegate = [(_TVAppDocumentController *)self appDelegate];
      [appDelegate appDocumentController:self didCompleteDocumentCreationWithStatus:status errorDictionary:dictionaryCopy];
    }

    [(_TVAppDocumentRequestController *)self didCompleteDocumentCreationWithStatus:status errorDictionary:dictionaryCopy];
  }

  else
  {
    updateServiceRequest = [(_TVAppDocumentRequestController *)self updateServiceRequest];

    if (updateServiceRequest == requestCopy)
    {
      [requestCopy setDelegate:0];
      [(_TVAppDocumentRequestController *)self setUpdateServiceRequest:0];
      if (status)
      {
        serviceContext = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVDocumentErrorDomain" code:status != 1 userInfo:dictionaryCopy];
        [(TVDocumentViewController *)self didFailUpdateWithError:serviceContext];
      }

      else
      {
        serviceContext = [requestCopy serviceContext];
        contextDictionary = [serviceContext contextDictionary];
        [(TVDocumentViewController *)self didUpdateWithContext:contextDictionary];
      }
    }
  }
}

- (void)documentDidChangeForDocumentServiceRequest:(id)request
{
  documentServiceRequest = [(_TVAppDocumentRequestController *)self documentServiceRequest];
  appDocument = [documentServiceRequest appDocument];
  [(_TVAppDocumentController *)self replaceAppDocumentWithAppDocument:appDocument];
}

- (BOOL)tv_handleEventForDocument:(id)document eventName:(id)name targetResponder:(id)responder viewElement:(id)element extraInfo:(id *)info
{
  nameCopy = name;
  responderCopy = responder;
  elementCopy = element;
  mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
  [mediaPlaybackManager onEvent];

  tv_associatedViewElement = [elementCopy tv_associatedViewElement];
  v16 = [(TVDocumentViewController *)self handleEvent:nameCopy withElement:tv_associatedViewElement targetResponder:responderCopy];

  v17 = v16 || [(_TVAppDocumentRequestController *)self handleEvent:nameCopy targetResponder:responderCopy viewElement:elementCopy extraInfo:info];
  return v17;
}

- (void)didChangeDocumentContext
{
  documentContext = [(TVDocumentViewController *)self documentContext];
  updateServiceRequest = [(_TVAppDocumentRequestController *)self updateServiceRequest];

  if (updateServiceRequest)
  {
    updateServiceRequest2 = [(_TVAppDocumentRequestController *)self updateServiceRequest];
    [updateServiceRequest2 setDelegate:0];

    updateServiceRequest3 = [(_TVAppDocumentRequestController *)self updateServiceRequest];
    [updateServiceRequest3 cancel];
  }

  v6 = objc_alloc(MEMORY[0x277D1B0D8]);
  appDocument = [(_TVAppDocumentController *)self appDocument];
  templateElement = [appDocument templateElement];
  v9 = [v6 initWithContextDictionary:documentContext element:templateElement];

  v10 = objc_alloc(MEMORY[0x277D1B118]);
  appDocument2 = [(_TVAppDocumentController *)self appDocument];
  appContext = [appDocument2 appContext];
  v13 = [v10 initWithAppContext:appContext serviceContext:v9];

  [v13 setDelegate:self];
  [(_TVAppDocumentRequestController *)self setUpdateServiceRequest:v13];
  [v13 send];
}

- (void)_hostMediaControllerIfPossible
{
  mediaController = [(_TVAppDocumentRequestController *)self mediaController];
  if (mediaController)
  {
    v14 = mediaController;
    parentViewController = [mediaController parentViewController];

    mediaController = v14;
    if (!parentViewController)
    {
      if ([v14 isViewLoaded])
      {
        view = [v14 view];
        superview = [view superview];
        view2 = [(_TVAppDocumentRequestController *)self view];
        v8 = [superview isDescendantOfView:view2];

        if ((v8 & 1) == 0)
        {
          view3 = [v14 view];
          [view3 removeFromSuperview];
        }
      }

      [(_TVAppDocumentRequestController *)self addChildViewController:v14];
      view4 = [v14 view];
      view5 = [(_TVAppDocumentRequestController *)self view];
      [view5 bounds];
      [view4 setFrame:?];

      view6 = [(_TVAppDocumentRequestController *)self view];
      view7 = [v14 view];
      [view6 insertSubview:view7 atIndex:0];

      [v14 didMoveToParentViewController:self];
      mediaController = v14;
    }
  }
}

- (id)_hostingFocusEnvironment
{
  mediaController = [(_TVAppDocumentRequestController *)self mediaController];
  view = [mediaController view];

  selfCopy = self;
  v6 = selfCopy;
  if (view && selfCopy)
  {
    do
    {
      view2 = [v6 view];
      v8 = [view isDescendantOfView:view2];

      if (v8)
      {
        break;
      }

      parentViewController = [v6 parentViewController];

      v6 = parentViewController;
    }

    while (parentViewController);
  }

  return v6;
}

- (void)_updateMediaInfo
{
  mediaProvider = [(_TVAppDocumentRequestController *)self mediaProvider];
  obj = [mediaProvider selectedMediaInfo];

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
      mediaController = [(_TVAppDocumentRequestController *)self mediaController];
      selectedMediaInfo = [(_TVAppDocumentRequestController *)self selectedMediaInfo];
      [mediaController setMediaInfo:selectedMediaInfo];

      selectedMediaInfo = [(_TVAppDocumentRequestController *)self mediaInfoDidChange];
      v4 = obj;
      if (self->_adrcDelegateFlags.hasSelectedMediaInfoDidChange)
      {
        appDelegate = [(_TVAppDocumentController *)self appDelegate];
        [appDelegate selectedMediaInfoDidChangeForAppDocumentController:self];

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
    showcasingController = [(_TVAppDocumentRequestController *)self showcasingController];
    [showcasingController showcaseFactor];
    v3 = v5;
  }

  if (self->_showcaseFactor != v3)
  {
    self->_showcaseFactor = v3;
    [(_TVAppDocumentRequestController *)self showcaseFactor];
    mediaPlaybackManager = [(_TVAppDocumentRequestController *)self mediaPlaybackManager];
    [(_TVAppDocumentRequestController *)self showcaseFactor];
    [mediaPlaybackManager setShowcaseFactor:?];

    [(_TVAppDocumentRequestController *)self showcaseFactorDidChange];
    if (self->_adrcDelegateFlags.hasShowcaseFactorDidChange)
    {
      appDelegate = [(_TVAppDocumentController *)self appDelegate];
      [appDelegate showcaseFactorDidChangeForAppDocumentController:self];
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