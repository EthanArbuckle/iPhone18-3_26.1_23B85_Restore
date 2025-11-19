@interface STConversation
+ (void)requestConversationWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (BOOL)_doesContainAtLeastOneContactInHandles:(id)a3 contactsByHandle:(id)a4;
- (BOOL)_shouldAllowContactsOnlyCommunicationForHandles:(id)a3 contactsByHandle:(id)a4;
- (BOOL)_shouldAllowGroupsWithOneContactCommunicationForHandles:(id)a3;
- (BOOL)_shouldAllowWhitelistedContactsCommunicationForHandles:(id)a3 context:(id)a4;
- (BOOL)_shouldGeneralScreenTimeAllowHandles:(id)a3 context:(id)a4;
- (BOOL)_shouldWhileLimitedAllowHandles:(id)a3 context:(id)a4;
- (STConversation)initWithBundleIdentifier:(id)a3;
- (STConversation)initWithBundleIdentifier:(id)a3 contactStore:(id)a4;
- (STConversation)initWithBundleIdentifier:(id)a3 contactStore:(id)a4 completionHandler:(id)a5;
- (STConversation)initWithThirdPartyBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (id)_contactsByHandle:(id)a3 error:(id *)a4;
- (id)_filteredArrayForKnownHandlesInArray:(id)a3;
- (id)allowableByContactsHandles:(id)a3;
- (id)initSynchronouslyWithBundleIdentifier:(id)a3;
- (id)initSynchronouslyWithThirdPartyBundleIdentifier:(id)a3;
- (void)_contactStoreDidChange;
- (void)_currentApplicationStateDidChange;
- (void)_currentThirdPartyApplicationStateDidChange;
- (void)_emergencyModeDidChange;
- (void)_populateAllowedContactsByHandlesForContactHandles:(id)a3 context:(id)a4;
- (void)_populateThirdPartyAllowedContactsByHandlesForContactHandles:(id)a3 context:(id)a4;
- (void)_screenTimePolicyDidChange;
- (void)_stConversationCommonInitSetupObservationOfStateChanges;
- (void)_stConversationCommonInitWithBundleIdentifier:(id)a3 contactStore:(id)a4 completionHandler:(id)a5;
- (void)_stConversationCommonInitWithThirdPartyBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_updateAllContextsForNewWhileLimitedPolicyOrWhitelist;
- (void)_updateAllThirdPartyContexts;
- (void)_updateContext:(id)a3 forHandles:(id)a4 updateGeneral:(BOOL)a5 updateLimited:(BOOL)a6 updateCurrentApplicationState:(BOOL)a7 updateAllowedByContactsHandle:(BOOL)a8 refreshContacts:(BOOL)a9 refreshWhitelist:(BOOL)a10 updateEmergencyMode:(BOOL)a11;
- (void)_updateThirdPartyContext:(id)a3 forHandles:(id)a4;
- (void)callCompletionHandlerIfNeededWithConversation:(id)a3 error:(id)a4;
- (void)callCompletionHandlerIfNeededWithThirdPartyConversation:(id)a3 error:(id)a4;
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
  v9 = [*MEMORY[0x1E6999F40] UTF8String];
  v10 = self->_stateChangeQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__STConversation__stConversationCommonInitSetupObservationOfStateChanges__block_invoke_2;
  v12[3] = &unk_1E7CE7330;
  objc_copyWeak(&v13, &location);
  notify_register_dispatch(v9, &self->_emergencyModeNotifyToken, v10, v12);
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__updateAllContextsForNewWhileLimitedPolicyOrWhitelist name:*MEMORY[0x1E695C440] object:0];
  [v11 addObserver:self selector:sel__contactStoreDidChange name:*MEMORY[0x1E695C3D8] object:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (STConversation)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6999F50] communicationBundleIdentifiers];
  if ([v5 containsObject:v4])
  {
    v6 = objc_opt_new();
    v7 = [(STConversation *)self initWithBundleIdentifier:v4 contactStore:v6];
  }

  else
  {
    v7 = [(STConversation *)self initWithThirdPartyBundleIdentifier:v4 completionHandler:0];
  }

  return v7;
}

- (STConversation)initWithBundleIdentifier:(id)a3 contactStore:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E6999F50];
  v8 = a3;
  v9 = [v7 communicationBundleIdentifiers];
  if ([v9 containsObject:v8])
  {
    v10 = [(STConversation *)self initWithBundleIdentifier:v8 contactStore:v6 completionHandler:0];
  }

  else
  {
    v10 = [(STConversation *)self initWithThirdPartyBundleIdentifier:v8 completionHandler:0];
  }

  v11 = v10;

  v12 = v11;
  return v12;
}

- (id)initSynchronouslyWithBundleIdentifier:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6999F50] communicationBundleIdentifiers];
  if ([v5 containsObject:v4])
  {
    v47.receiver = self;
    v47.super_class = STConversation;
    v6 = [(STConversation *)&v47 init];
    v7 = +[STLog conversation];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = v4;
      _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Initializing STConversation synchronously for bundle identifier: %{public}@", buf, 0xCu);
    }

    v8 = objc_opt_new();
    [(STConversation *)v6 _stConversationCommonInitWithBundleIdentifier:v4 contactStore:v8 completionHandler:0];

    managementState = v6->_managementState;
    v46 = 0;
    v10 = [(STManagementState *)managementState communicationPoliciesWithError:&v46];
    v11 = v46;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:0x1F3048DC0];
      v13 = [v12 longLongValue];

      v14 = [v10 objectForKeyedSubscript:0x1F3048DE0];
      v15 = [v14 longLongValue];

      v16 = +[STLog conversation];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v49 = v13;
        v50 = 2048;
        v51 = v15;
        _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Fetched initial communication policies. General policy: %lld. While limited policy: %lld.", buf, 0x16u);
      }

      v6->_generalScreenTimePolicy = v13;
      v6->_whileLimitedPolicy = v15;
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
      v22 = [v20 objectForKeyedSubscript:v4];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 unsignedIntegerValue];
        v25 = +[STLog conversation];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v49 = v4;
          v50 = 2048;
          v51 = v24;
          _os_log_impl(&dword_1B831F000, v25, OS_LOG_TYPE_DEFAULT, "Fetched initial %{public}@ application state: %lu", buf, 0x16u);
        }

        v6->_currentApplicationState = v24;
      }

      else
      {
        v26 = +[STLog conversation];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(STConversation *)v4 initSynchronouslyWithBundleIdentifier:v6];
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
    v17 = [(STConversation *)self initSynchronouslyWithThirdPartyBundleIdentifier:v4];
  }

  v41 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)initSynchronouslyWithThirdPartyBundleIdentifier:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = STConversation;
  v5 = [(STConversation *)&v20 init];
  v6 = +[STLog conversation];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v4;
    _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Initializing STConversation synchronously for third party bundle identifier: %{public}@", buf, 0xCu);
  }

  [(STConversation *)v5 _stConversationCommonInitWithThirdPartyBundleIdentifier:v4 completionHandler:0];
  thirdPartyApplicationPolicyMonitor = v5->_thirdPartyApplicationPolicyMonitor;
  v25[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v19 = 0;
  v9 = [(DMFApplicationPolicyMonitor *)thirdPartyApplicationPolicyMonitor requestPoliciesForBundleIdentifiers:v8 withError:&v19];
  v10 = v19;

  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:v4];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 integerValue];
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v22 = v4;
        v23 = 2048;
        v24 = v13;
        _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "Fetched initial %{public}@ application state: %ld", buf, 0x16u);
      }

      v5->_currentThirdPartyApplicationState = v13;
    }

    else
    {
      v15 = +[STLog conversation];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(STConversation *)v4 initSynchronouslyWithThirdPartyBundleIdentifier:v5];
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

- (STConversation)initWithBundleIdentifier:(id)a3 contactStore:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35.receiver = self;
  v35.super_class = STConversation;
  v9 = a5;
  v10 = a4;
  v11 = [(STConversation *)&v35 init];
  v12 = +[STLog conversation];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v8;
    _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_DEFAULT, "Initializing STConversation asynchronously for bundle identifier: %{public}@", buf, 0xCu);
  }

  [(STConversation *)v11 _stConversationCommonInitWithBundleIdentifier:v8 contactStore:v10 completionHandler:v9];
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
  v32 = v8;
  v17 = v8;
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

- (STConversation)initWithThirdPartyBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = STConversation;
  v7 = a4;
  v8 = [(STConversation *)&v21 init];
  v9 = +[STLog conversation];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_DEFAULT, "Initializing STConversation asynchronously for third party bundle identifier: %{public}@", buf, 0xCu);
  }

  [(STConversation *)v8 _stConversationCommonInitWithThirdPartyBundleIdentifier:v6 completionHandler:v7];
  thirdPartyApplicationPolicyMonitor = v8->_thirdPartyApplicationPolicyMonitor;
  v22 = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__STConversation_initWithThirdPartyBundleIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7CE7290;
  v12 = v8;
  v19 = v12;
  v20 = v6;
  v13 = v6;
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

- (void)_stConversationCommonInitWithBundleIdentifier:(id)a3 contactStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&self->_contactStore, a4);
  v11 = [objc_alloc(MEMORY[0x1E695CE70]) initWithContactStore:self->_contactStore];
  whitelist = self->_whitelist;
  self->_whitelist = v11;

  v13 = objc_opt_new();
  managingParentAppleIDs = self->_managingParentAppleIDs;
  self->_managingParentAppleIDs = v13;

  v15 = [v8 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v15;

  v17 = [MEMORY[0x1E696AE30] processInfo];
  v18 = [v17 processName];
  processName = self->_processName;
  self->_processName = v18;

  v20 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  contextByHandles = self->_contextByHandles;
  self->_contextByHandles = v20;

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

  v31 = _Block_copy(v10);
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

- (void)_stConversationCommonInitWithThirdPartyBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v8;

  v10 = [MEMORY[0x1E696AE30] processInfo];
  v11 = [v10 processName];
  processName = self->_processName;
  self->_processName = v11;

  self->_isThirdPartyBundleIdentifier = 1;
  v13 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  contextByHandles = self->_contextByHandles;
  self->_contextByHandles = v13;

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

  v20 = _Block_copy(v7);
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

+ (void)requestConversationWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = MEMORY[0x1E6999F50];
  v7 = a4;
  v8 = [v6 communicationBundleIdentifiers];
  LOBYTE(v6) = [v8 containsObject:v13];
  v9 = [a1 alloc];
  v10 = v9;
  if (v6)
  {
    v11 = objc_opt_new();
    v12 = [v10 initWithBundleIdentifier:v13 contactStore:v11 completionHandler:v7];

    v7 = v11;
  }

  else
  {
    v12 = [v9 initWithThirdPartyBundleIdentifier:v13 completionHandler:v7];
  }

  [v12 setMe:v12];
}

- (void)callCompletionHandlerIfNeededWithConversation:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(STConversation *)self conversationCompletionHandler];

  if (v7 && (!v9 || [(STConversation *)self didFetchInitialScreenTimePolicyState]&& [(STConversation *)self didFetchInitialApplicationState]&& [(STConversation *)self didFetchInitialEmergencyModeState]&& [(STConversation *)self didFetchManagingGuardianState]))
  {
    v8 = [(STConversation *)self conversationCompletionHandler];
    (v8)[2](v8, v9, v6);

    [(STConversation *)self setConversationCompletionHandler:0];
    [(STConversation *)self setMe:0];
  }
}

- (void)callCompletionHandlerIfNeededWithThirdPartyConversation:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(STConversation *)self conversationCompletionHandler];

  if (v7 && (!v9 || [(STConversation *)self didFetchInitialThirdPartyApplicationState]))
  {
    v8 = [(STConversation *)self conversationCompletionHandler];
    (v8)[2](v8, v9, v6);

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

- (id)allowableByContactsHandles:(id)a3
{
  v4 = a3;
  v5 = self->_contextByHandles;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_contextByHandles objectForKey:v4];
  if (!v6)
  {
    v6 = objc_opt_new();
    if ([(STConversation *)self isThirdPartyBundleIdentifier])
    {
      [(STConversation *)self _updateThirdPartyContext:v6 forHandles:v4];
    }

    else
    {
      BYTE2(v8) = 0;
      LOWORD(v8) = 0;
      [STConversation _updateContext:"_updateContext:forHandles:updateGeneral:updateLimited:updateCurrentApplicationState:updateAllowedByContactsHandle:refreshContacts:refreshWhitelist:updateEmergencyMode:" forHandles:v6 updateGeneral:v4 updateLimited:1 updateCurrentApplicationState:1 updateAllowedByContactsHandle:0 refreshContacts:1 refreshWhitelist:v8 updateEmergencyMode:?];
    }

    [(NSMapTable *)self->_contextByHandles setObject:v6 forKey:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (void)_updateContext:(id)a3 forHandles:(id)a4 updateGeneral:(BOOL)a5 updateLimited:(BOOL)a6 updateCurrentApplicationState:(BOOL)a7 updateAllowedByContactsHandle:(BOOL)a8 refreshContacts:(BOOL)a9 refreshWhitelist:(BOOL)a10 updateEmergencyMode:(BOOL)a11
{
  v11 = a8;
  v13 = a6;
  v14 = a5;
  v64 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v45 = a4;
  v18 = [v17 allowedByScreenTime];
  v42 = [v17 applicationCurrentlyLimited];
  v41 = [v17 shouldBeAllowedByScreenTimeWhenLimited];
  v40 = [v17 emergencyModeEnabled];
  v19 = [v17 allowedByContactsHandle];
  v44 = [v19 copy];

  if (a9)
  {
    [v17 setContactsByHandle:0];
  }

  if (a10)
  {
    [v17 setWhitelistedHandles:0];
  }

  v20 = [v17 shouldBeAllowedDuringGeneralScreenTime];
  v21 = [v17 shouldBeAllowedByScreenTimeWhenLimited];
  v22 = v45;
  if ([(STConversation *)self emergencyModeEnabled])
  {
    v21 = 1;
    v20 = 1;
    goto LABEL_19;
  }

  v23 = !v13;
  if (v14 && (v23 & 1) == 0)
  {
    v20 = [(STConversation *)self _shouldGeneralScreenTimeAllowHandles:v45 context:v17];
LABEL_10:
    v24 = [(STConversation *)self generalScreenTimePolicy];
    if (v24 == [(STConversation *)self whileLimitedPolicy])
    {
      v21 = v20;
    }

    else
    {
      v21 = [(STConversation *)self _shouldWhileLimitedAllowHandles:v45 context:v17];
    }

    goto LABEL_19;
  }

  if (!v14 || v13)
  {
    if ((v23 | v14))
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v25 = [(STConversation *)self generalScreenTimePolicy];
  if (v25 == [(STConversation *)self whileLimitedPolicy])
  {
    v20 = v21;
  }

  else
  {
    v20 = [(STConversation *)self _shouldGeneralScreenTimeAllowHandles:v45 context:v17];
  }

LABEL_19:
  if (a7 || a11 || v13 || v14)
  {
    [v17 updateShouldBeAllowedDuringGeneralScreenTime:v20 shouldBeAllowedByScreenTimeWhenLimited:v21 currentApplicationState:-[STConversation currentApplicationState](self emergencyModeEnabled:{"currentApplicationState"), -[STConversation emergencyModeEnabled](self, "emergencyModeEnabled")}];
  }

  if (v11)
  {
    [(STConversation *)self _populateAllowedContactsByHandlesForContactHandles:v45 context:v17];
  }

  v26 = [v17 allowedByScreenTime];
  v27 = [v17 applicationCurrentlyLimited];
  v28 = [v17 shouldBeAllowedByScreenTimeWhenLimited];
  v29 = [v17 emergencyModeEnabled];
  v30 = [v17 allowedByContactsHandle];
  if (v18 != v26 || ((v42 ^ v27) & 1) != 0 || ((v41 ^ v28) & 1) != 0 || ((v40 ^ v29) & 1) != 0 || ([v44 isEqualToDictionary:v30] & 1) == 0)
  {
    v31 = +[STLog conversation];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(STConversation *)self bundleIdentifier];
      v43 = [(STConversation *)self generalScreenTimePolicy];
      v33 = [(STConversation *)self whileLimitedPolicy];
      v34 = [v17 allowedByScreenTime];
      v35 = [v17 applicationCurrentlyLimited];
      v36 = [v17 shouldBeAllowedByScreenTimeWhenLimited];
      v37 = [v17 emergencyModeEnabled];
      v38 = [v17 allowedByContactsHandle];
      *buf = 138545411;
      v47 = v32;
      v48 = 2113;
      v49 = v45;
      v50 = 2048;
      v51 = v43;
      v52 = 2048;
      v53 = v33;
      v54 = 1024;
      v55 = v34;
      v56 = 1024;
      v57 = v35;
      v58 = 1024;
      v59 = v36;
      v60 = 1024;
      v61 = v37;
      v62 = 2113;
      v63 = v38;
      _os_log_impl(&dword_1B831F000, v31, OS_LOG_TYPE_DEFAULT, "Updated %{public}@ context for handles:%{private}@. General policy: %lld. While limited policy: %lld. allowedByScreenTime:%d applicationCurrentlyLimited:%d shouldBeAllowedByScreenTimeWhenLimited:%d emergencyModeEnabled:%d allowedByContactsHandle:%{private}@", buf, 0x4Cu);
    }

    v22 = v45;
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_updateThirdPartyContext:(id)a3 forHandles:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 allowedByScreenTime];
  [v6 updateForThirdPartyApplicationState:{-[STConversation currentThirdPartyApplicationState](self, "currentThirdPartyApplicationState")}];
  [(STConversation *)self _populateThirdPartyAllowedContactsByHandlesForContactHandles:v7 context:v6];
  if (v8 != [v6 allowedByScreenTime])
  {
    v9 = +[STLog conversation];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(STConversation *)self bundleIdentifier];
      v11 = [v6 allowedByScreenTime];
      v12 = [v6 allowedByContactsHandle];
      v14 = 138544131;
      v15 = v10;
      v16 = 2113;
      v17 = v7;
      v18 = 1024;
      v19 = v11;
      v20 = 2113;
      v21 = v12;
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

  v10 = [(STConversation *)self processName];
  v11 = [v10 isEqualToString:@"suggestd"];

  if (v11)
  {
    notify_post("com.apple.ScreenTime.ConversationDidObserveChangesNotification");
  }

  objc_sync_exit(v3);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_screenTimePolicyDidChange
{
  v3 = [(STConversation *)self managementState];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__STConversation__screenTimePolicyDidChange__block_invoke;
  v4[3] = &unk_1E7CE7268;
  v4[4] = self;
  [v3 communicationPoliciesWithCompletionHandler:v4];
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
  v3 = [(STConversation *)self communicationPolicyMonitor];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__STConversation__currentApplicationStateDidChange__block_invoke;
  v4[3] = &unk_1E7CE7358;
  v4[4] = self;
  [v3 requestPoliciesByBundleIdentifierWithCompletionHandler:v4];
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
  v3 = [(STConversation *)self thirdPartyApplicationPolicyMonitor];
  v4 = [(STConversation *)self bundleIdentifier];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__STConversation__currentThirdPartyApplicationStateDidChange__block_invoke;
  v7[3] = &unk_1E7CE7358;
  v7[4] = self;
  [v3 requestPoliciesForBundleIdentifiers:v5 completionHandler:v7];

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
  v3 = [(STConversation *)self emergencyModeMonitor];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__STConversation__emergencyModeDidChange__block_invoke;
  v4[3] = &unk_1E7CE72B8;
  v4[4] = self;
  [v3 emergencyModeStatusWithCompletionHandler:v4];
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

- (BOOL)_shouldGeneralScreenTimeAllowHandles:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STConversation *)self generalScreenTimePolicy];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 contactsByHandle];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v18 = 0;
      v11 = [(STConversation *)self _contactsByHandle:v6 error:&v18];
      v12 = v18;
      if (!v11)
      {
        v16 = +[STLog conversation];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [STConversation _shouldGeneralScreenTimeAllowHandles:v6 context:?];
        }

        v11 = 0;
        goto LABEL_18;
      }
    }

    [v7 setContactsByHandle:v11];
    if (v9 == 1)
    {
      if (![(STConversation *)self _doesContainAtLeastOneContactInHandles:v6 contactsByHandle:v11])
      {
        v14 = [(STConversation *)self _shouldAllowGroupsWithOneContactCommunicationForHandles:v6];
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 == 2)
      {
        v14 = [(STConversation *)self _shouldAllowContactsOnlyCommunicationForHandles:v6 contactsByHandle:v11];
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

- (BOOL)_shouldWhileLimitedAllowHandles:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STConversation *)self whileLimitedPolicy];
  if (!v8)
  {
LABEL_10:
    v13 = 1;
    goto LABEL_22;
  }

  v9 = v8;
  if (v8 <= 2)
  {
    v10 = [v7 contactsByHandle];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v18 = 0;
      v11 = [(STConversation *)self _contactsByHandle:v6 error:&v18];
      v12 = v18;
      if (!v11)
      {
        v16 = +[STLog conversation];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [STConversation _shouldGeneralScreenTimeAllowHandles:v6 context:?];
        }

        v11 = 0;
        goto LABEL_20;
      }
    }

    [v7 setContactsByHandle:v11];
    if (v9 == 2)
    {
      v15 = [(STConversation *)self _shouldAllowContactsOnlyCommunicationForHandles:v6 contactsByHandle:v11];
LABEL_16:
      v13 = v15;
LABEL_21:

      goto LABEL_22;
    }

    if (![(STConversation *)self _doesContainAtLeastOneContactInHandles:v6 contactsByHandle:v11])
    {
      v15 = [(STConversation *)self _shouldAllowGroupsWithOneContactCommunicationForHandles:v6];
      goto LABEL_16;
    }

LABEL_20:
    v13 = 1;
    goto LABEL_21;
  }

  if (v8 != 3)
  {
    v14 = +[STLog conversation];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STConversation _shouldWhileLimitedAllowHandles:context:];
    }

    goto LABEL_10;
  }

  v13 = [(STConversation *)self _shouldAllowWhitelistedContactsCommunicationForHandles:v6 context:v7];
LABEL_22:

  return v13;
}

- (BOOL)_doesContainAtLeastOneContactInHandles:(id)a3 contactsByHandle:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v8 = [(STConversation *)self contactStore];
  v36[0] = *MEMORY[0x1E695C258];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v31 = 0;
  v10 = [v8 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v31];
  v11 = v31;

  if (!v10)
  {
    v12 = +[STLog conversation];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [STConversation _doesContainAtLeastOneContactInHandles:contactsByHandle:];
    }
  }

  v13 = [v10 identifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __74__STConversation__doesContainAtLeastOneContactInHandles_contactsByHandle___block_invoke;
  v23 = &unk_1E7CE73A8;
  v14 = v13;
  v24 = v14;
  v25 = &v27;
  v26 = &v32;
  [v7 enumerateKeysAndObjectsUsingBlock:&v20];
  if (v28[3])
  {
    v15 = [v6 count];
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

- (BOOL)_shouldAllowContactsOnlyCommunicationForHandles:(id)a3 contactsByHandle:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
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
        v14 = [(STConversation *)self managingParentAppleIDs];
        if ([v14 containsObject:v13])
        {
        }

        else
        {
          v15 = [v7 objectForKeyedSubscript:v13];
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

- (BOOL)_shouldAllowGroupsWithOneContactCommunicationForHandles:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(STConversation *)self managingParentAppleIDs];
        LOBYTE(v9) = [v10 containsObject:v9];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_populateAllowedContactsByHandlesForContactHandles:(id)a3 context:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(STConversation *)self whileLimitedPolicy];
  v9 = [v7 allowedByScreenTime];
  v36 = [v7 contactsByHandle];
  v10 = [v7 whitelistedHandles];
  v11 = [(STConversation *)self currentApplicationState];
  v12 = v11;
  v14 = v11 == 1 && v8 == 3;
  v38 = v14;
  v34 = v7;
  v15 = !v11 && [(STConversation *)self generalScreenTimePolicy]== 1 || v12 == 1 && v8 == 1;
  v37 = v15;
  v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = v6;
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
        if (v9)
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
          v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "containsObject:", *(*(&v39 + 1) + 8 * v23))}];
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
          [v36 objectForKeyedSubscript:v24];
          v30 = v29 = v10;
          v31 = [v28 numberWithInt:{objc_msgSend(v30, "count") != 0}];
          [v17 setObject:v31 forKeyedSubscript:v24];

          v22 = MEMORY[0x1E695E118];
          v10 = v29;
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

- (void)_populateThirdPartyAllowedContactsByHandlesForContactHandles:(id)a3 context:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 allowedByScreenTime];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    if (v7)
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

  [v6 setAllowedByContactsHandle:v8];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_contactsByHandle:(id)a3 error:(id *)a4
{
  v29[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(STConversation *)self managementState];
  v8 = [v7 primaryiCloudCardDAVAccountIdentifierWithError:a4];

  if (v8)
  {
    v9 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithExternalIdentifier:v8];
    v10 = [(STConversation *)self contactStore];
    v11 = [v10 containersMatchingPredicate:v9 error:a4];
    v12 = [v11 firstObject];
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E695CD78]);
      v14 = *MEMORY[0x1E695C208];
      v29[0] = *MEMORY[0x1E695C258];
      v29[1] = v14;
      v29[2] = *MEMORY[0x1E695C330];
      v26 = v11;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
      v16 = [v13 initWithKeysToFetch:v15];

      v17 = [(STConversation *)self _filteredArrayForKnownHandlesInArray:v6];
      v18 = MEMORY[0x1E695CD58];
      [v12 identifier];
      v28 = v27 = v6;
      v19 = v28;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v21 = [v18 predicateForContactsMatchingHandleStrings:v17 inContainersWithIdentifiers:v20];
      [v16 setPredicate:v21];

      v11 = v26;
      v22 = [v10 executeFetchRequest:v16 error:a4];
      v23 = [v22 value];

      v6 = v27;
    }

    else
    {
      v16 = +[STLog conversation];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [STConversation _contactsByHandle:v8 error:a4];
      }

      v23 = 0;
    }
  }

  else
  {
    v9 = +[STLog conversation];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STConversation _contactsByHandle:v9 error:?];
    }

    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_filteredArrayForKnownHandlesInArray:(id)a3
{
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_8];
  v5 = [v3 objectsAtIndexes:v4];

  return v5;
}

- (BOOL)_shouldAllowWhitelistedContactsCommunicationForHandles:(id)a3 context:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(STConversation *)self _filteredArrayForKnownHandlesInArray:v6];
  v9 = [v7 whitelistedHandles];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = [(STConversation *)self whitelist];
    v33 = 0;
    v10 = [v12 whitelistedHandleStringsFromHandleStrings:v8 error:&v33];
    v11 = v33;

    if (!v10)
    {
      v14 = +[STLog conversation];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STConversation _shouldAllowWhitelistedContactsCommunicationForHandles:v6 context:?];
      }

      v10 = 0;
      v13 = 1;
LABEL_25:

      goto LABEL_26;
    }
  }

  [v7 setWhitelistedHandles:v10];
  if (([v6 containsObject:&stru_1F3040980] & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DFA8] setWithArray:v10];
    v15 = [MEMORY[0x1E695DFA8] setWithArray:v6];
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
        v27 = v7;
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
        v7 = v27;
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