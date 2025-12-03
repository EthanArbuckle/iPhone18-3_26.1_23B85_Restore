@interface SHSheetPresenter
- (BOOL)_shouldCompleteAirdropActivity;
- (BOOL)isCollaborationSelected;
- (BOOL)isCompactSize;
- (BOOL)isContentManaged;
- (BOOL)isSLMEnabled;
- (BOOL)isSheetResizable;
- (BOOL)useRemoteUIService;
- (NSArray)selectedAssetIdentifiers;
- (NSString)sessionIdentifier;
- (SFAirDropViewController)airdropViewController;
- (SHSheetContentView)mainViewController;
- (SHSheetContentView)secondaryViewController;
- (SHSheetPresenter)initWithRouter:(id)router interactor:(id)interactor;
- (SHSheetPresenterDelegate)delegate;
- (UIActivity)currentActivity;
- (UIViewController)collaborationOptionsViewController;
- (UIViewController)collaborationParticipantsViewController;
- (UIViewController)optionsViewController;
- (_UIActivityUserDefaultsViewController)userDefaultsViewController;
- (_UIRemoteSheet)remoteSheet;
- (id)collaborationParticipantsPresenter;
- (id)createActivityItemsConfiguration;
- (id)customTitleForActivityType:(id)type;
- (id)interactor:(id)interactor activityPresentationControllerForActivity:(id)activity;
- (id)interactor:(id)interactor linkMetadataForActivity:(id)activity;
- (id)session;
- (void)_activityViewControllerPresentationDidBegin:(id)begin;
- (void)_completeInitialConfigurationUpdate;
- (void)_didCompleteActivityWithResult:(id)result;
- (void)_didCompleteCollaborationSharingURLCreationWithResult:(id)result;
- (void)_didEnterBackground:(id)background;
- (void)_dismiss;
- (void)_expandSharingContentView;
- (void)_findSupportedActivitiesWithCompletionHandler:(id)handler;
- (void)_finishAirdropActivityPerformer:(id)performer withSuccess:(BOOL)success;
- (void)_presentAirDropCollaborationUnsupportedAlert;
- (void)_registerForApplicationStateChangeNotification;
- (void)_showScreenTimeRestrictedAlert;
- (void)_startSessionIfNeeded;
- (void)_unregisterForApplicationStateChangeNotification;
- (void)_updateConfiguration;
- (void)_updateContentView:(id)view;
- (void)_willEnterForeground:(id)foreground;
- (void)activityViewController:(id)controller traitCollectionDidChange:(id)change;
- (void)activityViewControllerDidAppear:(id)appear;
- (void)activityViewControllerDidDisappear:(id)disappear;
- (void)activityViewControllerDidResignContentViewControllerOfPopover:(id)popover;
- (void)activityViewControllerSizeWillChange:(id)change;
- (void)activityViewControllerWillAppear:(id)appear;
- (void)activityViewControllerWillBeEmbedded:(id)embedded;
- (void)activityViewControllerWillBePresented:(id)presented;
- (void)activityViewControllerWillDisappear:(id)disappear;
- (void)addParticipantsViewController:(id)controller completedSharingWithShareURL:(id)l ckShare:(id)share;
- (void)addParticipantsViewController:(id)controller failedToSaveShareWithError:(id)error;
- (void)airDropViewController:(id)controller didFinishTransferWithSuccess:(BOOL)success;
- (void)airDropViewController:(id)controller requestSendingAppBundleIdentifierWithCompletionHandler:(id)handler;
- (void)airDropViewController:(id)controller requestSharedItemsWithDataRequest:(id)request completionHandler:(id)handler;
- (void)airDropViewControllerDidDismiss:(id)dismiss;
- (void)airDropViewControllerDidStartTransfer:(id)transfer;
- (void)airDropViewServiceWillStartTransfer:(id)transfer toRecipient:(id)recipient;
- (void)collaborationParticipantsViewController:(id)controller didCreateURL:(id)l error:(id)error;
- (void)didLongPressShareActivityWithIdentifier:(id)identifier;
- (void)didSelectCollaborativeAction;
- (void)didSelectSendCopyAction;
- (void)didUpdateSheetSize;
- (void)dismiss;
- (void)handleActionsEdit;
- (void)handleActivity:(id)activity;
- (void)handleClose;
- (void)handleCollaborationOptions;
- (void)handleCustomHeaderButton;
- (void)handleInfoSuggestionPress:(id)press;
- (void)handleNext;
- (void)handleOptions;
- (void)handlePeopleSuggestion:(id)suggestion;
- (void)handleRemoteCustomDismissal;
- (void)handleRemoteCustomPresentation;
- (void)interactor:(id)interactor airDropViewServiceWillStartTransferToRecipient:(id)recipient;
- (void)interactor:(id)interactor canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)handler;
- (void)interactor:(id)interactor canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)handler;
- (void)interactor:(id)interactor createSharingURLWithParticipantsForCollaborationRequest:(id)request completionHandler:(id)handler;
- (void)interactor:(id)interactor creatingCollaborationForActivity:(id)activity;
- (void)interactor:(id)interactor didCancelCollaborationForActivity:(id)activity;
- (void)interactor:(id)interactor didChangeMetadata:(id)metadata;
- (void)interactor:(id)interactor didCreateCollaborationForActivity:(id)activity;
- (void)interactor:(id)interactor didFailCreatingCollaborationForActivity:(id)activity error:(id)error;
- (void)interactor:(id)interactor didPerformActivityWithResult:(id)result;
- (void)interactor:(id)interactor didPerformAirdropViewActivityWithNoContentView:(BOOL)view;
- (void)interactor:(id)interactor didPerformUserDefaultsActivityWithContext:(id)context;
- (void)interactor:(id)interactor didUpdateAirDropTransferWithChange:(id)change;
- (void)interactor:(id)interactor didUpdateUserDefaultsActivityWithContext:(id)context;
- (void)interactor:(id)interactor showingModeRestriction:(id)restriction continueHandler:(id)handler;
- (void)interactor:(id)interactor willPerformActivity:(id)activity;
- (void)interactorDidFailPerformActivityNotCollaborationEligible:(id)eligible;
- (void)interactorDidUpdateSessionConfiguration:(id)configuration;
- (void)performActionActivityProxy:(id)proxy;
- (void)performActivity:(id)activity;
- (void)performActivityWithType:(id)type completionHandler:(id)handler;
- (void)performPeopleSuggestionProxy:(id)proxy;
- (void)performShareActivityProxy:(id)proxy activityIdentifier:(id)identifier;
- (void)prepareNonUIShareSheet;
- (void)prepareViewIfNeeded;
- (void)present;
- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)request completionHandler:(id)handler;
- (void)reloadActivity:(id)activity;
- (void)removePeopleSuggestionProxy:(id)proxy;
- (void)requestRefreshedCustomizationGroupForObjectManipulationViewController:(id)controller;
- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler;
- (void)setIsContentManaged:(BOOL)managed;
- (void)setSelectedAssetIdentifiers:(id)identifiers;
- (void)updateWithContext:(id)context;
- (void)userDefaultsViewController:(id)controller didFavoriteActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)userDefaultsViewController:(id)controller didSelectActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category disabled:(BOOL)disabled;
- (void)userDefaultsViewController:(id)controller didToggleActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)userDefaultsViewController:(id)controller didUpdateFavoritesProxies:(id)proxies activityCategory:(int64_t)category;
- (void)userDefaultsViewControllerDidDisappear:(id)disappear;
@end

@implementation SHSheetPresenter

- (BOOL)useRemoteUIService
{
  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  useRemoteUIService = [session useRemoteUIService];

  return useRemoteUIService;
}

- (void)_startSessionIfNeeded
{
  interactor = [(SHSheetPresenter *)self interactor];
  hasSessionStarted = [interactor hasSessionStarted];

  if ((hasSessionStarted & 1) == 0)
  {
    interactor = self->_interactor;

    [(SHSheetInteractor *)interactor startSession];
  }
}

- (void)_registerForApplicationStateChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter addObserver:self selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)present
{
  session = [(SHSheetPresenter *)self session];
  configuration = [session configuration];

  if (configuration || [(SHSheetPresenter *)self didRequestInitialConfiguration]|| [(SHSheetPresenter *)self didReceiveInitialConfiguration])
  {
    interactor = share_sheet_log();
    if (os_log_type_enabled(interactor, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, interactor, OS_LOG_TYPE_DEFAULT, "Initial configuration was already requested for presentation", buf, 2u);
    }
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Request initial configuration for presentation", v13, 2u);
    }

    [(SHSheetPresenter *)self setDidRequestInitialConfiguration:1];
    v7 = share_sheet_log();
    v8 = share_sheet_log();
    session2 = [(SHSheetPresenter *)self session];
    activityViewController = [session2 activityViewController];
    v11 = os_signpost_id_make_with_pointer(v8, activityViewController);

    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SendInitialConfiguration", &unk_18B437ED2, v12, 2u);
    }

    interactor = [(SHSheetPresenter *)self interactor];
    [interactor requestServiceUpdate];
  }
}

- (id)session
{
  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];

  return session;
}

- (SHSheetPresenter)initWithRouter:(id)router interactor:(id)interactor
{
  routerCopy = router;
  interactorCopy = interactor;
  v12.receiver = self;
  v12.super_class = SHSheetPresenter;
  v9 = [(SHSheetPresenter *)&v12 init];
  if (v9)
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SHSheetPresenter initWithRouter:interactor:];
    }

    objc_storeStrong(&v9->_router, router);
    objc_storeStrong(&v9->_interactor, interactor);
    [(SHSheetInteractor *)v9->_interactor setDelegate:v9];
    [(SHSheetInteractor *)v9->_interactor startSession];
  }

  return v9;
}

- (_UIRemoteSheet)remoteSheet
{
  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  remoteScene = [session remoteScene];

  if ([remoteScene conformsToProtocol:&unk_1EFEF7090])
  {
    v5 = remoteScene;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIActivity)currentActivity
{
  interactor = [(SHSheetPresenter *)self interactor];
  activityPerformer = [interactor activityPerformer];
  activity = [activityPerformer activity];

  return activity;
}

- (void)setSelectedAssetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  session = [(SHSheetPresenter *)self session];
  [session setSelectedAssetIdentifiers:identifiersCopy];
}

- (NSArray)selectedAssetIdentifiers
{
  session = [(SHSheetPresenter *)self session];
  selectedAssetIdentifiers = [session selectedAssetIdentifiers];

  return selectedAssetIdentifiers;
}

- (void)setIsContentManaged:(BOOL)managed
{
  managedCopy = managed;
  session = [(SHSheetPresenter *)self session];
  [session setIsContentManaged:managedCopy];
}

- (BOOL)isContentManaged
{
  session = [(SHSheetPresenter *)self session];
  isContentManaged = [session isContentManaged];

  return isContentManaged;
}

- (NSString)sessionIdentifier
{
  session = [(SHSheetPresenter *)self session];
  identifier = [session identifier];

  return identifier;
}

- (void)updateWithContext:(id)context
{
  contextCopy = context;
  interactor = [(SHSheetPresenter *)self interactor];
  activityPerformer = [interactor activityPerformer];

  if (activityPerformer)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SHSheetPresenter updateWithContext:v7];
    }
  }

  else
  {
    interactor2 = [(SHSheetPresenter *)self interactor];
    [interactor2 updateSessionWithContext:contextCopy];

    interactor3 = [(SHSheetPresenter *)self interactor];
    [interactor3 invalidateRemoteSession];

    [(SHSheetPresenter *)self _updateContentView:0];
    [(SHSheetPresenter *)self _updateConfiguration];
  }
}

- (void)reloadActivity:(id)activity
{
  activityCopy = activity;
  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController reloadActivity:activityCopy];
}

- (void)_updateConfiguration
{
  v3 = share_sheet_log();
  v4 = share_sheet_log();
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];
  v7 = os_signpost_id_make_with_pointer(v4, activityViewController);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UpdateConfiguration", &unk_18B437ED2, buf, 2u);
  }

  [(SHSheetPresenter *)self _startSessionIfNeeded];
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor requestServiceUpdate];

  v9 = share_sheet_log();
  v10 = share_sheet_log();
  session2 = [(SHSheetPresenter *)self session];
  activityViewController2 = [session2 activityViewController];
  v13 = os_signpost_id_make_with_pointer(v10, activityViewController2);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v9, OS_SIGNPOST_INTERVAL_END, v13, "UpdateConfiguration", &unk_18B437ED2, v14, 2u);
  }
}

- (BOOL)isCollaborationSelected
{
  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  isCollaborative = [session isCollaborative];

  return isCollaborative;
}

- (id)createActivityItemsConfiguration
{
  interactor = [(SHSheetPresenter *)self interactor];
  createActivityItemsConfiguration = [interactor createActivityItemsConfiguration];

  return createActivityItemsConfiguration;
}

- (void)performActivityWithType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor performActivityWithType:typeCopy completionHandler:handlerCopy];
}

- (void)_findSupportedActivitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor findSupportedActivitiesWithCompletionHandler:handlerCopy];
}

- (void)activityViewControllerWillBePresented:(id)presented
{
  presentedCopy = presented;
  [(SHSheetPresenter *)self _startSessionIfNeeded];
  [(SHSheetPresenter *)self setActivityViewControllerIsPresenting:1];
  [(SHSheetPresenter *)self _activityViewControllerPresentationDidBegin:presentedCopy];
}

- (void)activityViewControllerWillBeEmbedded:(id)embedded
{
  embeddedCopy = embedded;
  [(SHSheetPresenter *)self _startSessionIfNeeded];
  [(SHSheetPresenter *)self setActivityViewControllerIsEmbedded:1];
  [(SHSheetPresenter *)self _activityViewControllerPresentationDidBegin:embeddedCopy];
}

- (void)_activityViewControllerPresentationDidBegin:(id)begin
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(SHSheetPresenter *)self activityViewControllerIsPresenting]&& ![(SHSheetPresenter *)self activityViewControllerPresentationDidBegin])
  {
    [(SHSheetPresenter *)self setActivityViewControllerPresentationDidBegin:1];
    if ([(SHSheetPresenter *)self useRemoteUIService])
    {
      [(SHSheetPresenter *)self present];
    }

    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      activityViewControllerIsEmbedded = [(SHSheetPresenter *)self activityViewControllerIsEmbedded];
      v6 = @"presented";
      if (activityViewControllerIsEmbedded)
      {
        v6 = @"embedded";
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Share sheet is being %{public}@", &v7, 0xCu);
    }
  }
}

- (void)activityViewControllerWillAppear:(id)appear
{
  appearCopy = appear;
  [(SHSheetPresenter *)self _registerForApplicationStateChangeNotification];
  [(SHSheetPresenter *)self _startSessionIfNeeded];
  allowsEmbedding = [appearCopy allowsEmbedding];

  if (allowsEmbedding && ![(SHSheetPresenter *)self activityViewControllerPresentationDidBegin])
  {

    [(SHSheetPresenter *)self setActivityViewControllerIsPresenting:1];
  }
}

- (void)activityViewControllerDidAppear:(id)appear
{
  appearCopy = appear;
  router = [(SHSheetPresenter *)self router];
  rootViewController = [router rootViewController];
  presentingViewController = [rootViewController presentingViewController];

  router2 = [(SHSheetPresenter *)self router];
  isPresentedWithinPopover = [router2 isPresentedWithinPopover];

  session = [(SHSheetPresenter *)self session];
  if ([session allowsEmbedding] & 1) != 0 || presentingViewController || (isPresentedWithinPopover)
  {
    goto LABEL_8;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.facetime"])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  if ([bundleIdentifier2 isEqualToString:@"com.apple.Maps"])
  {

    goto LABEL_7;
  }

  mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier3 = [mainBundle3 bundleIdentifier];
  v25 = [bundleIdentifier3 isEqualToString:@"com.apple.mobilecal"];

  if ((v25 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"UIActivityViewController can only be used modally or as contentViewController in popover on iPad."];
  }

LABEL_9:
  if (![(SHSheetPresenter *)self activityViewControllerIsPresenting])
  {
    goto LABEL_19;
  }

  allowsEmbedding = [appearCopy allowsEmbedding];
  v16 = share_sheet_log();
  v17 = share_sheet_log();
  v18 = os_signpost_id_make_with_pointer(v17, appearCopy);

  if (allowsEmbedding)
  {
    if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
    {
      goto LABEL_18;
    }

    v27 = 0;
    v19 = "PresentShareSheetEmbedded";
    v20 = &v27;
  }

  else
  {
    if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
    {
      goto LABEL_18;
    }

    LOWORD(v26) = 0;
    v19 = " enableTelemetry=YES ";
    v20 = &v26;
  }

  _os_signpost_emit_with_name_impl(&dword_18B359000, v16, OS_SIGNPOST_INTERVAL_END, v18, "PresentShareSheet", v19, v20, 2u);
LABEL_18:

LABEL_19:
  [(SHSheetPresenter *)self setActivityViewControllerIsPresenting:0, v26];
  presentationDelayedTestingBlock = [(SHSheetPresenter *)self presentationDelayedTestingBlock];
  [(SHSheetPresenter *)self setPresentationDelayedTestingBlock:0];
  if (presentationDelayedTestingBlock)
  {
    presentationDelayedTestingBlock[2](presentationDelayedTestingBlock);
  }

  interactor = [(SHSheetPresenter *)self interactor];
  [interactor activityViewControllerDidAppear];
}

- (void)activityViewControllerWillDisappear:(id)disappear
{
  router = [(SHSheetPresenter *)self router];
  rootViewController = [router rootViewController];
  isBeingDismissed = [rootViewController isBeingDismissed];

  if (isBeingDismissed)
  {
    interactor = [(SHSheetPresenter *)self interactor];
    activityPerformer = [interactor activityPerformer];
    activity = [activityPerformer activity];

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    IsCamera = _ShareSheetIsCamera();
    IsSupportedPrintActivity = _ShareSheetIsSupportedPrintActivity(activity);
    if (!userInterfaceIdiom && IsCamera && IsSupportedPrintActivity)
    {
      mEMORY[0x1E69C5A18] = [MEMORY[0x1E69C5A18] sharedPrintController];
      [mEMORY[0x1E69C5A18] dismissAnimated:0];
    }
  }
}

- (void)activityViewControllerDidDisappear:(id)disappear
{
  [(SHSheetPresenter *)self _unregisterForApplicationStateChangeNotification];
  [(SHSheetPresenter *)self setDidRequestDismissal:0];
  [(SHSheetPresenter *)self setDidReceiveInitialConfiguration:0];
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor activityViewControllerDidDisappear];
}

- (void)activityViewControllerSizeWillChange:(id)change
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  activityViewController = [session activityViewController];
  customViewController = [activityViewController customViewController];

  if (customViewController)
  {
    if (userInterfaceIdiom != 1)
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [currentDevice2 orientation] - 1;

      if (v11 <= 1)
      {
        router = [(SHSheetPresenter *)self router];
        [router dismissSecondaryViewControllerAnimated:0];
      }
    }
  }
}

- (void)activityViewController:(id)controller traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if ([(SHSheetPresenter *)self didRequestInitialConfiguration]|| [(SHSheetPresenter *)self didReceiveInitialConfiguration])
  {
    router = [(SHSheetPresenter *)self router];
    rootViewController = [router rootViewController];
    traitCollection = [rootViewController traitCollection];

    userInterfaceStyle = [changeCopy userInterfaceStyle];
    if (userInterfaceStyle != [traitCollection userInterfaceStyle])
    {
      [(SHSheetPresenter *)self _updateConfiguration];
    }
  }
}

- (void)activityViewControllerDidResignContentViewControllerOfPopover:(id)popover
{
  interactor = [(SHSheetPresenter *)self interactor];
  activityPerformer = [interactor activityPerformer];

  if (!activityPerformer || (v5 = [activityPerformer state] == 1, v6 = activityPerformer, v5))
  {
    [(SHSheetPresenter *)self dismiss];
    v6 = activityPerformer;
  }
}

- (void)prepareViewIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromBOOL();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_18B359000, a2, OS_LOG_TYPE_DEBUG, "Prepare view with Airdrop only:%@", v4, 0xCu);
}

- (void)prepareNonUIShareSheet
{
  [(SHSheetPresenter *)self setIsPresentingNonUIShareSheet:1];
  [(SHSheetPresenter *)self prepareViewIfNeeded];

  [(SHSheetPresenter *)self present];
}

- (void)performActivity:(id)activity
{
  activityCopy = activity;
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor performActivity:activityCopy];
}

- (void)dismiss
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Request to dismiss Share Sheet", buf, 2u);
  }

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  if (!mainViewController)
  {
    goto LABEL_11;
  }

  v5 = mainViewController;
  mainViewController2 = [(SHSheetPresenter *)self mainViewController];
  view = [mainViewController2 view];
  window = [view window];
  if (window)
  {
    v9 = window;
    mainViewController3 = [(SHSheetPresenter *)self mainViewController];
    isBeingDismissed = [mainViewController3 isBeingDismissed];

    if ((isBeingDismissed & 1) == 0)
    {
LABEL_11:
      [(SHSheetPresenter *)self setDidRequestDismissal:1];
      interactor = [(SHSheetPresenter *)self interactor];
      activityPerformer = [interactor activityPerformer];

      if ([activityPerformer isRunning])
      {
        [activityPerformer cancel];
      }

      else
      {
        [(SHSheetPresenter *)self _dismiss];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (![(SHSheetPresenter *)self isReportingActivityResult])
  {
    goto LABEL_11;
  }

  activityPerformer = share_sheet_log();
  if (os_log_type_enabled(activityPerformer, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_18B359000, activityPerformer, OS_LOG_TYPE_DEFAULT, "Share Sheet is already dismissed or is currently dismissing, AND it is currently reporting its activity result.", v14, 2u);
  }

LABEL_14:
}

- (void)_dismiss
{
  v13 = *MEMORY[0x1E69E9840];
  [(SHSheetPresenter *)self setIsReportingActivityResult:1];
  activityResult = [(SHSheetPresenter *)self activityResult];
  [(SHSheetPresenter *)self setActivityResult:0];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = activityResult;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Report Activity for result:%@", buf, 0xCu);
  }

  delegate = [(SHSheetPresenter *)self delegate];
  activity = [activityResult activity];
  [delegate mainPresenter:self willCompleteActivity:activity withSuccess:{objc_msgSend(activityResult, "completedState") == 5}];

  router = [(SHSheetPresenter *)self router];
  LODWORD(activity) = [(SHSheetPresenter *)self isPresentingNonUIShareSheet];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__SHSheetPresenter__dismiss__block_invoke;
  v9[3] = &unk_1E71FA638;
  v9[4] = self;
  v10 = activityResult;
  v8 = activityResult;
  [router dismissForActivityPerformerResult:v8 didPresentFromShareSheet:activity ^ 1 completionHandler:v9];
}

void __28__SHSheetPresenter__dismiss__block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _didCompleteActivityWithResult:*(a1 + 40)];
  [*(a1 + 32) setIsReportingActivityResult:0];
  if (a2)
  {
    v4 = [*(a1 + 32) interactor];
    [v4 stopSession];
  }
}

- (void)_completeInitialConfigurationUpdate
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Initial configuration update received", buf, 2u);
  }

  [(SHSheetPresenter *)self setDidReceiveInitialConfiguration:1];
  if (![(SHSheetPresenter *)self useRemoteUIService])
  {
    delegate = [(SHSheetPresenter *)self delegate];
    [delegate mainPresenterIsReadyToInteract:self];
  }

  if ([(SHSheetPresenter *)self activityViewControllerPresentationDidBegin])
  {
    v5 = *MEMORY[0x1E69DDA98];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__SHSheetPresenter__completeInitialConfigurationUpdate__block_invoke;
    v6[3] = &unk_1E71F9510;
    v6[4] = self;
    [v5 _performBlockAfterCATransactionCommits:v6];
  }
}

void __55__SHSheetPresenter__completeInitialConfigurationUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) interactor];
  [v1 preheatActivitiesIfNeeded];
}

- (void)_didCompleteActivityWithResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy completedState] == 5;
  delegate = [(SHSheetPresenter *)self delegate];
  activity = [resultCopy activity];
  returnedItems = [resultCopy returnedItems];
  error = [resultCopy error];
  [delegate mainPresenter:self didCompleteActivity:activity withSuccess:v5 returnedItems:returnedItems error:error];

  interactor = [(SHSheetPresenter *)self interactor];
  [interactor clearActivityForResult:resultCopy];
}

- (void)_unregisterForApplicationStateChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)_didEnterBackground:(id)background
{
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor applicationDidEnterBackground];
}

- (void)_willEnterForeground:(id)foreground
{
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor applicationWillEnterForeground];

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController reloadContent];
}

- (void)interactorDidUpdateSessionConfiguration:(id)configuration
{
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "received configuration update", v5, 2u);
  }

  [(SHSheetPresenter *)self _updateContentView:0];
  if ([(SHSheetPresenter *)self didRequestInitialConfiguration])
  {
    [(SHSheetPresenter *)self setDidRequestInitialConfiguration:0];
    [(SHSheetPresenter *)self _completeInitialConfigurationUpdate];
  }
}

- (void)_updateContentView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (viewCopy)
  {
LABEL_5:
    if (-[SHSheetPresenter useRemoteUIService](self, "useRemoteUIService") || (-[SHSheetPresenter session](self, "session"), v6 = objc_claimAutoreleasedReturnValue(), [v6 configuration], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      session = [(SHSheetPresenter *)self session];
      configuration = [session configuration];
      shouldBlockPresentation = [configuration shouldBlockPresentation];

      router = [(SHSheetPresenter *)self router];
      v12 = router;
      if (shouldBlockPresentation)
      {
        [(SHSheetViewModel *)router presentPresentationBlockingViewController];
      }

      else
      {
        [(SHSheetViewModel *)router dismissPresentationBlockingViewControllerIfNeeded];

        v13 = share_sheet_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = viewCopy;
          _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "Update content view:%@", &v18, 0xCu);
        }

        v14 = [SHSheetViewModel alloc];
        session2 = [(SHSheetPresenter *)self session];
        v12 = [(SHSheetViewModel *)v14 initWithSession:session2];

        secondaryViewController = [(SHSheetPresenter *)self secondaryViewController];

        if (viewCopy == secondaryViewController)
        {
          [(SHSheetViewModel *)v12 setCustomViewController:0];
        }

        [viewCopy updateWithViewModel:v12];
      }
    }

    goto LABEL_15;
  }

  secondaryViewController2 = [(SHSheetPresenter *)self secondaryViewController];
  if (secondaryViewController2 || ([(SHSheetPresenter *)self mainViewController], (secondaryViewController2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    viewCopy = secondaryViewController2;
    goto LABEL_5;
  }

  v17 = share_sheet_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_18B359000, v17, OS_LOG_TYPE_DEFAULT, "No content view to update", &v18, 2u);
  }

  viewCopy = 0;
LABEL_15:
}

- (void)_presentAirDropCollaborationUnsupportedAlert
{
  v9 = SFLocalizedStringForKey();
  v3 = SFLocalizedStringForKey();
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v3 preferredStyle:1];
  v5 = MEMORY[0x1E69DC648];
  v6 = SFLocalizedStringForKey();
  v7 = [v5 actionWithTitle:v6 style:1 handler:&__block_literal_global_26];
  [v4 addAction:v7];

  router = [(SHSheetPresenter *)self router];
  [router presentAlertController:v4];
}

- (void)interactor:(id)interactor willPerformActivity:(id)activity
{
  v4 = [(SHSheetPresenter *)self router:interactor];
  [v4 dismissUserDefaultsViewControllerAnimated:1];
}

- (void)interactor:(id)interactor didPerformActivityWithResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = resultCopy;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "did perform activity with result:%@", &v12, 0xCu);
  }

  [(SHSheetPresenter *)self setActivityResult:resultCopy];
  activity = [resultCopy activity];
  activityType = [activity activityType];
  v9 = [activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  _shouldCompleteAirdropActivity = [(SHSheetPresenter *)self _shouldCompleteAirdropActivity];
  if (v9 && (v11 = _shouldCompleteAirdropActivity, ![(SHSheetPresenter *)self didRequestDismissal]))
  {
    if (v11)
    {
      [(SHSheetPresenter *)self _didCompleteActivityWithResult:resultCopy];
    }
  }

  else
  {
    [(SHSheetPresenter *)self _dismiss];
  }
}

- (id)interactor:(id)interactor activityPresentationControllerForActivity:(id)activity
{
  v4 = [(SHSheetPresenter *)self router:interactor];
  activityPresentationController = [v4 activityPresentationController];

  return activityPresentationController;
}

- (void)interactor:(id)interactor didPerformUserDefaultsActivityWithContext:(id)context
{
  contextCopy = context;
  userDefaultsViewController = [(SHSheetPresenter *)self userDefaultsViewController];

  if (!userDefaultsViewController)
  {
    v6 = [SHSheetFactory createUserDefaultsViewControllerWithContext:contextCopy delegate:self];
    [(SHSheetPresenter *)self setUserDefaultsViewController:v6];
    router = [(SHSheetPresenter *)self router];
    [router presentUserDefaultsViewController:v6];
  }
}

- (void)interactor:(id)interactor didUpdateUserDefaultsActivityWithContext:(id)context
{
  contextCopy = context;
  userDefaultsViewController = [(SHSheetPresenter *)self userDefaultsViewController];

  if (userDefaultsViewController)
  {
    userDefaultsViewController2 = [(SHSheetPresenter *)self userDefaultsViewController];
    favoritesProxies = [contextCopy favoritesProxies];
    suggestionProxies = [contextCopy suggestionProxies];
    activitiesByUUID = [contextCopy activitiesByUUID];
    applicationActivityTypes = [contextCopy applicationActivityTypes];
    orderedUUIDs = [contextCopy orderedUUIDs];
    excludedActivityTypes = [contextCopy excludedActivityTypes];
    [userDefaultsViewController2 updateWithFavoritesProxies:favoritesProxies suggestionProxies:suggestionProxies activitiesByUUID:activitiesByUUID applicationActivityTypes:applicationActivityTypes orderedUUIDs:orderedUUIDs excludedActivityTypes:excludedActivityTypes];
  }
}

- (void)interactor:(id)interactor didPerformAirdropViewActivityWithNoContentView:(BOOL)view
{
  viewCopy = view;
  router = [(SHSheetPresenter *)self router];
  [router dismissUserDefaultsViewControllerAnimated:1];

  v8 = [SHSheetFactory createAirdropViewControllerWithNoContentView:viewCopy delegate:self];
  [(SHSheetPresenter *)self setAirdropViewController:v8];
  router2 = [(SHSheetPresenter *)self router];
  [router2 presentAirdropViewController:v8];
}

- (void)interactorDidFailPerformActivityNotCollaborationEligible:(id)eligible
{
  session = [eligible session];
  collaborationItem = [session collaborationItem];

  if ([collaborationItem type])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SHSheetPresenter interactorDidFailPerformActivityNotCollaborationEligible:];
    }

    lastPathComponent = &stru_1EFE999E0;
  }

  else
  {
    fileURL = [collaborationItem fileURL];
    uRLByDeletingPathExtension = [fileURL URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
  }

  router = [(SHSheetPresenter *)self router];
  v11 = SHSheetCollaborativeItemNotSupportedAlertController(lastPathComponent);
  [router presentAlertController:v11];
}

- (void)interactor:(id)interactor didUpdateAirDropTransferWithChange:(id)change
{
  changeCopy = change;
  interactor = [(SHSheetPresenter *)self interactor];
  activityPerformer = [interactor activityPerformer];

  activity = [activityPerformer activity];
  activityType = [activity activityType];
  v10 = [activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  state = [changeCopy state];
  proxyIdentifier = [changeCopy proxyIdentifier];

  if (!proxyIdentifier && state == 7)
  {
    mainViewController = share_sheet_log();
    if (os_log_type_enabled(mainViewController, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_18B359000, mainViewController, OS_LOG_TYPE_DEFAULT, "Collaborate via AirDrop is unsupported on iOS, using the Boop to Collaborate path instead", v18, 2u);
    }

    goto LABEL_19;
  }

  if (((activityPerformer != 0) & v10) == 0)
  {
    mainViewController = share_sheet_log();
    if (os_log_type_enabled(mainViewController, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetPresenter *)state interactor:activityPerformer didUpdateAirDropTransferWithChange:mainViewController];
    }

    goto LABEL_19;
  }

  if ((state - 4) < 3)
  {
    [(SHSheetPresenter *)self _finishAirdropActivityPerformer:activityPerformer withSuccess:1];
    if (state == 4)
    {
      airdropViewController = [(SHSheetPresenter *)self airdropViewController];
      selfCopy2 = self;
      v16 = airdropViewController;
      v17 = 1;
LABEL_15:
      [(SHSheetPresenter *)selfCopy2 airDropViewController:v16 didFinishTransferWithSuccess:v17];
      goto LABEL_16;
    }

LABEL_14:
    airdropViewController = [(SHSheetPresenter *)self airdropViewController];
    selfCopy2 = self;
    v16 = airdropViewController;
    v17 = 0;
    goto LABEL_15;
  }

  if (state != 2)
  {
    if ((state - 5) > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  airdropViewController = [(SHSheetPresenter *)self airdropViewController];
  [(SHSheetPresenter *)self airDropViewControllerDidStartTransfer:airdropViewController];
LABEL_16:

LABEL_17:
  if (proxyIdentifier)
  {
    mainViewController = [(SHSheetPresenter *)self mainViewController];
    [mainViewController didUpdateAirDropTransferWithChange:changeCopy];
LABEL_19:
  }
}

- (id)interactor:(id)interactor linkMetadataForActivity:(id)activity
{
  v5 = [(SHSheetPresenter *)self session:interactor];
  activityItemsManager = [v5 activityItemsManager];
  linkMetadataValuesNeedsUpdate = [activityItemsManager linkMetadataValuesNeedsUpdate];

  if ((linkMetadataValuesNeedsUpdate & 1) != 0 || (-[SHSheetPresenter mainViewController](self, "mainViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 headerMetadata], firstObject = objc_claimAutoreleasedReturnValue(), v8, !firstObject))
  {
    session = [(SHSheetPresenter *)self session];
    metadataCollection = [session metadataCollection];
    metadatas = [metadataCollection metadatas];
    firstObject = [metadatas firstObject];
  }

  return firstObject;
}

- (void)interactor:(id)interactor airDropViewServiceWillStartTransferToRecipient:(id)recipient
{
  recipientCopy = recipient;
  WeakRetained = objc_loadWeakRetained(&self->_airdropViewController);
  [(SHSheetPresenter *)self airDropViewServiceWillStartTransfer:WeakRetained toRecipient:recipientCopy];
}

- (void)interactor:(id)interactor didChangeMetadata:(id)metadata
{
  metadataCopy = metadata;
  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController reloadMetadata:metadataCopy];

  secondaryViewController = [(SHSheetPresenter *)self secondaryViewController];
  [secondaryViewController reloadMetadata:metadataCopy];
}

- (void)interactor:(id)interactor showingModeRestriction:(id)restriction continueHandler:(id)handler
{
  handlerCopy = handler;
  restrictionCopy = restriction;
  router = [(SHSheetPresenter *)self router];
  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  activityViewController = [session activityViewController];
  v12 = SHSheetModeRestrictionAlertController(restrictionCopy, activityViewController, handlerCopy);

  [router presentAlertController:v12];
}

- (void)addParticipantsViewController:(id)controller failedToSaveShareWithError:(id)error
{
  v5 = MEMORY[0x1E69CDE60];
  errorCopy = error;
  v7 = [v5 alloc];
  collaborationItemIdentifier = [(SHSheetPresenter *)self collaborationItemIdentifier];
  v9 = [v7 initWithCollaborationItemIdentifier:collaborationItemIdentifier sharingURL:0 share:0 error:errorCopy mailResult:0];

  [(SHSheetPresenter *)self _didCompleteCollaborationSharingURLCreationWithResult:v9];
}

- (void)addParticipantsViewController:(id)controller completedSharingWithShareURL:(id)l ckShare:(id)share
{
  v7 = MEMORY[0x1E69CDE60];
  shareCopy = share;
  lCopy = l;
  v10 = [v7 alloc];
  collaborationItemIdentifier = [(SHSheetPresenter *)self collaborationItemIdentifier];
  v12 = [v10 initWithCollaborationItemIdentifier:collaborationItemIdentifier sharingURL:lCopy share:shareCopy error:0 mailResult:0];

  [(SHSheetPresenter *)self _didCompleteCollaborationSharingURLCreationWithResult:v12];
}

- (void)collaborationParticipantsViewController:(id)controller didCreateURL:(id)l error:(id)error
{
  errorCopy = error;
  lCopy = l;
  router = [(SHSheetPresenter *)self router];
  [router dismissCollaborationParticipantsViewController];

  v10 = objc_alloc(MEMORY[0x1E69CDE50]);
  absoluteString = [lCopy absoluteString];
  v15 = [v10 initWithSubject:0 body:absoluteString containerID:0 canEdit:0 allowOthersToInvite:0 error:errorCopy];

  v12 = objc_alloc(MEMORY[0x1E69CDE60]);
  collaborationItemIdentifier = [(SHSheetPresenter *)self collaborationItemIdentifier];
  v14 = [v12 initWithCollaborationItemIdentifier:collaborationItemIdentifier sharingURL:lCopy share:0 error:errorCopy mailResult:v15];

  [(SHSheetPresenter *)self _didCompleteCollaborationSharingURLCreationWithResult:v14];
}

- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];

  collaborationDelegate = [activityViewController collaborationDelegate];
  v11 = [collaborationDelegate activityViewController:activityViewController collaborationParticipantsViewControllerWithDelegate:self];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v14 = +[SHSheetCollaborationParticipantsContext defaultContext];
    v15 = [SHSheetFactory createCollaborationParticipantsViewControllerWithContext:v14 request:requestCopy delegate:self];
    if (!v15)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharesheet.addParticipantViewController" code:42 userInfo:0];
      v18 = objc_alloc(MEMORY[0x1E69CDE60]);
      collaborationItemIdentifier = [requestCopy collaborationItemIdentifier];
      v20 = [v18 initWithCollaborationItemIdentifier:collaborationItemIdentifier sharingURL:0 share:0 error:v17 mailResult:0];

      handlerCopy[2](handlerCopy, v20);
      goto LABEL_6;
    }

    v13 = v15;
  }

  objc_initWeak(&location, self);
  router = [(SHSheetPresenter *)self router];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __107__SHSheetPresenter_presentCollaborationParticipantsViewControllerForCloudSharingRequest_completionHandler___block_invoke;
  v24 = &unk_1E71F95A8;
  objc_copyWeak(&v25, &location);
  [router presentCollaborationParticipantsViewController:v13 dismissalHandler:&v21];

  [(SHSheetPresenter *)self setCollaborationParticipantsViewController:v13, v21, v22, v23, v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

LABEL_6:
}

void __107__SHSheetPresenter_presentCollaborationParticipantsViewControllerForCloudSharingRequest_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collaborationItemIdentifier];

  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69CDE60]);
    v3 = [WeakRetained collaborationItemIdentifier];
    v4 = [v2 initWithCollaborationItemIdentifier:v3 sharingURL:0 share:0 error:0 mailResult:0];

    [WeakRetained _didCompleteCollaborationSharingURLCreationWithResult:v4];
  }
}

- (id)collaborationParticipantsPresenter
{
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];

  collaborationDelegate = [activityViewController collaborationDelegate];
  v6 = [collaborationDelegate activityViewController:activityViewController collaborationParticipantsViewControllerWithDelegate:self];
  session2 = [(SHSheetPresenter *)self session];
  if ([session2 useRemoteUIService] && (_ShareSheetPlatformWantsRemoteOptions() & 1) != 0)
  {
    session3 = [(SHSheetPresenter *)self session];
    remoteScene = [session3 remoteScene];
    v10 = [remoteScene conformsToProtocol:&unk_1EFEE8360];

    if (v10 && !v6)
    {
      session4 = [(SHSheetPresenter *)self session];
      selfCopy = [session4 remoteScene];

      goto LABEL_8;
    }
  }

  else
  {
  }

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)_didCompleteCollaborationSharingURLCreationWithResult:(id)result
{
  resultCopy = result;
  collaborationCreateSharingURLCompletionHandler = [(SHSheetPresenter *)self collaborationCreateSharingURLCompletionHandler];
  [(SHSheetPresenter *)self setCollaborationCreateSharingURLCompletionHandler:0];
  [(SHSheetPresenter *)self setCollaborationItemIdentifier:0];
  [(SHSheetPresenter *)self setCollaborationParticipantsViewController:0];
  collaborationCreateSharingURLCompletionHandler[2](collaborationCreateSharingURLCompletionHandler, resultCopy);
}

- (void)interactor:(id)interactor createSharingURLWithParticipantsForCollaborationRequest:(id)request completionHandler:(id)handler
{
  interactorCopy = interactor;
  requestCopy = request;
  handlerCopy = handler;
  collaborationParticipantsPresenter = [(SHSheetPresenter *)self collaborationParticipantsPresenter];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __105__SHSheetPresenter_interactor_createSharingURLWithParticipantsForCollaborationRequest_completionHandler___block_invoke;
  v16 = &unk_1E71FA660;
  objc_copyWeak(&v17, &location);
  [collaborationParticipantsPresenter presentCollaborationParticipantsViewControllerForCloudSharingRequest:requestCopy completionHandler:&v13];
  [(SHSheetPresenter *)self setCollaborationCreateSharingURLCompletionHandler:handlerCopy, v13, v14, v15, v16];
  collaborationItemIdentifier = [requestCopy collaborationItemIdentifier];
  [(SHSheetPresenter *)self setCollaborationItemIdentifier:collaborationItemIdentifier];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __105__SHSheetPresenter_interactor_createSharingURLWithParticipantsForCollaborationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteCollaborationSharingURLCreationWithResult:v3];
}

- (void)interactor:(id)interactor creatingCollaborationForActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  if ([activityType isEqual:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    activityType2 = [activityCopy activityType];
    v7 = [activityType2 isEqual:@"com.apple.UIKit.activity.CollaborationInviteWithLink"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = _ShareSheetBundle();
  v9 = [v8 localizedStringForKey:@"WAITING_TEXT" value:@"Waiting…" table:@"Localizable"];

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController startPulsingActivity:activityCopy localizedTitle:v9];

LABEL_5:
}

- (void)interactor:(id)interactor didCreateCollaborationForActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  if ([activityType isEqual:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    activityType2 = [activityCopy activityType];
    v7 = [activityType2 isEqual:@"com.apple.UIKit.activity.CollaborationInviteWithLink"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController stopPulsingActivity:activityCopy];

LABEL_5:
}

- (void)interactor:(id)interactor didFailCreatingCollaborationForActivity:(id)activity error:(id)error
{
  interactorCopy = interactor;
  activityCopy = activity;
  errorCopy = error;
  v23 = 0;
  v24 = 0;
  [MEMORY[0x1E69CDE78] getFailureTitle:&v24 message:&v23 error:errorCopy];
  v11 = v24;
  v12 = v23;
  objc_initWeak(&location, self);
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v12 preferredStyle:1];
  v14 = MEMORY[0x1E69DC648];
  v15 = SFLocalizedStringForKey();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__SHSheetPresenter_interactor_didFailCreatingCollaborationForActivity_error___block_invoke;
  v19[3] = &unk_1E71FA688;
  v16 = errorCopy;
  v20 = v16;
  objc_copyWeak(&v21, &location);
  v17 = [v14 actionWithTitle:v15 style:1 handler:v19];
  [v13 addAction:v17];

  router = [(SHSheetPresenter *)self router];
  [router presentAlertController:v13];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __77__SHSheetPresenter_interactor_didFailCreatingCollaborationForActivity_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  if ([MEMORY[0x1E69CDE78] isOplockError:v2 updatedShare:&v5])
  {
    v3 = v5 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained dismiss];
  }
}

- (void)interactor:(id)interactor didCancelCollaborationForActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  if ([activityType isEqual:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    activityType2 = [activityCopy activityType];
    v7 = [activityType2 isEqual:@"com.apple.UIKit.activity.CollaborationInviteWithLink"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController stopPulsingActivity:activityCopy];

LABEL_5:
}

- (void)interactor:(id)interactor canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _ShareSheetBundle();
  v7 = [v6 localizedStringForKey:@"FOLDER_SHARED_SUBITEMS_TITLE" value:@"Are you sure you want to share this folder?" table:@"Localizable"];

  v8 = _ShareSheetBundle();
  v9 = [v8 localizedStringForKey:@"FOLDER_SHARED_SUBITEMS_MESSAGE" value:@"This folder includes items that are already shared. If you share this folder table:{only people you add to it will be able to access items inside it.", @"Localizable"}];

  v10 = _ShareSheetBundle();
  v11 = [v10 localizedStringForKey:@"FOLDER_SHARED_SUBITEMS_SHARE_ANYWAY" value:@"Share Anyway" table:@"Localizable"];

  v12 = _ShareSheetBundle();
  v13 = [v12 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];

  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v15 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__SHSheetPresenter_interactor_canShareFolderContainingExistingSharedItemsWithCompletionHandler___block_invoke;
  v27[3] = &unk_1E71F9270;
  v16 = handlerCopy;
  v28 = v16;
  v17 = [v15 actionWithTitle:v11 style:0 handler:v27];
  [v14 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __96__SHSheetPresenter_interactor_canShareFolderContainingExistingSharedItemsWithCompletionHandler___block_invoke_2;
  v25 = &unk_1E71F9270;
  v26 = v16;
  v19 = v16;
  v20 = [v18 actionWithTitle:v13 style:1 handler:&v22];
  [v14 addAction:{v20, v22, v23, v24, v25}];

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController presentViewController:v14 animated:1 completion:0];
}

- (void)interactor:(id)interactor canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _ShareSheetBundle();
  v7 = [v6 localizedStringForKey:@"DOCUMENT_IN_SHARED_FOLDER_TITLE" value:@"Add People to Shared Folder" table:@"Localizable"];

  v8 = _ShareSheetBundle();
  v9 = [v8 localizedStringForKey:@"DOCUMENT_IN_SHARED_FOLDER_MESSAGE" value:@"Add new participants to the shared folder to collaborate on this document." table:@"Localizable"];

  v10 = _ShareSheetBundle();
  v11 = [v10 localizedStringForKey:@"Manage Shared Folder" value:@"Manage Shared Folder" table:@"Localizable"];

  v12 = _ShareSheetBundle();
  v13 = [v12 localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];

  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v15 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __92__SHSheetPresenter_interactor_canManageShareForDocumentInSharedFolderWithCompletionHandler___block_invoke;
  v27[3] = &unk_1E71F9270;
  v16 = handlerCopy;
  v28 = v16;
  v17 = [v15 actionWithTitle:v11 style:0 handler:v27];
  [v14 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __92__SHSheetPresenter_interactor_canManageShareForDocumentInSharedFolderWithCompletionHandler___block_invoke_2;
  v25 = &unk_1E71F9270;
  v26 = v16;
  v19 = v16;
  v20 = [v18 actionWithTitle:v13 style:1 handler:&v22];
  [v14 addAction:{v20, v22, v23, v24, v25}];

  mainViewController = [(SHSheetPresenter *)self mainViewController];
  [mainViewController presentViewController:v14 animated:1 completion:0];
}

- (void)performPeopleSuggestionProxy:(id)proxy
{
  v14 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [proxyCopy identifier];
    v12 = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform people suggestion:%@", &v12, 0xCu);
  }

  if ([proxyCopy isDisabled])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    peopleSuggestion = [proxyCopy peopleSuggestion];
    interactor = [(SHSheetPresenter *)self interactor];
    session = [interactor session];
    [session setCurrentPeopleSuggestion:peopleSuggestion];

    interactor2 = [(SHSheetPresenter *)self interactor];
    identifier2 = [proxyCopy identifier];
    [interactor2 performPersonSuggestionWithIdentifier:identifier2];
  }
}

- (void)removePeopleSuggestionProxy:(id)proxy
{
  v11 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [proxyCopy identifier];
    v9 = 138412290;
    v10 = identifier;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Remove people suggestion:%@", &v9, 0xCu);
  }

  interactor = [(SHSheetPresenter *)self interactor];
  identifier2 = [proxyCopy identifier];
  [interactor removePersonSuggestionWithIdentifier:identifier2];
}

- (void)performShareActivityProxy:(id)proxy activityIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  identifierCopy = identifier;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [proxyCopy identifier];
    v16 = 138412546;
    v17 = identifier;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Perform share activity:%@ activityIdentifier:%@", &v16, 0x16u);
  }

  if ([proxyCopy isDisabled])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    if (!identifierCopy)
    {
      identifierCopy = [proxyCopy identifier];
    }

    interactor = [(SHSheetPresenter *)self interactor];
    [interactor performShareActivityWithIdentifier:identifierCopy];

    interactor2 = [(SHSheetPresenter *)self interactor];
    session = [interactor2 session];
    activitiesManager = [session activitiesManager];
    v14 = [activitiesManager activityForIdentifier:identifierCopy];

    activityType = [v14 activityType];

    if (activityType == @"com.apple.UIKit.activity.Share")
    {
      [(SHSheetPresenter *)self _expandSharingContentView];
    }
  }
}

- (void)performActionActivityProxy:(id)proxy
{
  v17 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [proxyCopy identifier];
    v15 = 138412290;
    v16 = identifier;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform action activity:%@", &v15, 0xCu);
  }

  if ([proxyCopy isDisabled])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    interactor = [(SHSheetPresenter *)self interactor];
    identifier2 = [proxyCopy identifier];
    [interactor performActionActivityWithIdentifier:identifier2];

    interactor2 = [(SHSheetPresenter *)self interactor];
    session = [interactor2 session];
    activitiesManager = [session activitiesManager];
    identifier3 = [proxyCopy identifier];
    v13 = [activitiesManager activityForIdentifier:identifier3];

    activityType = [v13 activityType];

    if (activityType == @"com.apple.UIKit.activity.Share")
    {
      [(SHSheetPresenter *)self _expandSharingContentView];
    }
  }
}

- (void)didLongPressShareActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Long press activity", v7, 2u);
  }

  interactor = [(SHSheetPresenter *)self interactor];
  [interactor longPressShareActivityWithIdentifier:identifierCopy];
}

- (void)handlePeopleSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = suggestionCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Handle people suggestion:%@", &v7, 0xCu);
  }

  if ([suggestionCopy isRestricted])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    interactor = [(SHSheetPresenter *)self interactor];
    [interactor performPeopleSuggestion:suggestionCopy];
  }
}

- (void)handleInfoSuggestionPress:(id)press
{
  pressCopy = press;
  v5 = _ShareSheetBundle();
  v10 = [v5 localizedStringForKey:@"RESTRICTED_ALERT_SCREEN_TIME_DISMISS_BUTTON_TITLE" value:@"Dismiss" table:@"Localizable"];

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:pressCopy message:0 preferredStyle:1];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:1 handler:0];
  [v6 addAction:v7];

  v8 = v6;
  router = [(SHSheetPresenter *)self router];
  [router presentAlertController:v8];
}

- (void)handleActivity:(id)activity
{
  v18 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = activityCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Handle activity:%@", &v16, 0xCu);
  }

  session = [(SHSheetPresenter *)self session];
  configuration = [session configuration];
  restrictedActivityTypes = [configuration restrictedActivityTypes];

  activityType = [activityCopy activityType];
  LODWORD(configuration) = [restrictedActivityTypes containsObject:activityType];

  if (configuration)
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    activityType2 = [activityCopy activityType];
    v11 = [activityType2 isEqual:@"com.apple.UIKit.activity.AirDrop"];

    interactor = [(SHSheetPresenter *)self interactor];
    v13 = interactor;
    if (v11)
    {
      [(SHSheetPresenter *)self interactor:interactor didPerformAirdropViewActivityWithNoContentView:0];
    }

    else
    {
      session2 = [interactor session];
      activityViewController = [session2 activityViewController];
      [activityViewController _performActivity:activityCopy];
    }
  }
}

- (void)didUpdateSheetSize
{
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];

  presentationController = [activityViewController presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentationController2 = [activityViewController presentationController];
    mainViewController = [(SHSheetPresenter *)self mainViewController];
    isCompactSize = [mainViewController isCompactSize];

    interactor = [(SHSheetPresenter *)self interactor];
    session2 = [interactor session];
    [presentationController2 updateWithCompactSize:isCompactSize applyImmediately:{objc_msgSend(session2, "instantShareSheet")}];
  }

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    mainViewController2 = [(SHSheetPresenter *)self mainViewController];
    isSLMEnabled = [mainViewController2 isSLMEnabled];

    if (isSLMEnabled)
    {
      session3 = [(SHSheetPresenter *)self session];
      activityViewController2 = [session3 activityViewController];
      [activityViewController2 _updateSheetPresentationController:0];
    }
  }
}

- (BOOL)isSLMEnabled
{
  mainViewController = [(SHSheetPresenter *)self mainViewController];
  isSLMEnabled = [mainViewController isSLMEnabled];

  return isSLMEnabled;
}

- (BOOL)isCompactSize
{
  mainViewController = [(SHSheetPresenter *)self mainViewController];
  isCompactSize = [mainViewController isCompactSize];

  return isCompactSize;
}

- (BOOL)isSheetResizable
{
  mainViewController = [(SHSheetPresenter *)self mainViewController];
  isResizable = [mainViewController isResizable];

  return isResizable;
}

- (void)handleOptions
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Handle options", v11, 2u);
  }

  session = [(SHSheetPresenter *)self session];
  customOptionsViewController = [session customOptionsViewController];

  if (!customOptionsViewController)
  {
    v6 = [SHSheetOptionsViewContext alloc];
    session2 = [(SHSheetPresenter *)self session];
    customizationGroups = [session2 customizationGroups];
    v9 = [(SHSheetOptionsViewContext *)v6 initWithCustomizationGroups:customizationGroups];

    customOptionsViewController = [SHSheetFactory createOptionsViewControllerWithContext:v9 delegate:self];
  }

  [(SHSheetPresenter *)self setOptionsViewController:customOptionsViewController];
  router = [(SHSheetPresenter *)self router];
  [router presentOptionsViewController:customOptionsViewController dismissalHandler:0];
}

- (void)handleCollaborationOptions
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Handle collaboration options", buf, 2u);
  }

  collaborationOptionsViewController = [(SHSheetPresenter *)self collaborationOptionsViewController];

  if (collaborationOptionsViewController)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetPresenter *)v5 handleCollaborationOptions];
    }
  }

  else
  {
    session = [(SHSheetPresenter *)self session];
    collaborationItem = [session collaborationItem];

    shareOptions = [collaborationItem shareOptions];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__SHSheetPresenter_handleCollaborationOptions__block_invoke;
    v13[3] = &unk_1E71FA6B0;
    v14 = collaborationItem;
    v5 = collaborationItem;
    v11 = [SHSheetFactory createCollaborationOptionsViewControllerWithCollaborationOptions:shareOptions bundleIdentifier:bundleIdentifier updateHandler:v13];

    [(SHSheetPresenter *)self setCollaborationOptionsViewController:v11];
    router = [(SHSheetPresenter *)self router];
    [router presentOptionsViewController:v11 dismissalHandler:0];
  }
}

- (void)didSelectCollaborativeAction
{
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor setWantsCollaborativeSession:1];
}

- (void)didSelectSendCopyAction
{
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor setWantsCollaborativeSession:0];
}

- (void)handleCustomHeaderButton
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Custom header button tapped", v9, 2u);
  }

  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  showSharePlayProminently = [session showSharePlayProminently];

  if (showSharePlayProminently)
  {
    interactor2 = [(SHSheetPresenter *)self interactor];
    v8 = objc_alloc_init(UISharePlayActivity);
    [interactor2 performActivity:v8];
  }
}

- (void)handleRemoteCustomPresentation
{
  session = [(SHSheetPresenter *)self session];
  v6 = [SHSheetFactory createCustomRemoteViewControllerWithSession:session];

  presentationController = [v6 presentationController];
  [presentationController setDelegate:self];

  router = [(SHSheetPresenter *)self router];
  [router presentRemoteCustomViewController:v6];
}

- (void)handleRemoteCustomDismissal
{
  router = [(SHSheetPresenter *)self router];
  [router dismissRemoteCustomViewControllerIfNeeded];
}

- (void)handleClose
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Handle close", v4, 2u);
  }

  [(SHSheetPresenter *)self dismiss];
}

- (void)handleNext
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Present secondary view", v7, 2u);
  }

  session = [(SHSheetPresenter *)self session];
  v5 = [SHSheetFactory createContentViewControllerWithSession:session presenter:self];

  [(SHSheetPresenter *)self setSecondaryViewController:v5];
  router = [(SHSheetPresenter *)self router];
  [router presentSecondaryViewController:v5];

  [(SHSheetPresenter *)self _updateContentView:v5];
}

- (void)handleActionsEdit
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Handle actions edit", v5, 2u);
  }

  interactor = [(SHSheetPresenter *)self interactor];
  [interactor performEditAction];
}

- (id)customTitleForActivityType:(id)type
{
  typeCopy = type;
  interactor = [(SHSheetPresenter *)self interactor];
  session = [interactor session];
  activityViewController = [session activityViewController];

  v8 = [activityViewController _titleForActivity:typeCopy];

  return v8;
}

- (void)_expandSharingContentView
{
  session = [(SHSheetPresenter *)self session];
  [session setDidExpand:1];

  session2 = [(SHSheetPresenter *)self session];
  activityViewController = [session2 activityViewController];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIActivityViewControllerSharingExpandedNotification" object:activityViewController userInfo:0];

  [(SHSheetPresenter *)self _updateContentView:0];
}

- (void)_showScreenTimeRestrictedAlert
{
  v4 = +[SHSheetFactory createScreenTimeAlertViewController];
  router = [(SHSheetPresenter *)self router];
  [router presentAlertController:v4];
}

- (void)userDefaultsViewController:(id)controller didToggleActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  identifierCopy = identifier;
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor toggleUserDefaultsActivityWithIdentifier:identifierCopy activityCategory:category];
}

- (void)userDefaultsViewController:(id)controller didFavoriteActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category
{
  activityCopy = activity;
  identifierCopy = identifier;
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor favoriteUserDefaultsActivity:activityCopy withIdentifier:identifierCopy activityCategory:category];
}

- (void)userDefaultsViewController:(id)controller didUpdateFavoritesProxies:(id)proxies activityCategory:(int64_t)category
{
  proxiesCopy = proxies;
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor updateUserDefaultsFavorites:proxiesCopy activityCategory:category];
}

- (void)userDefaultsViewController:(id)controller didSelectActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  identifierCopy = identifier;
  if (disabledCopy)
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    interactor = [(SHSheetPresenter *)self interactor];
    [interactor performUserDefaultsActivityWithIdentifier:identifierCopy activityCategory:category];
  }
}

- (void)userDefaultsViewControllerDidDisappear:(id)disappear
{
  [(SHSheetPresenter *)self setUserDefaultsViewController:0];
  interactor = [(SHSheetPresenter *)self interactor];
  [interactor userDefaultsViewControllerDidDisappear];
}

- (void)airDropViewControllerDidDismiss:(id)dismiss
{
  interactor = [(SHSheetPresenter *)self interactor];
  activityPerformer = [interactor activityPerformer];
  isRunning = [activityPerformer isRunning];

  if (isRunning)
  {
    interactor2 = [(SHSheetPresenter *)self interactor];
    activityPerformer2 = [interactor2 activityPerformer];
    [(SHSheetPresenter *)self _finishAirdropActivityPerformer:activityPerformer2 withSuccess:1];
  }

  else
  {
    session = [(SHSheetPresenter *)self session];
    activitiesManager = [session activitiesManager];
    interactor2 = [activitiesManager activityForActivityType:@"com.apple.UIKit.activity.AirDrop"];

    activityPerformer2 = [[SHSheetActivityPerformerResult alloc] initWithActivity:interactor2 completedState:5 returnedItems:0 error:0];
    [(SHSheetPresenter *)self setActivityResult:activityPerformer2];
    if ([(SHSheetPresenter *)self _shouldCompleteAirdropActivity])
    {
      [(SHSheetPresenter *)self _didCompleteActivityWithResult:activityPerformer2];
    }
  }
}

- (void)airDropViewServiceWillStartTransfer:(id)transfer toRecipient:(id)recipient
{
  recipientCopy = recipient;
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];

  airDropDelegate = [activityViewController airDropDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    displayName = [recipientCopy displayName];
    contactIdentifier = [recipientCopy contactIdentifier];
    [airDropDelegate activityViewController:activityViewController willStartAirdropTransferToRecipient:displayName contactIdentifier:contactIdentifier];

    goto LABEL_6;
  }

  contactIdentifier2 = [recipientCopy contactIdentifier];
  if (contactIdentifier2 || ([recipientCopy displayName], v11 = objc_claimAutoreleasedReturnValue(), IsSuspicious = SFAirDropDeviceNameIsSuspicious(), v11, (IsSuspicious & 1) == 0) && (objc_msgSend(recipientCopy, "displayName"), (contactIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    displayName = contactIdentifier2;
    [airDropDelegate activityViewController:activityViewController willStartAirdropTransferToRecipient:contactIdentifier2];
LABEL_6:
  }

LABEL_7:
}

- (void)airDropViewControllerDidStartTransfer:(id)transfer
{
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];

  airDropDelegate = [activityViewController airDropDelegate];
  if (objc_opt_respondsToSelector())
  {
    [airDropDelegate activityViewControllerWillStartAirdropTransfer:activityViewController];
  }
}

- (void)airDropViewController:(id)controller didFinishTransferWithSuccess:(BOOL)success
{
  successCopy = success;
  session = [(SHSheetPresenter *)self session];
  activityViewController = [session activityViewController];

  airDropDelegate = [activityViewController airDropDelegate];
  if (successCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [airDropDelegate activityViewControllerDidFinishAirdropTransfer:activityViewController];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [airDropDelegate activityViewControllerDidFailAirdropTransfer:activityViewController];
  }
}

- (void)airDropViewController:(id)controller requestSharedItemsWithDataRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  controllerCopy = controller;
  interactor = [(SHSheetPresenter *)self interactor];
  extension = [controllerCopy extension];

  [interactor performActivityWithRequest:requestCopy forExtension:extension completion:handlerCopy];
}

- (void)airDropViewController:(id)controller requestSendingAppBundleIdentifierWithCompletionHandler:(id)handler
{
  memset(v6, 0, sizeof(v6));
  handlerCopy = handler;
  _SharingUIAuditTokenForCurrentProcess(v6);
  v5 = _ShareSheetBundleIDFromAuditToken();
  handlerCopy[2](handlerCopy, v5);
}

- (void)_finishAirdropActivityPerformer:(id)performer withSuccess:(BOOL)success
{
  successCopy = success;
  performerCopy = performer;
  activity = [performerCopy activity];
  v6 = activity;
  if (activity)
  {
    activityType = [activity activityType];
    [activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    [performerCopy finishWithSuccess:successCopy];
  }
}

- (BOOL)_shouldCompleteAirdropActivity
{
  session = [(SHSheetPresenter *)self session];
  isAirdropOnly = [session isAirdropOnly];

  return isAirdropOnly;
}

- (void)requestRefreshedCustomizationGroupForObjectManipulationViewController:(id)controller
{
  controllerCopy = controller;
  session = [(SHSheetPresenter *)self session];
  customizationGroups = [session customizationGroups];

  [controllerCopy updateWithCustomizationGroups:customizationGroups];
}

- (void)runScrollingTestWithName:(id)name type:(int64_t)type completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if ([(SHSheetPresenter *)self activityViewControllerIsPresenting])
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SHSheetPresenter_runScrollingTestWithName_type_completionHandler___block_invoke;
    v14[3] = &unk_1E71FA6D8;
    objc_copyWeak(v17, &location);
    v15 = nameCopy;
    v17[1] = type;
    v16 = handlerCopy;
    [(SHSheetPresenter *)self setPresentationDelayedTestingBlock:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    mainViewController = [(SHSheetPresenter *)self mainViewController];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      mainViewController2 = [(SHSheetPresenter *)self mainViewController];
      [mainViewController2 runScrollingTestWithName:nameCopy type:type completionHandler:handlerCopy];
    }

    else
    {
      v13 = share_sheet_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SHSheetPresenter runScrollingTestWithName:v13 type:? completionHandler:?];
      }
    }
  }
}

void __68__SHSheetPresenter_runScrollingTestWithName_type_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained runScrollingTestWithName:*(a1 + 32) type:*(a1 + 56) completionHandler:*(a1 + 40)];
}

- (SHSheetPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetContentView)mainViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

- (SHSheetContentView)secondaryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryViewController);

  return WeakRetained;
}

- (SFAirDropViewController)airdropViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_airdropViewController);

  return WeakRetained;
}

- (_UIActivityUserDefaultsViewController)userDefaultsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsViewController);

  return WeakRetained;
}

- (UIViewController)optionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_optionsViewController);

  return WeakRetained;
}

- (UIViewController)collaborationOptionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationOptionsViewController);

  return WeakRetained;
}

- (UIViewController)collaborationParticipantsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationParticipantsViewController);

  return WeakRetained;
}

- (void)initWithRouter:interactor:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_18B359000, v1, OS_LOG_TYPE_DEBUG, "New presenter with router:%@ interactor:%@", v2, 0x16u);
}

- (void)interactorDidFailPerformActivityNotCollaborationEligible:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_18B359000, v0, OS_LOG_TYPE_ERROR, "Current collaboration item is not file URL: %@", v1, 0xCu);
}

- (void)interactor:(NSObject *)a3 didUpdateAirDropTransferWithChange:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = SFAirDropTransferChangeStateDescription();
  v6 = [a2 activity];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "did receive airdrop transfer update:%@ for no active airdrop activity:%@", &v7, 0x16u);
}

- (void)runScrollingTestWithName:(void *)a1 type:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 mainViewController];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "mainViewController doesn't respond to scrolling test:%@", v4, 0xCu);
}

@end