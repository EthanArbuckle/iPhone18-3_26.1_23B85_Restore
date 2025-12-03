@interface PGBackgroundPIPService
- (BOOL)hasAcquiredAuthorizationForActivitySessionWithIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier;
- (PGBackgroundPIPService)init;
- (PGBackgroundPIPServiceDelegate)delegate;
- (id)_targetForIdentifier:(id)identifier;
- (void)_handleInvalidatedTarget:(id)target;
- (void)backgroundPIPTargetRequestsAuthorization:(id)authorization;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)pipDidStartForRemoteObject:(id)object;
- (void)pipDidStopForRemoteObject:(id)object;
- (void)revokeAuthorizationActivitySessionWithIdentifier:(id)identifier;
@end

@implementation PGBackgroundPIPService

- (PGBackgroundPIPService)init
{
  v19.receiver = self;
  v19.super_class = PGBackgroundPIPService;
  v2 = [(PGBackgroundPIPService *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DFA8] set];
    lock_targets = v3->_lock_targets;
    v3->_lock_targets = v4;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    lock_targetsByActivitySessionIdentifier = v3->_lock_targetsByActivitySessionIdentifier;
    v3->_lock_targetsByActivitySessionIdentifier = dictionary;

    v8 = [MEMORY[0x1E695DFA8] set];
    mutableIdentifiersForAuthorizedActivitySessions = v3->_mutableIdentifiersForAuthorizedActivitySessions;
    v3->_mutableIdentifiersForAuthorizedActivitySessions = v8;

    v10 = dispatch_queue_create("com.apple.pegasus.PGBackgroundPIPService", 0);
    queue = v3->_queue;
    v3->_queue = v10;

    v12 = MEMORY[0x1E698F4B8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __30__PGBackgroundPIPService_init__block_invoke;
    v17[3] = &unk_1E7F33660;
    v13 = v3;
    v18 = v13;
    v14 = [v12 listenerWithConfigurator:v17];
    connectionListener = v13->_connectionListener;
    v13->_connectionListener = v14;
  }

  return v3;
}

void __30__PGBackgroundPIPService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = +[PGBackgroundPIPServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = PGBackgroundPIPService;
  [(PGBackgroundPIPService *)&v3 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  remoteProcess = [(_PGBackgroundPIPServiceConnectionTarget *)connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  v13 = [auditToken hasEntitlement:@"com.apple.pegasus.backgroundPIPServiceEntitlement"];

  if (v13)
  {
    v14 = [[_PGBackgroundPIPServiceConnectionTarget alloc] initWithConnection:connectionCopy delegate:self];
    v15 = PGLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGBackgroundPIPService listener:didReceiveConnection:withContext:]";
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_1BB282000, v15, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_lock_targets addObject:v14];
    os_unfair_lock_unlock(&self->_lock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__PGBackgroundPIPService_listener_didReceiveConnection_withContext___block_invoke;
    v19[3] = &unk_1E7F336D8;
    v16 = v14;
    v20 = v16;
    selfCopy = self;
    [(_PGBackgroundPIPServiceConnectionTarget *)connectionCopy configureConnection:v19];
    v17 = PGLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGBackgroundPIPService listener:didReceiveConnection:withContext:]";
      v25 = 2114;
      v26 = connectionCopy;
      _os_log_impl(&dword_1BB282000, v17, OS_LOG_TYPE_DEFAULT, "%s Activating connection %{public}@", buf, 0x16u);
    }

    [(_PGBackgroundPIPServiceConnectionTarget *)connectionCopy activate];
  }

  else
  {
    v18 = PGLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGBackgroundPIPService listener:didReceiveConnection:withContext:]";
      v25 = 2114;
      v26 = connectionCopy;
      _os_log_impl(&dword_1BB282000, v18, OS_LOG_TYPE_DEFAULT, "%s Invalidating unvalidated client %{public}@", buf, 0x16u);
    }

    [(_PGBackgroundPIPServiceConnectionTarget *)connectionCopy invalidate];
  }

  objc_destroyWeak(&location);
}

void __68__PGBackgroundPIPService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PGBackgroundPIPServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[PGBackgroundPIPServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PGBackgroundPIPService_listener_didReceiveConnection_withContext___block_invoke_2;
  v11[3] = &unk_1E7F33688;
  v12 = *(a1 + 32);
  [v3 setActivationHandler:v11];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __68__PGBackgroundPIPService_listener_didReceiveConnection_withContext___block_invoke_16;
  v9 = &unk_1E7F336B0;
  v10 = *(a1 + 32);
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(*(a1 + 40) + 16), v6, v7, v8, v9}];
}

void __68__PGBackgroundPIPService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[PGBackgroundPIPService listener:didReceiveConnection:withContext:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s Activated connection %{public}@ for target %{public}@", &v6, 0x20u);
  }
}

void __68__PGBackgroundPIPService_listener_didReceiveConnection_withContext___block_invoke_16(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[PGBackgroundPIPService listener:didReceiveConnection:withContext:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s Invalidated connection %{public}@ for target: %{public}@", &v6, 0x20u);
  }

  [*(a1 + 32) invalidate];
}

- (void)_handleInvalidatedTarget:(id)target
{
  v15 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PGBackgroundPIPService _handleInvalidatedTarget:]";
    v13 = 2114;
    v14 = targetCopy;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  activitySessionIdentifier = [targetCopy activitySessionIdentifier];
  [targetCopy transitionToStateIfPossible:5];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_targets removeObject:targetCopy];
  if (activitySessionIdentifier)
  {
    v7 = [(NSMutableDictionary *)self->_lock_targetsByActivitySessionIdentifier objectForKeyedSubscript:activitySessionIdentifier];
    v8 = PGLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[PGBackgroundPIPService _handleInvalidatedTarget:]";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s existingTargetForIdentifier %{public}@", buf, 0x16u);
    }

    if ([v7 isEqual:targetCopy])
    {
      v9 = activitySessionIdentifier;
      [(NSMutableDictionary *)self->_lock_targetsByActivitySessionIdentifier setObject:0 forKeyedSubscript:v9];
    }

    else
    {
      v9 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v9)
    {
      v10 = v9;
      BSDispatchMain();
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __51__PGBackgroundPIPService__handleInvalidatedTarget___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    v2 = [*(*(a1 + 32) + 24) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = v2;

    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[PGBackgroundPIPService _handleInvalidatedTarget:]_block_invoke";
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s BackgroundPIP: Revoking authorization for identifier %{public}@", &v8, 0x16u);
    }

    v7 = [*(a1 + 32) delegate];
    [v7 backgroundPIPService:*(a1 + 32) didRevokeBackgroundPIPAuthorizationForActivitySessionWithIdentifier:*(a1 + 40)];
  }
}

- (void)backgroundPIPTargetRequestsAuthorization:(id)authorization
{
  v17 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PGBackgroundPIPService backgroundPIPTargetRequestsAuthorization:]";
    v13 = 2114;
    v14 = authorizationCopy;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  activitySessionIdentifier = [authorizationCopy activitySessionIdentifier];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_lock_targetsByActivitySessionIdentifier objectForKeyedSubscript:activitySessionIdentifier];
  if (!v7)
  {
    [(NSMutableDictionary *)self->_lock_targetsByActivitySessionIdentifier setObject:authorizationCopy forKeyedSubscript:activitySessionIdentifier];
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (![v7 isConnectionActive] || objc_msgSend(v7, "state") == 4 || objc_msgSend(v7, "state") == 5)
  {
    [v7 invalidate];
LABEL_9:
    v9 = authorizationCopy;
    v10 = activitySessionIdentifier;
    BSDispatchMain();

    goto LABEL_10;
  }

  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v12 = activitySessionIdentifier;
    v13 = 2114;
    v14 = authorizationCopy;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "Refusing authorization for %{public}@ because an authorization request (%{public}@) for this activitySessionIdentifier already exists %{public}@ and has not yet been revoked.", buf, 0x20u);
  }

  [authorizationCopy transitionToStateIfPossible:4];
LABEL_10:
}

void __67__PGBackgroundPIPService_backgroundPIPTargetRequestsAuthorization___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) activitySessionIdentifier];
  v5 = [*(a1 + 40) bundleIdentifier];
  LODWORD(v3) = [v2 backgroundPIPService:v3 canAuthorizeBackgroundPIPForActivitySessionWithIdentifier:v4 appBundleIdentifier:v5];

  if (v3)
  {
    [*(*(a1 + 32) + 24) addObject:*(a1 + 48)];
    v6 = PGLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v14 = 136315394;
      v15 = "[PGBackgroundPIPService backgroundPIPTargetRequestsAuthorization:]_block_invoke";
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s BackgroundPIP: Authorizing identifier %{public}@", &v14, 0x16u);
    }

    v8 = [*(*(a1 + 32) + 24) copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    [*(a1 + 40) transitionToStateIfPossible:2];
    v11 = [*(a1 + 32) delegate];
    [v11 backgroundPIPService:*(a1 + 32) didGrantBackgroundPIPAuthorizationForActivitySessionWithIdentifier:*(a1 + 48)];
  }

  else
  {
    v12 = PGLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_1BB282000, v12, OS_LOG_TYPE_DEFAULT, "Refusing authorization for %{public}@ because delegate didn't allow it.", &v14, 0xCu);
    }

    [*(a1 + 40) transitionToStateIfPossible:4];
  }
}

- (void)pipDidStartForRemoteObject:(id)object
{
  objectCopy = object;
  pictureInPictureApplication = [objectCopy pictureInPictureApplication];
  bundleIdentifier = [pictureInPictureApplication bundleIdentifier];

  activitySessionIdentifier = [objectCopy activitySessionIdentifier];

  v7 = [(PGBackgroundPIPService *)self _targetForIdentifier:activitySessionIdentifier];
  bundleIdentifier2 = [v7 bundleIdentifier];
  v9 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

  if (v9)
  {
    [v7 transitionToStateIfPossible:3];
  }
}

- (void)pipDidStopForRemoteObject:(id)object
{
  objectCopy = object;
  activitySessionIdentifier = [objectCopy activitySessionIdentifier];
  v5 = [(PGBackgroundPIPService *)self _targetForIdentifier:activitySessionIdentifier];
  bundleIdentifier = [v5 bundleIdentifier];
  pictureInPictureApplication = [objectCopy pictureInPictureApplication];
  bundleIdentifier2 = [pictureInPictureApplication bundleIdentifier];
  if ([bundleIdentifier isEqualToString:bundleIdentifier2])
  {
    state = [v5 state];

    if (state == 3)
    {
      if ([objectCopy isVideoCall])
      {
        pictureInPictureApplication2 = [objectCopy pictureInPictureApplication];
        bundleIdentifier3 = [pictureInPictureApplication2 bundleIdentifier];
        v12 = [bundleIdentifier3 isEqualToString:@"com.apple.InCallService"];

        if (v12)
        {
          [v5 invalidate];
        }
      }
    }
  }

  else
  {
  }
}

- (BOOL)hasAcquiredAuthorizationForActivitySessionWithIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (identifierCopy && (-[PGBackgroundPIPService identifiersForAuthorizedActivitySessions](self, "identifiersForAuthorizedActivitySessions"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:identifierCopy], v8, v9))
  {
    v10 = [(PGBackgroundPIPService *)self _targetForIdentifier:identifierCopy];
    if ([v10 isConnectionActive])
    {
      bundleIdentifier = [v10 bundleIdentifier];
      v12 = [bundleIdentifierCopy isEqualToString:bundleIdentifier];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)revokeAuthorizationActivitySessionWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(PGBackgroundPIPService *)self _targetForIdentifier:?];
    [v3 invalidate];
  }
}

- (id)_targetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_targetsByActivitySessionIdentifier objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (PGBackgroundPIPServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end