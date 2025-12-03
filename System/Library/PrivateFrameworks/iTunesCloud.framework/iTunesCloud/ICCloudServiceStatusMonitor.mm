@interface ICCloudServiceStatusMonitor
+ (BOOL)_hasEntitlementForStatusAccessExemptedFromUserConsentRequirement;
- (BOOL)isObservingCloudServiceStatus;
- (ICCloudServiceStatusMonitor)init;
- (id)_cloudServiceStatusMonitorConnectionForTransactionIdentifier:(id)identifier error:(id *)error;
- (int64_t)authorizationStatusForScopes:(int64_t)scopes;
- (int64_t)privacyAcknowledgementPolicy;
- (void)_beginObservingCloudServiceStatus;
- (void)_beginTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:(id)identifier;
- (void)_cancelCloudServerLaunchedNotifyToken;
- (void)_cloudServiceStatusMonitorConnectionWasInterrupted;
- (void)_cloudServiceStatusMonitorConnectionWasInvalidated;
- (void)_didBeginObservingCloudServiceStatusWithToken:(id)token transactionIdentifier:(id)identifier;
- (void)_didEndObservingCloudServiceStatusWithToken:(id)token transactionIdentifier:(id)identifier;
- (void)_didEndRequestingTokenWithTransactionIdentifier:(id)identifier;
- (void)_endObservingCloudServiceStatusWithToken:(id)token;
- (void)_endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:(id)identifier;
- (void)_invalidateCloudServerLaunchTimeoutTimer;
- (void)_invalidateTriggersForCloudServiceStatusObservationRecovery;
- (void)_musicKit_importTrackWithID:(int64_t)d addingToLibrary:(BOOL)library completionHandler:(id)handler;
- (void)_performCloudServiceStatusMonitorRequestWithDescription:(id)description requestHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_recoverObservingCloudServiceStatus;
- (void)_refreshCloudServiceStatus;
- (void)_registerCloudServerLaunchedNotifyToken;
- (void)_requestCapabilitiesWithPrivacyPromptPolicy:(id)policy completionHandler:(id)handler;
- (void)_requestCapabilitiesWithPrivacyPromptPolicy:(int64_t)policy requestCapabilitiesWithCompletionHandler:(id)handler;
- (void)_requestStorefrontCountryCodeWithCompletionHandler:(id)handler;
- (void)_requestStorefrontIdentifierWithCompletionHandler:(id)handler;
- (void)_resetCloudServiceStatusMonitorConnectionAllowingExplicitInvalidation:(BOOL)invalidation;
- (void)_scheduleCloudServerLaunchTimeoutTimer;
- (void)_scheduleTriggersForCloudServiceStatusObservationRecovery;
- (void)_updateWithCapabilities:(unint64_t)capabilities hasValidCapabilities:(BOOL)validCapabilities transactionIdentifier:(id)identifier;
- (void)_updateWithStorefrontCountryCode:(id)code transactionIdentifier:(id)identifier;
- (void)_updateWithStorefrontIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier;
- (void)_validateAuthorizationExpiryWithCompletionHandler:(id)handler;
- (void)activeAccountDidChange;
- (void)beginObservingCloudServiceStatus;
- (void)capabilitiesDidChange:(unint64_t)change;
- (void)dealloc;
- (void)endObservingCloudServiceStatus;
- (void)requestAuthorizationForScopes:(int64_t)scopes completionHandler:(id)handler;
- (void)requestCapabilitiesWithPrivacyPromptPolicy:(int64_t)policy completionHandler:(id)handler;
- (void)requestDeveloperTokenWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)requestMusicKitTokensWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)requestStorefrontCountryCodeWithCompletionHandler:(id)handler;
- (void)requestStorefrontIdentifierWithCompletionHandler:(id)handler;
- (void)requestUserTokenForDeveloperToken:(id)token options:(unint64_t)options completionHandler:(id)handler;
- (void)revokeMusicKitUserTokensForAccountDSID:(id)d withCompletion:(id)completion;
- (void)setPrivacyAcknowledgementPolicy:(int64_t)policy;
- (void)storefrontCountryCodeDidChange:(id)change;
- (void)storefrontIdentifierDidChange:(id)change;
@end

@implementation ICCloudServiceStatusMonitor

- (ICCloudServiceStatusMonitor)init
{
  v8.receiver = self;
  v8.super_class = ICCloudServiceStatusMonitor;
  v2 = [(ICCloudServiceStatusMonitor *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeTransactionIdentifiersForCloudServiceStatusMonitorConnection = v2->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection;
    v2->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection = v3;

    v2->_cloudServerLaunchedNotifyToken = -1;
    v5 = objc_alloc_init(ICCloudServerListenerEndpointProvider);
    listenerEndpointProvider = v2->_listenerEndpointProvider;
    v2->_listenerEndpointProvider = v5;

    v2->_privacyAcknowledgementPolicy = 1;
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)_musicKit_importTrackWithID:(int64_t)d addingToLibrary:(BOOL)library completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__ICCloudServiceStatusMonitor__musicKit_importTrackWithID_addingToLibrary_completionHandler___block_invoke;
  v12[3] = &unk_1E7BF7608;
  libraryCopy = library;
  dCopy = d;
  v12[4] = self;
  v13 = handlerCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__ICCloudServiceStatusMonitor__musicKit_importTrackWithID_addingToLibrary_completionHandler___block_invoke_206;
  v10[3] = &unk_1E7BFA490;
  v10[4] = self;
  v11 = v13;
  v9 = v13;
  [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"import track" requestHandler:v12 errorHandler:v10];
}

void __93__ICCloudServiceStatusMonitor__musicKit_importTrackWithID_addingToLibrary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__ICCloudServiceStatusMonitor__musicKit_importTrackWithID_addingToLibrary_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF76F8;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 32);
  v12 = v8;
  v11 = v9;
  [v5 _musicKit_importTrackWithID:v6 addingToLibrary:v7 completionHandler:v10];
}

void __93__ICCloudServiceStatusMonitor__musicKit_importTrackWithID_addingToLibrary_completionHandler___block_invoke_206(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: _musicKit_importTrackWithID failed to connect to cloud service status monitor with error: %{public}@.", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __93__ICCloudServiceStatusMonitor__musicKit_importTrackWithID_addingToLibrary_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = a1[6];
      v8 = [v3 msv_description];
      v12 = 138543874;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@: _musicKit_importTrackWithID with storeID=%lld error=%{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[6];
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: _musicKit_importTrackWithID with storeID=%lld", &v12, 0x16u);
  }

  v11 = a1[5];
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (void)_invalidateTriggersForCloudServiceStatusObservationRecovery
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _invalidateCloudServerLaunchTimeoutTimer];

  [(ICCloudServiceStatusMonitor *)self _cancelCloudServerLaunchedNotifyToken];
}

- (void)_scheduleTriggersForCloudServiceStatusObservationRecovery
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _registerCloudServerLaunchedNotifyToken];

  [(ICCloudServiceStatusMonitor *)self _scheduleCloudServerLaunchTimeoutTimer];
}

- (void)_refreshCloudServiceStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _requestCapabilitiesWithPrivacyPromptPolicy:0 requestCapabilitiesWithCompletionHandler:0];
  [(ICCloudServiceStatusMonitor *)self _requestStorefrontCountryCodeWithCompletionHandler:0];

  [(ICCloudServiceStatusMonitor *)self _requestStorefrontIdentifierWithCompletionHandler:0];
}

- (void)_recoverObservingCloudServiceStatus
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _invalidateTriggersForCloudServiceStatusObservationRecovery];
  if ([(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus])
  {
    observationToken = self->_observationToken;
    os_unfair_lock_unlock(&self->_lock);
    if (!observationToken)
    {
      v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Missing cloud service status observation token despite the fact that the client asked to actively observe it.", &v5, 0xCu);
      }

      [(ICCloudServiceStatusMonitor *)self _beginObservingCloudServiceStatus];
      [(ICCloudServiceStatusMonitor *)self _refreshCloudServiceStatus];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_invalidateCloudServerLaunchTimeoutTimer
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  cloudServerLaunchTimeoutTimer = self->_cloudServerLaunchTimeoutTimer;
  if (cloudServerLaunchTimeoutTimer)
  {
    dispatch_source_cancel(cloudServerLaunchTimeoutTimer);
    v4 = self->_cloudServerLaunchTimeoutTimer;
    self->_cloudServerLaunchTimeoutTimer = 0;

    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidated timeout timer for cloud server launch.", &v6, 0xCu);
    }
  }
}

- (void)_scheduleCloudServerLaunchTimeoutTimer
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _invalidateCloudServerLaunchTimeoutTimer];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2048;
    v15 = 0x403E000000000000;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling timeout timer for cloud server launch for %.1f seconds.", buf, 0x16u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
  cloudServerLaunchTimeoutTimer = self->_cloudServerLaunchTimeoutTimer;
  self->_cloudServerLaunchTimeoutTimer = v5;

  v7 = self->_cloudServerLaunchTimeoutTimer;
  v8 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(buf, self);
  v9 = self->_cloudServerLaunchTimeoutTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__ICCloudServiceStatusMonitor__scheduleCloudServerLaunchTimeoutTimer__block_invoke;
  handler[3] = &unk_1E7BFA328;
  objc_copyWeak(&v11, buf);
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_cloudServerLaunchTimeoutTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __69__ICCloudServiceStatusMonitor__scheduleCloudServerLaunchTimeoutTimer__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138543362;
      v4 = WeakRetained;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud server launch timeout timer did fire.", &v3, 0xCu);
    }

    [WeakRetained _recoverObservingCloudServiceStatus];
  }
}

- (void)_cancelCloudServerLaunchedNotifyToken
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  cloudServerLaunchedNotifyToken = self->_cloudServerLaunchedNotifyToken;
  if (cloudServerLaunchedNotifyToken != -1)
  {
    v4 = notify_cancel(cloudServerLaunchedNotifyToken);
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543874;
        selfCopy2 = self;
        v13 = 2082;
        v14 = "com.apple.itunescloudd.launched";
        v15 = 2048;
        v16 = v4;
        v7 = "%{public}@: Failed to cancel notify token for notify topic named %{public}s; notifyCancelStatus = %lu.";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 32;
LABEL_7:
        _os_log_impl(&dword_1B4491000, v8, v9, v7, &v11, v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      selfCopy2 = self;
      v13 = 2082;
      v14 = "com.apple.itunescloudd.launched";
      v7 = "%{public}@: Successfully cancelled notify token for notify topic named %{public}s.";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 22;
      goto LABEL_7;
    }

    self->_cloudServerLaunchedNotifyToken = -1;
  }
}

- (void)_registerCloudServerLaunchedNotifyToken
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cloudServerLaunchedNotifyToken == -1)
  {
    objc_initWeak(&location, self);
    self->_cloudServerLaunchedNotifyToken = -1;
    v3 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__ICCloudServiceStatusMonitor__registerCloudServerLaunchedNotifyToken__block_invoke;
    v11[3] = &unk_1E7BF8E28;
    objc_copyWeak(&v12, &location);
    v4 = notify_register_dispatch("com.apple.itunescloudd.launched", &self->_cloudServerLaunchedNotifyToken, v3, v11);

    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v16 = 2082;
        v17 = "com.apple.itunescloudd.launched";
        v18 = 2048;
        v19 = v4;
        v7 = "%{public}@: Failed to register notify token for notify topic named %{public}s; notifyRegisterDispatchStatus = %lu.";
        v8 = v6;
        v9 = OS_LOG_TYPE_ERROR;
        v10 = 32;
LABEL_7:
        _os_log_impl(&dword_1B4491000, v8, v9, v7, buf, v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v16 = 2082;
      v17 = "com.apple.itunescloudd.launched";
      v7 = "%{public}@: Successfully registered notify token for notify topic named %{public}s.";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 22;
      goto LABEL_7;
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __70__ICCloudServiceStatusMonitor__registerCloudServerLaunchedNotifyToken__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138543618;
      v4 = WeakRetained;
      v5 = 2082;
      v6 = "com.apple.itunescloudd.launched";
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}s notification: cloud server did launch.", &v3, 0x16u);
    }

    [WeakRetained _recoverObservingCloudServiceStatus];
  }
}

- (void)_updateWithStorefrontIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  transactionIdentifierCopy = transactionIdentifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (![(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus])
  {
LABEL_4:
    v10 = 0;
    if (!transactionIdentifierCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = self->_storefrontIdentifier;
  storefrontIdentifier = v8;
  v10 = v8 != identifierCopy;
  if (v8 != identifierCopy)
  {
    v11 = [(NSString *)v8 isEqual:identifierCopy];

    if (v11)
    {
      goto LABEL_4;
    }

    v14 = [(NSString *)identifierCopy copy];
    storefrontIdentifier = self->_storefrontIdentifier;
    self->_storefrontIdentifier = v14;
  }

  if (transactionIdentifierCopy)
  {
LABEL_5:
    [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:transactionIdentifierCopy];
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      selfCopy = self;
      v17 = 2114;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = @"ICCloudServiceStatusStorefrontIdentifierDidChangeNotification";
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Storefront identifier did change: %{public}@. Posting %@.", &v15, 0x20u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICCloudServiceStatusStorefrontIdentifierDidChangeNotification" object:self];
  }
}

- (void)_updateWithStorefrontCountryCode:(id)code transactionIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (![(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus])
  {
LABEL_4:
    v10 = 0;
    if (!identifierCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = self->_storefrontCountryCode;
  storefrontCountryCode = v8;
  v10 = v8 != codeCopy;
  if (v8 != codeCopy)
  {
    v11 = [(NSString *)v8 isEqual:codeCopy];

    if (v11)
    {
      goto LABEL_4;
    }

    v14 = [(NSString *)codeCopy copy];
    storefrontCountryCode = self->_storefrontCountryCode;
    self->_storefrontCountryCode = v14;
  }

  if (identifierCopy)
  {
LABEL_5:
    [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
  }

LABEL_6:
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      selfCopy = self;
      v17 = 2114;
      v18 = codeCopy;
      v19 = 2114;
      v20 = @"ICCloudServiceStatusStorefrontCountryCodeDidChangeNotification";
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Storefront country code did change: %{public}@. Posting %{public}@.", &v15, 0x20u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICCloudServiceStatusStorefrontCountryCodeDidChangeNotification" object:self];
  }
}

- (void)_updateWithCapabilities:(unint64_t)capabilities hasValidCapabilities:(BOOL)validCapabilities transactionIdentifier:(id)identifier
{
  validCapabilitiesCopy = validCapabilities;
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (![(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus])
  {
LABEL_5:
    validCapabilitiesCopy = 0;
    if (!identifierCopy)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
    goto LABEL_10;
  }

  if (self->_capabilities != capabilities)
  {
    self->_capabilities = capabilities;
    self->_hasValidCapabilities = validCapabilitiesCopy;
    validCapabilitiesCopy = 1;
LABEL_8:
    if (!identifierCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!validCapabilitiesCopy)
  {
    goto LABEL_8;
  }

  if (self->_hasValidCapabilities)
  {
    goto LABEL_5;
  }

  validCapabilitiesCopy = 1;
  self->_hasValidCapabilities = 1;
  if (identifierCopy)
  {
    goto LABEL_9;
  }

LABEL_10:
  os_unfair_lock_unlock(&self->_lock);
  if (validCapabilitiesCopy)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = ICCloudServiceCapabilitiesGetDescription(capabilities);
      v12 = 138543874;
      selfCopy = self;
      v14 = 2114;
      v15 = v10;
      v16 = 2112;
      v17 = @"ICCloudServiceStatusCapabilitiesDidChangeNotification";
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service capabilities did change: %{public}@. Posting %@.", &v12, 0x20u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICCloudServiceStatusCapabilitiesDidChangeNotification" object:self];
  }
}

- (void)_didEndRequestingTokenWithTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_didEndObservingCloudServiceStatusWithToken:(id)token transactionIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_observationToken;
  v9 = self->_observationToken;
  v10 = v9;
  if (v9 == tokenCopy)
  {
  }

  else
  {
    v11 = [(NSUUID *)v9 isEqual:tokenCopy];

    if (!v11)
    {
      [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
      os_unfair_lock_unlock(&self->_lock);
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543874;
        selfCopy2 = self;
        v22 = 2114;
        v23 = tokenCopy;
        v24 = 2114;
        v25 = v8;
        v13 = "%{public}@: Observation token %{public}@ did not match with active observation token %{public}@. Did not end observing cloud service status.";
        v14 = v12;
        v15 = 32;
LABEL_8:
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  observationToken = self->_observationToken;
  transactionIdentifierForActiveObservationToken = self->_transactionIdentifierForActiveObservationToken;
  self->_observationToken = 0;
  v18 = transactionIdentifierForActiveObservationToken;

  v19 = self->_transactionIdentifierForActiveObservationToken;
  self->_transactionIdentifierForActiveObservationToken = 0;

  [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:v18];
  [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    selfCopy2 = self;
    v22 = 2114;
    v23 = tokenCopy;
    v13 = "%{public}@: Ended observing cloud service status with token: %{public}@.";
    v14 = v12;
    v15 = 22;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_endObservingCloudServiceStatusWithToken:(id)token
{
  v14 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = tokenCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Ending observing cloud service status with token: %{public}@.", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICCloudServiceStatusMonitor__endObservingCloudServiceStatusWithToken___block_invoke;
  v7[3] = &unk_1E7BF75E0;
  v8 = tokenCopy;
  selfCopy2 = self;
  v6 = tokenCopy;
  [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"relinquishment of cloud service status observation token" requestHandler:v7 errorHandler:0];
}

void __72__ICCloudServiceStatusMonitor__endObservingCloudServiceStatusWithToken___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ICCloudServiceStatusMonitor__endObservingCloudServiceStatusWithToken___block_invoke_2;
  v9[3] = &unk_1E7BFA178;
  v8 = a1[2];
  v6 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = v5;
  v7 = v5;
  [a2 endObservingCloudServiceStatusWithToken:v6 completionHandler:v9];
}

- (void)_didBeginObservingCloudServiceStatusWithToken:(id)token transactionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus])
  {
    tokenCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ongoing-observation-of-cloud-service-status-%@", tokenCopy];
    objc_storeStrong(&self->_observationToken, token);
    transactionIdentifierForActiveObservationToken = self->_transactionIdentifierForActiveObservationToken;
    self->_transactionIdentifierForActiveObservationToken = tokenCopy;
    v11 = tokenCopy;

    [(ICCloudServiceStatusMonitor *)self _beginTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:self->_transactionIdentifierForActiveObservationToken];
    [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = tokenCopy;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Began observing cloud service status with token: %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    [(ICCloudServiceStatusMonitor *)self _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = tokenCopy;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Began observing cloud service status with token: %{public}@, despite the fact that the client requested to end observing it. Immediately cancelling this.", buf, 0x16u);
    }

    [(ICCloudServiceStatusMonitor *)self _endObservingCloudServiceStatusWithToken:tokenCopy];
  }
}

- (void)_beginObservingCloudServiceStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__ICCloudServiceStatusMonitor__beginObservingCloudServiceStatus__block_invoke;
  v3[3] = &unk_1E7BF75B8;
  v3[4] = self;
  [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"cloud service status observation token" requestHandler:v3 errorHandler:0];
}

void __64__ICCloudServiceStatusMonitor__beginObservingCloudServiceStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ICCloudServiceStatusMonitor__beginObservingCloudServiceStatus__block_invoke_2;
  v7[3] = &unk_1E7BF7590;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a2 beginObservingCloudServiceStatusWithCompletionHandler:v7];
}

- (void)_requestStorefrontIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__ICCloudServiceStatusMonitor__requestStorefrontIdentifierWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF7568;
  v8[4] = self;
  v9 = handlerCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__ICCloudServiceStatusMonitor__requestStorefrontIdentifierWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E7BF77C0;
  v7 = v9;
  v5 = v9;
  [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"storefront identifier" requestHandler:v8 errorHandler:v6];
}

void __81__ICCloudServiceStatusMonitor__requestStorefrontIdentifierWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__ICCloudServiceStatusMonitor__requestStorefrontIdentifierWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7BF9C10;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 requestStorefrontIdentifierWithCompletionHandler:v8];
}

uint64_t __81__ICCloudServiceStatusMonitor__requestStorefrontIdentifierWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __81__ICCloudServiceStatusMonitor__requestStorefrontIdentifierWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) _updateWithStorefrontIdentifier:v7 transactionIdentifier:*(a1 + 40)];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_requestStorefrontCountryCodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__ICCloudServiceStatusMonitor__requestStorefrontCountryCodeWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF7568;
  v8[4] = self;
  v9 = handlerCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__ICCloudServiceStatusMonitor__requestStorefrontCountryCodeWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E7BF77C0;
  v7 = v9;
  v5 = v9;
  [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"storefront country code" requestHandler:v8 errorHandler:v6];
}

void __82__ICCloudServiceStatusMonitor__requestStorefrontCountryCodeWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__ICCloudServiceStatusMonitor__requestStorefrontCountryCodeWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E7BF9C10;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 requestStorefrontCountryCodeWithCompletionHandler:v8];
}

uint64_t __82__ICCloudServiceStatusMonitor__requestStorefrontCountryCodeWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __82__ICCloudServiceStatusMonitor__requestStorefrontCountryCodeWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) _updateWithStorefrontCountryCode:v7 transactionIdentifier:*(a1 + 40)];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_requestCapabilitiesWithPrivacyPromptPolicy:(int64_t)policy requestCapabilitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __116__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_requestCapabilitiesWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7BF7400;
  policyCopy = policy;
  v10[4] = self;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __116__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_requestCapabilitiesWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7BF77C0;
  v9 = v11;
  v7 = v11;
  [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"cloud service capabilities" requestHandler:v10 errorHandler:v8];
}

void __116__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_requestCapabilitiesWithCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __116__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_requestCapabilitiesWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7BF7540;
  v6 = a1[5];
  v7 = a1[6];
  v9[4] = a1[4];
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [a2 requestCapabilitiesWithPrivacyPromptPolicy:v7 completionHandler:v9];
}

uint64_t __116__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_requestCapabilitiesWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __116__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_requestCapabilitiesWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _updateWithCapabilities:a2 hasValidCapabilities:v6 == 0 transactionIdentifier:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_validateAuthorizationExpiryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E69B1418] hasEntitlement:*MEMORY[0x1E69D5580] inGroup:@"com.apple.private.tcc.allow" shouldLogForMissingEntitlement:0])
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    if (_validateAuthorizationExpiryWithCompletionHandler__onceToken != -1)
    {
      dispatch_once(&_validateAuthorizationExpiryWithCompletionHandler__onceToken, &__block_literal_global_170_29025);
    }

    v5 = _validateAuthorizationExpiryWithCompletionHandler____accessPermissionsQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_1E7BF9EC8;
    v6[4] = self;
    v7 = handlerCopy;
    [v5 addOperationWithBlock:v6];
  }
}

void __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloudd.tcchelper" options:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCEFF8];
  [v2 setRemoteObjectInterface:v3];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_3;
  v18[3] = &unk_1E7BFA300;
  v18[4] = *(a1 + 32);
  [v2 setInterruptionHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_175;
  v17[3] = &unk_1E7BFA300;
  v17[4] = *(a1 + 32);
  [v2 setInvalidationHandler:v17];
  [v2 resume];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_176;
  v15[3] = &unk_1E7BFA490;
  v4 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v4;
  v5 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_178;
  v11[3] = &unk_1E7BF9240;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v2;
  v13 = v8;
  v14 = v9;
  v10 = v2;
  [v5 validateExpirationForBundleIdentifier:v7 withReplyBlock:v11];
}

void __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543618;
    v5 = v3;
    v6 = 2114;
    v7 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection to %{public}@ service interrupted.", &v4, 0x16u);
  }
}

void __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_175(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543618;
    v5 = v3;
    v6 = 2114;
    v7 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection to %{public}@ service invalidated.", &v4, 0x16u);
  }
}

void __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_176(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543874;
    v7 = v5;
    v8 = 2114;
    v9 = @"com.apple.itunescloudd.tcchelper";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Connection to %{public}@ failed to get remote object proxy: %{public}@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke_178(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to validate authorization expiry: %{public}@.", &v8, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
  [v5 invalidate];
}

uint64_t __81__ICCloudServiceStatusMonitor__validateAuthorizationExpiryWithCompletionHandler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _validateAuthorizationExpiryWithCompletionHandler____accessPermissionsQueue;
  _validateAuthorizationExpiryWithCompletionHandler____accessPermissionsQueue = v0;

  [_validateAuthorizationExpiryWithCompletionHandler____accessPermissionsQueue setMaxConcurrentOperationCount:1];
  v2 = _validateAuthorizationExpiryWithCompletionHandler____accessPermissionsQueue;

  return [v2 setName:@"com.apple.iTunesCloud.AccessPermissionHelper.operationQueue"];
}

- (void)requestAuthorizationForScopes:(int64_t)scopes completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(ICCloudServiceStatusMonitor *)self authorizationStatusForScopes:scopes];
  if (v8 == 1)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    v9 = v8;
    if ((scopes & 2) != 0 || ![objc_opt_class() _hasEntitlementForStatusAccessExemptedFromUserConsentRequirement])
    {
      v10 = objc_alloc(MEMORY[0x1E69B13F0]);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke;
      v20[3] = &unk_1E7BF9890;
      v20[4] = self;
      v20[5] = a2;
      v11 = [v10 initWithDeallocHandler:v20];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke_2;
      v13[3] = &unk_1E7BF7510;
      v14 = v11;
      selfCopy = self;
      v16 = handlerCopy;
      v17 = a2;
      scopesCopy = scopes;
      v19 = v9;
      v12 = v11;
      [(ICCloudServiceStatusMonitor *)self _validateAuthorizationExpiryWithCompletionHandler:v13];
    }

    else if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 3);
    }
  }
}

void __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ICCloudServiceStatusMonitor.m" lineNumber:778 description:@"-validatePermissionsExpiry…'s completion handler was not called."];
}

void __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disarm];
  if (a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69B13F0]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke_158;
    v12[3] = &unk_1E7BF9890;
    v5 = *(a1 + 56);
    v12[4] = *(a1 + 40);
    v12[5] = v5;
    v6 = [v4 initWithDeallocHandler:v12];
    v11 = *(a1 + 48);
    v7 = v6;
    TCCAccessRequest();
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Application has expired authorization, and couldn't be renewed.", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 1);
    }
  }
}

void __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke_158(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ICCloudServiceStatusMonitor.m" lineNumber:790 description:@"TCCAccessRequest completion handler was not called."];
}

void __79__ICCloudServiceStatusMonitor_requestAuthorizationForScopes_completionHandler___block_invoke_2_162(uint64_t a1, int a2)
{
  [*(a1 + 32) disarm];
  v4 = *(a1 + 48);
  if (v4)
  {
    if (a2)
    {
      v5 = 3;
    }

    else
    {
      v5 = [*(a1 + 40) authorizationStatusForScopes:*(a1 + 56)];
      v4 = *(a1 + 48);
    }

    (*(v4 + 16))(v4, v5);
  }

  if (a2 && *(a1 + 64) != 3)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"ICCloudServiceStatusAuthorizationWasGrantedNotification" object:*(a1 + 40)];
  }
}

- (int64_t)authorizationStatusForScopes:(int64_t)scopes
{
  if (scopes & 2) == 0 && ([objc_opt_class() _hasEntitlementForStatusAccessExemptedFromUserConsentRequirement])
  {
    return 3;
  }

  v3 = TCCAccessPreflight();
  if (v3 == 2)
  {
    return 0;
  }

  if (!v3)
  {
    return 3;
  }

  if (TCCAccessRestricted())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_resetCloudServiceStatusMonitorConnectionAllowingExplicitInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  cloudServiceStatusMonitorConnection = self->_cloudServiceStatusMonitorConnection;
  if (cloudServiceStatusMonitorConnection)
  {
    if (invalidationCopy)
    {
      [(NSXPCConnection *)cloudServiceStatusMonitorConnection invalidate];
      v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Did invalidate cloud service status monitor connection.", &v12, 0xCu);
      }

      cloudServiceStatusMonitorConnection = self->_cloudServiceStatusMonitorConnection;
    }

    self->_cloudServiceStatusMonitorConnection = 0;

    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Did reset cloud service status monitor connection.", &v12, 0xCu);
    }
  }

  v8 = self->_observationToken;
  observationToken = self->_observationToken;
  self->_observationToken = 0;

  transactionIdentifierForActiveObservationToken = self->_transactionIdentifierForActiveObservationToken;
  self->_transactionIdentifierForActiveObservationToken = 0;

  [(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection removeAllObjects];
  if ([(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus])
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      selfCopy3 = self;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Was previously observing cloud service status with token: %{public}@. Scheduling appropriate triggers to request begin observing cloud service status again.", &v12, 0x16u);
    }

    [(ICCloudServiceStatusMonitor *)self _scheduleTriggersForCloudServiceStatusObservationRecovery];
  }
}

- (void)_performCloudServiceStatusMonitorRequestWithDescription:(id)description requestHandler:(id)handler errorHandler:(id)errorHandler
{
  v36 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v11 = MEMORY[0x1E696AEC0];
  v12 = [descriptionCopy stringByReplacingOccurrencesOfString:@" " withString:@"-"];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [v11 stringWithFormat:@"request-%@-%@", v12, uUIDString];

  v27 = 0;
  v16 = [(ICCloudServiceStatusMonitor *)self _cloudServiceStatusMonitorConnectionForTransactionIdentifier:v15 error:&v27];
  v17 = v27;
  if (v16)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __115__ICCloudServiceStatusMonitor__performCloudServiceStatusMonitorRequestWithDescription_requestHandler_errorHandler___block_invoke;
    v23[3] = &unk_1E7BF8058;
    v23[4] = self;
    v18 = v15;
    v24 = v18;
    v25 = descriptionCopy;
    v26 = errorHandlerCopy;
    v19 = [v16 remoteObjectProxyWithErrorHandler:v23];
    handlerCopy[2](handlerCopy, v19, v18);
  }

  else
  {
    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v17 debugDescription];
      msv_underlyingError = [v17 msv_underlyingError];
      *buf = 138544130;
      selfCopy = self;
      v30 = 2114;
      v31 = descriptionCopy;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = msv_underlyingError;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error while requesting %{public}@. %{public}@ Underlying error: %{public}@.", buf, 0x2Au);
    }

    if (errorHandlerCopy)
    {
      (*(errorHandlerCopy + 2))(errorHandlerCopy, v17);
    }
  }
}

void __115__ICCloudServiceStatusMonitor__performCloudServiceStatusMonitorRequestWithDescription_requestHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_assert_not_owner(v3 + 36);
  os_unfair_lock_lock((*(a1 + 32) + 144));
  [*(a1 + 32) _endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 144));
  v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7011 underlyingError:v4 debugDescription:{@"Encountered error while requesting %@.", *(a1 + 48)}];

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = [v5 msv_description];
    *buf = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@.", buf, 0x16u);
  }
}

- (void)_cloudServiceStatusMonitorConnectionWasInvalidated
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service status monitor connection was invalidated.", &v4, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _resetCloudServiceStatusMonitorConnectionAllowingExplicitInvalidation:0];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_cloudServiceStatusMonitorConnectionWasInterrupted
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service status monitor connection was interrupted.", &v4, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _resetCloudServiceStatusMonitorConnectionAllowingExplicitInvalidation:0];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_cloudServiceStatusMonitorConnectionForTransactionIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  cloudServiceStatusMonitorConnection = self->_cloudServiceStatusMonitorConnection;
  if (!cloudServiceStatusMonitorConnection)
  {
    listenerEndpointProvider = self->_listenerEndpointProvider;
    v34 = 0;
    v9 = [(ICCloudServerListenerEndpointProvider *)listenerEndpointProvider listenerEndpointForService:4 error:&v34];
    v10 = v34;
    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v9];
      v12 = self->_cloudServiceStatusMonitorConnection;
      self->_cloudServiceStatusMonitorConnection = v11;

      [(NSXPCConnection *)self->_cloudServiceStatusMonitorConnection setExportedObject:self];
      v13 = self->_cloudServiceStatusMonitorConnection;
      v14 = +[ICCloudServiceStatusRemoteMonitoring clientInterface];
      [(NSXPCConnection *)v13 setExportedInterface:v14];

      v15 = self->_cloudServiceStatusMonitorConnection;
      v16 = +[ICCloudServiceStatusRemoteMonitoring serviceInterface];
      [(NSXPCConnection *)v15 setRemoteObjectInterface:v16];

      objc_initWeak(&location, self);
      v17 = self->_cloudServiceStatusMonitorConnection;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __98__ICCloudServiceStatusMonitor__cloudServiceStatusMonitorConnectionForTransactionIdentifier_error___block_invoke;
      v31[3] = &unk_1E7BFA328;
      objc_copyWeak(&v32, &location);
      [(NSXPCConnection *)v17 setInterruptionHandler:v31];
      v18 = self->_cloudServiceStatusMonitorConnection;
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __98__ICCloudServiceStatusMonitor__cloudServiceStatusMonitorConnectionForTransactionIdentifier_error___block_invoke_2;
      v29 = &unk_1E7BFA328;
      objc_copyWeak(&v30, &location);
      [(NSXPCConnection *)v18 setInvalidationHandler:&v26];
      [(NSXPCConnection *)self->_cloudServiceStatusMonitorConnection resume:v26];
      cloudServiceStatusMonitorConnectionEstablishmentError = self->_cloudServiceStatusMonitorConnectionEstablishmentError;
      self->_cloudServiceStatusMonitorConnectionEstablishmentError = 0;

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7010 underlyingError:v10 debugDescription:@"Failed to get listener endpoint for cloud service status monitor."];
      v21 = self->_cloudServiceStatusMonitorConnectionEstablishmentError;
      self->_cloudServiceStatusMonitorConnectionEstablishmentError = v20;
    }

    cloudServiceStatusMonitorConnection = self->_cloudServiceStatusMonitorConnection;
  }

  v22 = cloudServiceStatusMonitorConnection;
  v23 = self->_cloudServiceStatusMonitorConnectionEstablishmentError;
  if (identifierCopy && v22)
  {
    [(ICCloudServiceStatusMonitor *)self _beginTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error)
  {
    v24 = v23;
    *error = v23;
  }

  return v22;
}

void __98__ICCloudServiceStatusMonitor__cloudServiceStatusMonitorConnectionForTransactionIdentifier_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cloudServiceStatusMonitorConnectionWasInterrupted];
}

void __98__ICCloudServiceStatusMonitor__cloudServiceStatusMonitorConnectionForTransactionIdentifier_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cloudServiceStatusMonitorConnectionWasInvalidated];
}

- (void)_endTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection containsObject:identifierCopy]& 1) != 0)
  {
    [(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection removeObject:identifierCopy];
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection count];
      v9 = 138543874;
      selfCopy3 = self;
      v11 = 2114;
      v12 = identifierCopy;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Ended transaction with identifier %{public}@ for cloud service status monitor connection; updated number of active transactions: %lu.", &v9, 0x20u);
    }

    if (![(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection count])
    {
      v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: About to invalidate cloud service status monitor connection.", &v9, 0xCu);
      }

      [(ICCloudServiceStatusMonitor *)self _resetCloudServiceStatusMonitorConnectionAllowingExplicitInvalidation:1];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy3 = self;
      v11 = 2114;
      v12 = identifierCopy;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempted to end transaction with unknown transaction identifier for cloud service status monitor connection: %{public}@. Ignoring.", &v9, 0x16u);
    }
  }
}

- (void)_beginTransactionForCloudServiceStatusMonitorConnectionWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection containsObject:identifierCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICCloudServiceStatusMonitor.m" lineNumber:557 description:@"Calling -_beginTransactionForCloudServiceStatusMonitorConnectionWithIdentifier: with the same transaction identifier more than once is invalid."];
  }

  [(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection addObject:identifierCopy];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableSet *)self->_activeTransactionIdentifiersForCloudServiceStatusMonitorConnection count];
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = identifierCopy;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Began transaction with identifier %{public}@ for cloud service status monitor connection; updated number of active transactions: %lu.", &v9, 0x20u);
  }
}

- (void)storefrontIdentifierDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _updateWithStorefrontIdentifier:changeCopy transactionIdentifier:0];
}

- (void)storefrontCountryCodeDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_assert_not_owner(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _updateWithStorefrontCountryCode:changeCopy transactionIdentifier:0];
}

- (void)capabilitiesDidChange:(unint64_t)change
{
  os_unfair_lock_assert_not_owner(&self->_lock);

  [(ICCloudServiceStatusMonitor *)self _updateWithCapabilities:change hasValidCapabilities:1 transactionIdentifier:0];
}

- (void)activeAccountDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    selfCopy = self;
    v7 = 2112;
    v8 = @"ICCloudServiceStatusActiveAccountDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Active account did change. Posting %@.", &v5, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICCloudServiceStatusActiveAccountDidChangeNotification" object:self];
}

- (void)revokeMusicKitUserTokensForAccountDSID:(id)d withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Revoking music user tokens DSID %{public}@", buf, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloudd.tcchelper" options:0];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCEFF8];
  [v9 setRemoteObjectInterface:v10];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke;
  v23[3] = &unk_1E7BFA300;
  v23[4] = self;
  [v9 setInterruptionHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke_123;
  v22[3] = &unk_1E7BFA300;
  v22[4] = self;
  [v9 setInvalidationHandler:v22];
  [v9 resume];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke_124;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v11 = completionCopy;
  v21 = v11;
  v12 = [v9 remoteObjectProxyWithErrorHandler:v20];
  if (dCopy)
  {
    [ICUserIdentity specificAccountWithDSID:dCopy];
  }

  else
  {
    +[ICUserIdentity activeAccount];
  }
  v13 = ;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke_126;
  v16[3] = &unk_1E7BF80A8;
  v17 = v9;
  selfCopy2 = self;
  v19 = v11;
  v14 = v11;
  v15 = v9;
  [v12 revokeMusicKitUserTokensForUserIdentity:v13 withCompletion:v16];
}

void __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543618;
    v5 = v3;
    v6 = 2114;
    v7 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection to %{public}@ service interrupted.", &v4, 0x16u);
  }
}

void __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke_123(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543618;
    v5 = v3;
    v6 = 2114;
    v7 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection to %{public}@ service invalidated.", &v4, 0x16u);
  }
}

void __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke_124(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543874;
    v7 = v5;
    v8 = 2114;
    v9 = @"com.apple.itunescloudd.tcchelper";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Connection to %{public}@ failed to get remote object proxy: %{public}@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __85__ICCloudServiceStatusMonitor_revokeMusicKitUserTokensForAccountDSID_withCompletion___block_invoke_126(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = [v3 msv_description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Revocation of music user tokens completed error=%{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Revocation of music user tokens completed", &v10, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  [v4 invalidate];
}

- (void)requestMusicKitTokensWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_tokensCompletionHandlers)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B1408]) initWithDefaultValue:&__block_literal_global_68];
    tokensCompletionHandlers = self->_tokensCompletionHandlers;
    self->_tokensCompletionHandlers = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v10 = [(MSVDefaultDictionary *)self->_tokensCompletionHandlers objectForKey:v9];
  v11 = [handlerCopy copy];

  v12 = MEMORY[0x1B8C781E0](v11);
  [v10 addObject:v12];

  v13 = [v10 count];
  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v15)
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting MusicKit tokens from service.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__ICCloudServiceStatusMonitor_requestMusicKitTokensWithOptions_completionHandler___block_invoke_69;
    v18[3] = &unk_1E7BF7498;
    v18[4] = self;
    v18[5] = options;
    v16 = v18;
    os_unfair_lock_assert_not_owner(&self->_lock);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__ICCloudServiceStatusMonitor__requestMusicKitTokensWithOptions_completionHandler___block_invoke;
    v22 = &unk_1E7BF7400;
    optionsCopy = options;
    selfCopy = self;
    v24 = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__ICCloudServiceStatusMonitor__requestMusicKitTokensWithOptions_completionHandler___block_invoke_3;
    v19[3] = &unk_1E7BF77C0;
    v17 = v24;
    v20 = v17;
    [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"MusicKit tokens" requestHandler:buf errorHandler:v19];
  }

  else
  {
    if (v15)
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v10 count];
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping redundant request for MusicKit tokens from service; appending completion handler to existing list (%lu completion handlers).", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

void __82__ICCloudServiceStatusMonitor_requestMusicKitTokensWithOptions_completionHandler___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    os_unfair_lock_assert_not_owner((v5 + 144));
    os_unfair_lock_lock((v5 + 144));
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v9 = [*(v5 + 136) objectForKey:v8];
    v10 = [v9 copy];

    [*(v5 + 136) removeObjectForKey:v8];
    os_unfair_lock_unlock((v5 + 144));
    v11 = [v10 count];
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v13 = v12;
    if (v7)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (v11 == 1)
        {
          v14 = "";
        }

        else
        {
          v14 = "s";
        }

        v15 = [v7 msv_description];
        *buf = 138544130;
        v27 = v5;
        v28 = 2048;
        v29 = v11;
        v30 = 2080;
        v31 = v14;
        v32 = 2114;
        v33 = v15;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Invoking %lu completion handler%s for MusicKit tokens. error=%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "s";
      *buf = 138543874;
      v27 = v5;
      if (v11 == 1)
      {
        v16 = "";
      }

      v28 = 2048;
      v29 = v11;
      v30 = 2080;
      v31 = v16;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking %lu completion handler%s for MusicKit tokens.", buf, 0x20u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          (*(*(*(&v22 + 1) + 8 * v21) + 16))(*(*(&v22 + 1) + 8 * v21));
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v19);
    }
  }
}

void __83__ICCloudServiceStatusMonitor__requestMusicKitTokensWithOptions_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[6];
  v7 = a2;
  v8 = +[ICClientInfo defaultInfo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__ICCloudServiceStatusMonitor__requestMusicKitTokensWithOptions_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7BF74C0;
  v9 = a1[5];
  v11[4] = a1[4];
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v7 requestMusicKitTokensWithOptions:v6 clientInfo:v8 completionHandler:v11];
}

void __83__ICCloudServiceStatusMonitor__requestMusicKitTokensWithOptions_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = a2;
  [v5 _didEndRequestingTokenWithTransactionIdentifier:v6];
  (*(a1[6] + 16))();
}

id __82__ICCloudServiceStatusMonitor_requestMusicKitTokensWithOptions_completionHandler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v0;
}

- (void)requestUserTokenForDeveloperToken:(id)token options:(unint64_t)options completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_userTokenCompletionHandlers)
  {
    v10 = [objc_alloc(MEMORY[0x1E69B1408]) initWithDefaultValue:&__block_literal_global_61];
    userTokenCompletionHandlers = self->_userTokenCompletionHandlers;
    self->_userTokenCompletionHandlers = v10;
  }

  v12 = MEMORY[0x1E69B1470];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v14 = [v12 pairWithFirst:tokenCopy second:v13];

  v15 = [(MSVDefaultDictionary *)self->_userTokenCompletionHandlers objectForKey:v14];
  v16 = [handlerCopy copy];

  v17 = MEMORY[0x1B8C781E0](v16);
  [v15 addObject:v17];

  v18 = [v15 count];
  v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18 == 1)
  {
    if (v20)
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting user token from service.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __91__ICCloudServiceStatusMonitor_requestUserTokenForDeveloperToken_options_completionHandler___block_invoke_63;
    v28 = &unk_1E7BF7448;
    selfCopy = self;
    v30 = tokenCopy;
    optionsCopy = options;
    v21 = v30;
    v22 = &v25;
    os_unfair_lock_assert_not_owner(&self->_lock);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __92__ICCloudServiceStatusMonitor__requestUserTokenForDeveloperToken_options_completionHandler___block_invoke;
    v35 = &unk_1E7BF7470;
    v23 = v21;
    optionsCopy2 = options;
    v36 = v23;
    selfCopy2 = self;
    v38 = v22;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __92__ICCloudServiceStatusMonitor__requestUserTokenForDeveloperToken_options_completionHandler___block_invoke_3;
    v32[3] = &unk_1E7BF77C0;
    v24 = v38;
    v33 = v24;
    [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"user token" requestHandler:buf errorHandler:v32, v25, v26, v27, v28, selfCopy];
  }

  else
  {
    if (v20)
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v15 count];
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping redundant request for user token from service; appending completion handler to existing list (%lu completion handlers).", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

void __91__ICCloudServiceStatusMonitor_requestUserTokenForDeveloperToken_options_completionHandler___block_invoke_63(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = a3;
  if (v5)
  {
    os_unfair_lock_assert_not_owner((v5 + 144));
    os_unfair_lock_lock((v5 + 144));
    v10 = MEMORY[0x1E69B1470];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v12 = [v10 pairWithFirst:v7 second:v11];

    v13 = [*(v5 + 128) objectForKey:v12];
    v14 = [v13 copy];

    [*(v5 + 128) removeObjectForKey:v12];
    os_unfair_lock_unlock((v5 + 144));
    v15 = [v14 count];
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v17 = v16;
    if (v9)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        if (v15 == 1)
        {
          v18 = "";
        }

        else
        {
          v18 = "s";
        }

        v19 = [v9 msv_description];
        *buf = 138544130;
        v31 = v5;
        v32 = 2048;
        v33 = v15;
        v34 = 2080;
        v35 = v18;
        v36 = 2114;
        v37 = v19;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Invoking %lu completion handler%s for user token. error=%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = "s";
      *buf = 138543874;
      v31 = v5;
      if (v15 == 1)
      {
        v20 = "";
      }

      v32 = 2048;
      v33 = v15;
      v34 = 2080;
      v35 = v20;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking %lu completion handler%s for user token.", buf, 0x20u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v26 objects:buf count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        v25 = 0;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v21);
          }

          (*(*(*(&v26 + 1) + 8 * v25) + 16))(*(*(&v26 + 1) + 8 * v25));
          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v26 objects:buf count:16];
      }

      while (v23);
    }
  }
}

void __92__ICCloudServiceStatusMonitor__requestUserTokenForDeveloperToken_options_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a1[7];
  v8 = a2;
  v9 = +[ICClientInfo defaultInfo];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__ICCloudServiceStatusMonitor__requestUserTokenForDeveloperToken_options_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF9C10;
  v10 = a1[6];
  v12[4] = a1[5];
  v13 = v5;
  v14 = v10;
  v11 = v5;
  [v8 requestUserTokenForDeveloperToken:v6 options:v7 clientInfo:v9 completionHandler:v12];
}

void __92__ICCloudServiceStatusMonitor__requestUserTokenForDeveloperToken_options_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = a2;
  [v5 _didEndRequestingTokenWithTransactionIdentifier:v6];
  (*(a1[6] + 16))();
}

id __91__ICCloudServiceStatusMonitor_requestUserTokenForDeveloperToken_options_completionHandler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v0;
}

- (void)_requestCapabilitiesWithPrivacyPromptPolicy:(id)policy completionHandler:(id)handler
{
  policyCopy = policy;
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (policyCopy)
  {
    privacyAcknowledgementPolicy = [policyCopy integerValue];
  }

  else
  {
    privacyAcknowledgementPolicy = self->_privacyAcknowledgementPolicy;
  }

  hasValidCapabilities = self->_hasValidCapabilities;
  if (hasValidCapabilities)
  {
    capabilities = self->_capabilities;
  }

  else
  {
    capabilities = 0;
  }

  os_unfair_lock_lock(&_ICCloudServiceStatusPrivacyAcknowledgementPromptLock);
  v11 = _ICCloudServiceStatusPrivacyAcknowledgementDidPromptOnce;
  os_unfair_lock_unlock(&_ICCloudServiceStatusPrivacyAcknowledgementPromptLock);
  os_unfair_lock_unlock(&self->_lock);
  if (hasValidCapabilities)
  {
    handlerCopy[2](handlerCopy, capabilities, 0);
  }

  else
  {
    if (v11)
    {
      privacyAcknowledgementPolicy = 0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_completionHandler___block_invoke;
    v12[3] = &unk_1E7BF73D8;
    v13 = handlerCopy;
    [(ICCloudServiceStatusMonitor *)self _requestCapabilitiesWithPrivacyPromptPolicy:privacyAcknowledgementPolicy requestCapabilitiesWithCompletionHandler:v12];
  }
}

void __93__ICCloudServiceStatusMonitor__requestCapabilitiesWithPrivacyPromptPolicy_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 code] == -7007)
  {
    os_unfair_lock_lock(&_ICCloudServiceStatusPrivacyAcknowledgementPromptLock);
    _ICCloudServiceStatusPrivacyAcknowledgementDidPromptOnce = 1;
    os_unfair_lock_unlock(&_ICCloudServiceStatusPrivacyAcknowledgementPromptLock);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestDeveloperTokenWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!self->_developerTokenCompletionHandlers)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B1408]) initWithDefaultValue:&__block_literal_global_29121];
    developerTokenCompletionHandlers = self->_developerTokenCompletionHandlers;
    self->_developerTokenCompletionHandlers = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v10 = [(MSVDefaultDictionary *)self->_developerTokenCompletionHandlers objectForKey:v9];
  v11 = [handlerCopy copy];

  v12 = MEMORY[0x1B8C781E0](v11);
  [v10 addObject:v12];

  v13 = [v10 count];
  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v15)
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting developer token from service.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __82__ICCloudServiceStatusMonitor_requestDeveloperTokenWithOptions_completionHandler___block_invoke_48;
    v18[3] = &unk_1E7BF73B0;
    v18[4] = self;
    v18[5] = options;
    v16 = v18;
    os_unfair_lock_assert_not_owner(&self->_lock);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__ICCloudServiceStatusMonitor__requestDeveloperTokenWithOptions_completionHandler___block_invoke;
    v22 = &unk_1E7BF7400;
    optionsCopy = options;
    selfCopy = self;
    v24 = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__ICCloudServiceStatusMonitor__requestDeveloperTokenWithOptions_completionHandler___block_invoke_3;
    v19[3] = &unk_1E7BF77C0;
    v17 = v24;
    v20 = v17;
    [(ICCloudServiceStatusMonitor *)self _performCloudServiceStatusMonitorRequestWithDescription:@"developer token" requestHandler:buf errorHandler:v19];
  }

  else
  {
    if (v15)
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [v10 count];
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping redundant request for developer token from service; appending completion handler to existing list (%lu completion handlers).", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

void __82__ICCloudServiceStatusMonitor_requestDeveloperTokenWithOptions_completionHandler___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    os_unfair_lock_assert_not_owner((v5 + 144));
    os_unfair_lock_lock((v5 + 144));
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v9 = [*(v5 + 120) objectForKey:v8];
    v10 = [v9 copy];

    [*(v5 + 120) removeObjectForKey:v8];
    os_unfair_lock_unlock((v5 + 144));
    v11 = [v10 count];
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v13 = v12;
    if (v7)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (v11 == 1)
        {
          v14 = "";
        }

        else
        {
          v14 = "s";
        }

        v15 = [v7 msv_description];
        *buf = 138544130;
        v27 = v5;
        v28 = 2048;
        v29 = v11;
        v30 = 2080;
        v31 = v14;
        v32 = 2114;
        v33 = v15;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Invoking %lu completion handler%s for developer token. error=%{public}@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "s";
      *buf = 138543874;
      v27 = v5;
      if (v11 == 1)
      {
        v16 = "";
      }

      v28 = 2048;
      v29 = v11;
      v30 = 2080;
      v31 = v16;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking %lu completion handler%s for developer token.", buf, 0x20u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          (*(*(*(&v22 + 1) + 8 * v21) + 16))(*(*(&v22 + 1) + 8 * v21));
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v22 objects:buf count:16];
      }

      while (v19);
    }
  }
}

void __83__ICCloudServiceStatusMonitor__requestDeveloperTokenWithOptions_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[6];
  v7 = a2;
  v8 = +[ICClientInfo defaultInfo];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__ICCloudServiceStatusMonitor__requestDeveloperTokenWithOptions_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7BF9C10;
  v9 = a1[5];
  v11[4] = a1[4];
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v7 requestDeveloperTokenWithOptions:v6 clientInfo:v8 completionHandler:v11];
}

void __83__ICCloudServiceStatusMonitor__requestDeveloperTokenWithOptions_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = a2;
  [v5 _didEndRequestingTokenWithTransactionIdentifier:v6];
  (*(a1[6] + 16))();
}

id __82__ICCloudServiceStatusMonitor_requestDeveloperTokenWithOptions_completionHandler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v0;
}

- (void)requestStorefrontIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_storefrontIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    handlerCopy[2](handlerCopy, v5, 0);
  }

  else
  {
    [(ICCloudServiceStatusMonitor *)self _requestStorefrontIdentifierWithCompletionHandler:handlerCopy];
  }
}

- (void)requestStorefrontCountryCodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_storefrontCountryCode;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    handlerCopy[2](handlerCopy, v5, 0);
  }

  else
  {
    [(ICCloudServiceStatusMonitor *)self _requestStorefrontCountryCodeWithCompletionHandler:handlerCopy];
  }
}

- (void)requestCapabilitiesWithPrivacyPromptPolicy:(int64_t)policy completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  v8 = [v6 numberWithInteger:policy];
  [(ICCloudServiceStatusMonitor *)self _requestCapabilitiesWithPrivacyPromptPolicy:v8 completionHandler:handlerCopy];
}

- (void)endObservingCloudServiceStatus
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  observingCloudServiceStatusRequestsCount = self->_observingCloudServiceStatusRequestsCount;
  v4 = observingCloudServiceStatusRequestsCount - 1;
  self->_observingCloudServiceStatusRequestsCount = observingCloudServiceStatusRequestsCount - 1;
  if (observingCloudServiceStatusRequestsCount == 1)
  {
    v5 = self->_observationToken;
    self->_capabilities = 0;
    self->_hasValidCapabilities = 0;
    storefrontCountryCode = self->_storefrontCountryCode;
    self->_storefrontCountryCode = 0;

    storefrontIdentifier = self->_storefrontIdentifier;
    self->_storefrontIdentifier = 0;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "Will keep";
    v10 = 138544130;
    v12 = 2048;
    selfCopy = self;
    if (!v4)
    {
      v9 = "Will end";
    }

    v13 = v4;
    v14 = 2082;
    v15 = v9;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service status monitor decremented requests count for observing cloud service status to %lu. %{public}s observing cloud service status with token %{public}@.", &v10, 0x2Au);
  }

  if (!v4 && v5)
  {
    [(ICCloudServiceStatusMonitor *)self _endObservingCloudServiceStatusWithToken:v5];
  }
}

- (void)beginObservingCloudServiceStatus
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  observingCloudServiceStatusRequestsCount = self->_observingCloudServiceStatusRequestsCount;
  self->_observingCloudServiceStatusRequestsCount = observingCloudServiceStatusRequestsCount + 1;
  os_unfair_lock_unlock(&self->_lock);
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Already";
    v6 = 138543874;
    selfCopy = self;
    if (!observingCloudServiceStatusRequestsCount)
    {
      v5 = "Will begin";
    }

    v8 = 2048;
    v9 = observingCloudServiceStatusRequestsCount + 1;
    v10 = 2082;
    v11 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service status monitor incremented requests count for observing cloud service status to %lu. %{public}s observing cloud service status.", &v6, 0x20u);
  }

  if (!observingCloudServiceStatusRequestsCount)
  {
    [(ICCloudServiceStatusMonitor *)self _beginObservingCloudServiceStatus];
  }
}

- (BOOL)isObservingCloudServiceStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  _locked_isObservingCloudServiceStatus = [(ICCloudServiceStatusMonitor *)self _locked_isObservingCloudServiceStatus];
  os_unfair_lock_unlock(&self->_lock);
  return _locked_isObservingCloudServiceStatus;
}

- (void)setPrivacyAcknowledgementPolicy:(int64_t)policy
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  self->_privacyAcknowledgementPolicy = policy;
  os_unfair_lock_unlock(&self->_lock);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"prompt-allowed";
    if (policy != 1)
    {
      v6 = 0;
    }

    if (!policy)
    {
      v6 = @"prompt-prohibited";
    }

    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud service status monitor was configured with privacy acknowledgement policy: %{public}@.", &v7, 0x16u);
  }
}

- (int64_t)privacyAcknowledgementPolicy
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  privacyAcknowledgementPolicy = self->_privacyAcknowledgementPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return privacyAcknowledgementPolicy;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(ICCloudServiceStatusMonitor *)self _invalidateTriggersForCloudServiceStatusObservationRecovery];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = ICCloudServiceStatusMonitor;
  [(ICCloudServiceStatusMonitor *)&v3 dealloc];
}

+ (BOOL)_hasEntitlementForStatusAccessExemptedFromUserConsentRequirement
{
  if (_hasEntitlementForStatusAccessExemptedFromUserConsentRequirement_sOnceToken != -1)
  {
    dispatch_once(&_hasEntitlementForStatusAccessExemptedFromUserConsentRequirement_sOnceToken, &__block_literal_global_181);
  }

  return _hasEntitlementForStatusAccessExemptedFromUserConsentRequirement_sHasEntitlementForStatusAccessExemptedFromUserConsentRequirement;
}

uint64_t __95__ICCloudServiceStatusMonitor__hasEntitlementForStatusAccessExemptedFromUserConsentRequirement__block_invoke()
{
  result = [MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.storekit.cloud-service-exempted-from-tcc-access" shouldLogForMissingEntitlement:0];
  _hasEntitlementForStatusAccessExemptedFromUserConsentRequirement_sHasEntitlementForStatusAccessExemptedFromUserConsentRequirement = result;
  return result;
}

@end