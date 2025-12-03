@interface _RECoreLocationLocationManager
- (_RECoreLocationLocationManager)initWithEffectiveBundlePath:(id)path;
- (id)currentLocation;
- (id)currentVisit;
- (void)_assessLocationAfterUnavailableFailure;
- (void)_notifyUpdateHandlersWithError:(id)error;
- (void)_notifyVisitUpdateHandlersWithVisit:(id)visit;
- (void)_updateLocation:(id)location;
- (void)_updateVisit:(id)visit;
- (void)dealloc;
- (void)fetchPlaceInferencesWithHandler:(id)handler;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)startLocationUpdatesWithHandler:(id)handler;
- (void)startVisitUpdatesWithHandler:(id)handler;
- (void)stopLocationUpdates;
- (void)stopVisitUpdates;
@end

@implementation _RECoreLocationLocationManager

- (_RECoreLocationLocationManager)initWithEffectiveBundlePath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = _RECoreLocationLocationManager;
  v5 = [(_RECoreLocationLocationManager *)&v19 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.relevanceengine.corelocationmanager", 0);
    v7 = *(v5 + 8);
    *(v5 + 8) = v6;

    dispatch_suspend(*(v5 + 8));
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62___RECoreLocationLocationManager_initWithEffectiveBundlePath___block_invoke;
    v16[3] = &unk_2785F9AE0;
    v17 = pathCopy;
    v8 = v5;
    v18 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v16);
    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v10 = v8[2];
    v8[2] = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v12 = v8[4];
    v8[4] = v11;

    v13 = RELogForDomain(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_22859F000, v13, OS_LOG_TYPE_DEFAULT, "_RECoreLocationLocationManager initialized. %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__15;
  v5[4] = __Block_byref_object_dispose__15;
  v6 = self->_locationManager;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___RECoreLocationLocationManager_dealloc__block_invoke;
  block[3] = &unk_2785F9BC0;
  block[4] = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  _Block_object_dispose(v5, 8);

  v3.receiver = self;
  v3.super_class = _RECoreLocationLocationManager;
  [(_RECoreLocationLocationManager *)&v3 dealloc];
}

- (id)currentLocation
{
  [(NSLock *)self->_locationAccessLock lock];
  v3 = self->_currentLocation;
  [(NSLock *)self->_locationAccessLock unlock];

  return v3;
}

- (id)currentVisit
{
  [(NSLock *)self->_visitAccessLock lock];
  v3 = self->_currentVisit;
  [(NSLock *)self->_visitAccessLock unlock];

  return v3;
}

- (void)startLocationUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___RECoreLocationLocationManager_startLocationUpdatesWithHandler___block_invoke;
  block[3] = &unk_2785F9A40;
  block[4] = self;
  v6 = handlerCopy;
  v11 = v6;
  dispatch_async(queue, block);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66___RECoreLocationLocationManager_startLocationUpdatesWithHandler___block_invoke_33;
  v8[3] = &unk_2785FA150;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)stopLocationUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___RECoreLocationLocationManager_stopLocationUpdates__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startVisitUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63___RECoreLocationLocationManager_startVisitUpdatesWithHandler___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)stopVisitUpdates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___RECoreLocationLocationManager_stopVisitUpdates__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)fetchPlaceInferencesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66___RECoreLocationLocationManager_fetchPlaceInferencesWithHandler___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69___RECoreLocationLocationManager_locationManager_didUpdateLocations___block_invoke;
  v8[3] = &unk_2785F9AE0;
  v9 = locationsCopy;
  selfCopy = self;
  v7 = locationsCopy;
  dispatch_async(queue, v8);
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___RECoreLocationLocationManager_locationManager_didVisit___block_invoke;
  v8[3] = &unk_2785F9AE0;
  v8[4] = self;
  v9 = visitCopy;
  v7 = visitCopy;
  dispatch_async(queue, v8);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67___RECoreLocationLocationManager_locationManager_didFailWithError___block_invoke;
  v8[3] = &unk_2785F9AE0;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

- (void)_assessLocationAfterUnavailableFailure
{
  dispatch_assert_queue_V2(self->_queue);
  [(NSLock *)self->_locationAccessLock lock];
  currentLocation = self->_currentLocation;
  if (currentLocation)
  {
    timestamp = [(CLLocation *)currentLocation timestamp];
    [timestamp timeIntervalSinceNow];
    if (v5 < 0.0)
    {
      v5 = -v5;
    }

    if (v5 > 900.0)
    {
      v6 = self->_currentLocation;
      self->_currentLocation = 0;
    }
  }

  locationAccessLock = self->_locationAccessLock;

  [(NSLock *)locationAccessLock unlock];
}

- (void)_updateLocation:(id)location
{
  locationCopy = location;
  dispatch_assert_queue_V2(self->_queue);
  [(NSLock *)self->_locationAccessLock lock];
  currentLocation = self->_currentLocation;
  self->_currentLocation = locationCopy;
  v6 = locationCopy;

  [(NSLock *)self->_locationAccessLock unlock];
}

- (void)_updateVisit:(id)visit
{
  visitCopy = visit;
  [(NSLock *)self->_visitAccessLock lock];
  currentVisit = self->_currentVisit;
  self->_currentVisit = visitCopy;
  v6 = visitCopy;

  [(NSLock *)self->_visitAccessLock unlock];
}

- (void)_notifyUpdateHandlersWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x22AABC5E0](self->_handler);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___RECoreLocationLocationManager__notifyUpdateHandlersWithError___block_invoke;
  block[3] = &unk_2785FC070;
  v9 = errorCopy;
  v10 = v5;
  block[4] = self;
  v6 = errorCopy;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_notifyVisitUpdateHandlersWithVisit:(id)visit
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = MEMORY[0x22AABC5E0](self->_visitHandler);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70___RECoreLocationLocationManager__notifyVisitUpdateHandlersWithVisit___block_invoke;
  v6[3] = &unk_2785FC2B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  objc_copyWeak(&v8, &location);
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

@end