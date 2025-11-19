@interface SBSystemNotesContentViewController
- (BOOL)_hitTestTouch:(id)a3 gestureRecognizer:(id)a4;
- (BOOL)_updateForegroundStatus:(BOOL)a3;
- (BOOL)containerViewController:(id)a3 shouldHandleStashingForTransitionContext:(id)a4;
- (BOOL)sceneHandle:(id)a3 didReceiveAction:(id)a4;
- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5;
- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4;
- (CGRect)_sceneFrame;
- (CGSize)preferredContentSize;
- (SBSystemNotesContentViewController)initWithSceneHandle:(id)a3 workspace:(id)a4 transientUIInteractionManager:(id)a5 notesInteractionSettings:(id)a6 presentationContext:(id)a7;
- (SBSystemNotesContentViewControllerDelegate)delegate;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3;
- (id)_imageFromUserActivity:(id)a3 presentationMode:(int64_t)a4;
- (id)_sbWindowSceneForSceneHandle:(id)a3;
- (id)_thumbnailViewForUserActivity:(id)a3;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (id)previousLayoutStateForApplicationTransitionContext:(id)a3;
- (id)styleForRegion:(id)a3 forView:(id)a4;
- (int64_t)presentationMode;
- (unint64_t)_sendActionForUpdatedConfiguration:(id)a3 sendCreateIfNecessary:(BOOL)a4;
- (unint64_t)updateConfiguration:(id)a3 sendCreateActionIfNecessary:(BOOL)a4;
- (void)_acquireTraitsParticipantOnWindowSceneIfNecessary:(id)a3;
- (void)_handleThumbnailTapGesture:(id)a3;
- (void)_invalidateTraitsParticipant;
- (void)_setBlurred:(BOOL)a3;
- (void)_setPreferredSceneContentSize:(CGSize)a3;
- (void)_updateSceneFrameWithCompletion:(id)a3;
- (void)containerViewController:(id)a3 didSettleOnStashState:(BOOL)a4;
- (void)containerViewControllerDidEndInteraction:(id)a3 targetWindowScene:(id)a4;
- (void)containerViewControllerDidEndSizeChange:(id)a3;
- (void)containerViewControllerWillBeginSizeChange:(id)a3 behavior:(int)a4;
- (void)dealloc;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)setPresentationMode:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SBSystemNotesContentViewController

- (SBSystemNotesContentViewController)initWithSceneHandle:(id)a3 workspace:(id)a4 transientUIInteractionManager:(id)a5 notesInteractionSettings:(id)a6 presentationContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = SBSystemNotesContentViewController;
  v17 = [(SBSystemNotesContentViewController *)&v26 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_workspace, a4);
    objc_storeStrong(&v18->_notesInteractionSettings, a6);
    objc_storeStrong(&v18->_transientUIInteractionManager, a5);
    v18->_preferredSceneContentSize.width = SBSystemNotesDefaultWindowSize();
    v18->_preferredSceneContentSize.height = v19;
    [v12 addObserver:v18];
    [v12 addActionConsumer:v18];
    v20 = [[SBDeviceApplicationSceneViewController alloc] initWithSceneHandle:v12];
    sceneViewController = v18->_sceneViewController;
    v18->_sceneViewController = v20;

    [(SBDeviceApplicationSceneViewController *)v18->_sceneViewController setHomeGrabberDisplayMode:1];
    [(SBDeviceApplicationSceneViewController *)v18->_sceneViewController setDisplayMode:4 animationFactory:0 completion:0];
    v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel__handleThumbnailTapGesture_];
    thumbnailTapGestureRecognizer = v18->_thumbnailTapGestureRecognizer;
    v18->_thumbnailTapGestureRecognizer = v22;

    [(UITapGestureRecognizer *)v18->_thumbnailTapGestureRecognizer setAllowedTouchTypes:&unk_28336E8F8];
    objc_storeStrong(&v18->_presentationContext, a7);
    v24 = [(SBSystemNotesContentPresentationContext *)v18->_presentationContext requestedConfiguration];
    [(SBSystemNotesContentViewController *)v18 updateConfiguration:v24 sendCreateActionIfNecessary:1];
  }

  return v18;
}

- (void)dealloc
{
  if ([(SBSystemNotesContentViewController *)self isViewLoaded])
  {
    [(SBDeviceApplicationSceneViewController *)self->_sceneViewController willMoveToParentViewController:0];
    v3 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
    [v3 removeFromSuperview];

    [(SBDeviceApplicationSceneViewController *)self->_sceneViewController removeFromParentViewController];
    WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
    v5 = [(SBNubView *)self->_nubView contentView];
    [WeakRetained unregisterView:v5];
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
  v3 = [(SBSystemNotesContentViewController *)self view];
  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:1];

  [v3 setClipsToBounds:1];
  [v3 addGestureRecognizer:self->_thumbnailTapGestureRecognizer];
  [v3 setAccessibilityIdentifier:@"system-notes-content-view"];
  v5 = [v3 layer];
  [v5 setBorderWidth:1.0];
  v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.15];
  [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

  [v3 addSubview:self->_thumbnailView];
  [(UIView *)self->_thumbnailView setContentMode:0];
  [(UIView *)self->_thumbnailView setOpaque:0];
  [(UIView *)self->_thumbnailView setAccessibilityIdentifier:@"system-notes-thumbnail-view"];
  [(SBSystemNotesContentViewController *)self addChildViewController:self->_sceneViewController];
  v7 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  v8 = [v7 layer];
  [v8 setAllowsGroupOpacity:1];

  [v3 addSubview:v7];
  [v7 setOpaque:0];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController didMoveToParentViewController:self];
  v9 = [SBSystemNotesBackgroundView alloc];
  [v7 bounds];
  v10 = [(SBSystemNotesBackgroundView *)v9 initWithFrame:?];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setBackgroundView:v10];
  v11 = [SBNubView alloc];
  v12 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  v13 = [(SBNubView *)v11 initWithDeviceApplicationSceneHandle:v12];
  nubView = self->_nubView;
  self->_nubView = v13;

  v15 = [(SBNubView *)self->_nubView layer];
  [v15 setHitTestsAsOpaque:1];

  [(SBNubView *)self->_nubView setHighlighted:0];
  [v7 addSubview:self->_nubView];
  [(SBNubView *)self->_nubView setAccessibilityIdentifier:@"system-notes-nub-view"];
  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  v17 = [(SBNubView *)self->_nubView contentView];
  [WeakRetained registerView:v17 delegate:self];

  [v3 bringSubviewToFront:self->_thumbnailView];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(SBSystemNotesContentViewController *)self view];
  [v3 bounds];
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
  v16 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [v3 bounds];
  UIRectGetCenter();
  [v16 setCenter:?];
  width = self->_preferredSceneContentSize.width;
  height = self->_preferredSceneContentSize.height;
  [v16 setBounds:{0.0, 0.0, width, height}];
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeScale(&v28, v9 / width, v11 / height);
  v27 = v28;
  [v16 setTransform:&v27];
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

  [v3 _setContinuousCornerRadius:v22 + (v21 - v22) * v15];
  [(UIView *)self->_thumbnailView setAlpha:1.0 - v15];
  if (BSFloatLessThanOrEqualToFloat())
  {
    [v16 setHidden:1];
    thumbnailView = self->_thumbnailView;
LABEL_12:
    v25 = 0;
    goto LABEL_13;
  }

  v24 = BSFloatGreaterThanOrEqualToFloat();
  [v16 setHidden:0];
  thumbnailView = self->_thumbnailView;
  if (!v24)
  {
    goto LABEL_12;
  }

  v25 = 1;
LABEL_13:
  [(UIView *)thumbnailView setHidden:v25];
  v26 = [v3 _sbWindowScene];
  [(SBSystemNotesContentViewController *)self _acquireTraitsParticipantOnWindowSceneIfNecessary:v26];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v6 viewWillAppear:a3];
  v4 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController statusBarAssertionWithStatusBarHidden:1 atLevel:0];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v11 viewDidAppear:a3];
  v5 = SBLogSystemNotes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBSystemNotesContentViewController *)&self->super.super.super.isa viewDidAppear:a2, v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  v7 = [(UIViewController *)self _sbWindowScene];
  v8 = [v7 systemPointerInteractionManager];

  if (WeakRetained != v8)
  {
    v9 = [(SBNubView *)self->_nubView contentView];
    [WeakRetained unregisterView:v9];

    objc_storeWeak(&self->_systemPointerInteractionManager, v8);
    v10 = [(SBNubView *)self->_nubView contentView];
    [v8 registerView:v10 delegate:self];
  }

  if (![(SBSystemNotesContentViewController *)self presentationMode])
  {
    [(SBSystemNotesContentViewController *)self _updateForegroundStatus:1];
  }

  [(SBTransientUIInteractionManager *)self->_transientUIInteractionManager registerParticipantForTapToDismiss:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v4 viewWillDisappear:a3];
  [(SBTransientUIInteractionManager *)self->_transientUIInteractionManager unregisterParticipantForTapToDismiss:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBSystemNotesContentViewController;
  [(SBSystemNotesContentViewController *)&v5 viewDidDisappear:a3];
  [(SBSceneViewStatusBarAssertion *)self->_statusBarAssertion invalidate];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = 0;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v13.receiver = self;
  v13.super_class = SBSystemNotesContentViewController;
  v6 = a3;
  [(SBSystemNotesContentViewController *)&v13 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = [v6 _sbWindowScene];
  [(SBSystemNotesContentViewController *)self _acquireTraitsParticipantOnWindowSceneIfNecessary:v7];

  traitsParticipantDelegate = self->_traitsParticipantDelegate;
  v9 = MEMORY[0x277CCABB0];
  [v6 windowLevel];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  [(SBTraitsSceneParticipantDelegate *)traitsParticipantDelegate setPreferredSceneLevel:v12];
}

- (void)_acquireTraitsParticipantOnWindowSceneIfNecessary:(id)a3
{
  v4 = a3;
  if (!self->_traitsParticipant || (v5 = objc_loadWeakRetained(&self->_lastKnownWindowScene), v5, v5 != v4))
  {
    objc_storeWeak(&self->_lastKnownWindowScene, v4);
    v6 = [v4 traitsArbiter];
    objc_storeWeak(&self->_arbiter, v6);

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [(SBSystemNotesContentViewController *)self _invalidateTraitsParticipant];
    if (WeakRetained)
    {
      v8 = [SBTraitsSceneParticipantDelegate alloc];
      v9 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
      v10 = [(SBTraitsSceneParticipantDelegate *)v8 initWithSceneHandle:v9];
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

- (id)_sbWindowSceneForSceneHandle:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 windowSceneManager];
  v6 = [v4 displayIdentity];

  v7 = [v5 windowSceneForDisplayIdentity:v6];

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

- (void)setPresentationMode:(int64_t)a3
{
  currentConfiguration = self->_currentConfiguration;
  if (currentConfiguration)
  {
    v5 = [(SBSSystemNotesPresentationConfiguration *)currentConfiguration presentationConfigurationWithPreferredPresentationMode:a3];
    [(SBSystemNotesContentViewController *)self updateConfiguration:v5 sendCreateActionIfNecessary:1];
  }
}

- (CGSize)preferredContentSize
{
  v4 = [(SBSystemNotesContentViewController *)self presentationMode];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = SBSystemNotesThumbnailSize();
    }

    else
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = SBSSystemNotesPresentationModeDescription();
      [v7 handleFailureInMethod:a2 object:self file:@"SBSystemNotesContentViewController.m" lineNumber:362 description:{@"invalid mode: %@", v8}];

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

- (unint64_t)updateConfiguration:(id)a3 sendCreateActionIfNecessary:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v9 = [(SBSystemNotesContentViewController *)self presentationMode];
  v10 = SBSDiffSystemNotesPresentationConfigurations();
  if (v10)
  {
    v11 = v10;
    if ((v10 & 1) != 0 && self->_currentConfiguration)
    {
      [(SBSystemNotesContentViewController *)self updateConfiguration:v8 sendCreateActionIfNecessary:a2];
    }

    objc_storeStrong(&self->_currentConfiguration, a3);
    if ((v11 & 4) != 0)
    {
      v12 = [(SBSSystemNotesPresentationConfiguration *)self->_currentConfiguration userActivity];
      v13 = [(SBSystemNotesContentViewController *)self _thumbnailViewForUserActivity:v12];

      if (self->_thumbnailView)
      {
        v14 = v9 == 1;
      }

      else
      {
        v14 = 0;
      }

      if (v14 && ([(SBSystemNotesContentViewController *)self isViewLoaded]& 1) != 0)
      {
        v15 = [MEMORY[0x277D67940] crossfadeViewWithStartView:self->_thumbnailView endView:v13 translucent:0];
        objc_storeStrong(&self->_thumbnailView, v13);
        v16 = [(SBSystemNotesContentViewController *)self view];
        [v16 bounds];
        [v15 setFrame:?];
        [v16 addSubview:v15];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __86__SBSystemNotesContentViewController_updateConfiguration_sendCreateActionIfNecessary___block_invoke;
        v49[3] = &unk_2783A8ED8;
        v49[4] = self;
        v50 = v16;
        v51 = v15;
        v17 = v15;
        v18 = v16;
        [v17 crossfadeWithCompletion:v49];
      }

      else
      {
        objc_storeStrong(&self->_thumbnailView, v13);
      }

      v19 = [(SBSSystemNotesPresentationConfiguration *)self->_currentConfiguration userActivity];
      v20 = [(SBSystemNotesContentViewController *)self _imageFromUserActivity:v19 presentationMode:0];

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

        v24 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
        [v24 setPlaceholderContentProvider:self->_placeholderProvider];
      }
    }

    v25 = [v8 preferredPresentationMode];
    if ((v11 & 2) != 0)
    {
      v26 = v25;
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

      v34 = [(SBSystemNotesContentPresentationContext *)self->_presentationContext source];
      if (v34 > 4)
      {
        if (v34 == 5)
        {
          v40 = [(SBSystemNotesContentPresentationContext *)self->_presentationContext positionConfiguration];
          v41 = [v40 edgeProtectEnabled];

          if (v41)
          {
            objc_storeStrong(&self->_pendingAnalyticsString, *MEMORY[0x277D6B838]);
            v37 = SBLogSystemNotes();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          else
          {
            [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B838]];
            v37 = SBLogSystemNotes();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          goto LABEL_47;
        }

        if (v34 == 6)
        {
          [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B830]];
          v37 = SBLogSystemNotes();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (v34 == 2)
        {
          [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B828]];
          v38 = SBLogSystemNotes();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
          }

          v37 = [(SBSSystemNotesPresentationConfiguration *)self->_currentConfiguration userActivity];
          if (v37)
          {
            [MEMORY[0x277D6B788] didActivateBacklinkItemWithUserActivity:v37];
            v39 = SBLogSystemNotes();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          goto LABEL_47;
        }

        if (v34 == 4)
        {
          v35 = [(SBSystemNotesContentPresentationContext *)self->_presentationContext positionConfiguration];
          v36 = [v35 edgeProtectEnabled];

          if (v36)
          {
            objc_storeStrong(&self->_pendingAnalyticsString, *MEMORY[0x277D6B840]);
            v37 = SBLogSystemNotes();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

          else
          {
            [MEMORY[0x277D6B7F0] logActivationEvent:*MEMORY[0x277D6B840]];
            v37 = SBLogSystemNotes();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [SBSystemNotesContentViewController updateConfiguration:sendCreateActionIfNecessary:];
            }
          }

LABEL_47:
        }
      }

      [(SBSystemNotesContentViewController *)self _updateForegroundStatus:1];
LABEL_49:
      v42 = [(SBSystemNotesContentViewController *)self viewIfLoaded];
      [v42 setNeedsLayout];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained contentViewController:self didChangeToPresentationMode:v26];
    }
  }

  if (v9)
  {
    v44 = 0;
  }

  else
  {
    v44 = [(SBSystemNotesContentViewController *)self _sendActionForUpdatedConfiguration:self->_currentConfiguration sendCreateIfNecessary:v4];
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

- (unint64_t)_sendActionForUpdatedConfiguration:(id)a3 sendCreateIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  v8 = [v7 sceneIfExists];
  if (v8)
  {
    v9 = [v6 userActivity];
    v10 = v9;
    if (!v4 || v9)
    {
      if (!v9)
      {
        v13 = 0;
LABEL_17:
        v14 = SBLogSystemNotes();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
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

      v14 = [v6 _uiActivityContinuationAction];
      v13 = 2;
      if (!v14)
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
      v14 = [objc_alloc(MEMORY[0x277D66C90]) initWithReason:1 responder:v12];

      if (!v14)
      {
        goto LABEL_17;
      }
    }

    v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
    [v8 sendActions:v16];

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

- (void)_setBlurred:(BOOL)a3
{
  blurView = self->_blurView;
  if (a3)
  {
    if (!blurView)
    {
      v20 = [(SBSystemNotesContentViewController *)self view];
      v5 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
      v6 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
      v7 = [v6 application];
      v8 = [v7 bundleIdentifier];

      v9 = [SBApplicationBlurContentView alloc];
      [v20 bounds];
      v10 = [(SBApplicationBlurContentView *)v9 initWithFrame:v8 bundleIdentifier:v5 targetViewToBlur:?];
      v11 = self->_blurView;
      self->_blurView = v10;

      v12 = [MEMORY[0x277CF0D38] factoryWithDuration:0.25];
      [(SBApplicationBlurContentView *)self->_blurView generateAndAnimateToBlurredSnapshotWithAnimationFactory:v12 completion:0];
      [(SBApplicationBlurContentView *)self->_blurView setClipsToBounds:1];
      v13 = [(SBApplicationBlurContentView *)self->_blurView layer];
      [v13 setAllowsGroupOpacity:1];

      v14 = [(SBApplicationBlurContentView *)self->_blurView iconView];
      [v14 setHidden:1];

      [v20 addSubview:self->_blurView];
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

- (void)containerViewController:(id)a3 didSettleOnStashState:(BOOL)a4
{
  v6 = a3;
  if (!a4)
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

    if (([v6 isStashed] & 1) == 0)
    {
      [(SBSystemNotesContentViewController *)self _updateSceneFrameWithCompletion:0];
    }
  }
}

- (void)containerViewControllerWillBeginSizeChange:(id)a3 behavior:(int)a4
{
  if ([(SBSystemNotesContentViewController *)self presentationMode:a3]!= 1)
  {
    [(SBSystemNotesContentViewController *)self _setBlurred:1];
    v5 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
    [v5 setHidden:1];
  }
}

- (void)containerViewControllerDidEndSizeChange:(id)a3
{
  v4 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [v4 setHidden:0];

  v5 = [(SBSystemNotesContentViewController *)self view];
  [v5 bounds];
  [(SBSystemNotesContentViewController *)self _setPreferredSceneContentSize:v6, v7];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SBSystemNotesContentViewController_containerViewControllerDidEndSizeChange___block_invoke;
  v8[3] = &unk_2783A8C18;
  v8[4] = self;
  [(SBSystemNotesContentViewController *)self _updateSceneFrameWithCompletion:v8];
}

- (void)containerViewControllerDidEndInteraction:(id)a3 targetWindowScene:(id)a4
{
  if (([a3 isStashed] & 1) == 0)
  {

    [(SBSystemNotesContentViewController *)self _updateSceneFrameWithCompletion:0];
  }
}

- (void)_updateSceneFrameWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  v6 = [v5 sceneIfExists];

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
    if (v4)
    {
      v4[2](v4);
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
    v17 = v4;
    [v6 performUpdate:v18 withCompletion:v16];
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

- (BOOL)containerViewController:(id)a3 shouldHandleStashingForTransitionContext:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(SBSystemNotesContentViewController *)self presentationMode:a3];
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

- (void)_handleThumbnailTapGesture:(id)a3
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

- (BOOL)_updateForegroundStatus:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(SBSceneViewController *)self->_sceneViewController sceneHandle];
  v6 = [(SBSystemNotesContentViewController *)self _sbWindowSceneForSceneHandle:v5];
  [(SBSystemNotesContentViewController *)self _acquireTraitsParticipantOnWindowSceneIfNecessary:v6];

  workspace = self->_workspace;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SBSystemNotesContentViewController__updateForegroundStatus___block_invoke;
  v14[3] = &unk_2783B1860;
  v14[4] = self;
  v16 = v3;
  v8 = v5;
  v15 = v8;
  v9 = [(SBMainWorkspace *)workspace requestTransitionWithOptions:0 builder:v14 validator:&__block_literal_global_76];
  v10 = SBLogPIP();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 sceneIdentifier];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "PIP scene transition succeeded; sceneID: %{public}@", buf, 0xCu);
    }

    if (v3)
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

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 layoutStateForApplicationTransitionContext:v3];

  return v5;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)a3
{
  v3 = a3;
  v4 = [v3 request];
  v5 = [v4 previousLayoutStateForApplicationTransitionContext:v3];

  return v5;
}

- (BOOL)_hitTestTouch:(id)a3 gestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSystemNotesContentViewController *)self view];
  v9 = [v6 view];

  v10 = [v9 window];

  v11 = [v10 screen];
  v12 = [v11 fixedCoordinateSpace];

  v13 = [v7 view];
  [v7 locationInView:v13];
  v15 = v14;
  v17 = v16;

  [v10 convertPoint:v12 toCoordinateSpace:{v15, v17}];
  v19 = v18;
  v21 = v20;

  [v8 convertPoint:v12 fromCoordinateSpace:{v19, v21}];
  v22 = [v8 hitTest:0 withEvent:?];
  LOBYTE(v7) = v22 != 0;

  return v7;
}

- (BOOL)transientUIHandledTouch:(id)a3 withSystemGestureRecognizer:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SBSystemNotesContentViewController *)self presentationMode]!= 1)
  {
    goto LABEL_8;
  }

  if ([(SBSystemNotesContentViewController *)self _hitTestTouch:v6 gestureRecognizer:v7])
  {
    [(SBSystemNotesContentViewController *)self _handleThumbnailTapGesture:v7];
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

- (void)_setPreferredSceneContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v14 = [(SBSystemNotesContentViewController *)self view];
  [v14 setNeedsLayout];
}

- (CGRect)_sceneFrame
{
  v3 = [(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation];
  if ((v3 - 3) >= 2)
  {
    width = self->_preferredSceneContentSize.width;
  }

  else
  {
    width = self->_preferredSceneContentSize.height;
  }

  if ((v3 - 3) >= 2)
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

- (id)_thumbnailViewForUserActivity:(id)a3
{
  v3 = [(SBSystemNotesContentViewController *)self _imageFromUserActivity:a3 presentationMode:1];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  [v4 setContentMode:2];

  return v4;
}

- (id)_imageFromUserActivity:(id)a3 presentationMode:(int64_t)a4
{
  v7 = MEMORY[0x277D359B0];
  v8 = a3;
  v9 = [v7 shared];
  v18 = 0;
  v10 = [v9 previewForUserActivity:v8 error:&v18];

  v11 = v18;
  if (v11)
  {
    v12 = SBLogSystemNotes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBSystemNotesContentViewController _imageFromUserActivity:presentationMode:];
    }
  }

  if (!a4)
  {
    v13 = MEMORY[0x277D359A0];
    goto LABEL_9;
  }

  if (a4 == 1)
  {
    v13 = MEMORY[0x277D359A8];
LABEL_9:
    v14 = [v10 objectForKey:*v13];
    goto LABEL_11;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  v16 = SBSSystemNotesPresentationModeDescription();
  [v15 handleFailureInMethod:a2 object:self file:@"SBSystemNotesContentViewController.m" lineNumber:792 description:{@"unsupported presentationMode: %@", v16}];

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5
{
  v7 = a3;
  v8 = a5;
  nubView = self->_nubView;
  if (nubView && ([(SBNubView *)nubView isHiddenOrHasHiddenAncestor]& 1) == 0)
  {
    v10 = [(SBNubView *)self->_nubView _isInAWindow];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3
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

- (id)styleForRegion:(id)a3 forView:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self->_nubView];
  v6 = [MEMORY[0x277D75860] effectWithPreview:v5];
  v7 = [(SBNubView *)self->_nubView contentView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [MEMORY[0x277D75888] shapeWithRoundedRect:v9 + -7.0 cornerRadius:{v11 + -4.0, v13 + 14.0, v15 + 8.0, (v13 + 14.0) * 0.5}];
  v17 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v16];

  return v17;
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBSystemNotesContentViewController_sceneHandle_didCreateScene___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  [(SBSystemNotesContentViewController *)self _invalidateTraitsParticipant:a3];
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

- (BOOL)sceneHandle:(id)a3 didReceiveAction:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_opt_class();
    v8 = v6;
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

    v12 = [v5 scene];
    if ([v11 canSendResponse] && (objc_msgSend(v12, "clientProcess"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasEntitlement:", @"com.apple.springboard.systemNotesScreenshot"), v13, v14))
    {
      v15 = [v11 displaysToScreenshot];
      v16 = MEMORY[0x277CBEB58];
      v17 = [v15 count];
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v19 = [v16 setWithCapacity:v18];
      if ([v15 count])
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = v15;
        v20 = v15;
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

        v15 = v29;
      }

      else
      {
        v25 = [v12 settings];
        v26 = [v25 sb_displayIdentityForSceneManagers];
        [v19 addObject:v26];
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