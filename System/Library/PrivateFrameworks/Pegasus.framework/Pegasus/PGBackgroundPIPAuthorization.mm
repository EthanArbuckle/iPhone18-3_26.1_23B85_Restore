@interface PGBackgroundPIPAuthorization
- (NSString)description;
- (PGBackgroundPIPAuthorization)initWithActivitySessionIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier stateTransitionHandler:(id)handler;
- (int64_t)state;
- (void)_transitionToState:(int64_t)state;
- (void)dealloc;
- (void)revoke;
- (void)transitionToState:(id)state;
@end

@implementation PGBackgroundPIPAuthorization

- (PGBackgroundPIPAuthorization)initWithActivitySessionIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier stateTransitionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    [PGBackgroundPIPAuthorization initWithActivitySessionIdentifier:a2 appBundleIdentifier:self stateTransitionHandler:?];
  }

  v39.receiver = self;
  v39.super_class = PGBackgroundPIPAuthorization;
  v12 = [(PGBackgroundPIPAuthorization *)&v39 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v12);
    v14 = [identifierCopy copy];
    activitySessionIdentifier = v13->_activitySessionIdentifier;
    v13->_activitySessionIdentifier = v14;

    v16 = MEMORY[0x1BFB0C680](handlerCopy);
    stateTransitionHandler = v13->_stateTransitionHandler;
    v13->_stateTransitionHandler = v16;

    v18 = [bundleIdentifierCopy copy];
    appBundleIdentifier = v13->_appBundleIdentifier;
    v13->_appBundleIdentifier = v18;

    v20 = MEMORY[0x1E698F498];
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v22 = +[PGBackgroundPIPServiceSpecification identifier];
    v23 = [v20 endpointForMachName:defaultShellMachName service:v22 instance:0];

    v24 = [MEMORY[0x1E698F490] connectionWithEndpoint:v23];
    connection = v13->_connection;
    v13->_connection = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.pegasus.background-pip-authorization-request", v26);

    v28 = v13->_connection;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke;
    v33[3] = &unk_1E7F32848;
    v29 = v27;
    v34 = v29;
    objc_copyWeak(&v37, &location);
    v30 = identifierCopy;
    v35 = v30;
    v36 = bundleIdentifierCopy;
    [(BSServiceConnection *)v28 configureConnection:v33];
    v31 = PGLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "[PGBackgroundPIPAuthorization initWithActivitySessionIdentifier:appBundleIdentifier:stateTransitionHandler:]";
      v42 = 2114;
      v43 = v30;
      _os_log_impl(&dword_1BB282000, v31, OS_LOG_TYPE_DEFAULT, "%s Authorizing identifier %{public}@", buf, 0x16u);
    }

    [(BSServiceConnection *)v13->_connection activate];
    objc_destroyWeak(&v37);

    objc_destroyWeak(&location);
  }

  return v13;
}

void __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PGBackgroundPIPServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[PGBackgroundPIPServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setTargetQueue:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v3 setInterfaceTarget:WeakRetained];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke_2;
  v9[3] = &unk_1E7F327D8;
  objc_copyWeak(&v12, (a1 + 56));
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v3 setActivationHandler:v9];
  [v3 setInterruptionHandler:&__block_literal_global_5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke_34;
  v7[3] = &unk_1E7F32820;
  objc_copyWeak(&v8, (a1 + 56));
  [v3 setInvalidationHandler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v12);
}

void __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PGBackgroundPIPAuthorization initWithActivitySessionIdentifier:appBundleIdentifier:stateTransitionHandler:]_block_invoke_2";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s Connection Activated: %{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained && ![WeakRetained state])
  {
    [v6 _transitionToState:1];
    v7 = [v3 remoteTarget];
    [v7 grantAuthorizationForActivitySessionWithIdentifier:*(a1 + 32) bundleIdentifier:*(a1 + 40)];
  }
}

void __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke_33(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[PGBackgroundPIPAuthorization initWithActivitySessionIdentifier:appBundleIdentifier:stateTransitionHandler:]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s Received interruption for connection: %{public}@", &v4, 0x16u);
  }

  [v2 activate];
}

void __109__PGBackgroundPIPAuthorization_initWithActivitySessionIdentifier_appBundleIdentifier_stateTransitionHandler___block_invoke_34(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PGLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PGBackgroundPIPAuthorization initWithActivitySessionIdentifier:appBundleIdentifier:stateTransitionHandler:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s Received invalidation for connection: %{public}@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained revoke];
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  os_unfair_lock_unlock(&self->_lock);
  return lock_state;
}

- (void)transitionToState:(id)state
{
  v11 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  BSDispatchQueueAssertNotMain();
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromPGBackgroundPIPAuthorizationState([stateCopy integerValue]);
    v7 = 136315394;
    v8 = "[PGBackgroundPIPAuthorization transitionToState:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  -[PGBackgroundPIPAuthorization _transitionToState:](self, "_transitionToState:", [stateCopy integerValue]);
}

- (void)_transitionToState:(int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_state >= state)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_state = state;
    os_unfair_lock_unlock(&self->_lock);
    BSDispatchMain();
  }
}

void __51__PGBackgroundPIPAuthorization__transitionToState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateTransitionHandler];
  (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
}

- (void)revoke
{
  if ([(PGBackgroundPIPAuthorization *)self state]!= 5)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    [remoteTarget revokeAuthorization];

    [(BSServiceConnection *)self->_connection invalidate];

    [(PGBackgroundPIPAuthorization *)self _transitionToState:5];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PGBackgroundPIPAuthorization;
  v4 = [(PGBackgroundPIPAuthorization *)&v10 description];
  activitySessionIdentifier = self->_activitySessionIdentifier;
  appBundleIdentifier = self->_appBundleIdentifier;
  v7 = NSStringFromPGBackgroundPIPAuthorizationState([(PGBackgroundPIPAuthorization *)self state]);
  v8 = [v3 stringWithFormat:@"%@ - %@.%@ - %@", v4, activitySessionIdentifier, appBundleIdentifier, v7];

  return v8;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PGBackgroundPIPAuthorization.m" lineNumber:121 description:{@"Released %@ without revoking it first", a2}];
}

- (void)initWithActivitySessionIdentifier:(uint64_t)a1 appBundleIdentifier:(uint64_t)a2 stateTransitionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGBackgroundPIPAuthorization.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end