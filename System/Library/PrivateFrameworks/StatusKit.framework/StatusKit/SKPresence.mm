@interface SKPresence
+ (id)_logger;
+ (id)_oversizeLogger;
+ (id)clientID;
+ (id)clientPrefixedPresenceIdentifierForPresenceIdentifier:(id)identifier;
- (BOOL)_isHandleInvited:(id)invited fromSenderHandle:(id)handle;
- (BOOL)hasPresenceAssertion;
- (BOOL)hasTransientSubscription;
- (BOOL)isPersonal;
- (NSArray)invitedHandles;
- (NSArray)presentDevices;
- (SKPresence)initWithPresenceIdentifier:(id)identifier options:(id)options;
- (SKPresenceAssertionOptions)presenceAssertionOptions;
- (SKPresenceDaemonConnection)daemonConnection;
- (SKPresencePayload)payload;
- (void)_attemptReconnectingToDaemon;
- (void)_delegatesPerformOnResponseQueueForGroup:(id)group block:(id)block;
- (void)_fetchHandleInvitability:(id)invitability fromSenderHandle:(id)handle completion:(id)completion;
- (void)_handleStatusKitAgentAliveNotification:(id)notification;
- (void)_inviteHandles:(id)handles fromSenderHandle:(id)handle completion:(id)completion;
- (void)_isHandleInvited:(id)invited fromSenderHandle:(id)handle completion:(id)completion;
- (void)_reassertPresenceWithCompletion:(id)completion;
- (void)_reestablishDaemonConnection;
- (void)_registerForDelegateCallbacksIfNecessary;
- (void)_reretainTransientSubscriptionWithCompletion:(id)completion;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)assertPresenceWithPresencePayload:(id)payload assertionOptions:(id)options completion:(id)completion;
- (void)assertPresenceWithPresencePayload:(id)payload completion:(id)completion;
- (void)dealloc;
- (void)fetchPresenceCapability:(id)capability;
- (void)hasInitialCloudKitImportOccurredWithCompletion:(id)completion;
- (void)initialCloudKitImportReceivedWithCompletion:(id)completion;
- (void)inviteHandle:(id)handle fromSenderHandle:(id)senderHandle completion:(id)completion;
- (void)inviteHandleFromPrimaryAccountHandle:(id)handle completion:(id)completion;
- (void)invitedHandlesChangedForPresenceIdentifier:(id)identifier completion:(id)completion;
- (void)presenceDaemonConnectionDidDisconnect:(id)disconnect;
- (void)presentHandlesChangedForPresenceIdentifier:(id)identifier completion:(id)completion;
- (void)releaseDaemonConnection;
- (void)releasePresenceWithCompletion:(id)completion;
- (void)releaseTransientSubscriptionAssertionWithCompletion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)removeInvitedHandle:(id)handle completion:(id)completion;
- (void)removeInvitedHandles:(id)handles completion:(id)completion;
- (void)retainTransientSubscriptionAssertionWithCompletion:(id)completion;
- (void)rollChannelWithCompletion:(id)completion;
- (void)setHasPresenceAssertion:(BOOL)assertion;
- (void)setHasTransientSubscription:(BOOL)subscription;
- (void)setPayload:(id)payload;
- (void)setPresenceAssertionOptions:(id)options;
@end

@implementation SKPresence

- (SKPresence)initWithPresenceIdentifier:(id)identifier options:(id)options
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  if (!identifierCopy)
  {
    [SKPresence initWithPresenceIdentifier:options:];
  }

  v8 = optionsCopy;
  v38.receiver = self;
  v38.super_class = SKPresence;
  v9 = [(SKPresence *)&v38 init];
  if (v9)
  {
    ValidateIdentifierMeetsBlastdoorRequirements(identifierCopy);
    v10 = [identifierCopy copy];
    presenceIdentifier = v9->_presenceIdentifier;
    v9->_presenceIdentifier = v10;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegates = v9->_delegates;
    v9->_delegates = weakToStrongObjectsMapTable;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v16 = dispatch_get_global_queue(0, 0);
    v17 = dispatch_queue_create_with_target_V2("com.apple.StatusKit.Presence", v15, v16);
    privateWorkQueue = v9->_privateWorkQueue;
    v9->_privateWorkQueue = v17;

    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_delegateLock._os_unfair_lock_opaque = 0;
    v19 = +[SKPresence _logger];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v19, OS_LOG_TYPE_DEFAULT, "_delegateLock init", buf, 2u);
    }

    v20 = [v8 copy];
    options = v9->_options;
    v9->_options = v20;

    if (_os_feature_enabled_impl())
    {
      if ((_os_feature_enabled_impl() & 1) != 0 || (-[SKPresence options](v9, "options"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isDaemonIdleExitEnabled], v22, v23))
      {
        v24 = +[SKPresence _logger];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          presenceIdentifier = [(SKPresence *)v9 presenceIdentifier];
          *buf = 138412290;
          v40 = presenceIdentifier;
          _os_log_impl(&dword_26BA07000, v24, OS_LOG_TYPE_DEFAULT, "Registering presenceIdentifier: %@ to re-initiate connections to daemon", buf, 0xCu);
        }

        v26 = [SKPresence clientPrefixedPresenceIdentifierForPresenceIdentifier:identifierCopy];
        v27 = +[SKPresence _logger];
        defaultCenter = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v26;
            _os_log_impl(&dword_26BA07000, defaultCenter, OS_LOG_TYPE_DEFAULT, "Registering prefixed presenceIdentifier: %@", buf, 0xCu);
          }

          defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
          [defaultCenter addObserver:v9 selector:sel__handleStatusKitAgentAliveNotification_ name:v26 object:0];
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(SKPresence *)defaultCenter initWithPresenceIdentifier:v29 options:v30, v31, v32, v33, v34, v35];
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)clientID
{
  [@"com.apple.StatusKit.presence.clientID" UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v2)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)clientPrefixedPresenceIdentifierForPresenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = +[SKPresence clientID];
    v5 = v4;
    if (v4)
    {
      ska_sha256Hash = [v4 ska_sha256Hash];
      v7 = [ska_sha256Hash substringToIndex:4];

      v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%@-%@-%@", v5, identifierCopy, v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleStatusKitAgentAliveNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  object = [notification object];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v6 = [object containsString:presenceIdentifier];

  v7 = +[SKPresence _logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = object;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Received notice that %@ has an update, re-establish state with SKA", &v17, 0xCu);
    }

    [(SKPresence *)self _reestablishDaemonConnection];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SKPresence *)v8 _handleStatusKitAgentAliveNotification:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reestablishDaemonConnection
{
  v3 = +[SKPresence _logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect to daemon", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  daemonConnection = self->_daemonConnection;
  os_unfair_lock_unlock(&self->_lock);
  if (daemonConnection)
  {
    v5 = +[SKPresence _logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Tried to reconnect, but we already have a connection", v6, 2u);
    }
  }

  else
  {
    [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  }
}

- (BOOL)isPersonal
{
  options = [(SKPresence *)self options];
  isPersonal = [options isPersonal];

  return isPersonal;
}

- (void)hasInitialCloudKitImportOccurredWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[SKPresence _logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Checking if the initial CloudKit import has occurred.", buf, 2u);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke;
  v12[3] = &unk_279D128F8;
  v7 = completionCopy;
  v13 = v7;
  v8 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke_30;
  v10[3] = &unk_279D12970;
  v11 = v7;
  v9 = v7;
  [v8 hasInitialCloudKitImportOccurredWithCompletion:v10];
}

void __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke_30(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = +[SKPresence _logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke_30_cold_1();
    }
  }

  v7 = +[SKPresence _logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (a3)
    {
      v8 = @"YES";
    }

    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Has initial CloudKit import occurred? %@", &v11, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a3, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)assertPresenceWithPresencePayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  v8 = [[SKPresenceAssertionOptions alloc] initWithPriority:2];
  [(SKPresence *)self assertPresenceWithPresencePayload:payloadCopy assertionOptions:v8 completion:completionCopy];
}

- (void)assertPresenceWithPresencePayload:(id)payload assertionOptions:(id)options completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  optionsCopy = options;
  completionCopy = completion;
  v11 = [optionsCopy copy];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v13 = +[SKPresence _logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = presenceIdentifier;
    v32 = 2112;
    v33 = payloadCopy;
    _os_log_impl(&dword_26BA07000, v13, OS_LOG_TYPE_DEFAULT, "Asserting presence for %@ with payload %@", buf, 0x16u);
  }

  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  daemonConnection = [(SKPresence *)self daemonConnection];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke;
  v28[3] = &unk_279D128F8;
  v15 = completionCopy;
  v29 = v15;
  v16 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v28];
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke_39;
  v22[3] = &unk_279D12998;
  v17 = presenceIdentifier;
  v23 = v17;
  objc_copyWeak(&v27, buf);
  v18 = payloadCopy;
  v24 = v18;
  v19 = v11;
  v25 = v19;
  v20 = v15;
  v26 = v20;
  [v16 assertPresenceForIdentifier:v17 withPresencePayload:v18 assertionOptions:v19 completion:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

void __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKPresence _logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke_39_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully asserted presence for presence identifier %@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setHasPresenceAssertion:1];
      [v5 setPayload:*(a1 + 40)];
      [v5 setPresenceAssertionOptions:*(a1 + 48)];
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)releasePresenceWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Releasing presence for  %@", buf, 0xCu);
  }

  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  daemonConnection = [(SKPresence *)self daemonConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__SKPresence_releasePresenceWithCompletion___block_invoke;
  v18[3] = &unk_279D128F8;
  v8 = completionCopy;
  v19 = v8;
  v9 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v18];
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__SKPresence_releasePresenceWithCompletion___block_invoke_40;
  v13[3] = &unk_279D129C0;
  v10 = presenceIdentifier;
  v14 = v10;
  objc_copyWeak(&v17, buf);
  selfCopy = self;
  v11 = v8;
  v16 = v11;
  [v9 releasePresenceForIdentifier:v10 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __44__SKPresence_releasePresenceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__SKPresence_releasePresenceWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __44__SKPresence_releasePresenceWithCompletion___block_invoke_40(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKPresence _logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__SKPresence_releasePresenceWithCompletion___block_invoke_40_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released presence for presence identifier %@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setHasPresenceAssertion:0];
      [v5 setPayload:0];
    }
  }

  if (([*(a1 + 40) hasTransientSubscription] & 1) == 0)
  {
    [*(a1 + 40) releaseDaemonConnection];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retainTransientSubscriptionAssertionWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Retaining transient subscription assertion for presenceIdentifier %@", buf, 0xCu);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  v8 = +[SKPresence _logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "calling _registerForDelegateCallbacksIfNecessary for presenceIdentifier %@", buf, 0xCu);
  }

  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke;
  v20[3] = &unk_279D128F8;
  v9 = completionCopy;
  v21 = v9;
  v10 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v20];
  objc_initWeak(&location, self);
  v11 = +[SKPresence _logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v11, OS_LOG_TYPE_DEFAULT, "calling daemon retainTransientSubscriptionAssertionForPresenceIdentifier for presenceIdentifier %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_41;
  v15[3] = &unk_279D129E8;
  v12 = presenceIdentifier;
  v16 = v12;
  objc_copyWeak(&v18, &location);
  v13 = v9;
  v17 = v13;
  [v10 retainTransientSubscriptionAssertionForPresenceIdentifier:v12 completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_41(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKPresence _logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_41_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained transient subscription assertion for presence identifier %@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setHasTransientSubscription:1];
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)releaseTransientSubscriptionAssertionWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Releasing transient subscription assertion for presenceIdentifier %@", buf, 0xCu);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke;
  v18[3] = &unk_279D128F8;
  v8 = completionCopy;
  v19 = v8;
  v9 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v18];
  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_42;
  v13[3] = &unk_279D129C0;
  v10 = presenceIdentifier;
  v14 = v10;
  objc_copyWeak(&v17, buf);
  selfCopy = self;
  v11 = v8;
  v16 = v11;
  [v9 releaseTransientSubscriptionAssertionForPresenceIdentifier:v10 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_42(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKPresence _logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_42_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released transient subscription assertion for presence identifier %@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setHasTransientSubscription:0];
    }
  }

  if (([*(a1 + 40) hasPresenceAssertion] & 1) == 0)
  {
    [*(a1 + 40) releaseDaemonConnection];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSArray)presentDevices
{
  v26 = *MEMORY[0x277D85DE8];
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving present devices. Presence: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  daemonConnection = [(SKPresence *)self daemonConnection];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __28__SKPresence_presentDevices__block_invoke;
  v16[3] = &unk_279D12A10;
  v6 = presenceIdentifier;
  v17 = v6;
  objc_copyWeak(&v19, &location);
  p_buf = &buf;
  v7 = [daemonConnection synchronousRemoteDaemonWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__SKPresence_presentDevices__block_invoke_43;
  v13[3] = &unk_279D12A38;
  v8 = v6;
  v14 = v8;
  v15 = &buf;
  [v7 presentDevicesForPresenceIdentifier:v8 completion:v13];
  v9 = *(*(&buf + 1) + 40);
  if (!v9)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __28__SKPresence_presentDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __28__SKPresence_presentDevices__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __28__SKPresence_presentDevices__block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKPresence _oversizeLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Retrieved present devices. Presence: %{public}@ Handles: %@ Error: %@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved present devices. Presence: %{public}@ Handles: %@", &v14, 0x16u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)invitedHandles
{
  v26 = *MEMORY[0x277D85DE8];
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving invited handles. Presence: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  daemonConnection = [(SKPresence *)self daemonConnection];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __28__SKPresence_invitedHandles__block_invoke;
  v16[3] = &unk_279D12A10;
  v6 = presenceIdentifier;
  v17 = v6;
  objc_copyWeak(&v19, &location);
  p_buf = &buf;
  v7 = [daemonConnection synchronousRemoteDaemonWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__SKPresence_invitedHandles__block_invoke_45;
  v13[3] = &unk_279D12A38;
  v8 = v6;
  v14 = v8;
  v15 = &buf;
  [v7 invitedHandlesForPresenceIdentifier:v8 completion:v13];
  v9 = *(*(&buf + 1) + 40);
  if (!v9)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = v9;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __28__SKPresence_invitedHandles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __28__SKPresence_presentDevices__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __28__SKPresence_invitedHandles__block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKPresence _logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Retrieved invited handles. Presence: %{public}@ Handles: %@ Error: %@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved invited handles. Presence: %{public}@ Handles: %@", &v14, 0x16u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isHandleInvited:(id)invited fromSenderHandle:(id)handle
{
  v27 = *MEMORY[0x277D85DE8];
  invitedCopy = invited;
  handleCopy = handle;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v9 = +[SKPresence _logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = invitedCopy;
    *&buf[12] = 2112;
    *&buf[14] = handleCopy;
    *&buf[22] = 2114;
    v26 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ has already been invited (sync) from handle: %@. Presence: %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v26) = 0;
  daemonConnection = [(SKPresence *)self daemonConnection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__SKPresence__isHandleInvited_fromSenderHandle___block_invoke;
  v22[3] = &unk_279D12A60;
  v11 = presenceIdentifier;
  v23 = v11;
  v24 = buf;
  v12 = [daemonConnection synchronousRemoteDaemonWithErrorHandler:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__SKPresence__isHandleInvited_fromSenderHandle___block_invoke_46;
  v18[3] = &unk_279D12A88;
  v13 = v11;
  v19 = v13;
  v14 = invitedCopy;
  v20 = v14;
  v21 = buf;
  [v12 isHandleInvited:v14 fromSenderHandle:handleCopy forPresenceIdentifier:v13 completion:v18];
  v15 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __48__SKPresence__isHandleInvited_fromSenderHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__SKPresence__isHandleInvited_fromSenderHandle___block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __48__SKPresence__isHandleInvited_fromSenderHandle___block_invoke_46(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKPresence _logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v13 = 138544130;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Checked if handle is invited (sync). Presence: %{public}@ Handle: %@ isInvited:%d Error: %@", &v13, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Determined if handle is invited (sync). Presence: %{public}@ Handle: %@ isInvited: %d", &v13, 0x1Cu);
  }

  *(*(a1[6] + 8) + 24) = a2;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_isHandleInvited:(id)invited fromSenderHandle:(id)handle completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  invitedCopy = invited;
  handleCopy = handle;
  completionCopy = completion;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v12 = +[SKPresence _logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = invitedCopy;
    v32 = 2112;
    v33 = handleCopy;
    v34 = 2114;
    v35 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ has already been invited (async) from handle: %@. Presence: %{public}@", buf, 0x20u);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__SKPresence__isHandleInvited_fromSenderHandle_completion___block_invoke;
  v26[3] = &unk_279D12AB0;
  v14 = presenceIdentifier;
  v27 = v14;
  v15 = invitedCopy;
  v28 = v15;
  v16 = completionCopy;
  v29 = v16;
  v17 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__SKPresence__isHandleInvited_fromSenderHandle_completion___block_invoke_48;
  v22[3] = &unk_279D12AD8;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 isHandleInvited:v19 fromSenderHandle:handleCopy forPresenceIdentifier:v20 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __59__SKPresence__isHandleInvited_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__SKPresence__isHandleInvited_fromSenderHandle_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __59__SKPresence__isHandleInvited_fromSenderHandle_completion___block_invoke_48(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKPresence _logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v13 = 138544130;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Error while checking if handle has already been invited (async). Presence: %{public}@ Handle: %@ isInvited:%d Error: %@", &v13, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Checked if handle is invited (async). Presence: %{public}@ Handle: %@ isInvited: %d", &v13, 0x1Cu);
  }

  (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchHandleInvitability:(id)invitability fromSenderHandle:(id)handle completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  invitabilityCopy = invitability;
  handleCopy = handle;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SKPresence _fetchHandleInvitability:fromSenderHandle:completion:];
  }

  v11 = completionCopy;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v13 = +[SKPresence _logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = invitabilityCopy;
    v33 = 2114;
    v34 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v13, OS_LOG_TYPE_DEFAULT, "Fetching handle %@ invitability. Presence: %{public}@", buf, 0x16u);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__SKPresence__fetchHandleInvitability_fromSenderHandle_completion___block_invoke;
  v27[3] = &unk_279D12AB0;
  v15 = presenceIdentifier;
  v28 = v15;
  v16 = invitabilityCopy;
  v29 = v16;
  v17 = v11;
  v30 = v17;
  v18 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__SKPresence__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_50;
  v23[3] = &unk_279D12B00;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  [v18 fetchHandleInvitability:v20 fromHandle:handleCopy forPresenceIdentifier:v21 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __67__SKPresence__fetchHandleInvitability_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__SKPresence__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __67__SKPresence__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_50(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKPresence _logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v14 = 138544130;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Error fetching handle invitability. Presence: %{public}@ Handle: %@ invitability:%@ Error: %@", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[5];
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Checked if handle is invitable. Presence: %{public}@ Handle: %@ invitability: %@", &v14, 0x20u);
  }

  (*(a1[6] + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)inviteHandle:(id)handle fromSenderHandle:(id)senderHandle completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v8 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  senderHandleCopy = senderHandle;
  handleCopy2 = handle;
  v12 = [v8 arrayWithObjects:&handleCopy count:1];

  [(SKPresence *)self _inviteHandles:v12 fromSenderHandle:senderHandleCopy completion:completionCopy, handleCopy, v15];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)inviteHandleFromPrimaryAccountHandle:(id)handle completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  handleCopy2 = handle;
  v9 = [v6 arrayWithObjects:&handleCopy count:1];

  [(SKPresence *)self _inviteHandles:v9 fromSenderHandle:0 completion:completionCopy, handleCopy, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_inviteHandles:(id)handles fromSenderHandle:(id)handle completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handleCopy = handle;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SKPresence _inviteHandles:fromSenderHandle:completion:];
  }

  v11 = completionCopy;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v13 = +[SKPresence _logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = handlesCopy;
    v31 = 2114;
    v32 = presenceIdentifier;
    v33 = 2112;
    v34 = handleCopy;
    _os_log_impl(&dword_26BA07000, v13, OS_LOG_TYPE_DEFAULT, "Received request to invite handles: %@ to presenceIdentifier: %{public}@ from sender handle: %@", buf, 0x20u);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke;
  v24[3] = &unk_279D12B28;
  v15 = presenceIdentifier;
  v25 = v15;
  v16 = handlesCopy;
  v26 = v16;
  objc_copyWeak(&v28, buf);
  v17 = v11;
  v27 = v17;
  v18 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v24];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_53;
  v21[3] = &unk_279D12B50;
  objc_copyWeak(&v23, buf);
  v19 = v17;
  v22 = v19;
  [v18 inviteHandles:v16 fromSenderHandle:handleCopy presenceIdentifier:v15 completion:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v28);

  objc_destroyWeak(buf);
  v20 = *MEMORY[0x277D85DE8];
}

void __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_53_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Inviting handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeInvitedHandle:(id)handle completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  handleCopy2 = handle;
  v9 = [v6 arrayWithObjects:&handleCopy count:1];

  [(SKPresence *)self removeInvitedHandles:v9 completion:completionCopy, handleCopy, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeInvitedHandles:(id)handles completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  completionCopy = completion;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v9 = +[SKPresence _logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = presenceIdentifier;
    v27 = 2112;
    v28 = handlesCopy;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Removing invited handles. Presence: %{public}@ Handles: %@", buf, 0x16u);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__SKPresence_removeInvitedHandles_completion___block_invoke;
  v20[3] = &unk_279D12B28;
  v11 = presenceIdentifier;
  v21 = v11;
  v12 = handlesCopy;
  v22 = v12;
  objc_copyWeak(&v24, buf);
  v13 = completionCopy;
  v23 = v13;
  v14 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SKPresence_removeInvitedHandles_completion___block_invoke_54;
  v17[3] = &unk_279D12B50;
  objc_copyWeak(&v19, buf);
  v15 = v13;
  v18 = v15;
  [v14 removeInvitedHandles:v12 presenceIdentifier:v11 completion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __46__SKPresence_removeInvitedHandles_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__SKPresence_removeInvitedHandles_completion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __46__SKPresence_removeInvitedHandles_completion___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__SKPresence_removeInvitedHandles_completion___block_invoke_54_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Remove invited handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)rollChannelWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Rolling presence channel with presence identifier: %@", buf, 0xCu);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__SKPresence_rollChannelWithCompletion___block_invoke;
  v15[3] = &unk_279D128F8;
  v8 = completionCopy;
  v16 = v8;
  v9 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__SKPresence_rollChannelWithCompletion___block_invoke_55;
  v12[3] = &unk_279D12B50;
  objc_copyWeak(&v14, buf);
  v10 = v8;
  v13 = v10;
  [v9 rollChannelForPresenceIdentifier:presenceIdentifier completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __40__SKPresence_rollChannelWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__SKPresence_rollChannelWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __40__SKPresence_rollChannelWithCompletion___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40__SKPresence_rollChannelWithCompletion___block_invoke_55_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Completed presence channel roll", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPresenceCapability:(id)capability
{
  capabilityCopy = capability;
  if (!capabilityCopy)
  {
    [SKPresence fetchPresenceCapability:];
  }

  v5 = capabilityCopy;
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Fetching presence capability.", buf, 2u);
  }

  daemonConnection = [(SKPresence *)self daemonConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SKPresence_fetchPresenceCapability___block_invoke;
  v13[3] = &unk_279D128F8;
  v8 = v5;
  v14 = v8;
  v9 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SKPresence_fetchPresenceCapability___block_invoke_56;
  v11[3] = &unk_279D12B78;
  v12 = v8;
  v10 = v8;
  [v9 fetchPresenceCapability:v11];
}

void __38__SKPresence_fetchPresenceCapability___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__SKPresence_fetchPresenceCapability___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __38__SKPresence_fetchPresenceCapability___block_invoke_56(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Checked if account is presence capable: %d", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  v8 = +[SKPresence _logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "_delegateLock addDelegate waiting", buf, 2u);
  }

  os_unfair_lock_lock(&self->_delegateLock);
  v9 = +[SKPresence _logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "_delegateLock addDelegate Locked", v13, 2u);
  }

  v10 = [[SKDelegateResponseQueue alloc] initWithQueue:queueCopy];
  [(NSMapTable *)self->_delegates setObject:v10 forKey:delegateCopy];

  v11 = +[SKPresence _logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_26BA07000, v11, OS_LOG_TYPE_DEFAULT, "_delegateLock addDelegate unlock", v12, 2u);
  }

  os_unfair_lock_unlock(&self->_delegateLock);
  [(SKPresence *)self _registerForDelegateCallbacksIfNecessary];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[SKPresence _logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "_delegateLock removeDelegate waiting", buf, 2u);
  }

  os_unfair_lock_lock(&self->_delegateLock);
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "_delegateLock removeDelegate locked", v9, 2u);
  }

  [(NSMapTable *)self->_delegates removeObjectForKey:delegateCopy];
  v7 = +[SKPresence _logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "_delegateLock removeDelegate unlocked", v8, 2u);
  }

  os_unfair_lock_unlock(&self->_delegateLock);
}

- (void)_registerForDelegateCallbacksIfNecessary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[SKPresence _logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "_delegateLock _registerForDelegateCallbacksIfNecessary waiting", buf, 2u);
  }

  os_unfair_lock_lock(&self->_delegateLock);
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "_delegateLock _registerForDelegateCallbacksIfNecessary locked", buf, 2u);
  }

  if (self->_registeredForDelegateCallbacks)
  {
    v5 = +[SKPresence _logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "_delegateLock _registerForDelegateCallbacksIfNecessary unlocked already registered", buf, 2u);
    }

    os_unfair_lock_unlock(&self->_delegateLock);
  }

  else
  {
    self->_registeredForDelegateCallbacks = 1;
    v6 = +[SKPresence _logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "_delegateLock _registerForDelegateCallbacksIfNecessary unlocked registering", buf, 2u);
    }

    os_unfair_lock_unlock(&self->_delegateLock);
    presenceIdentifier = [(SKPresence *)self presenceIdentifier];
    v8 = +[SKPresence _logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = presenceIdentifier;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Registering for delegate callbacks for presenceIdentifier: %{public}@", buf, 0xCu);
    }

    daemonConnection = [(SKPresence *)self daemonConnection];
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke;
    v17[3] = &unk_279D12BA0;
    objc_copyWeak(&v18, buf);
    v10 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v17];
    options = [(SKPresence *)self options];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59;
    v14[3] = &unk_279D12BC8;
    objc_copyWeak(&v16, buf);
    v12 = presenceIdentifier;
    v15 = v12;
    [v10 registerForDelegateCallbacksWithPresenceIdentifier:v12 options:options completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];
}

void __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKPresence _logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Completed registration for delegate callbacks for presence identifier: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_delegatesPerformOnResponseQueueForGroup:(id)group block:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  blockCopy = block;
  os_unfair_lock_lock(&self->_delegateLock);
  v8 = [(NSMapTable *)self->_delegates copy];
  os_unfair_lock_unlock(&self->_delegateLock);
  if (![v8 count])
  {
    v9 = +[SKPresence _logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "No delegates available to perform presence delegate callback", buf, 2u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v8 keyEnumerator];
  v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v8 objectForKey:v14];
        dispatchQueue = [v15 dispatchQueue];
        dispatch_group_enter(groupCopy);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__SKPresence__delegatesPerformOnResponseQueueForGroup_block___block_invoke;
        block[3] = &unk_279D12BF0;
        v21 = blockCopy;
        block[4] = v14;
        v20 = groupCopy;
        dispatch_async(dispatchQueue, block);
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __61__SKPresence__delegatesPerformOnResponseQueueForGroup_block___block_invoke(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  dispatch_group_leave(v3);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKPresence _logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    presenceIdentifier = self->_presenceIdentifier;
    *buf = 138412290;
    v8 = presenceIdentifier;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing SKPresence for presence identifier %@", buf, 0xCu);
  }

  [(SKPresence *)self releaseDaemonConnection];
  v6.receiver = self;
  v6.super_class = SKPresence;
  [(SKPresence *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentHandlesChangedForPresenceIdentifier:(id)identifier completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = +[SKPresence _logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Present devices changed on presence: %@", buf, 0xCu);
  }

  v9 = dispatch_group_create();
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v11 = [presenceIdentifier isEqualToString:identifierCopy];

  if (v11)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__SKPresence_presentHandlesChangedForPresenceIdentifier_completion___block_invoke;
    v18[3] = &unk_279D12C18;
    v18[4] = self;
    [(SKPresence *)self _delegatesPerformOnResponseQueueForGroup:v9 block:v18];
  }

  else
  {
    v12 = +[SKPresence _logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = identifierCopy;
      _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Delegate received message for other identifier: %@", buf, 0xCu);
    }
  }

  privateWorkQueue = self->_privateWorkQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SKPresence_presentHandlesChangedForPresenceIdentifier_completion___block_invoke_66;
  v16[3] = &unk_279D12C40;
  v17 = completionCopy;
  v14 = completionCopy;
  dispatch_group_notify(v9, privateWorkQueue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __68__SKPresence_presentHandlesChangedForPresenceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKPresence _logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate of present devices update. Delegate: %@", &v8, 0xCu);
    }

    [v3 presentDevicesChangedForPresence:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__SKPresence_presentHandlesChangedForPresenceIdentifier_completion___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invitedHandlesChangedForPresenceIdentifier:(id)identifier completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = +[SKPresence _logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Invited handles changed for presence identifier: %@", buf, 0xCu);
  }

  v9 = dispatch_group_create();
  presenceIdentifier = [(SKPresence *)self presenceIdentifier];
  v11 = [presenceIdentifier isEqualToString:identifierCopy];

  if (v11)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__SKPresence_invitedHandlesChangedForPresenceIdentifier_completion___block_invoke;
    v18[3] = &unk_279D12C18;
    v18[4] = self;
    [(SKPresence *)self _delegatesPerformOnResponseQueueForGroup:v9 block:v18];
  }

  else
  {
    v12 = +[SKPresence _logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = identifierCopy;
      _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Delegate received message for other identifier: %@", buf, 0xCu);
    }
  }

  privateWorkQueue = self->_privateWorkQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SKPresence_invitedHandlesChangedForPresenceIdentifier_completion___block_invoke_69;
  v16[3] = &unk_279D12C40;
  v17 = completionCopy;
  v14 = completionCopy;
  dispatch_group_notify(v9, privateWorkQueue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

void __68__SKPresence_invitedHandlesChangedForPresenceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKPresence _logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate of invited handle update. Delegate: %@", &v8, 0xCu);
    }

    [v3 invitedHandlesChangedForPresence:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__SKPresence_invitedHandlesChangedForPresenceIdentifier_completion___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)presenceDaemonConnectionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = +[SKPresence _logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "_delegateLock presenceDaemonConnectionDidDisconnect waiting", buf, 2u);
  }

  os_unfair_lock_lock(&self->_delegateLock);
  v6 = +[SKPresence _logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "_delegateLock presenceDaemonConnectionDidDisconnect locked", buf, 2u);
  }

  self->_registeredForDelegateCallbacks = 0;
  v7 = +[SKPresence _logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "_delegateLock presenceDaemonConnectionDidDisconnect unlocked", buf, 2u);
  }

  os_unfair_lock_unlock(&self->_delegateLock);
  v8 = dispatch_group_create();
  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SKPresence_presenceDaemonConnectionDidDisconnect___block_invoke;
  v9[3] = &unk_279D12C68;
  objc_copyWeak(&v10, buf);
  v9[4] = self;
  [(SKPresence *)self _delegatesPerformOnResponseQueueForGroup:v8 block:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __52__SKPresence_presenceDaemonConnectionDidDisconnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_opt_respondsToSelector();
    v6 = +[SKPresence _logger];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Notifying presence delegate that the XPC connection has disconnected", buf, 2u);
      }

      [v3 presenceDaemonDisconnected:*(a1 + 32)];
    }

    else
    {
      if (v7)
      {
        *v18 = 0;
        _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Presence delegate does not implement the delegate method to be notified the XPC connection has disconnected", v18, 2u);
      }
    }

    [WeakRetained releaseDaemonConnection];
    if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0 && ([WeakRetained options], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isDaemonIdleExitEnabled"), v16, (v17 & 1) == 0))
    {
      [WeakRetained _attemptReconnectingToDaemon];
    }
  }

  else
  {
    v8 = +[SKPresence _logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__SKPresence_presenceDaemonConnectionDidDisconnect___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }
}

- (void)initialCloudKitImportReceivedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SKPresence_initialCloudKitImportReceivedWithCompletion___block_invoke;
  v10[3] = &unk_279D12C18;
  v10[4] = self;
  [(SKPresence *)self _delegatesPerformOnResponseQueueForGroup:v5 block:v10];
  privateWorkQueue = self->_privateWorkQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SKPresence_initialCloudKitImportReceivedWithCompletion___block_invoke_74;
  v8[3] = &unk_279D12C40;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_group_notify(v5, privateWorkQueue, v8);
}

void __58__SKPresence_initialCloudKitImportReceivedWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKPresence _logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Notifying presence delegate that the initial CloudKit import was received.", buf, 2u);
    }

    [v3 initialCloudKitImportReceived:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Presence delegate does not implement the delegate method to be notified the initial CloudKit import was received.", v7, 2u);
    }
  }
}

- (void)_attemptReconnectingToDaemon
{
  v3 = +[SKPresence _logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect with the daemon", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  daemonConnection = self->_daemonConnection;
  os_unfair_lock_unlock(&self->_lock);
  if (!daemonConnection)
  {
    objc_initWeak(buf, self);
    if ([(SKPresence *)self hasPresenceAssertion]&& [(SKPresence *)self hasTransientSubscription])
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __42__SKPresence__attemptReconnectingToDaemon__block_invoke;
      v5[3] = &unk_279D12CB0;
      objc_copyWeak(&v6, buf);
      [(SKPresence *)self _reassertPresenceWithCompletion:v5];
      objc_destroyWeak(&v6);
    }

    else if ([(SKPresence *)self hasPresenceAssertion])
    {
      [(SKPresence *)self _reassertPresenceWithCompletion:&__block_literal_global_76];
    }

    else if ([(SKPresence *)self hasTransientSubscription])
    {
      [(SKPresence *)self _reretainTransientSubscriptionWithCompletion:&__block_literal_global_78];
    }

    objc_destroyWeak(buf);
  }
}

void __42__SKPresence__attemptReconnectingToDaemon__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [WeakRetained _reretainTransientSubscriptionWithCompletion:&__block_literal_global_0];
      WeakRetained = v3;
    }
  }
}

- (void)_reassertPresenceWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  payload = [(SKPresence *)self payload];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SKPresence__reassertPresenceWithCompletion___block_invoke;
  v7[3] = &unk_279D12D00;
  v6 = completionCopy;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [(SKPresence *)self assertPresenceWithPresencePayload:payload completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__SKPresence__reassertPresenceWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  if (a2)
  {
    v3();
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained releaseDaemonConnection];
      v6 = dispatch_walltime(0, 10000000000);
      v7 = v5[9];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__SKPresence__reassertPresenceWithCompletion___block_invoke_2;
      block[3] = &unk_279D12CD8;
      objc_copyWeak(&v9, (a1 + 40));
      dispatch_after(v6, v7, block);
      objc_destroyWeak(&v9);
    }
  }

  else
  {

    v3();
  }
}

void __46__SKPresence__reassertPresenceWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _attemptReconnectingToDaemon];
    WeakRetained = v2;
  }
}

- (void)_reretainTransientSubscriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SKPresence__reretainTransientSubscriptionWithCompletion___block_invoke;
  v6[3] = &unk_279D12D00;
  v5 = completionCopy;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [(SKPresence *)self retainTransientSubscriptionAssertionWithCompletion:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __59__SKPresence__reretainTransientSubscriptionWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  if (a2)
  {
    v3();
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained releaseDaemonConnection];
      v6 = dispatch_walltime(0, 10000000000);
      v7 = v5[9];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__SKPresence__reretainTransientSubscriptionWithCompletion___block_invoke_2;
      block[3] = &unk_279D12CD8;
      objc_copyWeak(&v9, (a1 + 40));
      dispatch_after(v6, v7, block);
      objc_destroyWeak(&v9);
    }
  }

  else
  {

    v3();
  }
}

void __59__SKPresence__reretainTransientSubscriptionWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _attemptReconnectingToDaemon];
    WeakRetained = v2;
  }
}

+ (id)_logger
{
  if (_logger_onceToken != -1)
  {
    +[SKPresence _logger];
  }

  v3 = _logger__logger;

  return v3;
}

uint64_t __21__SKPresence__logger__block_invoke()
{
  _logger__logger = os_log_create("com.apple.StatusKit", "SKPresence");

  return MEMORY[0x2821F96F8]();
}

+ (id)_oversizeLogger
{
  if (_oversizeLogger_onceToken != -1)
  {
    +[SKPresence _oversizeLogger];
  }

  v3 = _oversizeLogger__logger;

  return v3;
}

uint64_t __29__SKPresence__oversizeLogger__block_invoke()
{
  _oversizeLogger__logger = os_log_create("com.apple.StatusKit", "StatusKit-oversized");

  return MEMORY[0x2821F96F8]();
}

- (SKPresenceDaemonConnection)daemonConnection
{
  os_unfair_lock_lock(&self->_lock);
  daemonConnection = self->_daemonConnection;
  if (!daemonConnection)
  {
    v4 = [[SKPresenceDaemonConnection alloc] initWithPresenceDaemonDelegate:self connectionDelegate:self];
    v5 = self->_daemonConnection;
    self->_daemonConnection = v4;

    daemonConnection = self->_daemonConnection;
  }

  v6 = daemonConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)releaseDaemonConnection
{
  v3 = +[SKPresence _logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "_delegateLock releaseDaemonConnection waiting", buf, 2u);
  }

  os_unfair_lock_lock(&self->_delegateLock);
  v4 = +[SKPresence _logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "_delegateLock releaseDaemonConnection locked", v8, 2u);
  }

  self->_registeredForDelegateCallbacks = 0;
  v5 = +[SKPresence _logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "_delegateLock releaseDaemonConnection unlocked", v7, 2u);
  }

  os_unfair_lock_unlock(&self->_delegateLock);
  os_unfair_lock_lock(&self->_lock);
  [(SKPresenceDaemonConnection *)self->_daemonConnection invalidate];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHasPresenceAssertion:(BOOL)assertion
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasPresenceAssertion = assertion;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasPresenceAssertion
{
  os_unfair_lock_lock(&self->_lock);
  hasPresenceAssertion = self->_hasPresenceAssertion;
  os_unfair_lock_unlock(&self->_lock);
  return hasPresenceAssertion;
}

- (void)setHasTransientSubscription:(BOOL)subscription
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasTransientSubscription = subscription;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasTransientSubscription
{
  os_unfair_lock_lock(&self->_lock);
  hasTransientSubscription = self->_hasTransientSubscription;
  os_unfair_lock_unlock(&self->_lock);
  return hasTransientSubscription;
}

- (void)setPayload:(id)payload
{
  payloadCopy = payload;
  os_unfair_lock_lock(&self->_lock);
  payload = self->_payload;
  self->_payload = payloadCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (SKPresencePayload)payload
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_payload;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPresenceAssertionOptions:(id)options
{
  optionsCopy = options;
  os_unfair_lock_lock(&self->_lock);
  presenceAssertionOptions = self->_presenceAssertionOptions;
  self->_presenceAssertionOptions = optionsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (SKPresenceAssertionOptions)presenceAssertionOptions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_presenceAssertionOptions;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error checking initial CloudKit import. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__SKPresence_hasInitialCloudKitImportOccurredWithCompletion___block_invoke_30_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error checking if the CloudKit import has occurred. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retaining presence assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SKPresence_assertPresenceWithPresencePayload_assertionOptions_completion___block_invoke_39_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error asserting presence. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__SKPresence_releasePresenceWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error releasing presence assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__SKPresence_releasePresenceWithCompletion___block_invoke_40_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error releasing presence. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retaining transient subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__SKPresence_retainTransientSubscriptionAssertionWithCompletion___block_invoke_41_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error retaining transient subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error releasing transient subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__SKPresence_releaseTransientSubscriptionAssertionWithCompletion___block_invoke_42_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error releasing transient subscription assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __28__SKPresence_presentDevices__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __48__SKPresence__isHandleInvited_fromSenderHandle___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __59__SKPresence__isHandleInvited_fromSenderHandle_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__SKPresence__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_53_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Inviting handles completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SKPresence_removeInvitedHandles_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SKPresence_removeInvitedHandles_completion___block_invoke_54_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Remove invited handles completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SKPresence_rollChannelWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC error rolling presence channel. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__SKPresence_rollChannelWithCompletion___block_invoke_55_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Presence channel roll completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__SKPresence_fetchPresenceCapability___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error checking presence capability.  Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error registering for delegate callbacks. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error registering for delegate callbacks. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__SKPresence_presentHandlesChangedForPresenceIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Delegate does not implement presentDevicesChangedForPresence:, not informing delegate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __68__SKPresence_invitedHandlesChangedForPresenceIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Delegate does not implement presentHandlesChangedForPresence:, not informing delegate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end