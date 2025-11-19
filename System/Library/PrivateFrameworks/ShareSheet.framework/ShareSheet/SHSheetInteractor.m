@interface SHSheetInteractor
- (BOOL)hasSessionStarted;
- (SHSheetActivityPerformerPresentationInterface)activityPresentationController;
- (SHSheetInteractor)initWithContext:(id)a3;
- (SHSheetInteractorDelegate)delegate;
- (id)_prepareActivityProxyForRequest:(id)a3;
- (id)collaborationSharingResultForActivity:(id)a3;
- (id)createActivityItemsConfiguration;
- (id)linkMetadataForActivityPerformer:(id)a3;
- (void)_deleteSharingURL:(id)a3;
- (void)_didPerformActivityWithResult:(id)a3;
- (void)_performActivity:(id)a3;
- (void)_recordActivityInteractionForResult:(id)a3;
- (void)_recordActivityViewControllerInteraction;
- (void)_runActivity:(id)a3;
- (void)_setupServiceManagerIfNeeded;
- (void)_startPerformingActivity:(id)a3 collaborationItem:(id)a4 skipCollaborationPerformer:(BOOL)a5;
- (void)_updateRemoteScene;
- (void)activityViewControllerDidAppear;
- (void)activityViewControllerDidDisappear;
- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)a3;
- (void)addParticipantsAllowedForCollaborationItem:(id)a3 completionHandler:(id)a4;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)a3;
- (void)canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)a3;
- (void)clearActivityForResult:(id)a3;
- (void)collaborationFooterViewModelDidChangeForSession:(id)a3;
- (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4;
- (void)createSharingURLWithParticipantsForCollaborationRequest:(id)a3 completionHandler:(id)a4;
- (void)didBeginCreationForCollaborationPerformer:(id)a3;
- (void)didCancelCreationForCollaborationPerformer:(id)a3;
- (void)didFailCreationForCollaborationPerformer:(id)a3 error:(id)a4;
- (void)didFinishCreationForCollaborationPerformer:(id)a3;
- (void)favoriteUserDefaultsActivity:(BOOL)a3 withIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)findSupportedActivitiesWithCompletionHandler:(id)a3;
- (void)headerMetadataDidChangeForSession:(id)a3;
- (void)invalidateRemoteSession;
- (void)isCollaborativeDidChangeForSession:(id)a3;
- (void)longPressShareActivityWithIdentifier:(id)a3;
- (void)manageShareForDocumentInSharedFolder;
- (void)performActionActivityWithIdentifier:(id)a3;
- (void)performActivity:(id)a3;
- (void)performActivityWithRequest:(id)a3 forExtension:(id)a4 completion:(id)a5;
- (void)performActivityWithType:(id)a3 completionHandler:(id)a4;
- (void)performEditAction;
- (void)performPeopleSuggestion:(id)a3;
- (void)performPersonSuggestionWithIdentifier:(id)a3;
- (void)performShareActivityWithIdentifier:(id)a3;
- (void)performUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4;
- (void)preheatActivitiesIfNeeded;
- (void)provideFeedbackForPeopleSugestionIdentifier:(id)a3;
- (void)removePersonSuggestionWithIdentifier:(id)a3;
- (void)requestServiceUpdate;
- (void)serviceManager:(id)a3 didPerformInServiceActivityWithIdentifier:(id)a4 completed:(BOOL)a5 items:(id)a6 error:(id)a7;
- (void)serviceManager:(id)a3 didUpdateAirDropTransferWithChange:(id)a4;
- (void)serviceManager:(id)a3 performActivity:(id)a4;
- (void)serviceManager:(id)a3 performAirdropViewActivityWithNoContentView:(BOOL)a4;
- (void)serviceManager:(id)a3 performUserDefaultsActivityWithContext:(id)a4;
- (void)serviceManager:(id)a3 updateUserDefaultsActivityWithContext:(id)a4;
- (void)serviceManager:(id)a3 willPerformActivityInServiceForRequest:(id)a4 completion:(id)a5;
- (void)session:(id)a3 didChangeMetadata:(id)a4;
- (void)sessionConfigurationDidChangeForSession:(id)a3;
- (void)setWantsCollaborativeSession:(BOOL)a3;
- (void)shareStatusForURL:(id)a3 completionHandler:(id)a4;
- (void)showOptionsDidChangeForSession:(id)a3;
- (void)startSession;
- (void)stopSession;
- (void)toggleUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4;
- (void)updateSessionWithContext:(id)a3;
- (void)updateUserDefaultsFavorites:(id)a3 activityCategory:(int64_t)a4;
- (void)userDefaultsViewControllerDidDisappear;
@end

@implementation SHSheetInteractor

- (void)_setupServiceManagerIfNeeded
{
  if (!self->_serviceManager)
  {
    v4 = objc_alloc_init(SHSheetServiceManager);
    serviceManager = self->_serviceManager;
    self->_serviceManager = v4;

    v6 = self->_serviceManager;

    [(SHSheetServiceManager *)v6 setDelegate:self];
  }
}

- (BOOL)hasSessionStarted
{
  v2 = [(SHSheetInteractor *)self serviceManager];
  v3 = [v2 connectionState] != 0;

  return v3;
}

- (SHSheetInteractor)initWithContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SHSheetInteractor;
  v5 = [(SHSheetInteractor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(SHSheetInteractor *)v5 _setupServiceManagerIfNeeded];
    v7 = [[SHSheetSession alloc] initWithContext:v4 delegate:v6];
    session = v6->_session;
    v6->_session = v7;
  }

  return v6;
}

- (void)setWantsCollaborativeSession:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(SHSheetInteractor *)self session];
  v6 = [v5 isCollaborative];

  if (v6 != v3)
  {
    v7 = [(SHSheetInteractor *)self session];
    v8 = [v7 collaborationModeRestriction];
    if ([v8 disabledMode] == 1 && v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = !v3;
      v10 = [(SHSheetInteractor *)self session];
      v11 = [v10 collaborationModeRestriction];
      if ([v11 disabledMode])
      {
        v9 = 0;
      }
    }

    v12 = [(SHSheetInteractor *)self session];
    v13 = [v12 collaborationItem];

    if (v3 && (SHSheetIsCollaborationItemEligibleForActivity(v13, 0) & 1) == 0)
    {
      v25 = share_sheet_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_18B359000, v25, OS_LOG_TYPE_DEFAULT, "Collaboration not supported for URL", &v29, 2u);
      }

      v14 = [(SHSheetInteractor *)self delegate];
      [v14 interactorDidFailPerformActivityNotCollaborationEligible:self];
    }

    else
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      v14 = [(SHSheetInteractor *)self session];
      v15 = [v14 collaborationModeRestriction];
      v16 = [v15 alertTitle];
      if (v16)
      {
        v17 = v16;
        v18 = [(SHSheetInteractor *)self session];
        v19 = [v18 collaborationModeRestriction];
        v20 = [v19 allowContinueToMode];

        if ((v20 & 1) == 0)
        {
          v21 = [(SHSheetInteractor *)self delegate];
          v22 = [(SHSheetInteractor *)self session];
          v23 = [v22 collaborationModeRestriction];
          [v21 interactor:self showingModeRestriction:v23 continueHandler:0];

          v24 = share_sheet_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v29) = 0;
            _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "Not changing mode because desired mode is disabled", &v29, 2u);
          }

LABEL_26:
          return;
        }

LABEL_21:
        v26 = share_sheet_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = @"Send Copy";
          if (v3)
          {
            v27 = @"Collaborative";
          }

          v29 = 138412290;
          v30 = v27;
          _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "Changing mode to %@", &v29, 0xCu);
        }

        v28 = [(SHSheetInteractor *)self session];
        [v28 setIsCollaborative:v3];

        [(SHSheetInteractor *)self requestServiceUpdate];
        goto LABEL_26;
      }
    }

    goto LABEL_21;
  }
}

- (void)updateSessionWithContext:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Update session with context:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self session];
  [v6 updateWithContext:v4];
}

- (void)startSession
{
  v3 = [(SHSheetInteractor *)self hasSessionStarted];
  v4 = share_sheet_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Session has already started.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Start session", v9, 2u);
    }

    [(SHSheetInteractor *)self _setupServiceManagerIfNeeded];
    v6 = [(SHSheetInteractor *)self serviceManager];
    v7 = [(SHSheetInteractor *)self session];
    [v6 connectWithSession:v7];

    v4 = [(SHSheetInteractor *)self session];
    v8 = [v4 remoteScene];
    [v8 activate];
  }
}

- (void)stopSession
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Stop session", v8, 2u);
  }

  v4 = [(SHSheetInteractor *)self serviceManager];
  if (!v4 || !_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v5 = [(SHSheetInteractor *)self session];
  v6 = [v5 testingSnapshot];

  if (v6)
  {
    v7 = [(SHSheetInteractor *)self session];
    v4 = [v7 snapshotHandler];

    [(SHSheetInteractor *)self activityViewControllerSessionDidEndWithCompletionHandler:v4];
LABEL_7:
  }

  [(SHSheetInteractor *)self setServiceManager:0];
}

- (void)requestServiceUpdate
{
  v3 = [(SHSheetInteractor *)self session];
  v8 = [v3 _createActivityMatchingContext];

  v4 = [(SHSheetInteractor *)self session];
  v5 = [v4 activitiesManager];
  [v5 updateActivitiesWithContext:v8];

  v6 = [(SHSheetInteractor *)self session];
  LODWORD(v5) = [v6 useRemoteUIService];

  if (v5)
  {
    [(SHSheetInteractor *)self _updateRemoteScene];
  }

  v7 = [(SHSheetInteractor *)self serviceManager];
  [v7 update];
}

- (void)_updateRemoteScene
{
  v3 = [(SHSheetInteractor *)self session];
  v6 = [v3 remoteScene];

  if (v6)
  {
    v4 = [(SHSheetInteractor *)self session];
    v5 = [v4 createClientContext];

    [v6 updateWithSessionContext:v5];
  }
}

- (void)invalidateRemoteSession
{
  v2 = [(SHSheetInteractor *)self session];
  v3 = [v2 remoteScene];

  if (v3)
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "invalidate remote session", v5, 2u);
    }

    [v3 resetContext];
  }
}

- (void)clearActivityForResult:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self session];
  v6 = [v5 activityViewController];

  v7 = [v4 activity];
  v8 = [v4 completedState];
  [v6 readyToInteractTimestamp];
  [v6 creationTimestamp];
  v9 = UpTicksToMilliseconds();
  mach_continuous_time();
  [v6 creationTimestamp];
  v10 = UpTicksToMilliseconds();
  [(SHSheetInteractor *)self _recordActivityInteractionForResult:v4];

  v11 = [(SHSheetInteractor *)self serviceManager];

  if (v11)
  {
    v12 = v8 == 5;
    v13 = [(SHSheetInteractor *)self serviceManager];
    v14 = [(SHSheetInteractor *)self session];
    v15 = [v14 identifier];
    v16 = [v7 activityType];
    [v13 reportActivityWithSessionID:v15 presentationMs:v9 totalShareTimeMs:v10 activityType:v16 success:v12];
  }

  else
  {
    v17 = share_sheet_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_18B359000, v17, OS_LOG_TYPE_DEFAULT, "Service manager is nil.", v20, 2u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [(SHSheetInteractor *)self session];
    v19 = [v18 activitiesManager];
    [v19 removeActivity:v7];
  }
}

- (void)performActivity:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self activityPerformer];
  v6 = [v5 isRunning];

  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetInteractor *)v4 performActivity:?];
    }
  }

  else
  {
    [(SHSheetInteractor *)self _runActivity:v4];
  }
}

- (void)performPeopleSuggestion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 transportBundleIdentifier];
  v6 = [_UIActivityHelper activityTypeForBundleIdentifier:v5];
  v7 = [(SHSheetInteractor *)self session];
  v8 = [v7 activitiesManager];
  v9 = [v8 activityForActivityType:v6];

  if (v9)
  {
    v10 = [(SHSheetInteractor *)self session];
    [v10 setCurrentPeopleSuggestion:v4];

    v11 = [(SHSheetInteractor *)self serviceManager];
    v12 = [v4 identifier];
    [v11 provideFeedbackForPeopleSugestionIdentifier:v12];

    [(SHSheetInteractor *)self _performActivity:v9];
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "activityType:%@ is not available for people suggestion:%@", &v14, 0x16u);
    }
  }
}

- (void)performActivityWithRequest:(id)a3 forExtension:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SHSheetInteractor *)self _prepareActivityProxyForRequest:v8];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__SHSheetInteractor_performActivityWithRequest_forExtension_completion___block_invoke;
  v15[3] = &unk_1E71FA700;
  objc_copyWeak(&v19, &location);
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v11 setDidFinishPreparingForExecution:v15];
  [(SHSheetInteractor *)self _performActivity:v11];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __72__SHSheetInteractor_performActivityWithRequest_forExtension_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained activityPerformer];
    v4 = [v3 activity];

    v5 = [v9 session];
    v6 = [v5 activityItemsManager];
    v7 = [v6 activityItemValuesForActivity:v4];

    v8 = [objc_msgSend(*(a1 + 32) "classForPreparingExtensionItemData")];
    [v8 prepareForSendingToExtension:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();

    WeakRetained = v9;
  }
}

- (void)preheatActivitiesIfNeeded
{
  v3 = [(SHSheetInteractor *)self session];
  v2 = [v3 activitiesManager];
  [v2 preheatActivitiesIfNeeded];
}

- (void)activityViewControllerDidAppear
{
  v2 = [(SHSheetInteractor *)self serviceManager];
  [v2 activityViewControllerDidAppear];
}

- (void)activityViewControllerDidDisappear
{
  v2 = [(SHSheetInteractor *)self serviceManager];
  [v2 activityViewControllerDidDisappear];
}

- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self serviceManager];
  [v5 activityViewControllerSessionDidEndWithCompletionHandler:v4];
}

- (void)applicationDidEnterBackground
{
  v2 = [(SHSheetInteractor *)self serviceManager];
  [v2 applicationDidEnterBackground];
}

- (void)applicationWillEnterForeground
{
  v2 = [(SHSheetInteractor *)self serviceManager];
  [v2 applicationWillEnterForeground];
}

- (id)createActivityItemsConfiguration
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [objc_alloc(MEMORY[0x1E69DC640]) initWithItemProviders:v2];

  return v3;
}

- (void)performShareActivityWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform share activity with identifier:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 performShareActivityWithIdentifier:v4];
}

- (void)performActionActivityWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform action activity with identifier:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 performActionActivityWithIdentifier:v4];
}

- (void)performEditAction
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Perform edit action", v5, 2u);
  }

  v4 = [(SHSheetInteractor *)self serviceManager];
  [v4 performEditAction];
}

- (void)performPersonSuggestionWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform person suggestion with identifier:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 performPersonSuggestionWithIdentifier:v4];
}

- (void)removePersonSuggestionWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Remove person suggestion with identifier:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 removePersonSuggestionWithIdentifier:v4];
}

- (void)toggleUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Toggle user defaults activity with identifier:%@", &v9, 0xCu);
  }

  v8 = [(SHSheetInteractor *)self serviceManager];
  [v8 toggleUserDefaultsActivityWithIdentifier:v6 activityCategory:a4];
}

- (void)favoriteUserDefaultsActivity:(BOOL)a3 withIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v6 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "Favorite user defaults activity with identifier:%@", &v11, 0xCu);
  }

  v10 = [(SHSheetInteractor *)self serviceManager];
  [v10 favoriteUserDefaultsActivity:v6 withIdentifier:v8 activityCategory:a5];
}

- (void)updateUserDefaultsFavorites:(id)a3 activityCategory:(int64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Update user defaults favorites:%@", &v9, 0xCu);
  }

  v8 = [(SHSheetInteractor *)self serviceManager];
  [v8 updateUserDefaultsFavorites:v6 activityCategory:a4];
}

- (void)performUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Perform user defaults activity with identifier:%@", &v9, 0xCu);
  }

  v8 = [(SHSheetInteractor *)self serviceManager];
  [v8 performUserDefaultsActivityWithIdentifier:v6 activityCategory:a4];
}

- (void)userDefaultsViewControllerDidDisappear
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "User defaults view controller did disappear", v5, 2u);
  }

  v4 = [(SHSheetInteractor *)self serviceManager];
  [v4 userDefaultsViewControllerDidDisappear];
}

- (void)longPressShareActivityWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Long press share activity with identifier:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 longPressShareActivityWithIdentifier:v4];
}

- (void)provideFeedbackForPeopleSugestionIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Provide feedback for people suggestion identifier:%@", &v7, 0xCu);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 provideFeedbackForPeopleSugestionIdentifier:v4];
}

- (void)performActivityWithType:(id)a3 completionHandler:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Perform activity with type:%@", &v10, 0xCu);
  }

  v9 = [(SHSheetInteractor *)self serviceManager];
  [v9 performActivityWithType:v6 completionHandler:v7];
}

- (void)findSupportedActivitiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Find supported activities", v7, 2u);
  }

  v6 = [(SHSheetInteractor *)self serviceManager];
  [v6 findSupportedActivitiesWithCompletionHandler:v4];
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self activityPerformer];
  if (([v5 isRunning] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [(SHSheetInteractor *)self collaborationPerformer];

  if (v6)
  {
LABEL_7:
    v8 = [(SHSheetInteractor *)self session];
    v9 = [v8 activityViewController];
    [v9 _performActivity:v4];

    goto LABEL_8;
  }

  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SHSheetInteractor *)v4 performActivity:?];
  }

LABEL_8:
}

- (void)_runActivity:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 activityType];
    *buf = 138412290;
    v69 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform activity:%@", buf, 0xCu);
  }

  v7 = [(SHSheetInteractor *)self collaborationPerformer];
  v8 = [v7 isRunning];

  if (!v8)
  {
    v15 = [(SHSheetInteractor *)self session];
    v62 = [v15 collaborationItem];

    if ([v62 type])
    {
      v16 = 0;
    }

    else
    {
      v16 = [v62 isiCloudDrive];
    }

    v17 = [(SHSheetInteractor *)self collaborationPerformer];
    v18 = [v17 activityType];
    v19 = [v4 activityType];
    if ([v18 isEqual:v19])
    {
      v20 = [(SHSheetInteractor *)self collaborationPerformer];
      v21 = [v20 cloudSharingResult];
      v22 = v21 != 0;
    }

    else
    {
      v22 = 0;
    }

    if ([v62 type] == 2)
    {
      v23 = [v62 isURLProviderSupported];
    }

    else
    {
      v23 = 0;
    }

    if ([v62 type] == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v16 | v23;
    }

    v25 = [objc_opt_class() activityCategory];
    v26 = [v4 activityType];
    if ([v26 isEqual:@"com.apple.UIKit.activity.AirDrop"])
    {
      LOBYTE(v27) = 0;
    }

    else
    {
      v28 = MEMORY[0x1E69CDE78];
      v29 = [v4 activityType];
      if ([v28 isHeroCollaborationActivityType:v29])
      {
        LOBYTE(v27) = 0;
      }

      else
      {
        objc_opt_class();
        v27 = (objc_opt_isKindOfClass() ^ 1) & (v25 == 1);
      }
    }

    v30 = [(SHSheetInteractor *)self session];
    if ([v30 isCollaborative])
    {
      v31 = v22 | v27 & v24 ^ 1;
    }

    else
    {
      v31 = 1;
    }

    v32 = [v4 activityType];
    if (([v32 isEqual:@"com.apple.UIKit.activity.AirDrop"] & 1) == 0)
    {
      v33 = [(SHSheetInteractor *)self session];
      if ([v33 isCollaborative])
      {
        IsCollaborationItemEligibleForActivity = SHSheetIsCollaborationItemEligibleForActivity(v62, v4);

        if ((IsCollaborationItemEligibleForActivity & 1) == 0)
        {
          v35 = share_sheet_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v4 activityType];
            *buf = 138412290;
            v69 = v36;
            _os_log_impl(&dword_18B359000, v35, OS_LOG_TYPE_DEFAULT, "Collaboration not supported for URL - activity:%@", buf, 0xCu);
          }

          v37 = [(SHSheetInteractor *)self delegate];
          [v37 interactorDidFailPerformActivityNotCollaborationEligible:self];

          goto LABEL_57;
        }

LABEL_35:
        v61 = [(SHSheetInteractor *)self session];
        v38 = [v61 collaborationModeRestriction];
        v39 = [v38 disabledMode];
        v60 = v31 & 1;
        if (v39 == 1)
        {
          v59 = [(SHSheetInteractor *)self session];
          if ([v59 isCollaborative])
          {

            goto LABEL_50;
          }
        }

        v40 = [(SHSheetInteractor *)self session];
        v41 = [v40 collaborationModeRestriction];
        v42 = [v41 disabledMode];
        if (v42 || (-[SHSheetInteractor session](self, "session"), v58 = objc_claimAutoreleasedReturnValue(), [v58 isCollaborative]))
        {
          v43 = [(SHSheetInteractor *)self session];
          v44 = [v43 collaborationModeRestriction];
          if ([v44 disabledMode])
          {

            v45 = 0;
            if (!v42)
            {
LABEL_48:

              if (v39 != 1)
              {
LABEL_49:

                if (v45)
                {
LABEL_50:
                  v47 = [(SHSheetInteractor *)self session];
                  v48 = [v47 collaborationModeRestriction];
                  v49 = [v48 alertTitle];
                  if (v49)
                  {
                    v50 = [(SHSheetInteractor *)self session];
                    v51 = [v50 collaborationModeRestriction];
                    v52 = [v51 allowContinueToMode];

                    if (v52)
                    {
                      v53 = share_sheet_log();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_18B359000, v53, OS_LOG_TYPE_DEFAULT, "Showing mode restriction alert. Waiting for user confirmation...", buf, 2u);
                      }

                      objc_initWeak(buf, self);
                      v54 = [(SHSheetInteractor *)self delegate];
                      v55 = [(SHSheetInteractor *)self session];
                      v56 = [v55 collaborationModeRestriction];
                      v63[0] = MEMORY[0x1E69E9820];
                      v63[1] = 3221225472;
                      v63[2] = __34__SHSheetInteractor__runActivity___block_invoke;
                      v63[3] = &unk_1E71FA728;
                      objc_copyWeak(&v66, buf);
                      v64 = v4;
                      v65 = v62;
                      v67 = v60;
                      [v54 interactor:self showingModeRestriction:v56 continueHandler:v63];

                      objc_destroyWeak(&v66);
                      objc_destroyWeak(buf);
                      goto LABEL_57;
                    }
                  }

                  else
                  {
                  }
                }

LABEL_56:
                [(SHSheetInteractor *)self _startPerformingActivity:v4 collaborationItem:v62 skipCollaborationPerformer:v60];
LABEL_57:

                goto LABEL_58;
              }

LABEL_45:

              if (v45)
              {
                goto LABEL_50;
              }

              goto LABEL_56;
            }
          }

          else
          {
            v57 = v42 == 0;
            v46 = [v4 activityType];
            v45 = [v46 isEqual:@"com.apple.UIKit.activity.AirDrop"];

            if (v57)
            {
              goto LABEL_48;
            }
          }

          if (v39 != 1)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v45 = 1;
        goto LABEL_48;
      }
    }

    goto LABEL_35;
  }

  v9 = [(SHSheetInteractor *)self collaborationPerformer];
  [v9 cancel];

  [(SHSheetInteractor *)self setCollaborationPerformer:0];
  v10 = [v4 activityType];
  v11 = [(SHSheetInteractor *)self session];
  v12 = [v11 performingActivity];
  v13 = [v12 activityType];
  v14 = [v10 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    [(SHSheetInteractor *)self _runActivity:v4];
  }

LABEL_58:
}

void __34__SHSheetInteractor__runActivity___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"did not choose";
    if (a2)
    {
      v6 = @"chose";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "User %@ to continue", &v9, 0xCu);
  }

  if (a2)
  {
    [WeakRetained _startPerformingActivity:*(a1 + 32) collaborationItem:*(a1 + 40) skipCollaborationPerformer:*(a1 + 56)];
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) activityType];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Canceling perform for activity %@ due to user's choice in mode restriction alert", &v9, 0xCu);
    }
  }
}

- (void)_startPerformingActivity:(id)a3 collaborationItem:(id)a4 skipCollaborationPerformer:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SHSheetInteractor *)self session];
  [v10 setPerformingActivity:v8];

  if (!v9 || a5)
  {
    v16 = [(SHSheetInteractor *)self delegate];
    [v16 interactor:self willPerformActivity:v8];

    [(SHSheetInteractor *)self _recordActivityViewControllerInteraction];
    v17 = [(SHSheetInteractor *)self delegate];
    v14 = [v17 interactor:self activityPresentationControllerForActivity:v8];

    v18 = [SHSheetActivityPerformer alloc];
    v19 = [(SHSheetInteractor *)self session];
    v20 = [(SHSheetActivityPerformer *)v18 initWithActivity:v8 session:v19];

    [(SHSheetActivityPerformer *)v20 setDelegate:self];
    [(SHSheetActivityPerformer *)v20 setPresentationController:v14];
    [(SHSheetInteractor *)self setActivityPerformer:v20];
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__SHSheetInteractor__startPerformingActivity_collaborationItem_skipCollaborationPerformer___block_invoke;
    v21[3] = &unk_1E71FA750;
    objc_copyWeak(&v22, &location);
    [(SHSheetActivityPerformer *)v20 performWithCompletionHandler:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E69CDE70]);
    v12 = [v8 activityType];
    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v14 = [v11 initWithCollaborationItem:v9 activityType:v12 deviceScreenScale:?];

    [v14 setDelegate:self];
    [v14 setCreationDelegate:self];
    [(SHSheetInteractor *)self setCollaborationPerformer:v14];
    v15 = [(SHSheetInteractor *)self collaborationPerformer];
    [v15 perform];
  }
}

void __91__SHSheetInteractor__startPerformingActivity_collaborationItem_skipCollaborationPerformer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPerformActivityWithResult:v3];
}

- (void)_deleteSharingURL:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self session];
  v6 = [v5 collaborationItem];
  v7 = [v6 type];

  if (v7 == 1)
  {
    v8 = [(SHSheetInteractor *)self session];
    v9 = [v8 collaborationItem];

    v10 = [v9 containerSetupInfo];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SHSheetInteractor *)self serviceManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__SHSheetInteractor__deleteSharingURL___block_invoke;
  v13[3] = &unk_1E71FA778;
  v14 = v4;
  v12 = v4;
  [v11 deleteSharingURL:v12 containerSetupInfo:v10 completionHandler:v13];
}

void __39__SHSheetInteractor__deleteSharingURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__SHSheetInteractor__deleteSharingURL___block_invoke_cold_1(a1, v4, v5);
    }
  }

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBOOL();
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Sharing URL was removed successfully:%@", &v8, 0xCu);
  }
}

- (void)_didPerformActivityWithResult:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 completedState] == 4 || objc_msgSend(v4, "completedState") == 3;
  v6 = [(SHSheetInteractor *)self session];
  v7 = [v6 isCollaborative];

  if (v7 && v5)
  {
    v8 = MEMORY[0x1E69CDE78];
    v9 = [(SHSheetInteractor *)self session];
    v10 = [v9 collaborationItem];
    LODWORD(v8) = [v8 canDeleteShareForCollaborationItem:v10];

    if (v8)
    {
      v11 = [(SHSheetInteractor *)self collaborationPerformer];
      v12 = [v11 cloudSharingResult];
      v13 = [v12 sharingURL];

      if (v13)
      {
        v14 = share_sheet_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v4 activity];
          v16 = [v15 activityType];
          v36 = 138412546;
          v37 = v16;
          v38 = 2112;
          v39 = v13;
          _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "Activity failed:%@ - delete sharing URL:%@", &v36, 0x16u);
        }

        [(SHSheetInteractor *)self _deleteSharingURL:v13];
      }
    }

    else
    {
      v13 = share_sheet_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v4 activity];
        v18 = [v17 activityType];
        v36 = 138412290;
        v37 = v18;
        _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "Activity failed:%@ - can't delete post share", &v36, 0xCu);
      }
    }
  }

  if (!v5)
  {
    v19 = [(SHSheetInteractor *)self session];
    v20 = [v19 collaborationItem];

    v21 = [(SHSheetInteractor *)self serviceManager];
    v22 = MEMORY[0x1E696AD98];
    v23 = [(SHSheetInteractor *)self session];
    v24 = [v22 numberWithBool:{objc_msgSend(v23, "isCollaborative")}];
    v25 = [v20 contentIdentifier];
    [v21 saveCollaborativeMode:v24 forContentIdentifier:v25];

    v26 = [v20 additionalContentIdentifier];
    if (v26)
    {
      v27 = [(SHSheetInteractor *)self serviceManager];
      v28 = MEMORY[0x1E696AD98];
      v29 = [(SHSheetInteractor *)self session];
      v30 = [v28 numberWithBool:{objc_msgSend(v29, "isCollaborative")}];
      [v27 saveCollaborativeMode:v30 forContentIdentifier:v26];
    }
  }

  v31 = [(SHSheetInteractor *)self delegate];
  [v31 interactor:self didPerformActivityWithResult:v4];

  [(SHSheetInteractor *)self setActivityPerformer:0];
  [(SHSheetInteractor *)self setCollaborationPerformer:0];
  v32 = [(SHSheetInteractor *)self session];
  [v32 setPerformingActivity:0];

  v33 = [(SHSheetInteractor *)self session];
  [v33 setCurrentPeopleSuggestion:0];

  v34 = [(SHSheetInteractor *)self session];
  v35 = [v34 collaborationItem];
  [v35 setCloudSharingResult:0];
}

- (id)_prepareActivityProxyForRequest:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self session];
  v6 = [v5 activityViewController];
  v7 = [v4 activityType];
  v8 = [v4 activitySpecificMetadata];
  [v6 _willPerformInServiceActivityType:v7 activitySpecificMetadata:v8];

  v9 = [_UIShareServiceActivityProxy activityProxyForServiceActivityDataRequest:v4];

  v10 = [(SHSheetInteractor *)self session];
  v11 = [v10 activitiesManager];
  [v11 addActivity:v9];

  return v9;
}

- (void)sessionConfigurationDidChangeForSession:(id)a3
{
  v4 = [(SHSheetInteractor *)self delegate];
  [v4 interactorDidUpdateSessionConfiguration:self];
}

- (void)showOptionsDidChangeForSession:(id)a3
{
  v4 = [(SHSheetInteractor *)self delegate];
  [v4 interactorDidUpdateObjectManipulationSupport:self];
}

- (void)headerMetadataDidChangeForSession:(id)a3
{
  v4 = [(SHSheetInteractor *)self delegate];
  [v4 interactorDidUpdateHeaderMetadata:self];
}

- (void)isCollaborativeDidChangeForSession:(id)a3
{
  v4 = [(SHSheetInteractor *)self delegate];
  [v4 interactorDidUpdateCollaborationDetails:self];
}

- (void)collaborationFooterViewModelDidChangeForSession:(id)a3
{
  v4 = [(SHSheetInteractor *)self delegate];
  [v4 interactorDidUpdateCollaborationDetails:self];
}

- (id)collaborationSharingResultForActivity:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self collaborationPerformer];
  v6 = [v5 activityType];
  v7 = [v4 activityType];

  LODWORD(v4) = [v6 isEqual:v7];
  if (v4)
  {
    v8 = [(SHSheetInteractor *)self collaborationPerformer];
    v9 = [v8 cloudSharingResult];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)session:(id)a3 didChangeMetadata:(id)a4
{
  v5 = a4;
  v6 = [(SHSheetInteractor *)self delegate];
  [v6 interactor:self didChangeMetadata:v5];
}

- (void)serviceManager:(id)a3 performActivity:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SHSheetInteractor *)self _performActivity:v5];
}

- (void)serviceManager:(id)a3 performUserDefaultsActivityWithContext:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(SHSheetInteractor *)self delegate];
  [v6 interactor:self didPerformUserDefaultsActivityWithContext:v5];
}

- (void)serviceManager:(id)a3 updateUserDefaultsActivityWithContext:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(SHSheetInteractor *)self delegate];
  [v6 interactor:self didUpdateUserDefaultsActivityWithContext:v5];
}

- (void)serviceManager:(id)a3 performAirdropViewActivityWithNoContentView:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(SHSheetInteractor *)self delegate];
  [v6 interactor:self didPerformAirdropViewActivityWithNoContentView:v4];

  v7 = [(SHSheetInteractor *)self session];
  v8 = [v7 testingReferenceSnapshot];

  if (v8)
  {
    v14 = objc_alloc_init(UIAirDropActivity);
    v9 = [(SHSheetInteractor *)self session];
    v10 = [v9 activityItemsManager];
    v11 = [v10 activityItemValuesForActivity:v14];

    v12 = [(SHSheetInteractor *)self session];
    v13 = [(UIAirDropActivity *)v14 activityType];
    [v12 _updateTestingSnapshotIfNeededForResolvedItems:v11 activityType:v13];
  }
}

- (void)serviceManager:(id)a3 didUpdateAirDropTransferWithChange:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [(SHSheetInteractor *)self delegate];
  [v6 interactor:self didUpdateAirDropTransferWithChange:v5];
}

- (void)serviceManager:(id)a3 willPerformActivityInServiceForRequest:(id)a4 completion:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v10 = [(SHSheetInteractor *)self session];
  v11 = [v10 performingActivity];
  if (v11)
  {
    v12 = [(SHSheetInteractor *)self session];
    v13 = [v12 performingActivity];
    v14 = [v13 activityType];
    v15 = [v14 isEqual:@"com.apple.UIKit.activity.AirDrop"];

    if ((v15 & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v36[0] = @"An other activity is currently performing.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v18 = [v16 errorWithDomain:@"com.apple.sharesheet.activity-request" code:-1 userInfo:v17];

      (*(v9 + 2))(v9, 0, 0, v18);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v18 = [(SHSheetInteractor *)self _prepareActivityProxyForRequest:v8];
  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke;
  v30[3] = &unk_1E71F9CD0;
  objc_copyWeak(&v33, &location);
  v31 = v8;
  v32 = v9;
  [v18 setDidFinishPreparingForExecution:v30];
  v19 = [(SHSheetInteractor *)self session];
  v20 = [v19 activityViewController];

  v21 = [v20 airDropDelegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = 1;
  }

  else
  {
    v22 = objc_opt_respondsToSelector();
  }

  v23 = [v18 activityType];
  v24 = [v23 isEqual:@"com.apple.UIKit.activity.AirDrop"];

  if ((v24 & v22) != 0)
  {
    v25 = [(SHSheetInteractor *)self session];
    v26 = [v25 identifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke_3;
    v28[3] = &unk_1E71FA7C8;
    v28[4] = self;
    v29 = v18;
    [_UIActivityRecipientManager requestRecipientsV2ForSessionID:v26 completionHandler:v28];
  }

  else
  {
    [(SHSheetInteractor *)self _performActivity:v18];
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
LABEL_12:
}

void __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activityPerformer];
    v5 = [v4 activity];

    v6 = [v3 session];
    v7 = [v6 activityItemsManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke_2;
    v9[3] = &unk_1E71FA7A0;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v7 loadItemProvidersForRequest:v8 activity:v5 completion:v9];
  }
}

void __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke_4;
  block[3] = &unk_1E71F9638;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) firstObject];
  if (v3)
  {
    v2 = [*(a1 + 40) delegate];
    [v2 interactor:*(a1 + 40) airDropViewServiceWillStartTransferToRecipient:v3];
  }

  [*(a1 + 40) _performActivity:*(a1 + 48)];
}

- (void)serviceManager:(id)a3 didPerformInServiceActivityWithIdentifier:(id)a4 completed:(BOOL)a5 items:(id)a6 error:(id)a7
{
  v9 = a5;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = [(SHSheetInteractor *)self activityPerformer];
  v15 = [v14 activity];
  v16 = [v15 activityUUID];

  if (v16 && ([v11 isEqual:v16] & 1) != 0)
  {
    v17 = [(SHSheetInteractor *)self activityPerformer];
    v18 = [v17 activity];
    [v18 activityDidFinish:v9 items:v12 error:v13];
  }

  else
  {
    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SHSheetInteractor serviceManager:v11 didPerformInServiceActivityWithIdentifier:v16 completed:v19 items:? error:?];
    }
  }
}

- (void)_recordActivityViewControllerInteraction
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetInteractor *)self activityPerformer];
  v4 = [v3 activity];

  v5 = [(SHSheetInteractor *)self session];
  v6 = [v5 activityViewController];

  if ([v6 readyToInteractTimestamp])
  {
    v7 = share_sheet_log();
    v8 = share_sheet_log();
    v9 = os_signpost_id_make_with_pointer(v8, v4);

    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v21 = 134349056;
      v22 = [v6 readyToInteractTimestamp];
      _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Interact", "%{public, signpost.description:begin_time}llu", &v21, 0xCu);
    }

    v10 = share_sheet_log();
    v11 = share_sheet_log();
    v12 = os_signpost_id_make_with_pointer(v11, v4);

    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v10, OS_SIGNPOST_INTERVAL_END, v12, "Interact", " enableTelemetry=YES ", &v21, 2u);
    }

    v13 = share_sheet_log();
    v14 = share_sheet_log();
    v15 = os_signpost_id_make_with_pointer(v14, v4);

    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = [v6 readyToInteractTimestamp];
      v17 = [v4 activityType];
      v21 = 134349314;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "InteractWithType", "%{public, signpost.description:begin_time}llu activityType=%{public, signpost.telemetry:string1}@", &v21, 0x16u);
    }

    v18 = share_sheet_log();
    v19 = share_sheet_log();
    v20 = os_signpost_id_make_with_pointer(v19, v4);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v18, OS_SIGNPOST_INTERVAL_END, v20, "InteractWithType", " enableTelemetry=YES ", &v21, 2u);
    }

    [v6 setReadyToInteractTimestamp:0];
  }
}

- (void)_recordActivityInteractionForResult:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 completedState];
  v6 = [(SHSheetInteractor *)self session];
  v7 = [v6 activityViewController];

  if ([v7 viewWillAppearTimestamp])
  {
    if (v5 == 5)
    {
      v8 = share_sheet_log();
      if (os_signpost_enabled(v8))
      {
        v14 = 134349056;
        v15 = [v7 viewWillAppearTimestamp];
        _os_signpost_emit_with_name_impl(&dword_18B359000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserShare.Success", "%{public, signpost.description:begin_time}llu", &v14, 0xCu);
      }

      v9 = share_sheet_log();
      if (!os_signpost_enabled(v9))
      {
        goto LABEL_17;
      }

      LOWORD(v14) = 0;
      v10 = "UserShare.Success";
    }

    else
    {
      v11 = [v4 error];

      v12 = share_sheet_log();
      v13 = os_signpost_enabled(v12);
      if (v11)
      {
        if (v13)
        {
          v14 = 134349056;
          v15 = [v7 viewWillAppearTimestamp];
          _os_signpost_emit_with_name_impl(&dword_18B359000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserShare.Error", "%{public, signpost.description:begin_time}llu", &v14, 0xCu);
        }

        v9 = share_sheet_log();
        if (!os_signpost_enabled(v9))
        {
          goto LABEL_17;
        }

        LOWORD(v14) = 0;
        v10 = "UserShare.Error";
      }

      else
      {
        if (v13)
        {
          v14 = 134349056;
          v15 = [v7 viewWillAppearTimestamp];
          _os_signpost_emit_with_name_impl(&dword_18B359000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserShare.Cancel", "%{public, signpost.description:begin_time}llu", &v14, 0xCu);
        }

        v9 = share_sheet_log();
        if (!os_signpost_enabled(v9))
        {
          goto LABEL_17;
        }

        LOWORD(v14) = 0;
        v10 = "UserShare.Cancel";
      }
    }

    _os_signpost_emit_with_name_impl(&dword_18B359000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v10, " enableTelemetry=YES ", &v14, 2u);
LABEL_17:

    [v7 setViewWillAppearTimestamp:0];
  }
}

- (id)linkMetadataForActivityPerformer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(SHSheetInteractor *)self delegate];
  v6 = [v4 activity];

  v7 = [v5 interactor:self linkMetadataForActivity:v6];

  return v7;
}

- (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHSheetInteractor *)self serviceManager];
  [v8 createSharingURLForCollaborationRequest:v7 completionHandler:v6];
}

- (void)createSharingURLWithParticipantsForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHSheetInteractor *)self delegate];
  [v8 interactor:self createSharingURLWithParticipantsForCollaborationRequest:v7 completionHandler:v6];
}

- (void)addParticipantsAllowedForCollaborationItem:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E69CDE78];
  v7 = a4;
  v8 = a3;
  v9 = [(SHSheetInteractor *)self serviceManager];
  [v6 addParticipantsAllowedForCollaborationItem:v8 collaborationService:v9 completionHandler:v7];
}

- (void)shareStatusForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHSheetInteractor *)self serviceManager];
  [v8 shareStatusForURL:v7 completionHandler:v6];
}

- (void)canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self delegate];
  [v5 interactor:self canShareFolderContainingExistingSharedItemsWithCompletionHandler:v4];
}

- (void)canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetInteractor *)self delegate];
  [v5 interactor:self canManageShareForDocumentInSharedFolderWithCompletionHandler:v4];
}

- (void)manageShareForDocumentInSharedFolder
{
  v6 = [a1 fileURL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)didBeginCreationForCollaborationPerformer:(id)a3
{
  if (([a3 requiresParticipants] & 1) == 0)
  {
    v6 = [(SHSheetInteractor *)self delegate];
    v4 = [(SHSheetInteractor *)self session];
    v5 = [v4 performingActivity];
    [v6 interactor:self creatingCollaborationForActivity:v5];
  }
}

- (void)didFinishCreationForCollaborationPerformer:(id)a3
{
  v16 = a3;
  if (([v16 requiresParticipants] & 1) == 0)
  {
    v4 = [(SHSheetInteractor *)self delegate];
    v5 = [(SHSheetInteractor *)self session];
    v6 = [v5 performingActivity];
    [v4 interactor:self didCreateCollaborationForActivity:v6];
  }

  v7 = [v16 cloudSharingResult];
  v8 = [v7 sharingURL];

  if (v8)
  {
    v9 = [(SHSheetInteractor *)self session];
    v10 = [v9 performingActivity];
    [(SHSheetInteractor *)self _runActivity:v10];
  }

  else
  {
    v11 = [(SHSheetInteractor *)self delegate];
    v12 = [(SHSheetInteractor *)self session];
    v13 = [v12 performingActivity];
    v14 = [v16 cloudSharingResult];
    v15 = [v14 error];
    [v11 interactor:self didFailCreatingCollaborationForActivity:v13 error:v15];

    [(SHSheetInteractor *)self setCollaborationPerformer:0];
  }
}

- (void)didCancelCreationForCollaborationPerformer:(id)a3
{
  if (([a3 requiresParticipants] & 1) == 0)
  {
    v6 = [(SHSheetInteractor *)self delegate];
    v4 = [(SHSheetInteractor *)self session];
    v5 = [v4 performingActivity];
    [v6 interactor:self didCancelCollaborationForActivity:v5];
  }
}

- (void)didFailCreationForCollaborationPerformer:(id)a3 error:(id)a4
{
  v5 = a4;
  v8 = [(SHSheetInteractor *)self delegate];
  v6 = [(SHSheetInteractor *)self session];
  v7 = [v6 performingActivity];
  [v8 interactor:self didFailCreatingCollaborationForActivity:v7 error:v5];
}

- (SHSheetInteractorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetActivityPerformerPresentationInterface)activityPresentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityPresentationController);

  return WeakRetained;
}

- (void)performActivity:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 activityPerformer];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __39__SHSheetInteractor__deleteSharingURL___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_18B359000, a2, a3, "error while removing sharingURL:%@ error:%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)serviceManager:(NSObject *)a3 didPerformInServiceActivityWithIdentifier:completed:items:error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_18B359000, a2, a3, "Attempted to call didPerformInServiceActivity for identifier %@ when current activity has identifier %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end