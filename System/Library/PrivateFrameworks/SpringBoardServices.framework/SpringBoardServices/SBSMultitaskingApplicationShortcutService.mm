@interface SBSMultitaskingApplicationShortcutService
- (id)_connection;
- (unint64_t)supportedShortcutActionsForBundleIdentifier:(id)a3;
- (void)dealloc;
- (void)performMultitaskingShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4;
- (void)startObservingSupportedShortcutsForBundleIdentifier:(id)a3;
- (void)stopObservingSupportedShortcutsForBundleIdentifier:(id)a3;
- (void)updateSupportedShortcutActionsForBundleIdentifiers:(id)a3;
@end

@implementation SBSMultitaskingApplicationShortcutService

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = 0;

  v5.receiver = self;
  v5.super_class = SBSMultitaskingApplicationShortcutService;
  [(SBSMultitaskingApplicationShortcutService *)&v5 dealloc];
}

- (void)startObservingSupportedShortcutsForBundleIdentifier:(id)a3
{
  v4 = a3;
  trackedBundleIdentifiers = self->_trackedBundleIdentifiers;
  if (!trackedBundleIdentifiers)
  {
    v6 = objc_opt_new();
    v7 = self->_trackedBundleIdentifiers;
    self->_trackedBundleIdentifiers = v6;

    trackedBundleIdentifiers = self->_trackedBundleIdentifiers;
  }

  [(NSCountedSet *)trackedBundleIdentifiers addObject:v4];
  v8 = [(SBSMultitaskingApplicationShortcutService *)self _connection];
  v9 = [v8 remoteTarget];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__SBSMultitaskingApplicationShortcutService_startObservingSupportedShortcutsForBundleIdentifier___block_invoke;
  v11[3] = &unk_1E7360978;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 fetchSupportedShortcutActionsForBundleIdentifier:v10 withCompletionHandler:v11];
}

void __97__SBSMultitaskingApplicationShortcutService_startObservingSupportedShortcutsForBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  v6 = v5;
  v7 = v8;
  BSDispatchMain();
}

void __97__SBSMultitaskingApplicationShortcutService_startObservingSupportedShortcutsForBundleIdentifier___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = &unk_1F05B4EB0;
  }

  else
  {
    v2 = a1[5];
  }

  v7 = v2;
  if ([*(a1[6] + 24) containsObject:a1[7]])
  {
    v3 = *(a1[6] + 32);
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = a1[6];
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v3 = *(a1[6] + 32);
    }

    [v3 setObject:v7 forKey:a1[7]];
  }
}

- (void)stopObservingSupportedShortcutsForBundleIdentifier:(id)a3
{
  v6 = a3;
  [(NSCountedSet *)self->_trackedBundleIdentifiers removeObject:v6];
  if (![(NSCountedSet *)self->_trackedBundleIdentifiers countForObject:v6])
  {
    [(NSMutableDictionary *)self->_supportedShortcutsByBundleIdentifier removeObjectForKey:v6];
    v4 = [(SBSMultitaskingApplicationShortcutService *)self _connection];
    v5 = [v4 remoteTarget];
    [v5 stopObservingUpdatesForBundleIdentifier:v6];
  }
}

- (unint64_t)supportedShortcutActionsForBundleIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_supportedShortcutsByBundleIdentifier objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)performMultitaskingShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v9 = [(SBSMultitaskingApplicationShortcutService *)self _connection];
  v7 = [v9 remoteTarget];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 performShortcutAction:v8 forBundleIdentifier:v6];
}

- (void)updateSupportedShortcutActionsForBundleIdentifiers:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __96__SBSMultitaskingApplicationShortcutService_updateSupportedShortcutActionsForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([*(*(a1 + 40) + 24) containsObject:v7])
        {
          v8 = [v2 objectForKey:v7];
          [*(*(a1 + 40) + 32) setObject:v8 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = MEMORY[0x1E698F498];
    v5 = [MEMORY[0x1E698F498] defaultShellMachName];
    v6 = +[SBSMultitaskingApplicationShortcutServiceSpecification identifier];
    v7 = [v4 endpointForMachName:v5 service:v6 instance:0];

    v8 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = v8;

    v10 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
    v11 = self->_connection;
    self->_connection = v10;

    v12 = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__SBSMultitaskingApplicationShortcutService__connection__block_invoke;
    v14[3] = &unk_1E735ED88;
    v14[4] = self;
    [(BSServiceConnection *)v12 configureConnection:v14];
    [(BSServiceConnection *)self->_connection activate];

    connection = self->_connection;
  }

  return connection;
}

void __56__SBSMultitaskingApplicationShortcutService__connection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSMultitaskingApplicationShortcutServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBSMultitaskingApplicationShortcutServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__SBSMultitaskingApplicationShortcutService__connection__block_invoke_2;
  v8[3] = &unk_1E735ED60;
  objc_copyWeak(&v9, &location);
  [v3 setInvalidationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SBSMultitaskingApplicationShortcutService__connection__block_invoke_3;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, &location);
  [v3 setInterruptionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__SBSMultitaskingApplicationShortcutService__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __56__SBSMultitaskingApplicationShortcutService__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] activate];
    WeakRetained = v2;
  }
}

@end