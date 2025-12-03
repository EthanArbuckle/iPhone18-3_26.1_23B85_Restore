@interface PUAirPlayRouteObserverRegistry
- (AVOutputDeviceDiscoverySession)_discoverySession;
- (PUAirPlayRouteObserverRegistry)init;
- (PUAirPlayRouteObserverRegistryDelegate)delegate;
- (void)_appEnteredBackground:(id)background;
- (void)_appEnteringForeground:(id)foreground;
- (void)_availableOutputDevicesDidChange:(id)change;
- (void)_discoverySessionIsolationQueue_updateRouteAvailability;
- (void)_setDiscoverySession:(id)session;
- (void)_setRouteAvailability:(unint64_t)availability;
- (void)_updateAllObservers;
- (void)_updateDiscoverySession;
- (void)_updateObserver:(id)observer;
- (void)addRouteObserver:(id)observer;
- (void)dealloc;
- (void)removeRouteObserver:(id)observer;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PUAirPlayRouteObserverRegistry

- (PUAirPlayRouteObserverRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if ([key isEqualToString:@"routeAvailability"])
  {
    _discoverySessionIsolationQueue = [(PUAirPlayRouteObserverRegistry *)self _discoverySessionIsolationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PUAirPlayRouteObserverRegistry_settings_changedValueForKey___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(_discoverySessionIsolationQueue, block);
  }
}

- (void)_appEnteringForeground:(id)foreground
{
  [(PUAirPlayRouteObserverRegistry *)self _setDiscoveryAllowed:1];

  [(PUAirPlayRouteObserverRegistry *)self _updateDiscoverySession];
}

- (void)_appEnteredBackground:(id)background
{
  [(PUAirPlayRouteObserverRegistry *)self _setDiscoveryAllowed:0];

  [(PUAirPlayRouteObserverRegistry *)self _updateDiscoverySession];
}

- (void)_availableOutputDevicesDidChange:(id)change
{
  changeCopy = change;
  _discoverySessionIsolationQueue = [(PUAirPlayRouteObserverRegistry *)self _discoverySessionIsolationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PUAirPlayRouteObserverRegistry__availableOutputDevicesDidChange___block_invoke;
  block[3] = &unk_1E7B7F350;
  v9 = changeCopy;
  selfCopy = self;
  v11 = a2;
  v7 = changeCopy;
  dispatch_async(_discoverySessionIsolationQueue, block);
}

uint64_t __67__PUAirPlayRouteObserverRegistry__availableOutputDevicesDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) _discoverySession];

  if (v2 != v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PUAirPlayRouteObserverRegistry.m" lineNumber:245 description:{@"New discovery session, who dis?"}];
  }

  v4 = *(a1 + 40);

  return [v4 _discoverySessionIsolationQueue_updateRouteAvailability];
}

- (void)_discoverySessionIsolationQueue_updateRouteAvailability
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 2;
  v3 = +[PUAirPlaySettings sharedInstance];
  routeAvailabilityOverride = [v3 routeAvailabilityOverride];

  if (routeAvailabilityOverride)
  {
    if (routeAvailabilityOverride == 1)
    {
      v5 = v19;
      v6 = 1;
      goto LABEL_6;
    }

    if (routeAvailabilityOverride == 2)
    {
      v5 = v19;
      v6 = 2;
LABEL_6:
      v5[3] = v6;
    }
  }

  else
  {
    _discoverySession = [(PUAirPlayRouteObserverRegistry *)self _discoverySession];
    _pu_routeAvailability = [_discoverySession _pu_routeAvailability];
    v19[3] = _pu_routeAvailability;

    v9 = PLAirPlayGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v19[3];
      if (v10 > 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_1E7B74C38[v10];
      }

      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Device route availability: %@", buf, 0xCu);
    }

    if (v19[3])
    {
      [(PUAirPlayRouteObserverRegistry *)self setLastKnownRouteAvailability:?];
      date = [MEMORY[0x1E695DF00] date];
      [(PUAirPlayRouteObserverRegistry *)self setLastKnownRouteAvailabilityDate:date];
    }

    else
    {
      lastKnownRouteAvailabilityDate = [(PUAirPlayRouteObserverRegistry *)self lastKnownRouteAvailabilityDate];
      [lastKnownRouteAvailabilityDate timeIntervalSinceNow];
      v15 = v14;

      if (v15 <= 0.0 && v15 >= -15.0)
      {
        lastKnownRouteAvailability = [(PUAirPlayRouteObserverRegistry *)self lastKnownRouteAvailability];
        v19[3] = lastKnownRouteAvailability;
      }
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PUAirPlayRouteObserverRegistry__discoverySessionIsolationQueue_updateRouteAvailability__block_invoke;
  v17[3] = &unk_1E7B800C8;
  v17[4] = self;
  v17[5] = &v18;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
  _Block_object_dispose(&v18, 8);
}

- (void)_updateDiscoverySession
{
  _routeObservers = [(PUAirPlayRouteObserverRegistry *)self _routeObservers];
  if ([_routeObservers count])
  {
    _isDiscoveryAllowed = [(PUAirPlayRouteObserverRegistry *)self _isDiscoveryAllowed];
  }

  else
  {
    _isDiscoveryAllowed = 0;
  }

  _discoverySessionIsolationQueue = [(PUAirPlayRouteObserverRegistry *)self _discoverySessionIsolationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__PUAirPlayRouteObserverRegistry__updateDiscoverySession__block_invoke;
  v6[3] = &unk_1E7B7FF98;
  v6[4] = self;
  v7 = _isDiscoveryAllowed;
  dispatch_async(_discoverySessionIsolationQueue, v6);
}

void __57__PUAirPlayRouteObserverRegistry__updateDiscoverySession__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _discoverySession];
  v3 = v2;
  if (*(a1 + 40) == 1 && v2 == 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:2];
    [*(a1 + 32) _setDiscoverySession:v3];
  }

  if (v3)
  {
    v5 = [v3 discoveryMode];
    v6 = *MEMORY[0x1E69587A0];
    v7 = *(a1 + 40);
    if (v7 != 1 || v5 == 1)
    {
      if ((v7 & 1) != 0 || !v5)
      {
        goto LABEL_15;
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:*(a1 + 32) name:v6 object:v3];
      v5 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:*(a1 + 32) selector:sel__availableOutputDevicesDidChange_ name:v6 object:v3];
      v5 = 1;
    }

LABEL_15:
    [v3 setDiscoveryMode:v5];
    v9 = PLAirPlayGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v5 > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_1E7B74C18[v5];
      }

      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "Set discovery mode to %@ on session %@", &v11, 0x16u);
    }

    [*(a1 + 32) _discoverySessionIsolationQueue_updateRouteAvailability];
  }
}

- (AVOutputDeviceDiscoverySession)_discoverySession
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAirPlayRouteObserverRegistry.m" lineNumber:170 description:@"_discoverySession may only be accessed on background queue"];
  }

  discoverySession = self->__discoverySession;

  return discoverySession;
}

- (void)_setDiscoverySession:(id)session
{
  sessionCopy = session;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  isMainThread = [currentThread isMainThread];

  if (isMainThread)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAirPlayRouteObserverRegistry.m" lineNumber:160 description:@"_discoverySession may only be accessed on background queue"];
  }

  discoverySession = self->__discoverySession;
  p_discoverySession = &self->__discoverySession;
  v10 = sessionCopy;
  if (discoverySession != sessionCopy)
  {
    objc_storeStrong(p_discoverySession, session);
    v10 = sessionCopy;
  }
}

- (void)_setRouteAvailability:(unint64_t)availability
{
  if (self->_routeAvailability != availability)
  {
    self->_routeAvailability = availability;
    [(PUAirPlayRouteObserverRegistry *)self _updateAllObservers];
  }
}

- (void)_updateAllObservers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _routeObservers = [(PUAirPlayRouteObserverRegistry *)self _routeObservers];
  v4 = [_routeObservers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(_routeObservers);
        }

        [(PUAirPlayRouteObserverRegistry *)self _updateObserver:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_routeObservers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateObserver:(id)observer
{
  observerCopy = observer;
  delegate = [(PUAirPlayRouteObserverRegistry *)self delegate];
  [delegate airPlayRouteObserverRegistryRouteAvailabilityChanged:self forRouteObserver:observerCopy];
}

- (void)removeRouteObserver:(id)observer
{
  observerCopy = observer;
  _routeObservers = [(PUAirPlayRouteObserverRegistry *)self _routeObservers];
  [_routeObservers removeObject:observerCopy];

  [(PUAirPlayRouteObserverRegistry *)self _updateDiscoverySession];
}

- (void)addRouteObserver:(id)observer
{
  observerCopy = observer;
  _routeObservers = [(PUAirPlayRouteObserverRegistry *)self _routeObservers];
  [_routeObservers addObject:observerCopy];

  [(PUAirPlayRouteObserverRegistry *)self _updateDiscoverySession];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUAirPlayRouteObserverRegistry;
  [(PUAirPlayRouteObserverRegistry *)&v4 dealloc];
}

- (PUAirPlayRouteObserverRegistry)init
{
  v11.receiver = self;
  v11.super_class = PUAirPlayRouteObserverRegistry;
  v2 = [(PUAirPlayRouteObserverRegistry *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    [(PUAirPlayRouteObserverRegistry *)v2 _setRouteObservers:v3];
    v4 = dispatch_queue_create("com.apple.photos.PHAirPlayRouteAvailability", 0);
    [(PUAirPlayRouteObserverRegistry *)v2 _setDiscoverySessionIsolationQueue:v4];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__appEnteredBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__appEnteringForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v2->__discoveryAllowed = 1;
    mEMORY[0x1E69C4598] = [MEMORY[0x1E69C4598] sharedScheduler];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__PUAirPlayRouteObserverRegistry_init__block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v10 = v2;
    [mEMORY[0x1E69C4598] scheduleMainQueueTask:v9];
  }

  return v2;
}

void __38__PUAirPlayRouteObserverRegistry_init__block_invoke(uint64_t a1)
{
  v2 = +[PUAirPlaySettings sharedInstance];
  [v2 addKeyObserver:*(a1 + 32)];
}

@end