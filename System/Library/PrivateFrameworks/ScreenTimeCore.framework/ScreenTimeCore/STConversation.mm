@interface STConversation
+ (void)requestConversationWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (BOOL)_doesContainAtLeastOneContactInHandles:(id)handles contactsByHandle:(id)handle;
- (BOOL)_shouldAllowContactsOnlyCommunicationForHandles:(id)handles contactsByHandle:(id)handle;
- (BOOL)_shouldAllowGroupsWithOneContactCommunicationForHandles:(id)handles;
- (BOOL)_shouldAllowWhitelistedContactsCommunicationForHandles:(id)handles context:(id)context;
- (BOOL)_shouldGeneralScreenTimeAllowHandles:(id)handles context:(id)context;
- (BOOL)_shouldWhileLimitedAllowHandles:(id)handles context:(id)context;
- (STConversation)initWithBundleIdentifier:(id)identifier;
- (STConversation)initWithBundleIdentifier:(id)identifier contactStore:(id)store;
- (STConversation)initWithBundleIdentifier:(id)identifier contactStore:(id)store completionHandler:(id)handler;
- (STConversation)initWithThirdPartyBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (id)_contactsByHandle:(id)handle error:(id *)error;
- (id)_filteredArrayForKnownHandlesInArray:(id)array;
- (id)allowableByContactsHandles:(id)handles;
- (id)initSynchronouslyWithBundleIdentifier:(id)identifier;
- (id)initSynchronouslyWithThirdPartyBundleIdentifier:(id)identifier;
- (void)_contactStoreDidChange;
- (void)_currentApplicationStateDidChange;
- (void)_currentThirdPartyApplicationStateDidChange;
- (void)_emergencyModeDidChange;
- (void)_populateAllowedContactsByHandlesForContactHandles:(id)handles context:(id)context;
- (void)_populateThirdPartyAllowedContactsByHandlesForContactHandles:(id)handles context:(id)context;
- (void)_screenTimePolicyDidChange;
- (void)_stConversationCommonInitSetupObservationOfStateChanges;
- (void)_stConversationCommonInitWithBundleIdentifier:(id)identifier contactStore:(id)store completionHandler:(id)handler;
- (void)_stConversationCommonInitWithThirdPartyBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_updateAllContextsForNewWhileLimitedPolicyOrWhitelist;
- (void)_updateAllThirdPartyContexts;
- (void)_updateContext:(id)context forHandles:(id)handles updateGeneral:(BOOL)general updateLimited:(BOOL)limited updateCurrentApplicationState:(BOOL)state updateAllowedByContactsHandle:(BOOL)handle refreshContacts:(BOOL)contacts refreshWhitelist:(BOOL)self0 updateEmergencyMode:(BOOL)self1;
- (void)_updateThirdPartyContext:(id)context forHandles:(id)handles;
- (void)callCompletionHandlerIfNeededWithConversation:(id)conversation error:(id)error;
- (void)callCompletionHandlerIfNeededWithThirdPartyConversation:(id)conversation error:(id)error;
- (void)dealloc;
@end

@implementation STConversation

- (void)_stConversationCommonInitSetupObservationOfStateChanges
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.ScreenTimeAgent.%@.conversation", self->_bundleIdentifier];
  v6 = dispatch_queue_create([v5 UTF8String], v4);
  stateChangeQueue = self->_stateChangeQueue;
  self->_stateChangeQueue = v6;

  objc_initWeak(&location, self);
  v8 = self->_stateChangeQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __73__STConversation__stConversationCommonInitSetupObservationOfStateChanges__block_invoke;
  handler[3] = &unk_1E7CE7330;
  objc_copyWeak(&v15, &location);
  notify_register_dispatch("com.apple.ScreenTimeAgent.SettingsDidChangeNotification", &self->_policyNotifyToken, v8, handler);
  uTF8String = [*MEMORY[0x1E6999F40] UTF8String];
  v10 = self->_stateChangeQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__STConversation__stConversationCommonInitSetupObservationOfStateChanges__block_invoke_2;
  v12[3] = &unk_1E7CE7330;
  objc_copyWeak(&v13, &location);
  notify_register_dispatch(uTF8String, &self->_emergencyModeNotifyToken, v10, v12);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateAllContextsForNewWhileLimitedPolicyOrWhitelist name:*MEMORY[0x1E695C440] object:0];
  [defaultCenter addObserver:self selector:sel__contactStoreDidChange name:*MEMORY[0x1E695C3D8] object:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (STConversation)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  communicationBundleIdentifiers = [MEMORY[0x1E6999F50] communicationBundleIdentifiers];
  if ([communicationBundleIdentifiers containsObject:identifierCopy])
  {
    v6 = objc_opt_new();
    v7 = [(STConversation *)self initWithBundleIdentifier:identifierCopy contactStore:v6];
  }

  else
  {
    v7 = [(STConversation *)self initWithThirdPartyBundleIdentifier:identifierCopy completionHandler:0];
  }

  return v7;
}

- (STConversation)initWithBundleIdentifier:(id)identifier contactStore:(id)store
{
  storeCopy = store;
  v7 = MEMORY[0x1E6999F50];
  identifierCopy = identifier;
  communicationBundleIdentifiers = [v7 communicationBundleIdentifiers];
  if ([communicationBundleIdentifiers containsObject:identifierCopy])
  {
    v10 = [(STConversation *)self initWithBundleIdentifier:identifierCopy contactStore:storeCopy completionHandler:0];
  }

  else
  {
    v10 = [(STConversation *)self initWithThirdPartyBundleIdentifier:identifierCopy completionHandler:0];
  }

  v11 = v10;

  v12 = v11;
  return v12;
}

- (id)initSynchronouslyWithBundleIdentifier:(id)identifier
{
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  communicationBundleIdentifiers = [MEMORY[0x1E6999F50] communicationBundleIdentifiers];
  if ([communicationBundleIdentifiers containsObject:identifierCopy])
  {
    v47.receiver = self;
    v47.super_class = STConversation;
    v6 = [(STConversation *)&v47 init];
    v7 = +[STLog conversation];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = identifierCopy;
      _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing STConversation synchronously for bundle identifier: %{public}@", buf, 0xCu);
    }

    v8 = objc_opt_new();
    [(STConversation *)v6 _stConversationCommonInitWithBundleIdentifier:identifierCopy contactStore:v8 completionHandler:0];

    managementState = v6->_managementState;
    v46 = 0;
    v10 = [(STManagementState *)managementState communicationPoliciesWithError:&v46];
    v11 = v46;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:0x1F3048DC0];
      longLongValue = [v12 longLongValue];

      v14 = [v10 objectForKeyedSubscript:0x1F3048DE0];
      longLongValue2 = [v14 longLongValue];

      v16 = +[STLog conversation];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v49 = longLongValue;
        v50 = 2048;
        v51 = longLongValue2;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Fetched initial communication policies. General policy: %lld. While limited policy: %lld.", buf, 0x16u);
      }

      v6->_generalScreenTimePolicy = longLongValue;
      v6->_whileLimitedPolicy = longLongValue2;
    }

    else
    {
      v18 = +[STLog conversation];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [STConversation initSynchronouslyWithBundleIdentifier:];
      }
    }

    communicationPolicyMonitor = v6->_communicationPolicyMonitor;
    v45 = v11;
    v20 = [(DMFCommunicationPolicyMonitor *)communicationPolicyMonitor requestPoliciesByBundleIdentifierWithError:&v45];
    v21 = v45;

    if (v20)
    {
      v22 = [v20 objectForKeyedSubscript:identifierCopy];
      v23 = v22;
      if (v22)
      {
        unsignedIntegerValue = [v22 unsignedIntegerValue];
        v25 = +[STLog conversation];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v49 = identifierCopy;
          v50 = 2048;
          v51 = unsignedIntegerValue;
          _os_log_impl(&dword_1B831F000, v25, OS_LOG_TYPE_DEFAULT, "Fetched initial %{public}@ application state: %lu", buf, 0x16u);
        }

        v6->_currentApplicationState = unsignedIntegerValue;
      }

      else
      {
        v26 = +[STLog conversation];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(STConversation *)identifierCopy initSynchronouslyWithBundleIdentifier:v6];
        }
      }
    }

    else
    {
      v23 = +[STLog conversation];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [STConversation initSynchronouslyWithBundleIdentifier:];
      }
    }

    emergencyModeMonitor = v6->_emergencyModeMonitor;
    v44 = v21;
    v28 = [(DMFEmergencyModeMonitor *)emergencyModeMonitor emergencyModeStatusWithError:&v44];
    v29 = v44;

    if (v28)
    {
      [v28 doubleValue];
      v31 = v30;
      v32 = v30 > 0.0;
      v33 = +[STLog conversation];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v49) = v31 > 0.0;
        _os_log_impl(&dword_1B831F000, v33, OS_LOG_TYPE_DEFAULT, "Fetched initial emergency mode status: %d", buf, 8u);
      }

      v6->_emergencyModeEnabled = v32;
    }

    else
    {
      v34 = +[STLog conversation];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [STConversation initSynchronouslyWithBundleIdentifier:];
      }
    }

    v35 = v6->_managementState;
    v43 = v29;
    v36 = [(STManagementState *)v35 managingGuardianAppleIDsForLocalUserWithError:&v43];
    v37 = v43;

    v38 = +[STLog conversation];
    p_super = v38;
    if (v36)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v49 = v36;
        _os_log_impl(&dword_1B831F000, p_super, OS_LOG_TYPE_DEFAULT, "Fetched managing guardian Apple IDs: %{private}@", buf, 0xCu);
      }

      v40 = v36;
      p_super = &v6->_managingParentAppleIDs->super;
      v6->_managingParentAppleIDs = v40;
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }

    [(STConversation *)v6 _stConversationCommonInitSetupObservationOfStateChanges];
    v17 = v6;
  }

  else
  {
    v17 = [(STConversation *)self initSynchronouslyWithThirdPartyBundleIdentifier:identifierCopy];
  }

  v41 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)initSynchronouslyWithThirdPartyBundleIdentifier:(id)identifier
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = STConversation;
  v5 = [(STConversation *)&v20 init];
  v6 = +[STLog conversation];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = identifierCopy;
    _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing STConversation synchronously for third party bundle identifier: %{public}@", buf, 0xCu);
  }

  [(STConversation *)v5 _stConversationCommonInitWithThirdPartyBundleIdentifier:identifierCopy completionHandler:0];
  thirdPartyApplicationPolicyMonitor = v5->_thirdPartyApplicationPolicyMonitor;
  v25[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v19 = 0;
  v9 = [(DMFApplicationPolicyMonitor *)thirdPartyApplicationPolicyMonitor requestPoliciesForBundleIdentifiers:v8 withError:&v19];
  v10 = v19;

  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:identifierCopy];
    v12 = v11;
    if (v11)
    {
      integerValue = [v11 integerValue];
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v22 = identifierCopy;
        v23 = 2048;
        v24 = integerValue;
        _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "Fetched initial %{public}@ application state: %ld", buf, 0x16u);
      }

      v5->_currentThirdPartyApplicationState = integerValue;
    }

    else
    {
      v15 = +[STLog conversation];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(STConversation *)identifierCopy initSynchronouslyWithThirdPartyBundleIdentifier:v5];
      }
    }
  }

  else
  {
    v12 = +[STLog conversation];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithThirdPartyBundleIdentifier:];
    }
  }

  v16 = v5;
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (STConversation)initWithBundleIdentifier:(id)identifier contactStore:(id)store completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v35.receiver = self;
  v35.super_class = STConversation;
  handlerCopy = handler;
  storeCopy = store;
  v11 = [(STConversation *)&v35 init];
  v12 = +[STLog conversation];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = identifierCopy;
    _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_DEFAULT, "Initializing STConversation asynchronously for bundle identifier: %{public}@", buf, 0xCu);
  }

  [(STConversation *)v11 _stConversationCommonInitWithBundleIdentifier:identifierCopy contactStore:storeCopy completionHandler:handlerCopy];
  managementState = v11->_managementState;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke;
  v33[3] = &unk_1E7CE7268;
  v14 = v11;
  v34 = v14;
  [(STManagementState *)managementState communicationPoliciesWithCompletionHandler:v33];
  communicationPolicyMonitor = v14->_communicationPolicyMonitor;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_71;
  v30[3] = &unk_1E7CE7290;
  v16 = v14;
  v31 = v16;
  v32 = identifierCopy;
  v17 = identifierCopy;
  [(DMFCommunicationPolicyMonitor *)communicationPolicyMonitor requestPoliciesByBundleIdentifierWithCompletionHandler:v30];
  emergencyModeMonitor = v16->_emergencyModeMonitor;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_73;
  v28[3] = &unk_1E7CE72B8;
  v19 = v16;
  v29 = v19;
  [(DMFEmergencyModeMonitor *)emergencyModeMonitor emergencyModeStatusWithCompletionHandler:v28];
  v20 = v11->_managementState;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_75;
  v26[3] = &unk_1E7CE72E0;
  v21 = v19;
  v27 = v21;
  [(STManagementState *)v20 managingGuardianAppleIDsForLocalUserWithCompletionHandler:v26];
  [(STConversation *)v21 _stConversationCommonInitSetupObservationOfStateChanges];
  v22 = v27;
  v23 = v21;

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = +[STLog conversation];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }

    v10 = *(*(a1 + 32) + 24);
    objc_sync_enter(v10);
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:0 error:v7];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_DEFAULT, "Fetched initial communication policies. General policy: %lld. While limited policy: %lld.", buf, 0x16u);
    }

    [*(a1 + 32) setGeneralScreenTimePolicy:a2];
    [*(a1 + 32) setWhileLimitedPolicy:a3];
    LOBYTE(v12) = 0;
    [*(a1 + 32) _updateAllContextsUpdateGeneral:1 updateLimited:1 updateCurrentApplicationState:0 updateAllowedByContactsHandle:1 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v12];
    v10 = *(*(a1 + 32) + 24);
    objc_sync_enter(v10);
    [*(a1 + 32) setDidFetchInitialScreenTimePolicyState:1];
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:*(a1 + 32) error:0];
  }

  objc_sync_exit(v10);

  v11 = *MEMORY[0x1E69E9840];
}

void __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 unsignedIntegerValue];
      v10 = +[STLog conversation];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        *buf = 138543618;
        v19 = v11;
        v20 = 2048;
        v21 = v9;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Fetched initial %{public}@ application state: %lu", buf, 0x16u);
      }

      [*(a1 + 32) setCurrentApplicationState:v9];
      LOBYTE(v17) = 0;
      [*(a1 + 32) _updateAllContextsUpdateGeneral:0 updateLimited:0 updateCurrentApplicationState:1 updateAllowedByContactsHandle:1 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v17];
    }

    else
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_71_cold_1((a1 + 40), a1);
      }
    }

    v15 = *(*(a1 + 32) + 24);
    objc_sync_enter(v15);
    [*(a1 + 32) setDidFetchInitialApplicationState:1];
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:*(a1 + 32) error:0];
    objc_sync_exit(v15);

    v13 = v8;
  }

  else
  {
    v12 = +[STLog conversation];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }

    v13 = *(*(a1 + 32) + 24);
    objc_sync_enter(v13);
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:0 error:v6];
    objc_sync_exit(v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
    v9 = +[STLog conversation];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = v8 > 0.0;
      _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_DEFAULT, "Fetched initial emergency mode status: %d", buf, 8u);
    }

    [*(a1 + 32) setEmergencyModeEnabled:v8 > 0.0];
    LOBYTE(v13) = 1;
    [*(a1 + 32) _updateAllContextsUpdateGeneral:1 updateLimited:1 updateCurrentApplicationState:0 updateAllowedByContactsHandle:1 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v13];
    v10 = *(*(a1 + 32) + 24);
    objc_sync_enter(v10);
    [*(a1 + 32) setDidFetchInitialEmergencyModeState:1];
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:*(a1 + 32) error:0];
  }

  else
  {
    v11 = +[STLog conversation];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }

    v10 = *(*(a1 + 32) + 24);
    objc_sync_enter(v10);
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:0 error:v6];
  }

  objc_sync_exit(v10);

  v12 = *MEMORY[0x1E69E9840];
}

void __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[STLog conversation];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }

    v9 = *(*(a1 + 32) + 24);
    objc_sync_enter(v9);
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:0 error:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v13 = v5;
      _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Fetched managing guardian Apple IDs: %{private}@", buf, 0xCu);
    }

    [*(a1 + 32) setManagingParentAppleIDs:v5];
    LOBYTE(v11) = 0;
    [*(a1 + 32) _updateAllContextsUpdateGeneral:1 updateLimited:0 updateCurrentApplicationState:0 updateAllowedByContactsHandle:1 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v11];
    v9 = *(*(a1 + 32) + 24);
    objc_sync_enter(v9);
    [*(a1 + 32) setDidFetchManagingGuardianState:1];
    [*(a1 + 32) callCompletionHandlerIfNeededWithConversation:*(a1 + 32) error:0];
  }

  objc_sync_exit(v9);

  v10 = *MEMORY[0x1E69E9840];
}

- (STConversation)initWithThirdPartyBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = STConversation;
  handlerCopy = handler;
  v8 = [(STConversation *)&v21 init];
  v9 = +[STLog conversation];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = identifierCopy;
    _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_DEFAULT, "Initializing STConversation asynchronously for third party bundle identifier: %{public}@", buf, 0xCu);
  }

  [(STConversation *)v8 _stConversationCommonInitWithThirdPartyBundleIdentifier:identifierCopy completionHandler:handlerCopy];
  thirdPartyApplicationPolicyMonitor = v8->_thirdPartyApplicationPolicyMonitor;
  v22 = identifierCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__STConversation_initWithThirdPartyBundleIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE7290;
  v12 = v8;
  v19 = v12;
  v20 = identifierCopy;
  v13 = identifierCopy;
  [(DMFApplicationPolicyMonitor *)thirdPartyApplicationPolicyMonitor requestPoliciesForBundleIdentifiers:v11 completionHandler:v18];

  v14 = v20;
  v15 = v12;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __71__STConversation_initWithThirdPartyBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*(a1 + 40)];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 integerValue];
      v10 = +[STLog conversation];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v17 = 138543618;
        v18 = v11;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Fetched initial %{public}@ application state: %ld", &v17, 0x16u);
      }

      [*(a1 + 32) setCurrentThirdPartyApplicationState:v9];
      [*(a1 + 32) _updateAllThirdPartyContexts];
    }

    else
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __71__STConversation_initWithThirdPartyBundleIdentifier_completionHandler___block_invoke_cold_1((a1 + 40), a1);
      }
    }

    v15 = *(*(a1 + 32) + 24);
    objc_sync_enter(v15);
    [*(a1 + 32) setDidFetchInitialThirdPartyApplicationState:1];
    [*(a1 + 32) callCompletionHandlerIfNeededWithThirdPartyConversation:*(a1 + 32) error:0];
    objc_sync_exit(v15);

    v13 = v8;
  }

  else
  {
    v12 = +[STLog conversation];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithThirdPartyBundleIdentifier:];
    }

    v13 = *(*(a1 + 32) + 24);
    objc_sync_enter(v13);
    [*(a1 + 32) callCompletionHandlerIfNeededWithThirdPartyConversation:0 error:v6];
    objc_sync_exit(v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_stConversationCommonInitWithBundleIdentifier:(id)identifier contactStore:(id)store completionHandler:(id)handler
{
  identifierCopy = identifier;
  storeCopy = store;
  handlerCopy = handler;
  objc_storeStrong(&self->_contactStore, store);
  v11 = [objc_alloc(MEMORY[0x1E695CE70]) initWithContactStore:self->_contactStore];
  whitelist = self->_whitelist;
  self->_whitelist = v11;

  v13 = objc_opt_new();
  managingParentAppleIDs = self->_managingParentAppleIDs;
  self->_managingParentAppleIDs = v13;

  v15 = [identifierCopy copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v15;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  processName = self->_processName;
  self->_processName = processName;

  strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  contextByHandles = self->_contextByHandles;
  self->_contextByHandles = strongToWeakObjectsMapTable;

  v22 = objc_opt_new();
  didFetchInitialStateLock = self->_didFetchInitialStateLock;
  self->_didFetchInitialStateLock = v22;

  v24 = objc_opt_new();
  managementState = self->_managementState;
  self->_managementState = v24;

  objc_initWeak(&location, self);
  v26 = objc_alloc(MEMORY[0x1E6999F50]);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __95__STConversation__stConversationCommonInitWithBundleIdentifier_contactStore_completionHandler___block_invoke;
  v33[3] = &unk_1E7CE7308;
  objc_copyWeak(&v34, &location);
  v27 = [v26 initWithPolicyChangeHandler:v33];
  communicationPolicyMonitor = self->_communicationPolicyMonitor;
  self->_communicationPolicyMonitor = v27;

  v29 = objc_opt_new();
  emergencyModeMonitor = self->_emergencyModeMonitor;
  self->_emergencyModeMonitor = v29;

  v31 = _Block_copy(handlerCopy);
  conversationCompletionHandler = self->_conversationCompletionHandler;
  self->_conversationCompletionHandler = v31;

  self->_generalScreenTimePolicy = 0;
  self->_whileLimitedPolicy = 0;
  self->_currentApplicationState = 0;
  self->_emergencyModeEnabled = 1;
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __95__STConversation__stConversationCommonInitWithBundleIdentifier_contactStore_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _currentApplicationStateDidChange];
}

void __73__STConversation__stConversationCommonInitSetupObservationOfStateChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _screenTimePolicyDidChange];
}

void __73__STConversation__stConversationCommonInitSetupObservationOfStateChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _emergencyModeDidChange];
}

- (void)_stConversationCommonInitWithThirdPartyBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = [identifierCopy copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v8;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  processName = self->_processName;
  self->_processName = processName;

  self->_isThirdPartyBundleIdentifier = 1;
  strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  contextByHandles = self->_contextByHandles;
  self->_contextByHandles = strongToWeakObjectsMapTable;

  v15 = objc_opt_new();
  didFetchInitialStateLock = self->_didFetchInitialStateLock;
  self->_didFetchInitialStateLock = v15;

  objc_initWeak(&location, self);
  v17 = objc_alloc(MEMORY[0x1E6999F48]);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__STConversation__stConversationCommonInitWithThirdPartyBundleIdentifier_completionHandler___block_invoke;
  v22[3] = &unk_1E7CE7308;
  objc_copyWeak(&v23, &location);
  v18 = [v17 initWithPolicyChangeHandler:v22];
  thirdPartyApplicationPolicyMonitor = self->_thirdPartyApplicationPolicyMonitor;
  self->_thirdPartyApplicationPolicyMonitor = v18;

  v20 = _Block_copy(handlerCopy);
  conversationCompletionHandler = self->_conversationCompletionHandler;
  self->_conversationCompletionHandler = v20;

  self->_currentThirdPartyApplicationState = 0;
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __92__STConversation__stConversationCommonInitWithThirdPartyBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _currentThirdPartyApplicationStateDidChange];
}

+ (void)requestConversationWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  v6 = MEMORY[0x1E6999F50];
  handlerCopy = handler;
  communicationBundleIdentifiers = [v6 communicationBundleIdentifiers];
  LOBYTE(v6) = [communicationBundleIdentifiers containsObject:identifierCopy];
  v9 = [self alloc];
  v10 = v9;
  if (v6)
  {
    v11 = objc_opt_new();
    v12 = [v10 initWithBundleIdentifier:identifierCopy contactStore:v11 completionHandler:handlerCopy];

    handlerCopy = v11;
  }

  else
  {
    v12 = [v9 initWithThirdPartyBundleIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  [v12 setMe:v12];
}

- (void)callCompletionHandlerIfNeededWithConversation:(id)conversation error:(id)error
{
  conversationCopy = conversation;
  errorCopy = error;
  conversationCompletionHandler = [(STConversation *)self conversationCompletionHandler];

  if (conversationCompletionHandler && (!conversationCopy || [(STConversation *)self didFetchInitialScreenTimePolicyState]&& [(STConversation *)self didFetchInitialApplicationState]&& [(STConversation *)self didFetchInitialEmergencyModeState]&& [(STConversation *)self didFetchManagingGuardianState]))
  {
    conversationCompletionHandler2 = [(STConversation *)self conversationCompletionHandler];
    (conversationCompletionHandler2)[2](conversationCompletionHandler2, conversationCopy, errorCopy);

    [(STConversation *)self setConversationCompletionHandler:0];
    [(STConversation *)self setMe:0];
  }
}

- (void)callCompletionHandlerIfNeededWithThirdPartyConversation:(id)conversation error:(id)error
{
  conversationCopy = conversation;
  errorCopy = error;
  conversationCompletionHandler = [(STConversation *)self conversationCompletionHandler];

  if (conversationCompletionHandler && (!conversationCopy || [(STConversation *)self didFetchInitialThirdPartyApplicationState]))
  {
    conversationCompletionHandler2 = [(STConversation *)self conversationCompletionHandler];
    (conversationCompletionHandler2)[2](conversationCompletionHandler2, conversationCopy, errorCopy);

    [(STConversation *)self setConversationCompletionHandler:0];
    [(STConversation *)self setMe:0];
  }
}

- (void)dealloc
{
  notify_cancel(self->_policyNotifyToken);
  notify_cancel(self->_emergencyModeNotifyToken);
  v3.receiver = self;
  v3.super_class = STConversation;
  [(STConversation *)&v3 dealloc];
}

- (id)allowableByContactsHandles:(id)handles
{
  handlesCopy = handles;
  v5 = self->_contextByHandles;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_contextByHandles objectForKey:handlesCopy];
  if (!v6)
  {
    v6 = objc_opt_new();
    if ([(STConversation *)self isThirdPartyBundleIdentifier])
    {
      [(STConversation *)self _updateThirdPartyContext:v6 forHandles:handlesCopy];
    }

    else
    {
      BYTE2(v8) = 0;
      LOWORD(v8) = 0;
      [STConversation _updateContext:"_updateContext:forHandles:updateGeneral:updateLimited:updateCurrentApplicationState:updateAllowedByContactsHandle:refreshContacts:refreshWhitelist:updateEmergencyMode:" forHandles:v6 updateGeneral:handlesCopy updateLimited:1 updateCurrentApplicationState:1 updateAllowedByContactsHandle:0 refreshContacts:1 refreshWhitelist:v8 updateEmergencyMode:?];
    }

    [(NSMapTable *)self->_contextByHandles setObject:v6 forKey:handlesCopy];
  }

  objc_sync_exit(v5);

  return v6;
}

- (void)_updateContext:(id)context forHandles:(id)handles updateGeneral:(BOOL)general updateLimited:(BOOL)limited updateCurrentApplicationState:(BOOL)state updateAllowedByContactsHandle:(BOOL)handle refreshContacts:(BOOL)contacts refreshWhitelist:(BOOL)self0 updateEmergencyMode:(BOOL)self1
{
  handleCopy = handle;
  limitedCopy = limited;
  generalCopy = general;
  v64 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlesCopy = handles;
  allowedByScreenTime = [contextCopy allowedByScreenTime];
  applicationCurrentlyLimited = [contextCopy applicationCurrentlyLimited];
  shouldBeAllowedByScreenTimeWhenLimited = [contextCopy shouldBeAllowedByScreenTimeWhenLimited];
  emergencyModeEnabled = [contextCopy emergencyModeEnabled];
  allowedByContactsHandle = [contextCopy allowedByContactsHandle];
  v44 = [allowedByContactsHandle copy];

  if (contacts)
  {
    [contextCopy setContactsByHandle:0];
  }

  if (whitelist)
  {
    [contextCopy setWhitelistedHandles:0];
  }

  shouldBeAllowedDuringGeneralScreenTime = [contextCopy shouldBeAllowedDuringGeneralScreenTime];
  shouldBeAllowedByScreenTimeWhenLimited2 = [contextCopy shouldBeAllowedByScreenTimeWhenLimited];
  v22 = handlesCopy;
  if ([(STConversation *)self emergencyModeEnabled])
  {
    shouldBeAllowedByScreenTimeWhenLimited2 = 1;
    shouldBeAllowedDuringGeneralScreenTime = 1;
    goto LABEL_19;
  }

  v23 = !limitedCopy;
  if (generalCopy && (v23 & 1) == 0)
  {
    shouldBeAllowedDuringGeneralScreenTime = [(STConversation *)self _shouldGeneralScreenTimeAllowHandles:handlesCopy context:contextCopy];
LABEL_10:
    generalScreenTimePolicy = [(STConversation *)self generalScreenTimePolicy];
    if (generalScreenTimePolicy == [(STConversation *)self whileLimitedPolicy])
    {
      shouldBeAllowedByScreenTimeWhenLimited2 = shouldBeAllowedDuringGeneralScreenTime;
    }

    else
    {
      shouldBeAllowedByScreenTimeWhenLimited2 = [(STConversation *)self _shouldWhileLimitedAllowHandles:handlesCopy context:contextCopy];
    }

    goto LABEL_19;
  }

  if (!generalCopy || limitedCopy)
  {
    if ((v23 | generalCopy))
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  generalScreenTimePolicy2 = [(STConversation *)self generalScreenTimePolicy];
  if (generalScreenTimePolicy2 == [(STConversation *)self whileLimitedPolicy])
  {
    shouldBeAllowedDuringGeneralScreenTime = shouldBeAllowedByScreenTimeWhenLimited2;
  }

  else
  {
    shouldBeAllowedDuringGeneralScreenTime = [(STConversation *)self _shouldGeneralScreenTimeAllowHandles:handlesCopy context:contextCopy];
  }

LABEL_19:
  if (state || mode || limitedCopy || generalCopy)
  {
    [contextCopy updateShouldBeAllowedDuringGeneralScreenTime:shouldBeAllowedDuringGeneralScreenTime shouldBeAllowedByScreenTimeWhenLimited:shouldBeAllowedByScreenTimeWhenLimited2 currentApplicationState:-[STConversation currentApplicationState](self emergencyModeEnabled:{"currentApplicationState"), -[STConversation emergencyModeEnabled](self, "emergencyModeEnabled")}];
  }

  if (handleCopy)
  {
    [(STConversation *)self _populateAllowedContactsByHandlesForContactHandles:handlesCopy context:contextCopy];
  }

  allowedByScreenTime2 = [contextCopy allowedByScreenTime];
  applicationCurrentlyLimited2 = [contextCopy applicationCurrentlyLimited];
  shouldBeAllowedByScreenTimeWhenLimited3 = [contextCopy shouldBeAllowedByScreenTimeWhenLimited];
  emergencyModeEnabled2 = [contextCopy emergencyModeEnabled];
  allowedByContactsHandle2 = [contextCopy allowedByContactsHandle];
  if (allowedByScreenTime != allowedByScreenTime2 || ((applicationCurrentlyLimited ^ applicationCurrentlyLimited2) & 1) != 0 || ((shouldBeAllowedByScreenTimeWhenLimited ^ shouldBeAllowedByScreenTimeWhenLimited3) & 1) != 0 || ((emergencyModeEnabled ^ emergencyModeEnabled2) & 1) != 0 || ([v44 isEqualToDictionary:allowedByContactsHandle2] & 1) == 0)
  {
    v31 = +[STLog conversation];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(STConversation *)self bundleIdentifier];
      generalScreenTimePolicy3 = [(STConversation *)self generalScreenTimePolicy];
      whileLimitedPolicy = [(STConversation *)self whileLimitedPolicy];
      allowedByScreenTime3 = [contextCopy allowedByScreenTime];
      applicationCurrentlyLimited3 = [contextCopy applicationCurrentlyLimited];
      shouldBeAllowedByScreenTimeWhenLimited4 = [contextCopy shouldBeAllowedByScreenTimeWhenLimited];
      emergencyModeEnabled3 = [contextCopy emergencyModeEnabled];
      allowedByContactsHandle3 = [contextCopy allowedByContactsHandle];
      *buf = 138545411;
      v47 = bundleIdentifier;
      v48 = 2113;
      v49 = handlesCopy;
      v50 = 2048;
      v51 = generalScreenTimePolicy3;
      v52 = 2048;
      v53 = whileLimitedPolicy;
      v54 = 1024;
      v55 = allowedByScreenTime3;
      v56 = 1024;
      v57 = applicationCurrentlyLimited3;
      v58 = 1024;
      v59 = shouldBeAllowedByScreenTimeWhenLimited4;
      v60 = 1024;
      v61 = emergencyModeEnabled3;
      v62 = 2113;
      v63 = allowedByContactsHandle3;
      _os_log_impl(&dword_1B831F000, v31, OS_LOG_TYPE_DEFAULT, "Updated %{public}@ context for handles:%{private}@. General policy: %lld. While limited policy: %lld. allowedByScreenTime:%d applicationCurrentlyLimited:%d shouldBeAllowedByScreenTimeWhenLimited:%d emergencyModeEnabled:%d allowedByContactsHandle:%{private}@", buf, 0x4Cu);
    }

    v22 = handlesCopy;
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_updateThirdPartyContext:(id)context forHandles:(id)handles
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlesCopy = handles;
  allowedByScreenTime = [contextCopy allowedByScreenTime];
  [contextCopy updateForThirdPartyApplicationState:{-[STConversation currentThirdPartyApplicationState](self, "currentThirdPartyApplicationState")}];
  [(STConversation *)self _populateThirdPartyAllowedContactsByHandlesForContactHandles:handlesCopy context:contextCopy];
  if (allowedByScreenTime != [contextCopy allowedByScreenTime])
  {
    v9 = +[STLog conversation];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(STConversation *)self bundleIdentifier];
      allowedByScreenTime2 = [contextCopy allowedByScreenTime];
      allowedByContactsHandle = [contextCopy allowedByContactsHandle];
      v14 = 138544131;
      v15 = bundleIdentifier;
      v16 = 2113;
      v17 = handlesCopy;
      v18 = 1024;
      v19 = allowedByScreenTime2;
      v20 = 2113;
      v21 = allowedByContactsHandle;
      _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_DEFAULT, "Updated %{public}@ third party context for handles:%{private}@. allowedByScreenTime:%d allowedByContactsHandle:%{private}@", &v14, 0x26u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateAllThirdPartyContexts
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = self->_contextByHandles;
  objc_sync_enter(v3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_contextByHandles;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_contextByHandles objectForKey:v8, v13];
        if (v9)
        {
          [(STConversation *)self _updateThirdPartyContext:v9 forHandles:v8];
        }
      }

      v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  processName = [(STConversation *)self processName];
  v11 = [processName isEqualToString:@"suggestd"];

  if (v11)
  {
    notify_post("com.apple.ScreenTime.ConversationDidObserveChangesNotification");
  }

  objc_sync_exit(v3);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_screenTimePolicyDidChange
{
  managementState = [(STConversation *)self managementState];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__STConversation__screenTimePolicyDidChange__block_invoke;
  v4[3] = &unk_1E7CE7268;
  v4[4] = self;
  [managementState communicationPoliciesWithCompletionHandler:v4];
}

void __44__STConversation__screenTimePolicyDidChange__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (v7)
  {
    v8 = +[STLog conversation];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }
  }

  else
  {
    v9 = [*(a1 + 32) generalScreenTimePolicy];
    v10 = [*(a1 + 32) whileLimitedPolicy];
    v11 = v10;
    if (v9 == a2)
    {
      if (v10 != a3)
      {
        v12 = +[STLog conversation];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 32) whileLimitedPolicy];
          *buf = 134218240;
          v24 = v13;
          v25 = 2048;
          v26 = a3;
          _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_DEFAULT, "While limited policy changed from %lld to %lld.", buf, 0x16u);
        }

        [*(a1 + 32) setWhileLimitedPolicy:a3];
        [*(a1 + 32) _updateAllContextsForNewWhileLimitedPolicyOrWhitelist];
      }
    }

    else
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) generalScreenTimePolicy];
        *buf = 134218240;
        v24 = v15;
        v25 = 2048;
        v26 = a2;
        _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "General policy changed from %lld to %lld.", buf, 0x16u);
      }

      [*(a1 + 32) setGeneralScreenTimePolicy:a2];
      if (v11 == a3)
      {
        v16 = [*(a1 + 32) currentApplicationState] == 0;
        v17 = *(a1 + 32);
        LOBYTE(v22) = 0;
        v18 = 0;
      }

      else
      {
        v19 = +[STLog conversation];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 32) whileLimitedPolicy];
          *buf = 134218240;
          v24 = v20;
          v25 = 2048;
          v26 = a3;
          _os_log_impl(&dword_1B831F000, v19, OS_LOG_TYPE_DEFAULT, "While limited policy changed from %lld to %lld.", buf, 0x16u);
        }

        [*(a1 + 32) setWhileLimitedPolicy:a3];
        v16 = [*(a1 + 32) currentApplicationState] != 2;
        v17 = *(a1 + 32);
        LOBYTE(v22) = 0;
        v18 = 1;
      }

      [v17 _updateAllContextsUpdateGeneral:1 updateLimited:v18 updateCurrentApplicationState:0 updateAllowedByContactsHandle:v16 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v22];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateAllContextsForNewWhileLimitedPolicyOrWhitelist
{
  objc_initWeak(&location, self);
  stateChangeQueue = self->_stateChangeQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__STConversation__updateAllContextsForNewWhileLimitedPolicyOrWhitelist__block_invoke;
  v4[3] = &unk_1E7CE7308;
  objc_copyWeak(&v5, &location);
  dispatch_async(stateChangeQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__STConversation__updateAllContextsForNewWhileLimitedPolicyOrWhitelist__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained currentApplicationState] == 1;

  v5 = objc_loadWeakRetained((a1 + 32));
  LOBYTE(v4) = 0;
  [v5 _updateAllContextsUpdateGeneral:0 updateLimited:1 updateCurrentApplicationState:0 updateAllowedByContactsHandle:v3 refreshContacts:0 refreshWhitelist:1 updateEmergencyMode:v4];
}

- (void)_contactStoreDidChange
{
  objc_initWeak(&location, self);
  stateChangeQueue = self->_stateChangeQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__STConversation__contactStoreDidChange__block_invoke;
  v4[3] = &unk_1E7CE7308;
  objc_copyWeak(&v5, &location);
  dispatch_async(stateChangeQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__STConversation__contactStoreDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LOBYTE(v1) = 0;
  [WeakRetained _updateAllContextsUpdateGeneral:1 updateLimited:1 updateCurrentApplicationState:0 updateAllowedByContactsHandle:1 refreshContacts:1 refreshWhitelist:1 updateEmergencyMode:v1];
}

- (void)_currentApplicationStateDidChange
{
  communicationPolicyMonitor = [(STConversation *)self communicationPolicyMonitor];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__STConversation__currentApplicationStateDidChange__block_invoke;
  v4[3] = &unk_1E7CE7358;
  v4[4] = self;
  [communicationPolicyMonitor requestPoliciesByBundleIdentifierWithCompletionHandler:v4];
}

void __51__STConversation__currentApplicationStateDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = [v8 bundleIdentifier];
    v10 = [v5 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 unsignedIntegerValue];
      if ([*v7 currentApplicationState] != v11)
      {
        v12 = +[STLog conversation];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*v7 bundleIdentifier];
          *buf = 138543618;
          v18 = v13;
          v19 = 2048;
          v20 = v11;
          _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ application state changed to %lu", buf, 0x16u);
        }

        [*v7 setCurrentApplicationState:v11];
        LOBYTE(v16) = 0;
        [*v7 _updateAllContextsUpdateGeneral:0 updateLimited:0 updateCurrentApplicationState:1 updateAllowedByContactsHandle:1 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v16];
      }
    }

    else
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __51__STConversation__currentApplicationStateDidChange__block_invoke_cold_1(v7);
      }
    }
  }

  else
  {
    v10 = +[STLog conversation];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_currentThirdPartyApplicationStateDidChange
{
  v8[1] = *MEMORY[0x1E69E9840];
  thirdPartyApplicationPolicyMonitor = [(STConversation *)self thirdPartyApplicationPolicyMonitor];
  bundleIdentifier = [(STConversation *)self bundleIdentifier];
  v8[0] = bundleIdentifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__STConversation__currentThirdPartyApplicationStateDidChange__block_invoke;
  v7[3] = &unk_1E7CE7358;
  v7[4] = self;
  [thirdPartyApplicationPolicyMonitor requestPoliciesForBundleIdentifiers:v5 completionHandler:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __61__STConversation__currentThirdPartyApplicationStateDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = [v8 bundleIdentifier];
    v10 = [v5 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 integerValue];
      if ([*v7 currentThirdPartyApplicationState] != v11)
      {
        v12 = +[STLog conversation];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*v7 bundleIdentifier];
          v16 = 138543618;
          v17 = v13;
          v18 = 2048;
          v19 = v11;
          _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ application state changed to %ld", &v16, 0x16u);
        }

        [*v7 setCurrentThirdPartyApplicationState:v11];
        [*v7 _updateAllThirdPartyContexts];
      }
    }

    else
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __61__STConversation__currentThirdPartyApplicationStateDidChange__block_invoke_cold_1(v7);
      }
    }
  }

  else
  {
    v10 = +[STLog conversation];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithThirdPartyBundleIdentifier:];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_emergencyModeDidChange
{
  emergencyModeMonitor = [(STConversation *)self emergencyModeMonitor];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__STConversation__emergencyModeDidChange__block_invoke;
  v4[3] = &unk_1E7CE72B8;
  v4[4] = self;
  [emergencyModeMonitor emergencyModeStatusWithCompletionHandler:v4];
}

void __41__STConversation__emergencyModeDidChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
    v9 = v7 > 0.0;
    if (v9 != [*(a1 + 32) emergencyModeEnabled])
    {
      v10 = +[STLog conversation];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = v9;
        _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "Emergency mode changed to %d", buf, 8u);
      }

      [*(a1 + 32) setEmergencyModeEnabled:v8 > 0.0];
      LOBYTE(v13) = 1;
      [*(a1 + 32) _updateAllContextsUpdateGeneral:1 updateLimited:1 updateCurrentApplicationState:0 updateAllowedByContactsHandle:1 refreshContacts:0 refreshWhitelist:0 updateEmergencyMode:v13];
    }
  }

  else
  {
    v11 = +[STLog conversation];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STConversation initSynchronouslyWithBundleIdentifier:];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldGeneralScreenTimeAllowHandles:(id)handles context:(id)context
{
  handlesCopy = handles;
  contextCopy = context;
  generalScreenTimePolicy = [(STConversation *)self generalScreenTimePolicy];
  if (generalScreenTimePolicy)
  {
    v9 = generalScreenTimePolicy;
    contactsByHandle = [contextCopy contactsByHandle];
    if (contactsByHandle)
    {
      v11 = contactsByHandle;
      v12 = 0;
    }

    else
    {
      v18 = 0;
      v11 = [(STConversation *)self _contactsByHandle:handlesCopy error:&v18];
      v12 = v18;
      if (!v11)
      {
        v16 = +[STLog conversation];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [STConversation _shouldGeneralScreenTimeAllowHandles:handlesCopy context:?];
        }

        v11 = 0;
        goto LABEL_18;
      }
    }

    [contextCopy setContactsByHandle:v11];
    if (v9 == 1)
    {
      if (![(STConversation *)self _doesContainAtLeastOneContactInHandles:handlesCopy contactsByHandle:v11])
      {
        v14 = [(STConversation *)self _shouldAllowGroupsWithOneContactCommunicationForHandles:handlesCopy];
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 == 2)
      {
        v14 = [(STConversation *)self _shouldAllowContactsOnlyCommunicationForHandles:handlesCopy contactsByHandle:v11];
LABEL_11:
        v13 = v14;
LABEL_19:

        goto LABEL_20;
      }

      v15 = +[STLog conversation];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [STConversation _shouldGeneralScreenTimeAllowHandles:context:];
      }
    }

LABEL_18:
    v13 = 1;
    goto LABEL_19;
  }

  v13 = 1;
LABEL_20:

  return v13;
}

- (BOOL)_shouldWhileLimitedAllowHandles:(id)handles context:(id)context
{
  handlesCopy = handles;
  contextCopy = context;
  whileLimitedPolicy = [(STConversation *)self whileLimitedPolicy];
  if (!whileLimitedPolicy)
  {
LABEL_10:
    v13 = 1;
    goto LABEL_22;
  }

  v9 = whileLimitedPolicy;
  if (whileLimitedPolicy <= 2)
  {
    contactsByHandle = [contextCopy contactsByHandle];
    if (contactsByHandle)
    {
      v11 = contactsByHandle;
      v12 = 0;
    }

    else
    {
      v18 = 0;
      v11 = [(STConversation *)self _contactsByHandle:handlesCopy error:&v18];
      v12 = v18;
      if (!v11)
      {
        v16 = +[STLog conversation];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [STConversation _shouldGeneralScreenTimeAllowHandles:handlesCopy context:?];
        }

        v11 = 0;
        goto LABEL_20;
      }
    }

    [contextCopy setContactsByHandle:v11];
    if (v9 == 2)
    {
      v15 = [(STConversation *)self _shouldAllowContactsOnlyCommunicationForHandles:handlesCopy contactsByHandle:v11];
LABEL_16:
      v13 = v15;
LABEL_21:

      goto LABEL_22;
    }

    if (![(STConversation *)self _doesContainAtLeastOneContactInHandles:handlesCopy contactsByHandle:v11])
    {
      v15 = [(STConversation *)self _shouldAllowGroupsWithOneContactCommunicationForHandles:handlesCopy];
      goto LABEL_16;
    }

LABEL_20:
    v13 = 1;
    goto LABEL_21;
  }

  if (whileLimitedPolicy != 3)
  {
    v14 = +[STLog conversation];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STConversation _shouldWhileLimitedAllowHandles:context:];
    }

    goto LABEL_10;
  }

  v13 = [(STConversation *)self _shouldAllowWhitelistedContactsCommunicationForHandles:handlesCopy context:contextCopy];
LABEL_22:

  return v13;
}

- (BOOL)_doesContainAtLeastOneContactInHandles:(id)handles contactsByHandle:(id)handle
{
  v36[1] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  handleCopy = handle;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  contactStore = [(STConversation *)self contactStore];
  v36[0] = *MEMORY[0x1E695C258];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v31 = 0;
  v10 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v31];
  v11 = v31;

  if (!v10)
  {
    v12 = +[STLog conversation];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STConversation _doesContainAtLeastOneContactInHandles:contactsByHandle:];
    }
  }

  identifier = [v10 identifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __74__STConversation__doesContainAtLeastOneContactInHandles_contactsByHandle___block_invoke;
  v23 = &unk_1E7CE73A8;
  v14 = identifier;
  v24 = v14;
  v25 = &v27;
  v26 = &v32;
  [handleCopy enumerateKeysAndObjectsUsingBlock:&v20];
  if (v28[3])
  {
    v15 = [handlesCopy count];
    v16 = v33;
    if (v15 == v28[3])
    {
      *(v33 + 24) = 1;
    }
  }

  else
  {
    v16 = v33;
  }

  v17 = *(v16 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v32, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void __74__STConversation__doesContainAtLeastOneContactInHandles_contactsByHandle___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([v8 count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v9 = a1[4];
    if (!v9)
    {
      goto LABEL_4;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__STConversation__doesContainAtLeastOneContactInHandles_contactsByHandle___block_invoke_2;
    v10[3] = &unk_1E7CE7380;
    v11 = v9;
    v12 = &v14;
    v13 = a1[5];
    [v8 enumerateObjectsUsingBlock:v10];

    if ((v15[3] & 1) == 0)
    {
LABEL_4:
      *(*(a1[6] + 8) + 24) = 1;
      *a4 = 1;
    }

    _Block_object_dispose(&v14, 8);
  }
}

void __74__STConversation__doesContainAtLeastOneContactInHandles_contactsByHandle___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:a1[4]];

  if (v7)
  {
    *(*(a1[5] + 8) + 24) = 1;
    ++*(*(a1[6] + 8) + 24);
    *a4 = 1;
  }
}

- (BOOL)_shouldAllowContactsOnlyCommunicationForHandles:(id)handles contactsByHandle:(id)handle
{
  v25 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  handleCopy = handle;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = handlesCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        managingParentAppleIDs = [(STConversation *)self managingParentAppleIDs];
        if ([managingParentAppleIDs containsObject:v13])
        {
        }

        else
        {
          v15 = [handleCopy objectForKeyedSubscript:v13];
          v16 = [v15 count];

          if (!v16)
          {
            v17 = 0;
            goto LABEL_13;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_shouldAllowGroupsWithOneContactCommunicationForHandles:(id)handles
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  handlesCopy = handles;
  v5 = [handlesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(handlesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        managingParentAppleIDs = [(STConversation *)self managingParentAppleIDs];
        LOBYTE(v9) = [managingParentAppleIDs containsObject:v9];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [handlesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_populateAllowedContactsByHandlesForContactHandles:(id)handles context:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  contextCopy = context;
  whileLimitedPolicy = [(STConversation *)self whileLimitedPolicy];
  allowedByScreenTime = [contextCopy allowedByScreenTime];
  contactsByHandle = [contextCopy contactsByHandle];
  whitelistedHandles = [contextCopy whitelistedHandles];
  currentApplicationState = [(STConversation *)self currentApplicationState];
  v12 = currentApplicationState;
  v14 = currentApplicationState == 1 && whileLimitedPolicy == 3;
  v38 = v14;
  v34 = contextCopy;
  v15 = !currentApplicationState && [(STConversation *)self generalScreenTimePolicy]== 1 || v12 == 1 && whileLimitedPolicy == 1;
  v37 = v15;
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = handlesCopy;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    v22 = MEMORY[0x1E695E118];
    v35 = v12;
    do
    {
      v23 = 0;
      do
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v39 + 1) + 8 * v23);
        if (allowedByScreenTime)
        {
          v25 = v17;
          v26 = v22;
LABEL_25:
          [v25 setObject:v26 forKeyedSubscript:{*(*(&v39 + 1) + 8 * v23), v34}];
          goto LABEL_26;
        }

        if (v12 == 2)
        {
          goto LABEL_24;
        }

        if (v38)
        {
          v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(whitelistedHandles, "containsObject:", *(*(&v39 + 1) + 8 * v23))}];
          [v17 setObject:v27 forKeyedSubscript:v24];

          v22 = MEMORY[0x1E695E118];
        }

        else
        {
          if (v37)
          {
LABEL_24:
            v25 = v17;
            v26 = MEMORY[0x1E695E110];
            goto LABEL_25;
          }

          v28 = MEMORY[0x1E696AD98];
          [contactsByHandle objectForKeyedSubscript:v24];
          v30 = v29 = whitelistedHandles;
          v31 = [v28 numberWithInt:{objc_msgSend(v30, "count") != 0}];
          [v17 setObject:v31 forKeyedSubscript:v24];

          v22 = MEMORY[0x1E695E118];
          whitelistedHandles = v29;
          v12 = v35;
        }

LABEL_26:
        ++v23;
      }

      while (v20 != v23);
      v32 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v20 = v32;
    }

    while (v32);
  }

  [v34 setAllowedByContactsHandle:v17];
  v33 = *MEMORY[0x1E69E9840];
}

- (void)_populateThirdPartyAllowedContactsByHandlesForContactHandles:(id)handles context:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  contextCopy = context;
  allowedByScreenTime = [contextCopy allowedByScreenTime];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = handlesCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    if (allowedByScreenTime)
    {
      v13 = MEMORY[0x1E695E118];
    }

    else
    {
      v13 = MEMORY[0x1E695E110];
    }

    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 setObject:v13 forKeyedSubscript:{*(*(&v16 + 1) + 8 * v14++), v16}];
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [contextCopy setAllowedByContactsHandle:v8];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_contactsByHandle:(id)handle error:(id *)error
{
  v29[3] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  managementState = [(STConversation *)self managementState];
  v8 = [managementState primaryiCloudCardDAVAccountIdentifierWithError:error];

  if (v8)
  {
    v9 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithExternalIdentifier:v8];
    contactStore = [(STConversation *)self contactStore];
    v11 = [contactStore containersMatchingPredicate:v9 error:error];
    firstObject = [v11 firstObject];
    if (firstObject)
    {
      v13 = objc_alloc(MEMORY[0x1E695CD78]);
      v14 = *MEMORY[0x1E695C208];
      v29[0] = *MEMORY[0x1E695C258];
      v29[1] = v14;
      v29[2] = *MEMORY[0x1E695C330];
      v26 = v11;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
      v16 = [v13 initWithKeysToFetch:v15];

      v17 = [(STConversation *)self _filteredArrayForKnownHandlesInArray:handleCopy];
      v18 = MEMORY[0x1E695CD58];
      [firstObject identifier];
      v28 = v27 = handleCopy;
      v19 = v28;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v21 = [v18 predicateForContactsMatchingHandleStrings:v17 inContainersWithIdentifiers:v20];
      [v16 setPredicate:v21];

      v11 = v26;
      v22 = [contactStore executeFetchRequest:v16 error:error];
      value = [v22 value];

      handleCopy = v27;
    }

    else
    {
      v16 = +[STLog conversation];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [STConversation _contactsByHandle:v8 error:error];
      }

      value = 0;
    }
  }

  else
  {
    v9 = +[STLog conversation];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STConversation _contactsByHandle:v9 error:?];
    }

    value = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return value;
}

- (id)_filteredArrayForKnownHandlesInArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy indexesOfObjectsPassingTest:&__block_literal_global_8];
  v5 = [arrayCopy objectsAtIndexes:v4];

  return v5;
}

- (BOOL)_shouldAllowWhitelistedContactsCommunicationForHandles:(id)handles context:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  contextCopy = context;
  v8 = [(STConversation *)self _filteredArrayForKnownHandlesInArray:handlesCopy];
  whitelistedHandles = [contextCopy whitelistedHandles];
  if (whitelistedHandles)
  {
    v10 = whitelistedHandles;
    v11 = 0;
  }

  else
  {
    whitelist = [(STConversation *)self whitelist];
    v33 = 0;
    v10 = [whitelist whitelistedHandleStringsFromHandleStrings:v8 error:&v33];
    v11 = v33;

    if (!v10)
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STConversation _shouldAllowWhitelistedContactsCommunicationForHandles:handlesCopy context:?];
      }

      v10 = 0;
      v13 = 1;
LABEL_25:

      goto LABEL_26;
    }
  }

  [contextCopy setWhitelistedHandles:v10];
  if (([handlesCopy containsObject:&stru_1F3040980] & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    v15 = [MEMORY[0x1E695DFA8] setWithArray:handlesCopy];
    [v15 minusSet:v14];
    if ([v15 count])
    {
      v28 = v11;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v25 = v14;
        v26 = v8;
        v27 = contextCopy;
        v19 = *v30;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            v22 = [(STConversation *)self managingParentAppleIDs:v25];
            LODWORD(v21) = [v22 containsObject:v21];

            if (!v21)
            {
              v13 = 0;
              goto LABEL_17;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v13 = 1;
LABEL_17:
        v8 = v26;
        contextCopy = v27;
        v14 = v25;
      }

      else
      {
        v13 = 1;
      }

      v11 = v28;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_25;
  }

  v13 = 0;
LABEL_26:

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)initSynchronouslyWithBundleIdentifier:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not fetch communication policies: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initSynchronouslyWithBundleIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "%{public}@ application state does not exist, preferring to keep state as %lu");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initSynchronouslyWithBundleIdentifier:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not fetch application state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initSynchronouslyWithBundleIdentifier:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not fetch emergency mode status: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initSynchronouslyWithBundleIdentifier:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch managing guardian Apple IDs. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initSynchronouslyWithThirdPartyBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 128);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "%{public}@ application state does not exist, preferring to keep state as %ld");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initSynchronouslyWithThirdPartyBundleIdentifier:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Could not fetch third party application state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__STConversation_initWithBundleIdentifier_contactStore_completionHandler___block_invoke_71_cold_1(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  [*(a2 + 32) currentApplicationState];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v3, v4, "%{public}@ application state does not exist, preferring to keep state as %lu", v5, v6, v7, v8, 2u);
  v9 = *MEMORY[0x1E69E9840];
}

void __71__STConversation_initWithThirdPartyBundleIdentifier_completionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  [*(a2 + 32) currentThirdPartyApplicationState];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v3, v4, "%{public}@ application state does not exist, preferring to keep state as %ld", v5, v6, v7, v8, 2u);
  v9 = *MEMORY[0x1E69E9840];
}

void __51__STConversation__currentApplicationStateDidChange__block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*a1 bundleIdentifier];
  [*a1 currentApplicationState];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v3, v4, "%{public}@ application state does not exist, preferring to keep state as %lu", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void __61__STConversation__currentThirdPartyApplicationStateDidChange__block_invoke_cold_1(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*a1 bundleIdentifier];
  [*a1 currentThirdPartyApplicationState];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v3, v4, "%{public}@ application state does not exist, preferring to keep state as %ld", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_shouldGeneralScreenTimeAllowHandles:context:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Unknown communication policy: %lld, preferring to allow all handles", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_shouldGeneralScreenTimeAllowHandles:(void *)a1 context:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v2, v3, "Error fetching contacts (%{private}@), preferring to allow all handles: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_shouldWhileLimitedAllowHandles:context:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Unknown communication while limited policy: %lld, preferring to allow all handles", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_doesContainAtLeastOneContactInHandles:contactsByHandle:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Error fetching Me Contact, preferring to allow Me Contact in groups: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_contactsByHandle:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "Failed to fetch contacts container with identifier %{public}@: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_shouldAllowWhitelistedContactsCommunicationForHandles:(void *)a1 context:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v2, v3, "Error fetching whitelisted contacts (%{private}@), preferring to allow all handles: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end