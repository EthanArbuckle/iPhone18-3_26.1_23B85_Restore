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
- (SHSheetPresenter)initWithRouter:(id)a3 interactor:(id)a4;
- (SHSheetPresenterDelegate)delegate;
- (UIActivity)currentActivity;
- (UIViewController)collaborationOptionsViewController;
- (UIViewController)collaborationParticipantsViewController;
- (UIViewController)optionsViewController;
- (_UIActivityUserDefaultsViewController)userDefaultsViewController;
- (_UIRemoteSheet)remoteSheet;
- (id)collaborationParticipantsPresenter;
- (id)createActivityItemsConfiguration;
- (id)customTitleForActivityType:(id)a3;
- (id)interactor:(id)a3 activityPresentationControllerForActivity:(id)a4;
- (id)interactor:(id)a3 linkMetadataForActivity:(id)a4;
- (id)session;
- (void)_activityViewControllerPresentationDidBegin:(id)a3;
- (void)_completeInitialConfigurationUpdate;
- (void)_didCompleteActivityWithResult:(id)a3;
- (void)_didCompleteCollaborationSharingURLCreationWithResult:(id)a3;
- (void)_didEnterBackground:(id)a3;
- (void)_dismiss;
- (void)_expandSharingContentView;
- (void)_findSupportedActivitiesWithCompletionHandler:(id)a3;
- (void)_finishAirdropActivityPerformer:(id)a3 withSuccess:(BOOL)a4;
- (void)_presentAirDropCollaborationUnsupportedAlert;
- (void)_registerForApplicationStateChangeNotification;
- (void)_showScreenTimeRestrictedAlert;
- (void)_startSessionIfNeeded;
- (void)_unregisterForApplicationStateChangeNotification;
- (void)_updateConfiguration;
- (void)_updateContentView:(id)a3;
- (void)_willEnterForeground:(id)a3;
- (void)activityViewController:(id)a3 traitCollectionDidChange:(id)a4;
- (void)activityViewControllerDidAppear:(id)a3;
- (void)activityViewControllerDidDisappear:(id)a3;
- (void)activityViewControllerDidResignContentViewControllerOfPopover:(id)a3;
- (void)activityViewControllerSizeWillChange:(id)a3;
- (void)activityViewControllerWillAppear:(id)a3;
- (void)activityViewControllerWillBeEmbedded:(id)a3;
- (void)activityViewControllerWillBePresented:(id)a3;
- (void)activityViewControllerWillDisappear:(id)a3;
- (void)addParticipantsViewController:(id)a3 completedSharingWithShareURL:(id)a4 ckShare:(id)a5;
- (void)addParticipantsViewController:(id)a3 failedToSaveShareWithError:(id)a4;
- (void)airDropViewController:(id)a3 didFinishTransferWithSuccess:(BOOL)a4;
- (void)airDropViewController:(id)a3 requestSendingAppBundleIdentifierWithCompletionHandler:(id)a4;
- (void)airDropViewController:(id)a3 requestSharedItemsWithDataRequest:(id)a4 completionHandler:(id)a5;
- (void)airDropViewControllerDidDismiss:(id)a3;
- (void)airDropViewControllerDidStartTransfer:(id)a3;
- (void)airDropViewServiceWillStartTransfer:(id)a3 toRecipient:(id)a4;
- (void)collaborationParticipantsViewController:(id)a3 didCreateURL:(id)a4 error:(id)a5;
- (void)didLongPressShareActivityWithIdentifier:(id)a3;
- (void)didSelectCollaborativeAction;
- (void)didSelectSendCopyAction;
- (void)didUpdateSheetSize;
- (void)dismiss;
- (void)handleActionsEdit;
- (void)handleActivity:(id)a3;
- (void)handleClose;
- (void)handleCollaborationOptions;
- (void)handleCustomHeaderButton;
- (void)handleInfoSuggestionPress:(id)a3;
- (void)handleNext;
- (void)handleOptions;
- (void)handlePeopleSuggestion:(id)a3;
- (void)handleRemoteCustomDismissal;
- (void)handleRemoteCustomPresentation;
- (void)interactor:(id)a3 airDropViewServiceWillStartTransferToRecipient:(id)a4;
- (void)interactor:(id)a3 canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)a4;
- (void)interactor:(id)a3 canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)a4;
- (void)interactor:(id)a3 createSharingURLWithParticipantsForCollaborationRequest:(id)a4 completionHandler:(id)a5;
- (void)interactor:(id)a3 creatingCollaborationForActivity:(id)a4;
- (void)interactor:(id)a3 didCancelCollaborationForActivity:(id)a4;
- (void)interactor:(id)a3 didChangeMetadata:(id)a4;
- (void)interactor:(id)a3 didCreateCollaborationForActivity:(id)a4;
- (void)interactor:(id)a3 didFailCreatingCollaborationForActivity:(id)a4 error:(id)a5;
- (void)interactor:(id)a3 didPerformActivityWithResult:(id)a4;
- (void)interactor:(id)a3 didPerformAirdropViewActivityWithNoContentView:(BOOL)a4;
- (void)interactor:(id)a3 didPerformUserDefaultsActivityWithContext:(id)a4;
- (void)interactor:(id)a3 didUpdateAirDropTransferWithChange:(id)a4;
- (void)interactor:(id)a3 didUpdateUserDefaultsActivityWithContext:(id)a4;
- (void)interactor:(id)a3 showingModeRestriction:(id)a4 continueHandler:(id)a5;
- (void)interactor:(id)a3 willPerformActivity:(id)a4;
- (void)interactorDidFailPerformActivityNotCollaborationEligible:(id)a3;
- (void)interactorDidUpdateSessionConfiguration:(id)a3;
- (void)performActionActivityProxy:(id)a3;
- (void)performActivity:(id)a3;
- (void)performActivityWithType:(id)a3 completionHandler:(id)a4;
- (void)performPeopleSuggestionProxy:(id)a3;
- (void)performShareActivityProxy:(id)a3 activityIdentifier:(id)a4;
- (void)prepareNonUIShareSheet;
- (void)prepareViewIfNeeded;
- (void)present;
- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)a3 completionHandler:(id)a4;
- (void)reloadActivity:(id)a3;
- (void)removePeopleSuggestionProxy:(id)a3;
- (void)requestRefreshedCustomizationGroupForObjectManipulationViewController:(id)a3;
- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)setIsContentManaged:(BOOL)a3;
- (void)setSelectedAssetIdentifiers:(id)a3;
- (void)updateWithContext:(id)a3;
- (void)userDefaultsViewController:(id)a3 didFavoriteActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6;
- (void)userDefaultsViewController:(id)a3 didSelectActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5 disabled:(BOOL)a6;
- (void)userDefaultsViewController:(id)a3 didToggleActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)userDefaultsViewController:(id)a3 didUpdateFavoritesProxies:(id)a4 activityCategory:(int64_t)a5;
- (void)userDefaultsViewControllerDidDisappear:(id)a3;
@end

@implementation SHSheetPresenter

- (BOOL)useRemoteUIService
{
  v2 = [(SHSheetPresenter *)self interactor];
  v3 = [v2 session];
  v4 = [v3 useRemoteUIService];

  return v4;
}

- (void)_startSessionIfNeeded
{
  v3 = [(SHSheetPresenter *)self interactor];
  v4 = [v3 hasSessionStarted];

  if ((v4 & 1) == 0)
  {
    interactor = self->_interactor;

    [(SHSheetInteractor *)interactor startSession];
  }
}

- (void)_registerForApplicationStateChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 addObserver:self selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)present
{
  v3 = [(SHSheetPresenter *)self session];
  v4 = [v3 configuration];

  if (v4 || [(SHSheetPresenter *)self didRequestInitialConfiguration]|| [(SHSheetPresenter *)self didReceiveInitialConfiguration])
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Initial configuration was already requested for presentation", buf, 2u);
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
    v9 = [(SHSheetPresenter *)self session];
    v10 = [v9 activityViewController];
    v11 = os_signpost_id_make_with_pointer(v8, v10);

    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SendInitialConfiguration", &unk_18B437ED2, v12, 2u);
    }

    v5 = [(SHSheetPresenter *)self interactor];
    [v5 requestServiceUpdate];
  }
}

- (id)session
{
  v2 = [(SHSheetPresenter *)self interactor];
  v3 = [v2 session];

  return v3;
}

- (SHSheetPresenter)initWithRouter:(id)a3 interactor:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_router, a3);
    objc_storeStrong(&v9->_interactor, a4);
    [(SHSheetInteractor *)v9->_interactor setDelegate:v9];
    [(SHSheetInteractor *)v9->_interactor startSession];
  }

  return v9;
}

- (_UIRemoteSheet)remoteSheet
{
  v2 = [(SHSheetPresenter *)self interactor];
  v3 = [v2 session];
  v4 = [v3 remoteScene];

  if ([v4 conformsToProtocol:&unk_1EFEF7090])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIActivity)currentActivity
{
  v2 = [(SHSheetPresenter *)self interactor];
  v3 = [v2 activityPerformer];
  v4 = [v3 activity];

  return v4;
}

- (void)setSelectedAssetIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self session];
  [v5 setSelectedAssetIdentifiers:v4];
}

- (NSArray)selectedAssetIdentifiers
{
  v2 = [(SHSheetPresenter *)self session];
  v3 = [v2 selectedAssetIdentifiers];

  return v3;
}

- (void)setIsContentManaged:(BOOL)a3
{
  v3 = a3;
  v4 = [(SHSheetPresenter *)self session];
  [v4 setIsContentManaged:v3];
}

- (BOOL)isContentManaged
{
  v2 = [(SHSheetPresenter *)self session];
  v3 = [v2 isContentManaged];

  return v3;
}

- (NSString)sessionIdentifier
{
  v2 = [(SHSheetPresenter *)self session];
  v3 = [v2 identifier];

  return v3;
}

- (void)updateWithContext:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self interactor];
  v6 = [v5 activityPerformer];

  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SHSheetPresenter updateWithContext:v7];
    }
  }

  else
  {
    v8 = [(SHSheetPresenter *)self interactor];
    [v8 updateSessionWithContext:v4];

    v9 = [(SHSheetPresenter *)self interactor];
    [v9 invalidateRemoteSession];

    [(SHSheetPresenter *)self _updateContentView:0];
    [(SHSheetPresenter *)self _updateConfiguration];
  }
}

- (void)reloadActivity:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self mainViewController];
  [v5 reloadActivity:v4];
}

- (void)_updateConfiguration
{
  v3 = share_sheet_log();
  v4 = share_sheet_log();
  v5 = [(SHSheetPresenter *)self session];
  v6 = [v5 activityViewController];
  v7 = os_signpost_id_make_with_pointer(v4, v6);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UpdateConfiguration", &unk_18B437ED2, buf, 2u);
  }

  [(SHSheetPresenter *)self _startSessionIfNeeded];
  v8 = [(SHSheetPresenter *)self interactor];
  [v8 requestServiceUpdate];

  v9 = share_sheet_log();
  v10 = share_sheet_log();
  v11 = [(SHSheetPresenter *)self session];
  v12 = [v11 activityViewController];
  v13 = os_signpost_id_make_with_pointer(v10, v12);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v9, OS_SIGNPOST_INTERVAL_END, v13, "UpdateConfiguration", &unk_18B437ED2, v14, 2u);
  }
}

- (BOOL)isCollaborationSelected
{
  v2 = [(SHSheetPresenter *)self interactor];
  v3 = [v2 session];
  v4 = [v3 isCollaborative];

  return v4;
}

- (id)createActivityItemsConfiguration
{
  v2 = [(SHSheetPresenter *)self interactor];
  v3 = [v2 createActivityItemsConfiguration];

  return v3;
}

- (void)performActivityWithType:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHSheetPresenter *)self interactor];
  [v8 performActivityWithType:v7 completionHandler:v6];
}

- (void)_findSupportedActivitiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self interactor];
  [v5 findSupportedActivitiesWithCompletionHandler:v4];
}

- (void)activityViewControllerWillBePresented:(id)a3
{
  v4 = a3;
  [(SHSheetPresenter *)self _startSessionIfNeeded];
  [(SHSheetPresenter *)self setActivityViewControllerIsPresenting:1];
  [(SHSheetPresenter *)self _activityViewControllerPresentationDidBegin:v4];
}

- (void)activityViewControllerWillBeEmbedded:(id)a3
{
  v4 = a3;
  [(SHSheetPresenter *)self _startSessionIfNeeded];
  [(SHSheetPresenter *)self setActivityViewControllerIsEmbedded:1];
  [(SHSheetPresenter *)self _activityViewControllerPresentationDidBegin:v4];
}

- (void)_activityViewControllerPresentationDidBegin:(id)a3
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
      v5 = [(SHSheetPresenter *)self activityViewControllerIsEmbedded];
      v6 = @"presented";
      if (v5)
      {
        v6 = @"embedded";
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Share sheet is being %{public}@", &v7, 0xCu);
    }
  }
}

- (void)activityViewControllerWillAppear:(id)a3
{
  v4 = a3;
  [(SHSheetPresenter *)self _registerForApplicationStateChangeNotification];
  [(SHSheetPresenter *)self _startSessionIfNeeded];
  v5 = [v4 allowsEmbedding];

  if (v5 && ![(SHSheetPresenter *)self activityViewControllerPresentationDidBegin])
  {

    [(SHSheetPresenter *)self setActivityViewControllerIsPresenting:1];
  }
}

- (void)activityViewControllerDidAppear:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self router];
  v6 = [v5 rootViewController];
  v7 = [v6 presentingViewController];

  v8 = [(SHSheetPresenter *)self router];
  v9 = [v8 isPresentedWithinPopover];

  v10 = [(SHSheetPresenter *)self session];
  if ([v10 allowsEmbedding] & 1) != 0 || v7 || (v9)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 bundleIdentifier];
  if ([v12 isEqualToString:@"com.apple.facetime"])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E696AAE8] mainBundle];
  v14 = [v13 bundleIdentifier];
  if ([v14 isEqualToString:@"com.apple.Maps"])
  {

    goto LABEL_7;
  }

  v23 = [MEMORY[0x1E696AAE8] mainBundle];
  v24 = [v23 bundleIdentifier];
  v25 = [v24 isEqualToString:@"com.apple.mobilecal"];

  if ((v25 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"UIActivityViewController can only be used modally or as contentViewController in popover on iPad."];
  }

LABEL_9:
  if (![(SHSheetPresenter *)self activityViewControllerIsPresenting])
  {
    goto LABEL_19;
  }

  v15 = [v4 allowsEmbedding];
  v16 = share_sheet_log();
  v17 = share_sheet_log();
  v18 = os_signpost_id_make_with_pointer(v17, v4);

  if (v15)
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
  v21 = [(SHSheetPresenter *)self presentationDelayedTestingBlock];
  [(SHSheetPresenter *)self setPresentationDelayedTestingBlock:0];
  if (v21)
  {
    v21[2](v21);
  }

  v22 = [(SHSheetPresenter *)self interactor];
  [v22 activityViewControllerDidAppear];
}

- (void)activityViewControllerWillDisappear:(id)a3
{
  v4 = [(SHSheetPresenter *)self router];
  v5 = [v4 rootViewController];
  v6 = [v5 isBeingDismissed];

  if (v6)
  {
    v7 = [(SHSheetPresenter *)self interactor];
    v8 = [v7 activityPerformer];
    v14 = [v8 activity];

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    IsCamera = _ShareSheetIsCamera();
    IsSupportedPrintActivity = _ShareSheetIsSupportedPrintActivity(v14);
    if (!v10 && IsCamera && IsSupportedPrintActivity)
    {
      v13 = [MEMORY[0x1E69C5A18] sharedPrintController];
      [v13 dismissAnimated:0];
    }
  }
}

- (void)activityViewControllerDidDisappear:(id)a3
{
  [(SHSheetPresenter *)self _unregisterForApplicationStateChangeNotification];
  [(SHSheetPresenter *)self setDidRequestDismissal:0];
  [(SHSheetPresenter *)self setDidReceiveInitialConfiguration:0];
  v4 = [(SHSheetPresenter *)self interactor];
  [v4 activityViewControllerDidDisappear];
}

- (void)activityViewControllerSizeWillChange:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = [(SHSheetPresenter *)self interactor];
  v7 = [v6 session];
  v8 = [v7 activityViewController];
  v9 = [v8 customViewController];

  if (v9)
  {
    if (v5 != 1)
    {
      v10 = [MEMORY[0x1E69DC938] currentDevice];
      v11 = [v10 orientation] - 1;

      if (v11 <= 1)
      {
        v12 = [(SHSheetPresenter *)self router];
        [v12 dismissSecondaryViewControllerAnimated:0];
      }
    }
  }
}

- (void)activityViewController:(id)a3 traitCollectionDidChange:(id)a4
{
  v9 = a4;
  if ([(SHSheetPresenter *)self didRequestInitialConfiguration]|| [(SHSheetPresenter *)self didReceiveInitialConfiguration])
  {
    v5 = [(SHSheetPresenter *)self router];
    v6 = [v5 rootViewController];
    v7 = [v6 traitCollection];

    v8 = [v9 userInterfaceStyle];
    if (v8 != [v7 userInterfaceStyle])
    {
      [(SHSheetPresenter *)self _updateConfiguration];
    }
  }
}

- (void)activityViewControllerDidResignContentViewControllerOfPopover:(id)a3
{
  v4 = [(SHSheetPresenter *)self interactor];
  v7 = [v4 activityPerformer];

  if (!v7 || (v5 = [v7 state] == 1, v6 = v7, v5))
  {
    [(SHSheetPresenter *)self dismiss];
    v6 = v7;
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

- (void)performActivity:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self interactor];
  [v5 performActivity:v4];
}

- (void)dismiss
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Request to dismiss Share Sheet", buf, 2u);
  }

  v4 = [(SHSheetPresenter *)self mainViewController];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [(SHSheetPresenter *)self mainViewController];
  v7 = [v6 view];
  v8 = [v7 window];
  if (v8)
  {
    v9 = v8;
    v10 = [(SHSheetPresenter *)self mainViewController];
    v11 = [v10 isBeingDismissed];

    if ((v11 & 1) == 0)
    {
LABEL_11:
      [(SHSheetPresenter *)self setDidRequestDismissal:1];
      v13 = [(SHSheetPresenter *)self interactor];
      v12 = [v13 activityPerformer];

      if ([v12 isRunning])
      {
        [v12 cancel];
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

  v12 = share_sheet_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "Share Sheet is already dismissed or is currently dismissing, AND it is currently reporting its activity result.", v14, 2u);
  }

LABEL_14:
}

- (void)_dismiss
{
  v13 = *MEMORY[0x1E69E9840];
  [(SHSheetPresenter *)self setIsReportingActivityResult:1];
  v3 = [(SHSheetPresenter *)self activityResult];
  [(SHSheetPresenter *)self setActivityResult:0];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Report Activity for result:%@", buf, 0xCu);
  }

  v5 = [(SHSheetPresenter *)self delegate];
  v6 = [v3 activity];
  [v5 mainPresenter:self willCompleteActivity:v6 withSuccess:{objc_msgSend(v3, "completedState") == 5}];

  v7 = [(SHSheetPresenter *)self router];
  LODWORD(v6) = [(SHSheetPresenter *)self isPresentingNonUIShareSheet];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__SHSheetPresenter__dismiss__block_invoke;
  v9[3] = &unk_1E71FA638;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  [v7 dismissForActivityPerformerResult:v8 didPresentFromShareSheet:v6 ^ 1 completionHandler:v9];
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
    v4 = [(SHSheetPresenter *)self delegate];
    [v4 mainPresenterIsReadyToInteract:self];
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

- (void)_didCompleteActivityWithResult:(id)a3
{
  v4 = a3;
  v5 = [v4 completedState] == 5;
  v6 = [(SHSheetPresenter *)self delegate];
  v7 = [v4 activity];
  v8 = [v4 returnedItems];
  v9 = [v4 error];
  [v6 mainPresenter:self didCompleteActivity:v7 withSuccess:v5 returnedItems:v8 error:v9];

  v10 = [(SHSheetPresenter *)self interactor];
  [v10 clearActivityForResult:v4];
}

- (void)_unregisterForApplicationStateChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)_didEnterBackground:(id)a3
{
  v3 = [(SHSheetPresenter *)self interactor];
  [v3 applicationDidEnterBackground];
}

- (void)_willEnterForeground:(id)a3
{
  v4 = [(SHSheetPresenter *)self interactor];
  [v4 applicationWillEnterForeground];

  v5 = [(SHSheetPresenter *)self mainViewController];
  [v5 reloadContent];
}

- (void)interactorDidUpdateSessionConfiguration:(id)a3
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

- (void)_updateContentView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
LABEL_5:
    if (-[SHSheetPresenter useRemoteUIService](self, "useRemoteUIService") || (-[SHSheetPresenter session](self, "session"), v6 = objc_claimAutoreleasedReturnValue(), [v6 configuration], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [(SHSheetPresenter *)self session];
      v9 = [v8 configuration];
      v10 = [v9 shouldBlockPresentation];

      v11 = [(SHSheetPresenter *)self router];
      v12 = v11;
      if (v10)
      {
        [(SHSheetViewModel *)v11 presentPresentationBlockingViewController];
      }

      else
      {
        [(SHSheetViewModel *)v11 dismissPresentationBlockingViewControllerIfNeeded];

        v13 = share_sheet_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v4;
          _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "Update content view:%@", &v18, 0xCu);
        }

        v14 = [SHSheetViewModel alloc];
        v15 = [(SHSheetPresenter *)self session];
        v12 = [(SHSheetViewModel *)v14 initWithSession:v15];

        v16 = [(SHSheetPresenter *)self secondaryViewController];

        if (v4 == v16)
        {
          [(SHSheetViewModel *)v12 setCustomViewController:0];
        }

        [v4 updateWithViewModel:v12];
      }
    }

    goto LABEL_15;
  }

  v5 = [(SHSheetPresenter *)self secondaryViewController];
  if (v5 || ([(SHSheetPresenter *)self mainViewController], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v5;
    goto LABEL_5;
  }

  v17 = share_sheet_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_18B359000, v17, OS_LOG_TYPE_DEFAULT, "No content view to update", &v18, 2u);
  }

  v4 = 0;
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

  v8 = [(SHSheetPresenter *)self router];
  [v8 presentAlertController:v4];
}

- (void)interactor:(id)a3 willPerformActivity:(id)a4
{
  v4 = [(SHSheetPresenter *)self router:a3];
  [v4 dismissUserDefaultsViewControllerAnimated:1];
}

- (void)interactor:(id)a3 didPerformActivityWithResult:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "did perform activity with result:%@", &v12, 0xCu);
  }

  [(SHSheetPresenter *)self setActivityResult:v5];
  v7 = [v5 activity];
  v8 = [v7 activityType];
  v9 = [v8 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  v10 = [(SHSheetPresenter *)self _shouldCompleteAirdropActivity];
  if (v9 && (v11 = v10, ![(SHSheetPresenter *)self didRequestDismissal]))
  {
    if (v11)
    {
      [(SHSheetPresenter *)self _didCompleteActivityWithResult:v5];
    }
  }

  else
  {
    [(SHSheetPresenter *)self _dismiss];
  }
}

- (id)interactor:(id)a3 activityPresentationControllerForActivity:(id)a4
{
  v4 = [(SHSheetPresenter *)self router:a3];
  v5 = [v4 activityPresentationController];

  return v5;
}

- (void)interactor:(id)a3 didPerformUserDefaultsActivityWithContext:(id)a4
{
  v8 = a4;
  v5 = [(SHSheetPresenter *)self userDefaultsViewController];

  if (!v5)
  {
    v6 = [SHSheetFactory createUserDefaultsViewControllerWithContext:v8 delegate:self];
    [(SHSheetPresenter *)self setUserDefaultsViewController:v6];
    v7 = [(SHSheetPresenter *)self router];
    [v7 presentUserDefaultsViewController:v6];
  }
}

- (void)interactor:(id)a3 didUpdateUserDefaultsActivityWithContext:(id)a4
{
  v13 = a4;
  v5 = [(SHSheetPresenter *)self userDefaultsViewController];

  if (v5)
  {
    v6 = [(SHSheetPresenter *)self userDefaultsViewController];
    v7 = [v13 favoritesProxies];
    v8 = [v13 suggestionProxies];
    v9 = [v13 activitiesByUUID];
    v10 = [v13 applicationActivityTypes];
    v11 = [v13 orderedUUIDs];
    v12 = [v13 excludedActivityTypes];
    [v6 updateWithFavoritesProxies:v7 suggestionProxies:v8 activitiesByUUID:v9 applicationActivityTypes:v10 orderedUUIDs:v11 excludedActivityTypes:v12];
  }
}

- (void)interactor:(id)a3 didPerformAirdropViewActivityWithNoContentView:(BOOL)a4
{
  v4 = a4;
  v6 = [(SHSheetPresenter *)self router];
  [v6 dismissUserDefaultsViewControllerAnimated:1];

  v8 = [SHSheetFactory createAirdropViewControllerWithNoContentView:v4 delegate:self];
  [(SHSheetPresenter *)self setAirdropViewController:v8];
  v7 = [(SHSheetPresenter *)self router];
  [v7 presentAirdropViewController:v8];
}

- (void)interactorDidFailPerformActivityNotCollaborationEligible:(id)a3
{
  v4 = [a3 session];
  v5 = [v4 collaborationItem];

  if ([v5 type])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SHSheetPresenter interactorDidFailPerformActivityNotCollaborationEligible:];
    }

    v7 = &stru_1EFE999E0;
  }

  else
  {
    v8 = [v5 fileURL];
    v9 = [v8 URLByDeletingPathExtension];
    v7 = [v9 lastPathComponent];
  }

  v10 = [(SHSheetPresenter *)self router];
  v11 = SHSheetCollaborativeItemNotSupportedAlertController(v7);
  [v10 presentAlertController:v11];
}

- (void)interactor:(id)a3 didUpdateAirDropTransferWithChange:(id)a4
{
  v5 = a4;
  v6 = [(SHSheetPresenter *)self interactor];
  v7 = [v6 activityPerformer];

  v8 = [v7 activity];
  v9 = [v8 activityType];
  v10 = [v9 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

  v11 = [v5 state];
  v12 = [v5 proxyIdentifier];

  if (!v12 && v11 == 7)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "Collaborate via AirDrop is unsupported on iOS, using the Boop to Collaborate path instead", v18, 2u);
    }

    goto LABEL_19;
  }

  if (((v7 != 0) & v10) == 0)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetPresenter *)v11 interactor:v7 didUpdateAirDropTransferWithChange:v13];
    }

    goto LABEL_19;
  }

  if ((v11 - 4) < 3)
  {
    [(SHSheetPresenter *)self _finishAirdropActivityPerformer:v7 withSuccess:1];
    if (v11 == 4)
    {
      v14 = [(SHSheetPresenter *)self airdropViewController];
      v15 = self;
      v16 = v14;
      v17 = 1;
LABEL_15:
      [(SHSheetPresenter *)v15 airDropViewController:v16 didFinishTransferWithSuccess:v17];
      goto LABEL_16;
    }

LABEL_14:
    v14 = [(SHSheetPresenter *)self airdropViewController];
    v15 = self;
    v16 = v14;
    v17 = 0;
    goto LABEL_15;
  }

  if (v11 != 2)
  {
    if ((v11 - 5) > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v14 = [(SHSheetPresenter *)self airdropViewController];
  [(SHSheetPresenter *)self airDropViewControllerDidStartTransfer:v14];
LABEL_16:

LABEL_17:
  if (v12)
  {
    v13 = [(SHSheetPresenter *)self mainViewController];
    [v13 didUpdateAirDropTransferWithChange:v5];
LABEL_19:
  }
}

- (id)interactor:(id)a3 linkMetadataForActivity:(id)a4
{
  v5 = [(SHSheetPresenter *)self session:a3];
  v6 = [v5 activityItemsManager];
  v7 = [v6 linkMetadataValuesNeedsUpdate];

  if ((v7 & 1) != 0 || (-[SHSheetPresenter mainViewController](self, "mainViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 headerMetadata], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [(SHSheetPresenter *)self session];
    v11 = [v10 metadataCollection];
    v12 = [v11 metadatas];
    v9 = [v12 firstObject];
  }

  return v9;
}

- (void)interactor:(id)a3 airDropViewServiceWillStartTransferToRecipient:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_airdropViewController);
  [(SHSheetPresenter *)self airDropViewServiceWillStartTransfer:WeakRetained toRecipient:v5];
}

- (void)interactor:(id)a3 didChangeMetadata:(id)a4
{
  v5 = a4;
  v6 = [(SHSheetPresenter *)self mainViewController];
  [v6 reloadMetadata:v5];

  v7 = [(SHSheetPresenter *)self secondaryViewController];
  [v7 reloadMetadata:v5];
}

- (void)interactor:(id)a3 showingModeRestriction:(id)a4 continueHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v13 = [(SHSheetPresenter *)self router];
  v9 = [(SHSheetPresenter *)self interactor];
  v10 = [v9 session];
  v11 = [v10 activityViewController];
  v12 = SHSheetModeRestrictionAlertController(v8, v11, v7);

  [v13 presentAlertController:v12];
}

- (void)addParticipantsViewController:(id)a3 failedToSaveShareWithError:(id)a4
{
  v5 = MEMORY[0x1E69CDE60];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [(SHSheetPresenter *)self collaborationItemIdentifier];
  v9 = [v7 initWithCollaborationItemIdentifier:v8 sharingURL:0 share:0 error:v6 mailResult:0];

  [(SHSheetPresenter *)self _didCompleteCollaborationSharingURLCreationWithResult:v9];
}

- (void)addParticipantsViewController:(id)a3 completedSharingWithShareURL:(id)a4 ckShare:(id)a5
{
  v7 = MEMORY[0x1E69CDE60];
  v8 = a5;
  v9 = a4;
  v10 = [v7 alloc];
  v11 = [(SHSheetPresenter *)self collaborationItemIdentifier];
  v12 = [v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:0 mailResult:0];

  [(SHSheetPresenter *)self _didCompleteCollaborationSharingURLCreationWithResult:v12];
}

- (void)collaborationParticipantsViewController:(id)a3 didCreateURL:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SHSheetPresenter *)self router];
  [v9 dismissCollaborationParticipantsViewController];

  v10 = objc_alloc(MEMORY[0x1E69CDE50]);
  v11 = [v8 absoluteString];
  v15 = [v10 initWithSubject:0 body:v11 containerID:0 canEdit:0 allowOthersToInvite:0 error:v7];

  v12 = objc_alloc(MEMORY[0x1E69CDE60]);
  v13 = [(SHSheetPresenter *)self collaborationItemIdentifier];
  v14 = [v12 initWithCollaborationItemIdentifier:v13 sharingURL:v8 share:0 error:v7 mailResult:v15];

  [(SHSheetPresenter *)self _didCompleteCollaborationSharingURLCreationWithResult:v14];
}

- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHSheetPresenter *)self session];
  v9 = [v8 activityViewController];

  v10 = [v9 collaborationDelegate];
  v11 = [v10 activityViewController:v9 collaborationParticipantsViewControllerWithDelegate:self];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
  }

  else
  {
    v14 = +[SHSheetCollaborationParticipantsContext defaultContext];
    v15 = [SHSheetFactory createCollaborationParticipantsViewControllerWithContext:v14 request:v6 delegate:self];
    if (!v15)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharesheet.addParticipantViewController" code:42 userInfo:0];
      v18 = objc_alloc(MEMORY[0x1E69CDE60]);
      v19 = [v6 collaborationItemIdentifier];
      v20 = [v18 initWithCollaborationItemIdentifier:v19 sharingURL:0 share:0 error:v17 mailResult:0];

      v7[2](v7, v20);
      goto LABEL_6;
    }

    v13 = v15;
  }

  objc_initWeak(&location, self);
  v16 = [(SHSheetPresenter *)self router];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __107__SHSheetPresenter_presentCollaborationParticipantsViewControllerForCloudSharingRequest_completionHandler___block_invoke;
  v24 = &unk_1E71F95A8;
  objc_copyWeak(&v25, &location);
  [v16 presentCollaborationParticipantsViewController:v13 dismissalHandler:&v21];

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
  v3 = [(SHSheetPresenter *)self session];
  v4 = [v3 activityViewController];

  v5 = [v4 collaborationDelegate];
  v6 = [v5 activityViewController:v4 collaborationParticipantsViewControllerWithDelegate:self];
  v7 = [(SHSheetPresenter *)self session];
  if ([v7 useRemoteUIService] && (_ShareSheetPlatformWantsRemoteOptions() & 1) != 0)
  {
    v8 = [(SHSheetPresenter *)self session];
    v9 = [v8 remoteScene];
    v10 = [v9 conformsToProtocol:&unk_1EFEE8360];

    if (v10 && !v6)
    {
      v11 = [(SHSheetPresenter *)self session];
      v12 = [v11 remoteScene];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = self;
LABEL_8:

  return v12;
}

- (void)_didCompleteCollaborationSharingURLCreationWithResult:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self collaborationCreateSharingURLCompletionHandler];
  [(SHSheetPresenter *)self setCollaborationCreateSharingURLCompletionHandler:0];
  [(SHSheetPresenter *)self setCollaborationItemIdentifier:0];
  [(SHSheetPresenter *)self setCollaborationParticipantsViewController:0];
  v5[2](v5, v4);
}

- (void)interactor:(id)a3 createSharingURLWithParticipantsForCollaborationRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SHSheetPresenter *)self collaborationParticipantsPresenter];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __105__SHSheetPresenter_interactor_createSharingURLWithParticipantsForCollaborationRequest_completionHandler___block_invoke;
  v16 = &unk_1E71FA660;
  objc_copyWeak(&v17, &location);
  [v11 presentCollaborationParticipantsViewControllerForCloudSharingRequest:v9 completionHandler:&v13];
  [(SHSheetPresenter *)self setCollaborationCreateSharingURLCompletionHandler:v10, v13, v14, v15, v16];
  v12 = [v9 collaborationItemIdentifier];
  [(SHSheetPresenter *)self setCollaborationItemIdentifier:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __105__SHSheetPresenter_interactor_createSharingURLWithParticipantsForCollaborationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteCollaborationSharingURLCreationWithResult:v3];
}

- (void)interactor:(id)a3 creatingCollaborationForActivity:(id)a4
{
  v11 = a4;
  v5 = [v11 activityType];
  if ([v5 isEqual:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    v6 = [v11 activityType];
    v7 = [v6 isEqual:@"com.apple.UIKit.activity.CollaborationInviteWithLink"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = _ShareSheetBundle();
  v9 = [v8 localizedStringForKey:@"WAITING_TEXT" value:@"Waiting…" table:@"Localizable"];

  v10 = [(SHSheetPresenter *)self mainViewController];
  [v10 startPulsingActivity:v11 localizedTitle:v9];

LABEL_5:
}

- (void)interactor:(id)a3 didCreateCollaborationForActivity:(id)a4
{
  v9 = a4;
  v5 = [v9 activityType];
  if ([v5 isEqual:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    v6 = [v9 activityType];
    v7 = [v6 isEqual:@"com.apple.UIKit.activity.CollaborationInviteWithLink"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [(SHSheetPresenter *)self mainViewController];
  [v8 stopPulsingActivity:v9];

LABEL_5:
}

- (void)interactor:(id)a3 didFailCreatingCollaborationForActivity:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = 0;
  [MEMORY[0x1E69CDE78] getFailureTitle:&v24 message:&v23 error:v10];
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
  v16 = v10;
  v20 = v16;
  objc_copyWeak(&v21, &location);
  v17 = [v14 actionWithTitle:v15 style:1 handler:v19];
  [v13 addAction:v17];

  v18 = [(SHSheetPresenter *)self router];
  [v18 presentAlertController:v13];

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

- (void)interactor:(id)a3 didCancelCollaborationForActivity:(id)a4
{
  v9 = a4;
  v5 = [v9 activityType];
  if ([v5 isEqual:@"com.apple.UIKit.activity.Mail"])
  {
  }

  else
  {
    v6 = [v9 activityType];
    v7 = [v6 isEqual:@"com.apple.UIKit.activity.CollaborationInviteWithLink"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = [(SHSheetPresenter *)self mainViewController];
  [v8 stopPulsingActivity:v9];

LABEL_5:
}

- (void)interactor:(id)a3 canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)a4
{
  v5 = a4;
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
  v16 = v5;
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

  v21 = [(SHSheetPresenter *)self mainViewController];
  [v21 presentViewController:v14 animated:1 completion:0];
}

- (void)interactor:(id)a3 canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)a4
{
  v5 = a4;
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
  v16 = v5;
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

  v21 = [(SHSheetPresenter *)self mainViewController];
  [v21 presentViewController:v14 animated:1 completion:0];
}

- (void)performPeopleSuggestionProxy:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform people suggestion:%@", &v12, 0xCu);
  }

  if ([v4 isDisabled])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    v7 = [v4 peopleSuggestion];
    v8 = [(SHSheetPresenter *)self interactor];
    v9 = [v8 session];
    [v9 setCurrentPeopleSuggestion:v7];

    v10 = [(SHSheetPresenter *)self interactor];
    v11 = [v4 identifier];
    [v10 performPersonSuggestionWithIdentifier:v11];
  }
}

- (void)removePeopleSuggestionProxy:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Remove people suggestion:%@", &v9, 0xCu);
  }

  v7 = [(SHSheetPresenter *)self interactor];
  v8 = [v4 identifier];
  [v7 removePersonSuggestionWithIdentifier:v8];
}

- (void)performShareActivityProxy:(id)a3 activityIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Perform share activity:%@ activityIdentifier:%@", &v16, 0x16u);
  }

  if ([v6 isDisabled])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    if (!v7)
    {
      v7 = [v6 identifier];
    }

    v10 = [(SHSheetPresenter *)self interactor];
    [v10 performShareActivityWithIdentifier:v7];

    v11 = [(SHSheetPresenter *)self interactor];
    v12 = [v11 session];
    v13 = [v12 activitiesManager];
    v14 = [v13 activityForIdentifier:v7];

    v15 = [v14 activityType];

    if (v15 == @"com.apple.UIKit.activity.Share")
    {
      [(SHSheetPresenter *)self _expandSharingContentView];
    }
  }
}

- (void)performActionActivityProxy:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform action activity:%@", &v15, 0xCu);
  }

  if ([v4 isDisabled])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    v7 = [(SHSheetPresenter *)self interactor];
    v8 = [v4 identifier];
    [v7 performActionActivityWithIdentifier:v8];

    v9 = [(SHSheetPresenter *)self interactor];
    v10 = [v9 session];
    v11 = [v10 activitiesManager];
    v12 = [v4 identifier];
    v13 = [v11 activityForIdentifier:v12];

    v14 = [v13 activityType];

    if (v14 == @"com.apple.UIKit.activity.Share")
    {
      [(SHSheetPresenter *)self _expandSharingContentView];
    }
  }
}

- (void)didLongPressShareActivityWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Long press activity", v7, 2u);
  }

  v6 = [(SHSheetPresenter *)self interactor];
  [v6 longPressShareActivityWithIdentifier:v4];
}

- (void)handlePeopleSuggestion:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Handle people suggestion:%@", &v7, 0xCu);
  }

  if ([v4 isRestricted])
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    v6 = [(SHSheetPresenter *)self interactor];
    [v6 performPeopleSuggestion:v4];
  }
}

- (void)handleInfoSuggestionPress:(id)a3
{
  v4 = a3;
  v5 = _ShareSheetBundle();
  v10 = [v5 localizedStringForKey:@"RESTRICTED_ALERT_SCREEN_TIME_DISMISS_BUTTON_TITLE" value:@"Dismiss" table:@"Localizable"];

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:1 handler:0];
  [v6 addAction:v7];

  v8 = v6;
  v9 = [(SHSheetPresenter *)self router];
  [v9 presentAlertController:v8];
}

- (void)handleActivity:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Handle activity:%@", &v16, 0xCu);
  }

  v6 = [(SHSheetPresenter *)self session];
  v7 = [v6 configuration];
  v8 = [v7 restrictedActivityTypes];

  v9 = [v4 activityType];
  LODWORD(v7) = [v8 containsObject:v9];

  if (v7)
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    v10 = [v4 activityType];
    v11 = [v10 isEqual:@"com.apple.UIKit.activity.AirDrop"];

    v12 = [(SHSheetPresenter *)self interactor];
    v13 = v12;
    if (v11)
    {
      [(SHSheetPresenter *)self interactor:v12 didPerformAirdropViewActivityWithNoContentView:0];
    }

    else
    {
      v14 = [v12 session];
      v15 = [v14 activityViewController];
      [v15 _performActivity:v4];
    }
  }
}

- (void)didUpdateSheetSize
{
  v3 = [(SHSheetPresenter *)self session];
  v15 = [v3 activityViewController];

  v4 = [v15 presentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v15 presentationController];
    v7 = [(SHSheetPresenter *)self mainViewController];
    v8 = [v7 isCompactSize];

    v9 = [(SHSheetPresenter *)self interactor];
    v10 = [v9 session];
    [v6 updateWithCompactSize:v8 applyImmediately:{objc_msgSend(v10, "instantShareSheet")}];
  }

  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    v11 = [(SHSheetPresenter *)self mainViewController];
    v12 = [v11 isSLMEnabled];

    if (v12)
    {
      v13 = [(SHSheetPresenter *)self session];
      v14 = [v13 activityViewController];
      [v14 _updateSheetPresentationController:0];
    }
  }
}

- (BOOL)isSLMEnabled
{
  v2 = [(SHSheetPresenter *)self mainViewController];
  v3 = [v2 isSLMEnabled];

  return v3;
}

- (BOOL)isCompactSize
{
  v2 = [(SHSheetPresenter *)self mainViewController];
  v3 = [v2 isCompactSize];

  return v3;
}

- (BOOL)isSheetResizable
{
  v2 = [(SHSheetPresenter *)self mainViewController];
  v3 = [v2 isResizable];

  return v3;
}

- (void)handleOptions
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Handle options", v11, 2u);
  }

  v4 = [(SHSheetPresenter *)self session];
  v5 = [v4 customOptionsViewController];

  if (!v5)
  {
    v6 = [SHSheetOptionsViewContext alloc];
    v7 = [(SHSheetPresenter *)self session];
    v8 = [v7 customizationGroups];
    v9 = [(SHSheetOptionsViewContext *)v6 initWithCustomizationGroups:v8];

    v5 = [SHSheetFactory createOptionsViewControllerWithContext:v9 delegate:self];
  }

  [(SHSheetPresenter *)self setOptionsViewController:v5];
  v10 = [(SHSheetPresenter *)self router];
  [v10 presentOptionsViewController:v5 dismissalHandler:0];
}

- (void)handleCollaborationOptions
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Handle collaboration options", buf, 2u);
  }

  v4 = [(SHSheetPresenter *)self collaborationOptionsViewController];

  if (v4)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetPresenter *)v5 handleCollaborationOptions];
    }
  }

  else
  {
    v6 = [(SHSheetPresenter *)self session];
    v7 = [v6 collaborationItem];

    v8 = [v7 shareOptions];
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__SHSheetPresenter_handleCollaborationOptions__block_invoke;
    v13[3] = &unk_1E71FA6B0;
    v14 = v7;
    v5 = v7;
    v11 = [SHSheetFactory createCollaborationOptionsViewControllerWithCollaborationOptions:v8 bundleIdentifier:v10 updateHandler:v13];

    [(SHSheetPresenter *)self setCollaborationOptionsViewController:v11];
    v12 = [(SHSheetPresenter *)self router];
    [v12 presentOptionsViewController:v11 dismissalHandler:0];
  }
}

- (void)didSelectCollaborativeAction
{
  v2 = [(SHSheetPresenter *)self interactor];
  [v2 setWantsCollaborativeSession:1];
}

- (void)didSelectSendCopyAction
{
  v2 = [(SHSheetPresenter *)self interactor];
  [v2 setWantsCollaborativeSession:0];
}

- (void)handleCustomHeaderButton
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Custom header button tapped", v9, 2u);
  }

  v4 = [(SHSheetPresenter *)self interactor];
  v5 = [v4 session];
  v6 = [v5 showSharePlayProminently];

  if (v6)
  {
    v7 = [(SHSheetPresenter *)self interactor];
    v8 = objc_alloc_init(UISharePlayActivity);
    [v7 performActivity:v8];
  }
}

- (void)handleRemoteCustomPresentation
{
  v3 = [(SHSheetPresenter *)self session];
  v6 = [SHSheetFactory createCustomRemoteViewControllerWithSession:v3];

  v4 = [v6 presentationController];
  [v4 setDelegate:self];

  v5 = [(SHSheetPresenter *)self router];
  [v5 presentRemoteCustomViewController:v6];
}

- (void)handleRemoteCustomDismissal
{
  v2 = [(SHSheetPresenter *)self router];
  [v2 dismissRemoteCustomViewControllerIfNeeded];
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

  v4 = [(SHSheetPresenter *)self session];
  v5 = [SHSheetFactory createContentViewControllerWithSession:v4 presenter:self];

  [(SHSheetPresenter *)self setSecondaryViewController:v5];
  v6 = [(SHSheetPresenter *)self router];
  [v6 presentSecondaryViewController:v5];

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

  v4 = [(SHSheetPresenter *)self interactor];
  [v4 performEditAction];
}

- (id)customTitleForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self interactor];
  v6 = [v5 session];
  v7 = [v6 activityViewController];

  v8 = [v7 _titleForActivity:v4];

  return v8;
}

- (void)_expandSharingContentView
{
  v3 = [(SHSheetPresenter *)self session];
  [v3 setDidExpand:1];

  v4 = [(SHSheetPresenter *)self session];
  v6 = [v4 activityViewController];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"UIActivityViewControllerSharingExpandedNotification" object:v6 userInfo:0];

  [(SHSheetPresenter *)self _updateContentView:0];
}

- (void)_showScreenTimeRestrictedAlert
{
  v4 = +[SHSheetFactory createScreenTimeAlertViewController];
  v3 = [(SHSheetPresenter *)self router];
  [v3 presentAlertController:v4];
}

- (void)userDefaultsViewController:(id)a3 didToggleActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v7 = a4;
  v8 = [(SHSheetPresenter *)self interactor];
  [v8 toggleUserDefaultsActivityWithIdentifier:v7 activityCategory:a5];
}

- (void)userDefaultsViewController:(id)a3 didFavoriteActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6
{
  v7 = a4;
  v9 = a5;
  v10 = [(SHSheetPresenter *)self interactor];
  [v10 favoriteUserDefaultsActivity:v7 withIdentifier:v9 activityCategory:a6];
}

- (void)userDefaultsViewController:(id)a3 didUpdateFavoritesProxies:(id)a4 activityCategory:(int64_t)a5
{
  v7 = a4;
  v8 = [(SHSheetPresenter *)self interactor];
  [v8 updateUserDefaultsFavorites:v7 activityCategory:a5];
}

- (void)userDefaultsViewController:(id)a3 didSelectActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5 disabled:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  if (v6)
  {
    [(SHSheetPresenter *)self _showScreenTimeRestrictedAlert];
  }

  else
  {
    v9 = [(SHSheetPresenter *)self interactor];
    [v9 performUserDefaultsActivityWithIdentifier:v10 activityCategory:a5];
  }
}

- (void)userDefaultsViewControllerDidDisappear:(id)a3
{
  [(SHSheetPresenter *)self setUserDefaultsViewController:0];
  v4 = [(SHSheetPresenter *)self interactor];
  [v4 userDefaultsViewControllerDidDisappear];
}

- (void)airDropViewControllerDidDismiss:(id)a3
{
  v4 = [(SHSheetPresenter *)self interactor];
  v5 = [v4 activityPerformer];
  v6 = [v5 isRunning];

  if (v6)
  {
    v10 = [(SHSheetPresenter *)self interactor];
    v7 = [v10 activityPerformer];
    [(SHSheetPresenter *)self _finishAirdropActivityPerformer:v7 withSuccess:1];
  }

  else
  {
    v8 = [(SHSheetPresenter *)self session];
    v9 = [v8 activitiesManager];
    v10 = [v9 activityForActivityType:@"com.apple.UIKit.activity.AirDrop"];

    v7 = [[SHSheetActivityPerformerResult alloc] initWithActivity:v10 completedState:5 returnedItems:0 error:0];
    [(SHSheetPresenter *)self setActivityResult:v7];
    if ([(SHSheetPresenter *)self _shouldCompleteAirdropActivity])
    {
      [(SHSheetPresenter *)self _didCompleteActivityWithResult:v7];
    }
  }
}

- (void)airDropViewServiceWillStartTransfer:(id)a3 toRecipient:(id)a4
{
  v13 = a4;
  v5 = [(SHSheetPresenter *)self session];
  v6 = [v5 activityViewController];

  v7 = [v6 airDropDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = [v13 displayName];
    v10 = [v13 contactIdentifier];
    [v7 activityViewController:v6 willStartAirdropTransferToRecipient:v9 contactIdentifier:v10];

    goto LABEL_6;
  }

  v8 = [v13 contactIdentifier];
  if (v8 || ([v13 displayName], v11 = objc_claimAutoreleasedReturnValue(), IsSuspicious = SFAirDropDeviceNameIsSuspicious(), v11, (IsSuspicious & 1) == 0) && (objc_msgSend(v13, "displayName"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [v7 activityViewController:v6 willStartAirdropTransferToRecipient:v8];
LABEL_6:
  }

LABEL_7:
}

- (void)airDropViewControllerDidStartTransfer:(id)a3
{
  v3 = [(SHSheetPresenter *)self session];
  v5 = [v3 activityViewController];

  v4 = [v5 airDropDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 activityViewControllerWillStartAirdropTransfer:v5];
  }
}

- (void)airDropViewController:(id)a3 didFinishTransferWithSuccess:(BOOL)a4
{
  v4 = a4;
  v5 = [(SHSheetPresenter *)self session];
  v7 = [v5 activityViewController];

  v6 = [v7 airDropDelegate];
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 activityViewControllerDidFinishAirdropTransfer:v7];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 activityViewControllerDidFailAirdropTransfer:v7];
  }
}

- (void)airDropViewController:(id)a3 requestSharedItemsWithDataRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(SHSheetPresenter *)self interactor];
  v11 = [v10 extension];

  [v12 performActivityWithRequest:v9 forExtension:v11 completion:v8];
}

- (void)airDropViewController:(id)a3 requestSendingAppBundleIdentifierWithCompletionHandler:(id)a4
{
  memset(v6, 0, sizeof(v6));
  v4 = a4;
  _SharingUIAuditTokenForCurrentProcess(v6);
  v5 = _ShareSheetBundleIDFromAuditToken();
  v4[2](v4, v5);
}

- (void)_finishAirdropActivityPerformer:(id)a3 withSuccess:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v5 = [v8 activity];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 activityType];
    [v7 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    [v8 finishWithSuccess:v4];
  }
}

- (BOOL)_shouldCompleteAirdropActivity
{
  v2 = [(SHSheetPresenter *)self session];
  v3 = [v2 isAirdropOnly];

  return v3;
}

- (void)requestRefreshedCustomizationGroupForObjectManipulationViewController:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetPresenter *)self session];
  v6 = [v5 customizationGroups];

  [v4 updateWithCustomizationGroups:v6];
}

- (void)runScrollingTestWithName:(id)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(SHSheetPresenter *)self activityViewControllerIsPresenting])
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__SHSheetPresenter_runScrollingTestWithName_type_completionHandler___block_invoke;
    v14[3] = &unk_1E71FA6D8;
    objc_copyWeak(v17, &location);
    v15 = v8;
    v17[1] = a4;
    v16 = v9;
    [(SHSheetPresenter *)self setPresentationDelayedTestingBlock:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(SHSheetPresenter *)self mainViewController];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(SHSheetPresenter *)self mainViewController];
      [v12 runScrollingTestWithName:v8 type:a4 completionHandler:v9];
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