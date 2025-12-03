@interface SHSheetInteractor
- (BOOL)hasSessionStarted;
- (SHSheetActivityPerformerPresentationInterface)activityPresentationController;
- (SHSheetInteractor)initWithContext:(id)context;
- (SHSheetInteractorDelegate)delegate;
- (id)_prepareActivityProxyForRequest:(id)request;
- (id)collaborationSharingResultForActivity:(id)activity;
- (id)createActivityItemsConfiguration;
- (id)linkMetadataForActivityPerformer:(id)performer;
- (void)_deleteSharingURL:(id)l;
- (void)_didPerformActivityWithResult:(id)result;
- (void)_performActivity:(id)activity;
- (void)_recordActivityInteractionForResult:(id)result;
- (void)_recordActivityViewControllerInteraction;
- (void)_runActivity:(id)activity;
- (void)_setupServiceManagerIfNeeded;
- (void)_startPerformingActivity:(id)activity collaborationItem:(id)item skipCollaborationPerformer:(BOOL)performer;
- (void)_updateRemoteScene;
- (void)activityViewControllerDidAppear;
- (void)activityViewControllerDidDisappear;
- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)handler;
- (void)addParticipantsAllowedForCollaborationItem:(id)item completionHandler:(id)handler;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)handler;
- (void)canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)handler;
- (void)clearActivityForResult:(id)result;
- (void)collaborationFooterViewModelDidChangeForSession:(id)session;
- (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler;
- (void)createSharingURLWithParticipantsForCollaborationRequest:(id)request completionHandler:(id)handler;
- (void)didBeginCreationForCollaborationPerformer:(id)performer;
- (void)didCancelCreationForCollaborationPerformer:(id)performer;
- (void)didFailCreationForCollaborationPerformer:(id)performer error:(id)error;
- (void)didFinishCreationForCollaborationPerformer:(id)performer;
- (void)favoriteUserDefaultsActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)findSupportedActivitiesWithCompletionHandler:(id)handler;
- (void)headerMetadataDidChangeForSession:(id)session;
- (void)invalidateRemoteSession;
- (void)isCollaborativeDidChangeForSession:(id)session;
- (void)longPressShareActivityWithIdentifier:(id)identifier;
- (void)manageShareForDocumentInSharedFolder;
- (void)performActionActivityWithIdentifier:(id)identifier;
- (void)performActivity:(id)activity;
- (void)performActivityWithRequest:(id)request forExtension:(id)extension completion:(id)completion;
- (void)performActivityWithType:(id)type completionHandler:(id)handler;
- (void)performEditAction;
- (void)performPeopleSuggestion:(id)suggestion;
- (void)performPersonSuggestionWithIdentifier:(id)identifier;
- (void)performShareActivityWithIdentifier:(id)identifier;
- (void)performUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)preheatActivitiesIfNeeded;
- (void)provideFeedbackForPeopleSugestionIdentifier:(id)identifier;
- (void)removePersonSuggestionWithIdentifier:(id)identifier;
- (void)requestServiceUpdate;
- (void)serviceManager:(id)manager didPerformInServiceActivityWithIdentifier:(id)identifier completed:(BOOL)completed items:(id)items error:(id)error;
- (void)serviceManager:(id)manager didUpdateAirDropTransferWithChange:(id)change;
- (void)serviceManager:(id)manager performActivity:(id)activity;
- (void)serviceManager:(id)manager performAirdropViewActivityWithNoContentView:(BOOL)view;
- (void)serviceManager:(id)manager performUserDefaultsActivityWithContext:(id)context;
- (void)serviceManager:(id)manager updateUserDefaultsActivityWithContext:(id)context;
- (void)serviceManager:(id)manager willPerformActivityInServiceForRequest:(id)request completion:(id)completion;
- (void)session:(id)session didChangeMetadata:(id)metadata;
- (void)sessionConfigurationDidChangeForSession:(id)session;
- (void)setWantsCollaborativeSession:(BOOL)session;
- (void)shareStatusForURL:(id)l completionHandler:(id)handler;
- (void)showOptionsDidChangeForSession:(id)session;
- (void)startSession;
- (void)stopSession;
- (void)toggleUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)updateSessionWithContext:(id)context;
- (void)updateUserDefaultsFavorites:(id)favorites activityCategory:(int64_t)category;
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
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  v3 = [serviceManager connectionState] != 0;

  return v3;
}

- (SHSheetInteractor)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = SHSheetInteractor;
  v5 = [(SHSheetInteractor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(SHSheetInteractor *)v5 _setupServiceManagerIfNeeded];
    v7 = [[SHSheetSession alloc] initWithContext:contextCopy delegate:v6];
    session = v6->_session;
    v6->_session = v7;
  }

  return v6;
}

- (void)setWantsCollaborativeSession:(BOOL)session
{
  sessionCopy = session;
  v31 = *MEMORY[0x1E69E9840];
  session = [(SHSheetInteractor *)self session];
  isCollaborative = [session isCollaborative];

  if (isCollaborative != sessionCopy)
  {
    session2 = [(SHSheetInteractor *)self session];
    collaborationModeRestriction = [session2 collaborationModeRestriction];
    if ([collaborationModeRestriction disabledMode] == 1 && sessionCopy)
    {
      v9 = 1;
    }

    else
    {
      v9 = !sessionCopy;
      session3 = [(SHSheetInteractor *)self session];
      collaborationModeRestriction2 = [session3 collaborationModeRestriction];
      if ([collaborationModeRestriction2 disabledMode])
      {
        v9 = 0;
      }
    }

    session4 = [(SHSheetInteractor *)self session];
    collaborationItem = [session4 collaborationItem];

    if (sessionCopy && (SHSheetIsCollaborationItemEligibleForActivity(collaborationItem, 0) & 1) == 0)
    {
      v25 = share_sheet_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_18B359000, v25, OS_LOG_TYPE_DEFAULT, "Collaboration not supported for URL", &v29, 2u);
      }

      delegate = [(SHSheetInteractor *)self delegate];
      [delegate interactorDidFailPerformActivityNotCollaborationEligible:self];
    }

    else
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      delegate = [(SHSheetInteractor *)self session];
      collaborationModeRestriction3 = [delegate collaborationModeRestriction];
      alertTitle = [collaborationModeRestriction3 alertTitle];
      if (alertTitle)
      {
        v17 = alertTitle;
        session5 = [(SHSheetInteractor *)self session];
        collaborationModeRestriction4 = [session5 collaborationModeRestriction];
        allowContinueToMode = [collaborationModeRestriction4 allowContinueToMode];

        if ((allowContinueToMode & 1) == 0)
        {
          delegate2 = [(SHSheetInteractor *)self delegate];
          session6 = [(SHSheetInteractor *)self session];
          collaborationModeRestriction5 = [session6 collaborationModeRestriction];
          [delegate2 interactor:self showingModeRestriction:collaborationModeRestriction5 continueHandler:0];

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
          if (sessionCopy)
          {
            v27 = @"Collaborative";
          }

          v29 = 138412290;
          v30 = v27;
          _os_log_impl(&dword_18B359000, v26, OS_LOG_TYPE_DEFAULT, "Changing mode to %@", &v29, 0xCu);
        }

        session7 = [(SHSheetInteractor *)self session];
        [session7 setIsCollaborative:sessionCopy];

        [(SHSheetInteractor *)self requestServiceUpdate];
        goto LABEL_26;
      }
    }

    goto LABEL_21;
  }
}

- (void)updateSessionWithContext:(id)context
{
  v9 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = contextCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Update session with context:%@", &v7, 0xCu);
  }

  session = [(SHSheetInteractor *)self session];
  [session updateWithContext:contextCopy];
}

- (void)startSession
{
  hasSessionStarted = [(SHSheetInteractor *)self hasSessionStarted];
  session2 = share_sheet_log();
  v5 = os_log_type_enabled(session2, OS_LOG_TYPE_DEFAULT);
  if (hasSessionStarted)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_18B359000, session2, OS_LOG_TYPE_DEFAULT, "Session has already started.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_18B359000, session2, OS_LOG_TYPE_DEFAULT, "Start session", v9, 2u);
    }

    [(SHSheetInteractor *)self _setupServiceManagerIfNeeded];
    serviceManager = [(SHSheetInteractor *)self serviceManager];
    session = [(SHSheetInteractor *)self session];
    [serviceManager connectWithSession:session];

    session2 = [(SHSheetInteractor *)self session];
    remoteScene = [session2 remoteScene];
    [remoteScene activate];
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

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  if (!serviceManager || !_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  session = [(SHSheetInteractor *)self session];
  testingSnapshot = [session testingSnapshot];

  if (testingSnapshot)
  {
    session2 = [(SHSheetInteractor *)self session];
    serviceManager = [session2 snapshotHandler];

    [(SHSheetInteractor *)self activityViewControllerSessionDidEndWithCompletionHandler:serviceManager];
LABEL_7:
  }

  [(SHSheetInteractor *)self setServiceManager:0];
}

- (void)requestServiceUpdate
{
  session = [(SHSheetInteractor *)self session];
  _createActivityMatchingContext = [session _createActivityMatchingContext];

  session2 = [(SHSheetInteractor *)self session];
  activitiesManager = [session2 activitiesManager];
  [activitiesManager updateActivitiesWithContext:_createActivityMatchingContext];

  session3 = [(SHSheetInteractor *)self session];
  LODWORD(activitiesManager) = [session3 useRemoteUIService];

  if (activitiesManager)
  {
    [(SHSheetInteractor *)self _updateRemoteScene];
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager update];
}

- (void)_updateRemoteScene
{
  session = [(SHSheetInteractor *)self session];
  remoteScene = [session remoteScene];

  if (remoteScene)
  {
    session2 = [(SHSheetInteractor *)self session];
    createClientContext = [session2 createClientContext];

    [remoteScene updateWithSessionContext:createClientContext];
  }
}

- (void)invalidateRemoteSession
{
  session = [(SHSheetInteractor *)self session];
  remoteScene = [session remoteScene];

  if (remoteScene)
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "invalidate remote session", v5, 2u);
    }

    [remoteScene resetContext];
  }
}

- (void)clearActivityForResult:(id)result
{
  resultCopy = result;
  session = [(SHSheetInteractor *)self session];
  activityViewController = [session activityViewController];

  activity = [resultCopy activity];
  completedState = [resultCopy completedState];
  [activityViewController readyToInteractTimestamp];
  [activityViewController creationTimestamp];
  v9 = UpTicksToMilliseconds();
  mach_continuous_time();
  [activityViewController creationTimestamp];
  v10 = UpTicksToMilliseconds();
  [(SHSheetInteractor *)self _recordActivityInteractionForResult:resultCopy];

  serviceManager = [(SHSheetInteractor *)self serviceManager];

  if (serviceManager)
  {
    v12 = completedState == 5;
    serviceManager2 = [(SHSheetInteractor *)self serviceManager];
    session2 = [(SHSheetInteractor *)self session];
    identifier = [session2 identifier];
    activityType = [activity activityType];
    [serviceManager2 reportActivityWithSessionID:identifier presentationMs:v9 totalShareTimeMs:v10 activityType:activityType success:v12];
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
    session3 = [(SHSheetInteractor *)self session];
    activitiesManager = [session3 activitiesManager];
    [activitiesManager removeActivity:activity];
  }
}

- (void)performActivity:(id)activity
{
  activityCopy = activity;
  activityPerformer = [(SHSheetInteractor *)self activityPerformer];
  isRunning = [activityPerformer isRunning];

  if (isRunning)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SHSheetInteractor *)activityCopy performActivity:?];
    }
  }

  else
  {
    [(SHSheetInteractor *)self _runActivity:activityCopy];
  }
}

- (void)performPeopleSuggestion:(id)suggestion
{
  v18 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  transportBundleIdentifier = [suggestionCopy transportBundleIdentifier];
  v6 = [_UIActivityHelper activityTypeForBundleIdentifier:transportBundleIdentifier];
  session = [(SHSheetInteractor *)self session];
  activitiesManager = [session activitiesManager];
  v9 = [activitiesManager activityForActivityType:v6];

  if (v9)
  {
    session2 = [(SHSheetInteractor *)self session];
    [session2 setCurrentPeopleSuggestion:suggestionCopy];

    serviceManager = [(SHSheetInteractor *)self serviceManager];
    identifier = [suggestionCopy identifier];
    [serviceManager provideFeedbackForPeopleSugestionIdentifier:identifier];

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
      v17 = suggestionCopy;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "activityType:%@ is not available for people suggestion:%@", &v14, 0x16u);
    }
  }
}

- (void)performActivityWithRequest:(id)request forExtension:(id)extension completion:(id)completion
{
  requestCopy = request;
  extensionCopy = extension;
  completionCopy = completion;
  v11 = [(SHSheetInteractor *)self _prepareActivityProxyForRequest:requestCopy];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__SHSheetInteractor_performActivityWithRequest_forExtension_completion___block_invoke;
  v15[3] = &unk_1E71FA700;
  objc_copyWeak(&v19, &location);
  v12 = requestCopy;
  v16 = v12;
  v13 = extensionCopy;
  v17 = v13;
  v14 = completionCopy;
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
  session = [(SHSheetInteractor *)self session];
  activitiesManager = [session activitiesManager];
  [activitiesManager preheatActivitiesIfNeeded];
}

- (void)activityViewControllerDidAppear
{
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager activityViewControllerDidAppear];
}

- (void)activityViewControllerDidDisappear
{
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager activityViewControllerDidDisappear];
}

- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager activityViewControllerSessionDidEndWithCompletionHandler:handlerCopy];
}

- (void)applicationDidEnterBackground
{
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager applicationDidEnterBackground];
}

- (void)applicationWillEnterForeground
{
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager applicationWillEnterForeground];
}

- (id)createActivityItemsConfiguration
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = [objc_alloc(MEMORY[0x1E69DC640]) initWithItemProviders:array];

  return v3;
}

- (void)performShareActivityWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform share activity with identifier:%@", &v7, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager performShareActivityWithIdentifier:identifierCopy];
}

- (void)performActionActivityWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform action activity with identifier:%@", &v7, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager performActionActivityWithIdentifier:identifierCopy];
}

- (void)performEditAction
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Perform edit action", v5, 2u);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager performEditAction];
}

- (void)performPersonSuggestionWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform person suggestion with identifier:%@", &v7, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager performPersonSuggestionWithIdentifier:identifierCopy];
}

- (void)removePersonSuggestionWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Remove person suggestion with identifier:%@", &v7, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager removePersonSuggestionWithIdentifier:identifierCopy];
}

- (void)toggleUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Toggle user defaults activity with identifier:%@", &v9, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager toggleUserDefaultsActivityWithIdentifier:identifierCopy activityCategory:category];
}

- (void)favoriteUserDefaultsActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category
{
  activityCopy = activity;
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = identifierCopy;
    _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "Favorite user defaults activity with identifier:%@", &v11, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager favoriteUserDefaultsActivity:activityCopy withIdentifier:identifierCopy activityCategory:category];
}

- (void)updateUserDefaultsFavorites:(id)favorites activityCategory:(int64_t)category
{
  v11 = *MEMORY[0x1E69E9840];
  favoritesCopy = favorites;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = favoritesCopy;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Update user defaults favorites:%@", &v9, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager updateUserDefaultsFavorites:favoritesCopy activityCategory:category];
}

- (void)performUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Perform user defaults activity with identifier:%@", &v9, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager performUserDefaultsActivityWithIdentifier:identifierCopy activityCategory:category];
}

- (void)userDefaultsViewControllerDidDisappear
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "User defaults view controller did disappear", v5, 2u);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager userDefaultsViewControllerDidDisappear];
}

- (void)longPressShareActivityWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Long press share activity with identifier:%@", &v7, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager longPressShareActivityWithIdentifier:identifierCopy];
}

- (void)provideFeedbackForPeopleSugestionIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Provide feedback for people suggestion identifier:%@", &v7, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager provideFeedbackForPeopleSugestionIdentifier:identifierCopy];
}

- (void)performActivityWithType:(id)type completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = typeCopy;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Perform activity with type:%@", &v10, 0xCu);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager performActivityWithType:typeCopy completionHandler:handlerCopy];
}

- (void)findSupportedActivitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Find supported activities", v7, 2u);
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager findSupportedActivitiesWithCompletionHandler:handlerCopy];
}

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  activityPerformer = [(SHSheetInteractor *)self activityPerformer];
  if (([activityPerformer isRunning] & 1) == 0)
  {

    goto LABEL_7;
  }

  collaborationPerformer = [(SHSheetInteractor *)self collaborationPerformer];

  if (collaborationPerformer)
  {
LABEL_7:
    session = [(SHSheetInteractor *)self session];
    activityViewController = [session activityViewController];
    [activityViewController _performActivity:activityCopy];

    goto LABEL_8;
  }

  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SHSheetInteractor *)activityCopy performActivity:?];
  }

LABEL_8:
}

- (void)_runActivity:(id)activity
{
  v70 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    *buf = 138412290;
    v69 = activityType;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Perform activity:%@", buf, 0xCu);
  }

  collaborationPerformer = [(SHSheetInteractor *)self collaborationPerformer];
  isRunning = [collaborationPerformer isRunning];

  if (!isRunning)
  {
    session = [(SHSheetInteractor *)self session];
    collaborationItem = [session collaborationItem];

    if ([collaborationItem type])
    {
      isiCloudDrive = 0;
    }

    else
    {
      isiCloudDrive = [collaborationItem isiCloudDrive];
    }

    collaborationPerformer2 = [(SHSheetInteractor *)self collaborationPerformer];
    activityType2 = [collaborationPerformer2 activityType];
    activityType3 = [activityCopy activityType];
    if ([activityType2 isEqual:activityType3])
    {
      collaborationPerformer3 = [(SHSheetInteractor *)self collaborationPerformer];
      cloudSharingResult = [collaborationPerformer3 cloudSharingResult];
      v22 = cloudSharingResult != 0;
    }

    else
    {
      v22 = 0;
    }

    if ([collaborationItem type] == 2)
    {
      isURLProviderSupported = [collaborationItem isURLProviderSupported];
    }

    else
    {
      isURLProviderSupported = 0;
    }

    if ([collaborationItem type] == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = isiCloudDrive | isURLProviderSupported;
    }

    activityCategory = [objc_opt_class() activityCategory];
    activityType4 = [activityCopy activityType];
    if ([activityType4 isEqual:@"com.apple.UIKit.activity.AirDrop"])
    {
      LOBYTE(v27) = 0;
    }

    else
    {
      v28 = MEMORY[0x1E69CDE78];
      activityType5 = [activityCopy activityType];
      if ([v28 isHeroCollaborationActivityType:activityType5])
      {
        LOBYTE(v27) = 0;
      }

      else
      {
        objc_opt_class();
        v27 = (objc_opt_isKindOfClass() ^ 1) & (activityCategory == 1);
      }
    }

    session2 = [(SHSheetInteractor *)self session];
    if ([session2 isCollaborative])
    {
      v31 = v22 | v27 & v24 ^ 1;
    }

    else
    {
      v31 = 1;
    }

    activityType6 = [activityCopy activityType];
    if (([activityType6 isEqual:@"com.apple.UIKit.activity.AirDrop"] & 1) == 0)
    {
      session3 = [(SHSheetInteractor *)self session];
      if ([session3 isCollaborative])
      {
        IsCollaborationItemEligibleForActivity = SHSheetIsCollaborationItemEligibleForActivity(collaborationItem, activityCopy);

        if ((IsCollaborationItemEligibleForActivity & 1) == 0)
        {
          v35 = share_sheet_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            activityType7 = [activityCopy activityType];
            *buf = 138412290;
            v69 = activityType7;
            _os_log_impl(&dword_18B359000, v35, OS_LOG_TYPE_DEFAULT, "Collaboration not supported for URL - activity:%@", buf, 0xCu);
          }

          delegate = [(SHSheetInteractor *)self delegate];
          [delegate interactorDidFailPerformActivityNotCollaborationEligible:self];

          goto LABEL_57;
        }

LABEL_35:
        session4 = [(SHSheetInteractor *)self session];
        collaborationModeRestriction = [session4 collaborationModeRestriction];
        disabledMode = [collaborationModeRestriction disabledMode];
        v60 = v31 & 1;
        if (disabledMode == 1)
        {
          session5 = [(SHSheetInteractor *)self session];
          if ([session5 isCollaborative])
          {

            goto LABEL_50;
          }
        }

        session6 = [(SHSheetInteractor *)self session];
        collaborationModeRestriction2 = [session6 collaborationModeRestriction];
        disabledMode2 = [collaborationModeRestriction2 disabledMode];
        if (disabledMode2 || (-[SHSheetInteractor session](self, "session"), v58 = objc_claimAutoreleasedReturnValue(), [v58 isCollaborative]))
        {
          session7 = [(SHSheetInteractor *)self session];
          collaborationModeRestriction3 = [session7 collaborationModeRestriction];
          if ([collaborationModeRestriction3 disabledMode])
          {

            v45 = 0;
            if (!disabledMode2)
            {
LABEL_48:

              if (disabledMode != 1)
              {
LABEL_49:

                if (v45)
                {
LABEL_50:
                  session8 = [(SHSheetInteractor *)self session];
                  collaborationModeRestriction4 = [session8 collaborationModeRestriction];
                  alertTitle = [collaborationModeRestriction4 alertTitle];
                  if (alertTitle)
                  {
                    session9 = [(SHSheetInteractor *)self session];
                    collaborationModeRestriction5 = [session9 collaborationModeRestriction];
                    allowContinueToMode = [collaborationModeRestriction5 allowContinueToMode];

                    if (allowContinueToMode)
                    {
                      v53 = share_sheet_log();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_18B359000, v53, OS_LOG_TYPE_DEFAULT, "Showing mode restriction alert. Waiting for user confirmation...", buf, 2u);
                      }

                      objc_initWeak(buf, self);
                      delegate2 = [(SHSheetInteractor *)self delegate];
                      session10 = [(SHSheetInteractor *)self session];
                      collaborationModeRestriction6 = [session10 collaborationModeRestriction];
                      v63[0] = MEMORY[0x1E69E9820];
                      v63[1] = 3221225472;
                      v63[2] = __34__SHSheetInteractor__runActivity___block_invoke;
                      v63[3] = &unk_1E71FA728;
                      objc_copyWeak(&v66, buf);
                      v64 = activityCopy;
                      v65 = collaborationItem;
                      v67 = v60;
                      [delegate2 interactor:self showingModeRestriction:collaborationModeRestriction6 continueHandler:v63];

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
                [(SHSheetInteractor *)self _startPerformingActivity:activityCopy collaborationItem:collaborationItem skipCollaborationPerformer:v60];
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
            v57 = disabledMode2 == 0;
            activityType8 = [activityCopy activityType];
            v45 = [activityType8 isEqual:@"com.apple.UIKit.activity.AirDrop"];

            if (v57)
            {
              goto LABEL_48;
            }
          }

          if (disabledMode != 1)
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

  collaborationPerformer4 = [(SHSheetInteractor *)self collaborationPerformer];
  [collaborationPerformer4 cancel];

  [(SHSheetInteractor *)self setCollaborationPerformer:0];
  activityType9 = [activityCopy activityType];
  session11 = [(SHSheetInteractor *)self session];
  performingActivity = [session11 performingActivity];
  activityType10 = [performingActivity activityType];
  v14 = [activityType9 isEqual:activityType10];

  if ((v14 & 1) == 0)
  {
    [(SHSheetInteractor *)self _runActivity:activityCopy];
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

- (void)_startPerformingActivity:(id)activity collaborationItem:(id)item skipCollaborationPerformer:(BOOL)performer
{
  activityCopy = activity;
  itemCopy = item;
  session = [(SHSheetInteractor *)self session];
  [session setPerformingActivity:activityCopy];

  if (!itemCopy || performer)
  {
    delegate = [(SHSheetInteractor *)self delegate];
    [delegate interactor:self willPerformActivity:activityCopy];

    [(SHSheetInteractor *)self _recordActivityViewControllerInteraction];
    delegate2 = [(SHSheetInteractor *)self delegate];
    v14 = [delegate2 interactor:self activityPresentationControllerForActivity:activityCopy];

    v18 = [SHSheetActivityPerformer alloc];
    session2 = [(SHSheetInteractor *)self session];
    v20 = [(SHSheetActivityPerformer *)v18 initWithActivity:activityCopy session:session2];

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
    activityType = [activityCopy activityType];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v14 = [v11 initWithCollaborationItem:itemCopy activityType:activityType deviceScreenScale:?];

    [v14 setDelegate:self];
    [v14 setCreationDelegate:self];
    [(SHSheetInteractor *)self setCollaborationPerformer:v14];
    collaborationPerformer = [(SHSheetInteractor *)self collaborationPerformer];
    [collaborationPerformer perform];
  }
}

void __91__SHSheetInteractor__startPerformingActivity_collaborationItem_skipCollaborationPerformer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didPerformActivityWithResult:v3];
}

- (void)_deleteSharingURL:(id)l
{
  lCopy = l;
  session = [(SHSheetInteractor *)self session];
  collaborationItem = [session collaborationItem];
  type = [collaborationItem type];

  if (type == 1)
  {
    session2 = [(SHSheetInteractor *)self session];
    collaborationItem2 = [session2 collaborationItem];

    containerSetupInfo = [collaborationItem2 containerSetupInfo];
  }

  else
  {
    containerSetupInfo = 0;
  }

  serviceManager = [(SHSheetInteractor *)self serviceManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__SHSheetInteractor__deleteSharingURL___block_invoke;
  v13[3] = &unk_1E71FA778;
  v14 = lCopy;
  v12 = lCopy;
  [serviceManager deleteSharingURL:v12 containerSetupInfo:containerSetupInfo completionHandler:v13];
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

- (void)_didPerformActivityWithResult:(id)result
{
  v40 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = [resultCopy completedState] == 4 || objc_msgSend(resultCopy, "completedState") == 3;
  session = [(SHSheetInteractor *)self session];
  isCollaborative = [session isCollaborative];

  if (isCollaborative && v5)
  {
    v8 = MEMORY[0x1E69CDE78];
    session2 = [(SHSheetInteractor *)self session];
    collaborationItem = [session2 collaborationItem];
    LODWORD(v8) = [v8 canDeleteShareForCollaborationItem:collaborationItem];

    if (v8)
    {
      collaborationPerformer = [(SHSheetInteractor *)self collaborationPerformer];
      cloudSharingResult = [collaborationPerformer cloudSharingResult];
      sharingURL = [cloudSharingResult sharingURL];

      if (sharingURL)
      {
        v14 = share_sheet_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          activity = [resultCopy activity];
          activityType = [activity activityType];
          v36 = 138412546;
          v37 = activityType;
          v38 = 2112;
          v39 = sharingURL;
          _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "Activity failed:%@ - delete sharing URL:%@", &v36, 0x16u);
        }

        [(SHSheetInteractor *)self _deleteSharingURL:sharingURL];
      }
    }

    else
    {
      sharingURL = share_sheet_log();
      if (os_log_type_enabled(sharingURL, OS_LOG_TYPE_DEFAULT))
      {
        activity2 = [resultCopy activity];
        activityType2 = [activity2 activityType];
        v36 = 138412290;
        v37 = activityType2;
        _os_log_impl(&dword_18B359000, sharingURL, OS_LOG_TYPE_DEFAULT, "Activity failed:%@ - can't delete post share", &v36, 0xCu);
      }
    }
  }

  if (!v5)
  {
    session3 = [(SHSheetInteractor *)self session];
    collaborationItem2 = [session3 collaborationItem];

    serviceManager = [(SHSheetInteractor *)self serviceManager];
    v22 = MEMORY[0x1E696AD98];
    session4 = [(SHSheetInteractor *)self session];
    v24 = [v22 numberWithBool:{objc_msgSend(session4, "isCollaborative")}];
    contentIdentifier = [collaborationItem2 contentIdentifier];
    [serviceManager saveCollaborativeMode:v24 forContentIdentifier:contentIdentifier];

    additionalContentIdentifier = [collaborationItem2 additionalContentIdentifier];
    if (additionalContentIdentifier)
    {
      serviceManager2 = [(SHSheetInteractor *)self serviceManager];
      v28 = MEMORY[0x1E696AD98];
      session5 = [(SHSheetInteractor *)self session];
      v30 = [v28 numberWithBool:{objc_msgSend(session5, "isCollaborative")}];
      [serviceManager2 saveCollaborativeMode:v30 forContentIdentifier:additionalContentIdentifier];
    }
  }

  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self didPerformActivityWithResult:resultCopy];

  [(SHSheetInteractor *)self setActivityPerformer:0];
  [(SHSheetInteractor *)self setCollaborationPerformer:0];
  session6 = [(SHSheetInteractor *)self session];
  [session6 setPerformingActivity:0];

  session7 = [(SHSheetInteractor *)self session];
  [session7 setCurrentPeopleSuggestion:0];

  session8 = [(SHSheetInteractor *)self session];
  collaborationItem3 = [session8 collaborationItem];
  [collaborationItem3 setCloudSharingResult:0];
}

- (id)_prepareActivityProxyForRequest:(id)request
{
  requestCopy = request;
  session = [(SHSheetInteractor *)self session];
  activityViewController = [session activityViewController];
  activityType = [requestCopy activityType];
  activitySpecificMetadata = [requestCopy activitySpecificMetadata];
  [activityViewController _willPerformInServiceActivityType:activityType activitySpecificMetadata:activitySpecificMetadata];

  v9 = [_UIShareServiceActivityProxy activityProxyForServiceActivityDataRequest:requestCopy];

  session2 = [(SHSheetInteractor *)self session];
  activitiesManager = [session2 activitiesManager];
  [activitiesManager addActivity:v9];

  return v9;
}

- (void)sessionConfigurationDidChangeForSession:(id)session
{
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactorDidUpdateSessionConfiguration:self];
}

- (void)showOptionsDidChangeForSession:(id)session
{
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactorDidUpdateObjectManipulationSupport:self];
}

- (void)headerMetadataDidChangeForSession:(id)session
{
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactorDidUpdateHeaderMetadata:self];
}

- (void)isCollaborativeDidChangeForSession:(id)session
{
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactorDidUpdateCollaborationDetails:self];
}

- (void)collaborationFooterViewModelDidChangeForSession:(id)session
{
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactorDidUpdateCollaborationDetails:self];
}

- (id)collaborationSharingResultForActivity:(id)activity
{
  activityCopy = activity;
  collaborationPerformer = [(SHSheetInteractor *)self collaborationPerformer];
  activityType = [collaborationPerformer activityType];
  activityType2 = [activityCopy activityType];

  LODWORD(activityCopy) = [activityType isEqual:activityType2];
  if (activityCopy)
  {
    collaborationPerformer2 = [(SHSheetInteractor *)self collaborationPerformer];
    cloudSharingResult = [collaborationPerformer2 cloudSharingResult];
  }

  else
  {
    cloudSharingResult = 0;
  }

  return cloudSharingResult;
}

- (void)session:(id)session didChangeMetadata:(id)metadata
{
  metadataCopy = metadata;
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self didChangeMetadata:metadataCopy];
}

- (void)serviceManager:(id)manager performActivity:(id)activity
{
  activityCopy = activity;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SHSheetInteractor *)self _performActivity:activityCopy];
}

- (void)serviceManager:(id)manager performUserDefaultsActivityWithContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self didPerformUserDefaultsActivityWithContext:contextCopy];
}

- (void)serviceManager:(id)manager updateUserDefaultsActivityWithContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self didUpdateUserDefaultsActivityWithContext:contextCopy];
}

- (void)serviceManager:(id)manager performAirdropViewActivityWithNoContentView:(BOOL)view
{
  viewCopy = view;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self didPerformAirdropViewActivityWithNoContentView:viewCopy];

  session = [(SHSheetInteractor *)self session];
  testingReferenceSnapshot = [session testingReferenceSnapshot];

  if (testingReferenceSnapshot)
  {
    v14 = objc_alloc_init(UIAirDropActivity);
    session2 = [(SHSheetInteractor *)self session];
    activityItemsManager = [session2 activityItemsManager];
    v11 = [activityItemsManager activityItemValuesForActivity:v14];

    session3 = [(SHSheetInteractor *)self session];
    activityType = [(UIAirDropActivity *)v14 activityType];
    [session3 _updateTestingSnapshotIfNeededForResolvedItems:v11 activityType:activityType];
  }
}

- (void)serviceManager:(id)manager didUpdateAirDropTransferWithChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self didUpdateAirDropTransferWithChange:changeCopy];
}

- (void)serviceManager:(id)manager willPerformActivityInServiceForRequest:(id)request completion:(id)completion
{
  v36[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  requestCopy = request;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  session = [(SHSheetInteractor *)self session];
  performingActivity = [session performingActivity];
  if (performingActivity)
  {
    session2 = [(SHSheetInteractor *)self session];
    performingActivity2 = [session2 performingActivity];
    activityType = [performingActivity2 activityType];
    v15 = [activityType isEqual:@"com.apple.UIKit.activity.AirDrop"];

    if ((v15 & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v36[0] = @"An other activity is currently performing.";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v18 = [v16 errorWithDomain:@"com.apple.sharesheet.activity-request" code:-1 userInfo:v17];

      (*(completionCopy + 2))(completionCopy, 0, 0, v18);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v18 = [(SHSheetInteractor *)self _prepareActivityProxyForRequest:requestCopy];
  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke;
  v30[3] = &unk_1E71F9CD0;
  objc_copyWeak(&v33, &location);
  v31 = requestCopy;
  v32 = completionCopy;
  [v18 setDidFinishPreparingForExecution:v30];
  session3 = [(SHSheetInteractor *)self session];
  activityViewController = [session3 activityViewController];

  airDropDelegate = [activityViewController airDropDelegate];
  if (objc_opt_respondsToSelector())
  {
    v22 = 1;
  }

  else
  {
    v22 = objc_opt_respondsToSelector();
  }

  activityType2 = [v18 activityType];
  v24 = [activityType2 isEqual:@"com.apple.UIKit.activity.AirDrop"];

  if ((v24 & v22) != 0)
  {
    session4 = [(SHSheetInteractor *)self session];
    identifier = [session4 identifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __86__SHSheetInteractor_serviceManager_willPerformActivityInServiceForRequest_completion___block_invoke_3;
    v28[3] = &unk_1E71FA7C8;
    v28[4] = self;
    v29 = v18;
    [_UIActivityRecipientManager requestRecipientsV2ForSessionID:identifier completionHandler:v28];
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

- (void)serviceManager:(id)manager didPerformInServiceActivityWithIdentifier:(id)identifier completed:(BOOL)completed items:(id)items error:(id)error
{
  completedCopy = completed;
  identifierCopy = identifier;
  itemsCopy = items;
  errorCopy = error;
  activityPerformer = [(SHSheetInteractor *)self activityPerformer];
  activity = [activityPerformer activity];
  activityUUID = [activity activityUUID];

  if (activityUUID && ([identifierCopy isEqual:activityUUID] & 1) != 0)
  {
    activityPerformer2 = [(SHSheetInteractor *)self activityPerformer];
    activity2 = [activityPerformer2 activity];
    [activity2 activityDidFinish:completedCopy items:itemsCopy error:errorCopy];
  }

  else
  {
    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SHSheetInteractor serviceManager:identifierCopy didPerformInServiceActivityWithIdentifier:activityUUID completed:v19 items:? error:?];
    }
  }
}

- (void)_recordActivityViewControllerInteraction
{
  v25 = *MEMORY[0x1E69E9840];
  activityPerformer = [(SHSheetInteractor *)self activityPerformer];
  activity = [activityPerformer activity];

  session = [(SHSheetInteractor *)self session];
  activityViewController = [session activityViewController];

  if ([activityViewController readyToInteractTimestamp])
  {
    v7 = share_sheet_log();
    v8 = share_sheet_log();
    v9 = os_signpost_id_make_with_pointer(v8, activity);

    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v21 = 134349056;
      readyToInteractTimestamp = [activityViewController readyToInteractTimestamp];
      _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Interact", "%{public, signpost.description:begin_time}llu", &v21, 0xCu);
    }

    v10 = share_sheet_log();
    v11 = share_sheet_log();
    v12 = os_signpost_id_make_with_pointer(v11, activity);

    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v10, OS_SIGNPOST_INTERVAL_END, v12, "Interact", " enableTelemetry=YES ", &v21, 2u);
    }

    v13 = share_sheet_log();
    v14 = share_sheet_log();
    v15 = os_signpost_id_make_with_pointer(v14, activity);

    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      readyToInteractTimestamp2 = [activityViewController readyToInteractTimestamp];
      activityType = [activity activityType];
      v21 = 134349314;
      readyToInteractTimestamp = readyToInteractTimestamp2;
      v23 = 2114;
      v24 = activityType;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "InteractWithType", "%{public, signpost.description:begin_time}llu activityType=%{public, signpost.telemetry:string1}@", &v21, 0x16u);
    }

    v18 = share_sheet_log();
    v19 = share_sheet_log();
    v20 = os_signpost_id_make_with_pointer(v19, activity);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v18, OS_SIGNPOST_INTERVAL_END, v20, "InteractWithType", " enableTelemetry=YES ", &v21, 2u);
    }

    [activityViewController setReadyToInteractTimestamp:0];
  }
}

- (void)_recordActivityInteractionForResult:(id)result
{
  v16 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  completedState = [resultCopy completedState];
  session = [(SHSheetInteractor *)self session];
  activityViewController = [session activityViewController];

  if ([activityViewController viewWillAppearTimestamp])
  {
    if (completedState == 5)
    {
      v8 = share_sheet_log();
      if (os_signpost_enabled(v8))
      {
        v14 = 134349056;
        viewWillAppearTimestamp = [activityViewController viewWillAppearTimestamp];
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
      error = [resultCopy error];

      v12 = share_sheet_log();
      v13 = os_signpost_enabled(v12);
      if (error)
      {
        if (v13)
        {
          v14 = 134349056;
          viewWillAppearTimestamp = [activityViewController viewWillAppearTimestamp];
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
          viewWillAppearTimestamp = [activityViewController viewWillAppearTimestamp];
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

    [activityViewController setViewWillAppearTimestamp:0];
  }
}

- (id)linkMetadataForActivityPerformer:(id)performer
{
  performerCopy = performer;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  delegate = [(SHSheetInteractor *)self delegate];
  activity = [performerCopy activity];

  v7 = [delegate interactor:self linkMetadataForActivity:activity];

  return v7;
}

- (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager createSharingURLForCollaborationRequest:requestCopy completionHandler:handlerCopy];
}

- (void)createSharingURLWithParticipantsForCollaborationRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self createSharingURLWithParticipantsForCollaborationRequest:requestCopy completionHandler:handlerCopy];
}

- (void)addParticipantsAllowedForCollaborationItem:(id)item completionHandler:(id)handler
{
  v6 = MEMORY[0x1E69CDE78];
  handlerCopy = handler;
  itemCopy = item;
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [v6 addParticipantsAllowedForCollaborationItem:itemCopy collaborationService:serviceManager completionHandler:handlerCopy];
}

- (void)shareStatusForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  serviceManager = [(SHSheetInteractor *)self serviceManager];
  [serviceManager shareStatusForURL:lCopy completionHandler:handlerCopy];
}

- (void)canShareFolderContainingExistingSharedItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self canShareFolderContainingExistingSharedItemsWithCompletionHandler:handlerCopy];
}

- (void)canManageShareForDocumentInSharedFolderWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(SHSheetInteractor *)self delegate];
  [delegate interactor:self canManageShareForDocumentInSharedFolderWithCompletionHandler:handlerCopy];
}

- (void)manageShareForDocumentInSharedFolder
{
  fileURL = [self fileURL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)didBeginCreationForCollaborationPerformer:(id)performer
{
  if (([performer requiresParticipants] & 1) == 0)
  {
    delegate = [(SHSheetInteractor *)self delegate];
    session = [(SHSheetInteractor *)self session];
    performingActivity = [session performingActivity];
    [delegate interactor:self creatingCollaborationForActivity:performingActivity];
  }
}

- (void)didFinishCreationForCollaborationPerformer:(id)performer
{
  performerCopy = performer;
  if (([performerCopy requiresParticipants] & 1) == 0)
  {
    delegate = [(SHSheetInteractor *)self delegate];
    session = [(SHSheetInteractor *)self session];
    performingActivity = [session performingActivity];
    [delegate interactor:self didCreateCollaborationForActivity:performingActivity];
  }

  cloudSharingResult = [performerCopy cloudSharingResult];
  sharingURL = [cloudSharingResult sharingURL];

  if (sharingURL)
  {
    session2 = [(SHSheetInteractor *)self session];
    performingActivity2 = [session2 performingActivity];
    [(SHSheetInteractor *)self _runActivity:performingActivity2];
  }

  else
  {
    delegate2 = [(SHSheetInteractor *)self delegate];
    session3 = [(SHSheetInteractor *)self session];
    performingActivity3 = [session3 performingActivity];
    cloudSharingResult2 = [performerCopy cloudSharingResult];
    error = [cloudSharingResult2 error];
    [delegate2 interactor:self didFailCreatingCollaborationForActivity:performingActivity3 error:error];

    [(SHSheetInteractor *)self setCollaborationPerformer:0];
  }
}

- (void)didCancelCreationForCollaborationPerformer:(id)performer
{
  if (([performer requiresParticipants] & 1) == 0)
  {
    delegate = [(SHSheetInteractor *)self delegate];
    session = [(SHSheetInteractor *)self session];
    performingActivity = [session performingActivity];
    [delegate interactor:self didCancelCollaborationForActivity:performingActivity];
  }
}

- (void)didFailCreationForCollaborationPerformer:(id)performer error:(id)error
{
  errorCopy = error;
  delegate = [(SHSheetInteractor *)self delegate];
  session = [(SHSheetInteractor *)self session];
  performingActivity = [session performingActivity];
  [delegate interactor:self didFailCreatingCollaborationForActivity:performingActivity error:errorCopy];
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