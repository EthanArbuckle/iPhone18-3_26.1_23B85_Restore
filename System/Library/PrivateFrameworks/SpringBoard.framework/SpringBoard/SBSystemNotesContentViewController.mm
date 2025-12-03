@interface SBSystemNotesContentViewController
- (BOOL)_hitTestTouch:(id)touch gestureRecognizer:(id)recognizer;
- (BOOL)_updateForegroundStatus:(BOOL)status;
- (BOOL)containerViewController:(id)controller shouldHandleStashingForTransitionContext:(id)context;
- (BOOL)sceneHandle:(id)handle didReceiveAction:(id)action;
- (BOOL)shouldBeginPointerInteractionRequest:(id)request atLocation:(CGPoint)location forView:(id)view;
- (BOOL)transientUIHandledTouch:(id)touch withSystemGestureRecognizer:(id)recognizer;
- (CGRect)_sceneFrame;
- (CGSize)preferredContentSize;
- (SBSystemNotesContentViewController)initWithSceneHandle:(id)handle workspace:(id)workspace transientUIInteractionManager:(id)manager notesInteractionSettings:(id)settings presentationContext:(id)context;
- (SBSystemNotesContentViewControllerDelegate)delegate;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)view;
- (id)_imageFromUserActivity:(id)activity presentationMode:(int64_t)mode;
- (id)_sbWindowSceneForSceneHandle:(id)handle;
- (id)_thumbnailViewForUserActivity:(id)activity;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)previousLayoutStateForApplicationTransitionContext:(id)context;
- (id)styleForRegion:(id)region forView:(id)view;
- (int64_t)presentationMode;
- (unint64_t)_sendActionForUpdatedConfiguration:(id)configuration sendCreateIfNecessary:(BOOL)necessary;
- (unint64_t)updateConfiguration:(id)configuration sendCreateActionIfNecessary:(BOOL)necessary;
- (void)_acquireTraitsParticipantOnWindowSceneIfNecessary:(id)necessary;
- (void)_handleThumbnailTapGesture:(id)gesture;
- (void)_invalidateTraitsParticipant;
- (void)_setBlurred:(BOOL)blurred;
- (void)_setPreferredSceneContentSize:(CGSize)size;
- (void)_updateSceneFrameWithCompletion:(id)completion;
- (void)containerViewController:(id)controller didSettleOnStashState:(BOOL)state;
- (void)containerViewControllerDidEndInteraction:(id)interaction targetWindowScene:(id)scene;
- (void)containerViewControllerDidEndSizeChange:(id)change;
- (void)containerViewControllerWillBeginSizeChange:(id)change behavior:(int)behavior;
- (void)dealloc;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didDestroyScene:(id)scene;
- (void)setPresentationMode:(int64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSystemNotesContentViewController

- (SBSystemNotesContentViewController)initWithSceneHandle:(id)handle workspace:(id)workspace transientUIInteractionManager:(id)manager notesInteractionSettings:(id)settings presentationContext:(id)context
{
  handleCopy = handle;
  workspaceCopy = workspace;
  managerCopy = manager;
  settingsCopy = settings;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = SBSystemNotesContentViewController;
  v17 = [(SBSystemNotesContentViewController *)&v26 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_workspace, workspace);
    objc_storeStrong(&v18->_notesInteractionSettings, settings);
    objc_storeStrong(&v18->_transientUIInteractionManager, manager);
    v18->_preferredSceneContentSize.width = SBSystemNotesDefaultWindowSize();
    v18->_preferredSceneContentSize.height = v19;
    [handleCopy addObserver:v18];
    [handleCopy addActionConsumer:v18];
    v20 = [[SBDeviceApplicationSceneViewController alloc] initWithSceneHandle:handleCopy];
    sceneViewController = v18->_sceneViewController;
    v18->_sceneViewController = v20;

    [(SBDeviceApplicationSceneViewController *)v18->_sceneViewController setHomeGrabberDisplayMode:1];
    [(SBDeviceApplicationSceneViewController *)v18->_sceneViewController setDisplayMode:4 animationFactory:0 completion:0];
    v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel__handleThumbnailTapGesture_];
    thumbnailTapGestureRecognizer = v18->_thumbnailTapGestureRecognizer;
    v18->_thumbnailTapGestureRecognizer = v22;

    [(UITapGestureRecognizer *)v18->_thumbnailTapGestureRecognizer setAllowedTouchTypes:&unk_28336E8F8];
    objc_storeStrong(&v18->_presentationContext, context);
    requestedConfiguration = [(SBSystemNotesContentPresentationContext *)v18->_presentationContext requestedConfiguration];
    [(SBSystemNotesContentViewController *)v18 updateConfiguration:requestedConfiguration sendCreateActionIfNecessary:1];
  }

  return v18;
}

- (void)dealloc
{
  if ([(SBSystemNotesContentViewController *)self isViewLoaded])
  {
    [(SBDeviceApplicationSceneViewController *)self->_sceneViewController willMoveToParentViewController:0];
    view = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
    [view removeFromSuperview];

    [(SBDeviceApplicationSceneViewController *)self->_sceneViewController removeFromParentViewController];
    WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
    contentView = [(SBNubView *)self->_nubView contentView];
    [WeakRetained unregisterView:contentView];
  }

  [(SBSystemNotesContentViewController *)self _invalidateTraitsParticipant];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController invalidate];
  [(SBTransientUIInteractionManager *)self->_transientUIInteractionManager unregisterParticipantForTapToDismiss:self];
  [(BSAbsoluteMachTimer *)self->_thumbnailCooldownTimer invalidate];
  v6.receiver = self;
  v6.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v18 viewDidLoad];
  view = [(SBSystemNotesContentViewController *)self view];
  layer = [view layer];
  [layer setAllowsGroupOpacity:1];

  [view setClipsToBounds:1];
  [view addGestureRecognizer:self->_thumbnailTapGestureRecognizer];
  [view setAccessibilityIdentifier:@"system-notes-content-view"];
  layer2 = [view layer];
  [layer2 setBorderWidth:1.0];
  v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.15];
  [layer2 setBorderColor:{objc_msgSend(v6, "CGColor")}];

  [view addSubview:self->_thumbnailView];
  [(UIView *)self->_thumbnailView setContentMode:0];
  [(UIView *)self->_thumbnailView setOpaque:0];
  [(UIView *)self->_thumbnailView setAccessibilityIdentifier:@"system-notes-thumbnail-view"];
  [(SBSystemNotesContentViewController *)self addChildViewController:self->_sceneViewController];
  view2 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  layer3 = [view2 layer];
  [layer3 setAllowsGroupOpacity:1];

  [view addSubview:view2];
  [view2 setOpaque:0];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController didMoveToParentViewController:self];
  v9 = [SBSystemNotesBackgroundView alloc];
  [view2 bounds];
  v10 = [(SBSystemNotesBackgroundView *)v9 initWithFrame:?];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setBackgroundView:v10];
  v11 = [SBNubView alloc];
  sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  v13 = [(SBNubView *)v11 initWithDeviceApplicationSceneHandle:sceneHandle];
  nubView = self->_nubView;
  self->_nubView = v13;

  layer4 = [(SBNubView *)self->_nubView layer];
  [layer4 setHitTestsAsOpaque:1];

  [(SBNubView *)self->_nubView setHighlighted:0];
  [view2 addSubview:self->_nubView];
  [(SBNubView *)self->_nubView setAccessibilityIdentifier:@"system-notes-nub-view"];
  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  contentView = [(SBNubView *)self->_nubView contentView];
  [WeakRetained registerView:contentView delegate:self];

  [view bringSubviewToFront:self->_thumbnailView];
}

- (void)viewWillLayoutSubviews
{
  view = [(SBSystemNotesContentViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v8 - SBSystemNotesThumbnailSize();
  v13 = SBSystemNotesMinimumWindowSize();
  v14 = v12 / (v13 - SBSystemNotesThumbnailSize());
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = fmin(v14, 1.0);
  [(UIView *)self->_thumbnailView setFrame:v5, v7, v9, v11];
  [(SBApplicationBlurContentView *)self->_blurView setFrame:v5, v7, v9, v11];
  view2 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [view bounds];
  UIRectGetCenter();
  [view2 setCenter:?];
  width = self->_preferredSceneContentSize.width;
  height = self->_preferredSceneContentSize.height;
  [view2 setBounds:{0.0, 0.0, width, height}];
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeScale(&v28, v9 / width, v11 / height);
  v27 = v28;
  [view2 setTransform:&v27];
  +[SBNubView height];
  [(SBNubView *)self->_nubView setFrame:0.0, 0.0, width, v19];
  v20 = SBSystemNotesThumbnailCornerRadius();
  v21 = SBSystemNotesWindowCornerRadius();
  if (v20 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v20 >= v21)
  {
    v21 = v20;
  }

  [view _setContinuousCornerRadius:v22 + (v21 - v22) * v15];
  [(UIView *)self->_thumbnailView setAlpha:1.0 - v15];
  if (BSFloatLessThanOrEqualToFloat())
  {
    [view2 setHidden:1];
    thumbnailView = self->_thumbnailView;
LABEL_12:
    v25 = 0;
    goto LABEL_13;
  }

  v24 = BSFloatGreaterThanOrEqualToFloat();
  [view2 setHidden:0];
  thumbnailView = self->_thumbnailView;
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = 1;
LABEL_13:
  [(UIView *)thumbnailView setHidden:v25];
  _sbWindowScene = [view _sbWindowScene];
  [(SBSystemNotesContentViewController *)self _acquireTraitsParticipantOnWindowSceneIfNecessary:_sbWindowScene];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v6 viewWillAppear:appear];
  v4 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController statusBarAssertionWithStatusBarHidden:1 atLevel:0];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v11 viewDidAppear:appear];
  v5 = SBLogSystemNotes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBSystemNotesContentViewController *)&self->super.super.super.isa viewDidAppear:a2, v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  systemPointerInteractionManager = [_sbWindowScene systemPointerInteractionManager];

  if (WeakRetained != systemPointerInteractionManager)
  {
    contentView = [(SBNubView *)self->_nubView contentView];
    [WeakRetained unregisterView:contentView];

    objc_storeWeak(&self->_systemPointerInteractionManager, systemPointerInteractionManager);
    contentView2 = [(SBNubView *)self->_nubView contentView];
    [systemPointerInteractionManager registerView:contentView2 delegate:self];
  }

  if (![(SBSystemNotesContentViewController *)self presentationMode])
  {
    [(SBSystemNotesContentViewController *)self _updateForegroundStatus:1];
  }

  [(SBTransientUIInteractionManager *)self->_transientUIInteractionManager registerParticipantForTapToDismiss:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v4 viewWillDisappear:disappear];
  [(SBTransientUIInteractionManager *)self->_transientUIInteractionManager unregisterParticipantForTapToDismiss:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v5 viewDidDisappear:disappear];
  [(SBSceneViewStatusBarAssertion *)self->_statusBarAssertion invalidate];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = 0;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13.receiver = self;
  v13.super_class = SBSystemNotesContentViewController;
  windowCopy = window;
  [(SBSystemNotesContentViewController *)&v13 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  _sbWindowScene = [windowCopy _sbWindowScene];
  [(SBSystemNotesContentViewController *)self _acquireTraitsParticipantOnWindowSceneIfNecessary:_sbWindowScene];

  traitsParticipantDelegate = self->_traitsParticipantDelegate;
  v9 = MEMORY[0x277CCABB0];
  [windowCopy windowLevel];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  [(SBTraitsSceneParticipantDelegate *)traitsParticipantDelegate setPreferredSceneLevel:v12];
}

- (void)_acquireTraitsParticipantOnWindowSceneIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (!self->_traitsParticipant || (v5 = objc_loadWeakRetained(&self->_lastKnownWindowScene), v5, v5 != necessaryCopy))
  {
    objc_storeWeak(&self->_lastKnownWindowScene, necessaryCopy);
    traitsArbiter = [necessaryCopy traitsArbiter];
    objc_storeWeak(&self->_arbiter, traitsArbiter);

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [(SBSystemNotesContentViewController *)self _invalidateTraitsParticipant];
    if (WeakRetained)
    {
      v8 = [SBTraitsSceneParticipantDelegate alloc];
      sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
      v10 = [(SBTraitsSceneParticipantDelegate *)v8 initWithSceneHandle:sceneHandle];
      traitsParticipantDelegate = self->_traitsParticipantDelegate;
      self->_traitsParticipantDelegate = v10;

      v12 = [WeakRetained acquireParticipantWithRole:@"SBTraitsParticipantRolePictureInPicture" delegate:self->_traitsParticipantDelegate];
      traitsParticipant = self->_traitsParticipant;
      self->_traitsParticipant = v12;

      [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setArbiter:WeakRetained];
      [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setParticipant:self->_traitsParticipant];
      objc_initWeak(&location, self);
      v14 = self->_traitsParticipantDelegate;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __88__SBSystemNotesContentViewController__acquireTraitsParticipantOnWindowSceneIfNecessary___block_invoke;
      v18[3] = &unk_2783BE3E0;
      objc_copyWeak(&v19, &location);
      [(SBTraitsSceneParticipantDelegate *)v14 setActuateOrientationSettingsAlongsideBlock:v18];
      v15 = self->_traitsParticipantDelegate;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __88__SBSystemNotesContentViewController__acquireTraitsParticipantOnWindowSceneIfNecessary___block_invoke_2;
      v16[3] = &unk_2783AD848;
      objc_copyWeak(&v17, &location);
      [(SBTraitsSceneParticipantDelegate *)v15 setActuateOrientationAlongsideBlock:v16];
      [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"setup" animate:0];
      [(SBDeviceApplicationSceneViewController *)self->_sceneViewController containerDidUpdateTraitsParticipant:self->_traitsParticipant];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __88__SBSystemNotesContentViewController__acquireTraitsParticipantOnWindowSceneIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sceneFrame];
    [v5 setFrame:?];
  }
}

void __88__SBSystemNotesContentViewController__acquireTraitsParticipantOnWindowSceneIfNecessary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained[148] sbf_currentOrientation];
    v3 = v6[125];
    [v6 _sceneFrame];
    [v3 setContentReferenceSize:v2 withContentOrientation:v2 andContainerOrientation:{v4, v5}];
    WeakRetained = v6;
  }
}

- (void)_invalidateTraitsParticipant
{
  [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate invalidate];
  [(TRAParticipant *)self->_traitsParticipant invalidate];
  traitsParticipantDelegate = self->_traitsParticipantDelegate;
  self->_traitsParticipantDelegate = 0;

  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;
}

- (id)_sbWindowSceneForSceneHandle:(id)handle
{
  v3 = SBApp;
  handleCopy = handle;
  windowSceneManager = [v3 windowSceneManager];
  displayIdentity = [handleCopy displayIdentity];

  v7 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v7;
}

- (int64_t)presentationMode
{
  currentConfiguration = self->_currentConfiguration;
  if (currentConfiguration)
  {
    return [(SBSSystemNotesPresentationConfiguration *)currentConfiguration preferredPresentationMode];
  }

  else
  {
    return -1;
  }
}

- (void)setPresentationMode:(int64_t)mode
{
  currentConfiguration = self->_currentConfiguration;
  if (currentConfiguration)
  {
    v5 = [(SBSSystemNotesPresentationConfiguration *)currentConfiguration presentationConfigurationWithPreferredPresentationMode:mode];
    [(SBSystemNotesContentViewController *)self updateConfiguration:v5 sendCreateActionIfNecessary:1];
  }
}

- (CGSize)preferredContentSize
{
  presentationMode = [(SBSystemNotesContentViewController *)self presentationMode];
  if (presentationMode)
  {
    if (presentationMode == 1)
    {
      v5 = SBSystemNotesThumbnailSize();
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v8 = SBSSystemNotesPresentationModeDescription();
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemNotesContentViewController.m" lineNumber:362 description:{@"invalid mode: %@", v8}];

      v5 = *MEMORY[0x277CBF3A8];
      v6 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  else
  {
    v5 = SBSystemNotesDefaultWindowSize();
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (unint64_t)updateConfiguration:(id)configuration sendCreateActionIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  configurationCopy = configuration;
  presentationMode = [(SBSystemNotesContentViewController *)self presentationMode];
  v10 = SBSDiffSystemNotesPresentationConfigurations();
  if (v10)
  {
    v11 = v10;
    if ((v10 & 1) != 0 && self->_currentConfiguration)
    {
      [(SBSystemNotesContentViewController *)self updateConfiguration:configurationCopy sendCreateActionIfNecessary:a2];
    }

    objc_storeStrong(&self->_currentConfiguration, configuration);
    if ((v11 & 4) != 0)
    {
      userActivity = [(SBSSystemNotesPresentationConfiguration *)self->_currentConfiguration userActivity];
      v13 = [(SBSystemNotesContentViewController *)self _thumbnailViewForUserActivity:userActivity];

      if (self->_thumbnailView)
      {
        v14 = presentationMode == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14 && ([(SBSystemNotesContentViewController *)self isViewLoaded]& 1) != 0)
      {
        v15 = [MEMORY[0x277D67940] crossfadeViewWithStartView:self->_thumbnailView endView:v13 translucent:0];
        objc_storeStrong(&self->_thumbnailView, v13);
        view = [(SBSystemNotesContentViewController *)self view];
        [view bounds];
        [v15 setFrame:?];
        [view addSubview:v15];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __86__SBSystemNotesContentViewController_updateConfiguration_sendCreateActionIfNecessary___block_invoke;
        v49[3] = &unk_2783A8ED8;
        v49[4] = self;
        v50 = view;
        v51 = v15;
        v17 = v15;
        v18 = view;
        [v17 crossfadeWithCompletion:v49];
      }

      else
      {
        objc_storeStrong(&self->_thumbnailView, v13);
      }

      userActivity2 = [(SBSSystemNotesPresentationConfiguration *)self->_currentConfiguration userActivity];
      v20 = [(SBSystemNotesContentViewController *)self _imageFromUserActivity:userActivity2 presentationMode:0];

      placeholderProvider = self->_placeholderProvider;
      if (placeholderProvider)
      {
        [(SBSystemNotesPlaceholderContentProvider *)placeholderProvider setSnapshot:v20];
      }

      else
      {
        v22 = [[SBSystemNotesPlaceholderContentProvider alloc] initWithSnapshot:v20];
        v23 = self->_placeholderProvider;
        self->_placeholderProvider = v22;

        sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
        [sceneHandle setPlaceholderContentProvider:self->_placeholderProvider];
      }
    }

    preferredPresentationMode = [configurationCopy preferredPresentationMode];
    if ((v11 & 2) != 0)
    {
      v26 = preferredPresentationMode;
      [(BSAbsoluteMachTimer *)self->_thumbnailCooldownTimer cancel];
      self->_thumbnailCooldownTimerFired = 0;
      if (v26)
      {
        if (v26 == 1)
        {
          if (!self->_thumbnailCooldownTimer)
          {
            v27 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBSystemNotesConventViewController.thumbnailCooldown"];
            thumbnailCooldownTimer = self->_thumbnailCooldownTimer;
            self->_thumbnailCooldownTimer = v27;
          }

          objc_initWeak(&location, self);
          v29 = self->_thumbnailCooldownTimer;
          [(SBSystemNotesInteractionSettings *)self->_notesInteractionSettings delayBeforeUserInteractionDismissesThumbnail];
          v31 = v30;
          v32 = MEMORY[0x277D85CD0];
          v33 = MEMORY[0x277D85CD0];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __86__SBSystemNotesContentViewController_updateConfiguration_sendCreateActionIfNecessary___block_invoke_2;
          v46[3] = &unk_2783A9918;
          objc_copyWeak(&v47, &location);
          [(BSAbsoluteMachTimer *)v29 scheduleWithFireInterval:v32 leewayInterval:v46 queue:v31 handler:0.05];

          objc_destroyWeak(&v47);
          objc_destroyWeak(&location);
        }

        goto LABEL_49;
      }

      source = [(SBSystemNotesContentPresentationContext *)self->_presentationContext source];
      if (source > 4)
      {
        if (source == 5)
        {
          positionConfiguration = [(SBSystemNotesContentPresentationContext *)self->_presentationContext positionConfiguration];
          edgeProtectEnabled = [positionConfiguration edgeProtectEnabled];

          if (edgeProtectEnabled)
          {
            objc_storeStrong(&self->_pendingAnalyticsString, *MEMORY[0x277D6B838]);
            userActivity3 = SBLogSystemNotes();
            if (os_log_type_enabled(userActivity3, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          else
          {
            [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B838]];
            userActivity3 = SBLogSystemNotes();
            if (os_log_type_enabled(userActivity3, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          goto LABEL_47;
        }

        if (source == 6)
        {
          [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B830]];
          userActivity3 = SBLogSystemNotes();
          if (os_log_type_enabled(userActivity3, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (source == 2)
        {
          [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B828]];
          v38 = SBLogSystemNotes();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
          }

          userActivity3 = [(SBSSystemNotesPresentationConfiguration *)self->_currentConfiguration userActivity];
          if (userActivity3)
          {
            [MEMORY[0x277D6B788] didActivateBacklinkItemWithUserActivity:userActivity3];
            v39 = SBLogSystemNotes();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          goto LABEL_47;
        }

        if (source == 4)
        {
          positionConfiguration2 = [(SBSystemNotesContentPresentationContext *)self->_presentationContext positionConfiguration];
          edgeProtectEnabled2 = [positionConfiguration2 edgeProtectEnabled];

          if (edgeProtectEnabled2)
          {
            objc_storeStrong(&self->_pendingAnalyticsString, *MEMORY[0x277D6B840]);
            userActivity3 = SBLogSystemNotes();
            if (os_log_type_enabled(userActivity3, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          else
          {
            [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B840]];
            userActivity3 = SBLogSystemNotes();
            if (os_log_type_enabled(userActivity3, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

LABEL_47:
        }
      }

      [(SBSystemNotesContentViewController *)self _updateForegroundStatus:1];
LABEL_49:
      viewIfLoaded = [(SBSystemNotesContentViewController *)self viewIfLoaded];
      [viewIfLoaded setNeedsLayout];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained contentViewController:self didChangeToPresentationMode:v26];
    }
  }

  if (presentationMode)
  {
    v44 = 0;
  }

  else
  {
    v44 = [(SBSystemNotesContentViewController *)self _sendActionForUpdatedConfiguration:self->_currentConfiguration sendCreateIfNecessary:necessaryCopy];
  }

  return v44;
}

uint64_t __86__SBSystemNotesContentViewController_updateConfiguration_sendCreateActionIfNecessary___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1040);
  [*(a1 + 40) bounds];
  [v2 setFrame:?];
  [*(a1 + 40) addSubview:*(*(a1 + 32) + 1040)];
  [*(a1 + 48) removeFromSuperview];
  v3 = *(a1 + 40);

  return [v3 setNeedsLayout];
}

void __86__SBSystemNotesContentViewController_updateConfiguration_sendCreateActionIfNecessary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1152] = 1;
  }
}

- (unint64_t)_sendActionForUpdatedConfiguration:(id)configuration sendCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  configurationCopy = configuration;
  sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  if (sceneIfExists)
  {
    userActivity = [configurationCopy userActivity];
    v10 = userActivity;
    if (!necessaryCopy || userActivity)
    {
      if (!userActivity)
      {
        v13 = 0;
LABEL_17:
        _uiActivityContinuationAction = SBLogSystemNotes();
        if (os_log_type_enabled(_uiActivityContinuationAction, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemNotesContentViewController _sendActionForUpdatedConfiguration:sendCreateIfNecessary:];
        }

        goto LABEL_19;
      }

      v15 = SBLogSystemNotes();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "sending UIUserActivityContinuationAction to remote scene", v18, 2u);
      }

      _uiActivityContinuationAction = [configurationCopy _uiActivityContinuationAction];
      v13 = 2;
      if (!_uiActivityContinuationAction)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = SBLogSystemNotes();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "sending SBSSystemNotesCreateAction to remote scene", buf, 2u);
      }

      v12 = [MEMORY[0x277CF0B60] responderWithHandler:&__block_literal_global_292];
      [v12 setTimeout:{dispatch_time(0, 2000000000)}];
      v13 = 1;
      _uiActivityContinuationAction = [objc_alloc(MEMORY[0x277D66C90]) initWithReason:1 responder:v12];

      if (!_uiActivityContinuationAction)
      {
        goto LABEL_17;
      }
    }

    v16 = [MEMORY[0x277CBEB98] setWithObject:_uiActivityContinuationAction];
    [sceneIfExists sendActions:v16];

LABEL_19:
    goto LABEL_20;
  }

  v10 = SBLogSystemNotes();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SBSystemNotesContentViewController _sendActionForUpdatedConfiguration:sendCreateIfNecessary:];
  }

  v13 = 0;
LABEL_20:

  return v13;
}

void __95__SBSystemNotesContentViewController__sendActionForUpdatedConfiguration_sendCreateIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];
  if (v3)
  {
    v4 = SBLogSystemNotes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__SBSystemNotesContentViewController__sendActionForUpdatedConfiguration_sendCreateIfNecessary___block_invoke_cold_1();
    }
  }
}

- (void)_setBlurred:(BOOL)blurred
{
  blurView = self->_blurView;
  if (blurred)
  {
    if (!blurView)
    {
      view = [(SBSystemNotesContentViewController *)self view];
      view2 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
      sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
      application = [sceneHandle application];
      bundleIdentifier = [application bundleIdentifier];

      v9 = [SBApplicationBlurContentView alloc];
      [view bounds];
      v10 = [(SBApplicationBlurContentView *)v9 initWithFrame:bundleIdentifier bundleIdentifier:view2 targetViewToBlur:?];
      v11 = self->_blurView;
      self->_blurView = v10;

      v12 = [MEMORY[0x277CF0D38] factoryWithDuration:0.25];
      [(SBApplicationBlurContentView *)self->_blurView generateAndAnimateToBlurredSnapshotWithAnimationFactory:v12 completion:0];
      [(SBApplicationBlurContentView *)self->_blurView setClipsToBounds:1];
      layer = [(SBApplicationBlurContentView *)self->_blurView layer];
      [layer setAllowsGroupOpacity:1];

      iconView = [(SBApplicationBlurContentView *)self->_blurView iconView];
      [iconView setHidden:1];

      [view addSubview:self->_blurView];
    }
  }

  else if (blurView)
  {
    v15 = blurView;
    v16 = self->_blurView;
    self->_blurView = 0;

    v17 = [MEMORY[0x277CF0D38] factoryWithDuration:0.25];
    v18 = MEMORY[0x277CF0D38];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__SBSystemNotesContentViewController__setBlurred___block_invoke;
    v23[3] = &unk_2783A8C18;
    v24 = v15;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__SBSystemNotesContentViewController__setBlurred___block_invoke_2;
    v21[3] = &unk_2783A9398;
    v22 = v24;
    v19 = v24;
    [v18 animateWithFactory:v17 options:4 actions:v23 completion:v21];
  }
}

- (void)containerViewController:(id)controller didSettleOnStashState:(BOOL)state
{
  controllerCopy = controller;
  if (!state)
  {
    if (self->_pendingAnalyticsString)
    {
      [MEMORY[0x277D6B7F0] logActivationEvent:?];
      v7 = SBLogSystemNotes();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemNotesContentViewController containerViewController:v7 didSettleOnStashState:?];
      }

      pendingAnalyticsString = self->_pendingAnalyticsString;
      self->_pendingAnalyticsString = 0;
    }

    if (([controllerCopy isStashed] & 1) == 0)
    {
      [(SBSystemNotesContentViewController *)self _updateSceneFrameWithCompletion:0];
    }
  }
}

- (void)containerViewControllerWillBeginSizeChange:(id)change behavior:(int)behavior
{
  if ([(SBSystemNotesContentViewController *)self presentationMode:change]!= 1)
  {
    [(SBSystemNotesContentViewController *)self _setBlurred:1];
    view = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
    [view setHidden:1];
  }
}

- (void)containerViewControllerDidEndSizeChange:(id)change
{
  view = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [view setHidden:0];

  view2 = [(SBSystemNotesContentViewController *)self view];
  [view2 bounds];
  [(SBSystemNotesContentViewController *)self _setPreferredSceneContentSize:v6, v7];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SBSystemNotesContentViewController_containerViewControllerDidEndSizeChange___block_invoke;
  v8[3] = &unk_2783A8C18;
  v8[4] = self;
  [(SBSystemNotesContentViewController *)self _updateSceneFrameWithCompletion:v8];
}

- (void)containerViewControllerDidEndInteraction:(id)interaction targetWindowScene:(id)scene
{
  if (([interaction isStashed] & 1) == 0)
  {

    [(SBSystemNotesContentViewController *)self _updateSceneFrameWithCompletion:0];
  }
}

- (void)_updateSceneFrameWithCompletion:(id)completion
{
  completionCopy = completion;
  sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];

  [(SBSystemNotesContentViewController *)self _sceneFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  p_lastKnownSceneFrame = &self->_lastKnownSceneFrame;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  if (CGRectEqualToRect(*p_lastKnownSceneFrame, v19))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    p_lastKnownSceneFrame->origin.x = v8;
    p_lastKnownSceneFrame->origin.y = v10;
    p_lastKnownSceneFrame->size.width = v12;
    p_lastKnownSceneFrame->size.height = v14;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__SBSystemNotesContentViewController__updateSceneFrameWithCompletion___block_invoke;
    v18[3] = &__block_descriptor_64_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
    *&v18[4] = v8;
    *&v18[5] = v10;
    *&v18[6] = v12;
    *&v18[7] = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SBSystemNotesContentViewController__updateSceneFrameWithCompletion___block_invoke_2;
    v16[3] = &unk_2783B7568;
    v17 = completionCopy;
    [sceneIfExists performUpdate:v18 withCompletion:v16];
  }
}

uint64_t __70__SBSystemNotesContentViewController__updateSceneFrameWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)containerViewController:(id)controller shouldHandleStashingForTransitionContext:(id)context
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(SBSystemNotesContentViewController *)self presentationMode:controller];
  if (v5 == 1)
  {
    v6 = SBLogSystemNotes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _SBFLoggingMethodProem();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting dismissal of thumbnail due to transition", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentViewControllerWantsDismissal:self forReason:1 animated:1];
  }

  return v5 == 1;
}

- (void)_handleThumbnailTapGesture:(id)gesture
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [(SBSystemNotesContentViewController *)self presentationMode]== 1;
    WeakRetained = v6;
    if (v5)
    {
      [v6 contentViewControllerDidReceiveTapToExpand:self];
      WeakRetained = v6;
    }
  }
}

- (BOOL)_updateForegroundStatus:(BOOL)status
{
  statusCopy = status;
  v19 = *MEMORY[0x277D85DE8];
  sceneHandle = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  v6 = [(SBSystemNotesContentViewController *)self _sbWindowSceneForSceneHandle:sceneHandle];
  [(SBSystemNotesContentViewController *)self _acquireTraitsParticipantOnWindowSceneIfNecessary:v6];

  workspace = self->_workspace;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke;
  v14[3] = &unk_2783B1860;
  v14[4] = self;
  v16 = statusCopy;
  v8 = sceneHandle;
  v15 = v8;
  v9 = [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 builder:v14 validator:&__block_literal_global_76];
  v10 = SBLogPIP();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sceneIdentifier = [v8 sceneIdentifier];
      *buf = 138543362;
      v18 = sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "PIP scene transition succeeded; sceneID: %{public}@", buf, 0xCu);
    }

    if (statusCopy)
    {
      self->_haveBeenForeground = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemNotesContentViewController *)v8 _updateForegroundStatus:v11];
    }
  }

  return v9;
}

void __62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke_2;
  v9[3] = &unk_2783A9E00;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v3 = a2;
  [v3 modifyApplicationContext:v9];
  [v3 setSource:49];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke_3;
  v6[3] = &unk_2783B40C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 setTransactionProvider:v6];
}

void __62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1184);
  v4 = a2;
  [v4 setInterfaceOrientation:{objc_msgSend(v3, "sbf_currentOrientation")}];
  [v4 setBackground:(*(a1 + 40) & 1) == 0];
  [v4 setWaitsForSceneUpdates:1];
  [v4 setDelegate:*(a1 + 32)];
}

SBPIPSceneContentSceneUpdateWorkspaceTransaction *__62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:*(a1 + 32)];
  v5 = [*(*(a1 + 40) + 1128) userActivity];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [*(*(a1 + 40) + 1128) _uiActivityContinuationAction];
    v8 = [v6 setWithObject:v7];
    [(SBApplicationSceneEntity *)v4 addActions:v8];
  }

  v9 = *(a1 + 40);
  if ((*(v9 + 1153) & 1) == 0)
  {
    v10 = [*(v9 + 1136) source];
    if ((v10 - 2) > 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_21F8A7D98[v10 - 2];
    }

    v12 = MEMORY[0x277CBEB98];
    v13 = [objc_alloc(MEMORY[0x277D66C88]) initWithSource:v11 responder:0];
    v14 = [v12 setWithObject:v13];
    [(SBApplicationSceneEntity *)v4 addActions:v14];
  }

  v15 = [[SBPIPSceneContentSceneUpdateWorkspaceTransaction alloc] initWithApplicationSceneEntity:v4 transitionRequest:v3];

  return v15;
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v5 = [request layoutStateForApplicationTransitionContext:contextCopy];

  return v5;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v5 = [request previousLayoutStateForApplicationTransitionContext:contextCopy];

  return v5;
}

- (BOOL)_hitTestTouch:(id)touch gestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  view = [(SBSystemNotesContentViewController *)self view];
  view2 = [recognizerCopy view];

  window = [view2 window];

  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  view3 = [touchCopy view];
  [touchCopy locationInView:view3];
  v15 = v14;
  v17 = v16;

  [window convertPoint:fixedCoordinateSpace toCoordinateSpace:{v15, v17}];
  v19 = v18;
  v21 = v20;

  [view convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v19, v21}];
  v22 = [view hitTest:0 withEvent:?];
  LOBYTE(touchCopy) = v22 != 0;

  return touchCopy;
}

- (BOOL)transientUIHandledTouch:(id)touch withSystemGestureRecognizer:(id)recognizer
{
  v15 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  recognizerCopy = recognizer;
  if ([(SBSystemNotesContentViewController *)self presentationMode]!= 1)
  {
    goto LABEL_8;
  }

  if ([(SBSystemNotesContentViewController *)self _hitTestTouch:touchCopy gestureRecognizer:recognizerCopy])
  {
    [(SBSystemNotesContentViewController *)self _handleThumbnailTapGesture:recognizerCopy];
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  if (!self->_thumbnailCooldownTimerFired)
  {
    goto LABEL_8;
  }

  v8 = SBLogSystemNotes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting dismissal for outside interaction after thumbnail cooldown", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = 1;
  [WeakRetained contentViewControllerWantsDismissal:self forReason:1 animated:1];

LABEL_9:
  return v11;
}

- (void)_setPreferredSceneContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = SBSystemNotesMinimumWindowSize();
  v8 = v7;
  v9 = SBSystemNotesMaximumWindowSize();
  if (width < v6 || height < v8)
  {
    self->_preferredSceneContentSize.width = v6;
    self->_preferredSceneContentSize.height = v8;
  }

  else
  {
    p_preferredSceneContentSize = &self->_preferredSceneContentSize;
    if (width <= v9 && height <= v10)
    {
      p_preferredSceneContentSize->width = width;
      self->_preferredSceneContentSize.height = height;
    }

    else
    {
      p_preferredSceneContentSize->width = v9;
      self->_preferredSceneContentSize.height = v10;
    }
  }

  view = [(SBSystemNotesContentViewController *)self view];
  [view setNeedsLayout];
}

- (CGRect)_sceneFrame
{
  sbf_currentOrientation = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
  if ((sbf_currentOrientation - 3) >= 2)
  {
    width = self->_preferredSceneContentSize.width;
  }

  else
  {
    width = self->_preferredSceneContentSize.height;
  }

  if ((sbf_currentOrientation - 3) >= 2)
  {
    height = self->_preferredSceneContentSize.height;
  }

  else
  {
    height = self->_preferredSceneContentSize.width;
  }

  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)_thumbnailViewForUserActivity:(id)activity
{
  v3 = [(SBSystemNotesContentViewController *)self _imageFromUserActivity:activity presentationMode:1];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  [v4 setContentMode:2];

  return v4;
}

- (id)_imageFromUserActivity:(id)activity presentationMode:(int64_t)mode
{
  v7 = MEMORY[0x277D359B0];
  activityCopy = activity;
  shared = [v7 shared];
  v18 = 0;
  v10 = [shared previewForUserActivity:activityCopy error:&v18];

  v11 = v18;
  if (v11)
  {
    v12 = SBLogSystemNotes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBSystemNotesContentViewController _imageFromUserActivity:presentationMode:];
    }
  }

  if (!mode)
  {
    v13 = MEMORY[0x277D359A0];
    goto LABEL_9;
  }

  if (mode == 1)
  {
    v13 = MEMORY[0x277D359A8];
LABEL_9:
    v14 = [v10 objectForKey:*v13];
    goto LABEL_11;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v16 = SBSSystemNotesPresentationModeDescription();
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemNotesContentViewController.m" lineNumber:792 description:{@"unsupported presentationMode: %@", v16}];

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)request atLocation:(CGPoint)location forView:(id)view
{
  requestCopy = request;
  viewCopy = view;
  nubView = self->_nubView;
  if (nubView && ([(SBNubView *)nubView isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    _isInAWindow = [(SBNubView *)self->_nubView _isInAWindow];
  }

  else
  {
    _isInAWindow = 0;
  }

  return _isInAWindow;
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)view
{
  +[SBNubView height];
  v4 = v3;
  +[SBNubView contentHeight];
  v6 = v4 - v5;
  +[SBNubView hitTestPadding];
  v7 = v6 * -0.5;
  v9 = -v8;
  v10 = v6 * -0.5;
  v11 = v9;
  result.right = v11;
  result.bottom = v7;
  result.left = v9;
  result.top = v10;
  return result;
}

- (id)styleForRegion:(id)region forView:(id)view
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_nubView];
  v6 = [MEMORY[0x277D75860] effectWithPreview:v5];
  contentView = [(SBNubView *)self->_nubView contentView];
  [contentView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [MEMORY[0x277D75888] shapeWithRoundedRect:v9 + -7.0 cornerRadius:{v11 + -4.0, v13 + 14.0, v15 + 8.0, (v13 + 14.0) * 0.5}];
  v17 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v16];

  return v17;
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  handleCopy = handle;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBSystemNotesContentViewController_sceneHandle_didCreateScene___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = handleCopy;
  v6 = handleCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __65__SBSystemNotesContentViewController_sceneHandle_didCreateScene___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sbWindowScene];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) _sbWindowSceneForSceneHandle:*(a1 + 40)];
  }

  v5 = v4;

  [*(a1 + 32) _acquireTraitsParticipantOnWindowSceneIfNecessary:v5];
}

- (void)sceneHandle:(id)handle didDestroyScene:(id)scene
{
  v10 = *MEMORY[0x277D85DE8];
  [(SBSystemNotesContentViewController *)self _invalidateTraitsParticipant:handle];
  v5 = SBLogSystemNotes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting dismissal for scene destruction (invalidation)", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentViewControllerWantsDismissal:self forReason:2 animated:0];
}

- (BOOL)sceneHandle:(id)handle didReceiveAction:(id)action
{
  v36 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    v8 = actionCopy;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    scene = [handleCopy scene];
    if ([v11 canSendResponse] && (objc_msgSend(scene, "clientProcess"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasEntitlement:", @"com.apple.springboard.systemNotesScreenshot"), v13, v14))
    {
      displaysToScreenshot = [v11 displaysToScreenshot];
      v16 = MEMORY[0x277CBEB58];
      v17 = [displaysToScreenshot count];
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v19 = [v16 setWithCapacity:v18];
      if ([displaysToScreenshot count])
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = displaysToScreenshot;
        v20 = displaysToScreenshot;
        v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v32;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v32 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [v19 addObject:{*(*(&v31 + 1) + 8 * i), v29}];
            }

            v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v22);
        }

        displaysToScreenshot = v29;
      }

      else
      {
        settings = [scene settings];
        sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];
        [v19 addObject:sb_displayIdentityForSceneManagers];
      }

      v30 = v11;
      v27 = v19;
      BSDispatchMain();

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __67__SBSystemNotesContentViewController_sceneHandle_didReceiveAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SBSystemNotesContentViewController_sceneHandle_didReceiveAction___block_invoke_2;
  v5[3] = &unk_2783AD2E0;
  v6 = *(a1 + 48);
  [v2 contentViewController:v3 didReceiveScreenshotRequestForDisplays:v4 completion:v5];
}

void __67__SBSystemNotesContentViewController_sceneHandle_didReceiveAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF0C80];
  v4 = a2;
  v8 = objc_alloc_init(v3);
  v5 = [objc_alloc(MEMORY[0x277CF0D28]) initWithArray:v4];

  [v8 setObject:v5 forSetting:0];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CF0B68] responseWithInfo:v8];
  [v6 sendResponse:v7];
}

- (SBSystemNotesContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidAppear:(NSObject *)a3 .cold.1(id *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = _SBFLoggingMethodProem();
  v6 = [a1[125] sceneHandle];
  v7 = [v6 sceneIdentifier];
  v8 = [a1 view];
  v9 = [v8 recursiveDescription];
  v10 = 138543874;
  v11 = v5;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v9;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] %{public}@ \n%{public}@", &v10, 0x20u);
}

- (void)updateConfiguration:(void *)a3 sendCreateActionIfNecessary:(uint64_t)a4 .cold.1(uint64_t a1, id *a2, void *a3, uint64_t a4)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = [*a2 sceneBundleIdentifier];
  v10 = [a3 sceneBundleIdentifier];
  [v11 handleFailureInMethod:a4 object:a1 file:@"SBSystemNotesContentViewController.m" lineNumber:379 description:{@"%@ can't update configuration for different bundleID. our bundleID: %@; new bundleID: %@", v8, v9, v10}];
}

- (void)containerViewController:(uint64_t *)a1 didSettleOnStashState:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[Metrics] %{public}@", &v3, 0xCu);
}

- (void)_updateForegroundStatus:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "PIP scene transition failed. sceneID: %{public}@", v4, 0xCu);
}

@end