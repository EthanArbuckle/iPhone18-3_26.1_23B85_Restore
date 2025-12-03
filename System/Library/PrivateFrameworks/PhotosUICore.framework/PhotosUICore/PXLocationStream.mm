@interface PXLocationStream
- (PXLocationStream)initWithAccuracy:(double)accuracy handler:(id)handler;
- (void)_cleanup;
- (void)_closeStreamWithError;
- (void)_emitLocation:(id)location;
- (void)_open;
- (void)_requestAuthorization;
- (void)_requestLocation;
- (void)dealloc;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)setClosed:(BOOL)closed;
@end

@implementation PXLocationStream

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (status >= 5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_DescriptionForAuthorizationStatus(CLAuthorizationStatus)"];
      [currentHandler handleFailureInFunction:v12 file:@"PXLocationStream.m" lineNumber:27 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = off_1E7748E78[status];
    v13 = 138412546;
    selfCopy2 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@ CLLocationManager did change authorization status: %@", &v13, 0x16u);
  }

  if ((status - 1) < 2)
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "denied";
      if (status == 1)
      {
        v10 = "restricted";
      }

      v13 = 138412546;
      selfCopy2 = self;
      v15 = 2080;
      v16 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%@ Unrecoverable failure: Authorization status %s.", &v13, 0x16u);
    }

    [(PXLocationStream *)self _closeStreamWithError];
  }

  else if ((status - 3) >= 2)
  {
    if (!status)
    {
      [(PXLocationStream *)self _requestAuthorization];
    }
  }

  else
  {
    [(PXLocationStream *)self _requestLocation];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [errorCopy localizedDescription];
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = localizedDescription;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "%@ CLLocationManager did fail with error: %@", &v8, 0x16u);
  }

  [(PXLocationStream *)self _closeStreamWithError];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v12 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = locationsCopy;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%@ CLLocationManager did update locations: %@", &v8, 0x16u);
  }

  lastObject = [locationsCopy lastObject];
  [(PXLocationStream *)self _emitLocation:lastObject];
}

- (void)_cleanup
{
  handler = self->_handler;
  self->_handler = 0;

  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  [(CLLocationManager *)self->_locationManager setDelegate:0];
  locationManager = self->_locationManager;
  self->_locationManager = 0;
}

- (void)_closeStreamWithError
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(PXLocationStream *)self isClosed])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"![self isClosed]"}];
  }

  self->_state = 2;
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ Close with error.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  (*(self->_handler + 2))();
  WeakRetained = objc_loadWeakRetained(buf);
  [WeakRetained _cleanup];

  objc_destroyWeak(buf);
}

- (void)_emitLocation:(id)location
{
  v12 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (self->_state != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"PXLocationStreamStateOpen == _state"}];
  }

  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = locationCopy;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%@ Emit: %@", buf, 0x16u);
  }

  (*(self->_handler + 2))();
}

- (void)_requestLocation
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"PXLocationStreamStateInitial == _state"}];
  }

  self->_state = 1;
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%@ Open.", buf, 0xCu);
  }

  [(CLLocationManager *)self->_locationManager startUpdatingLocation];
}

- (void)_requestAuthorization
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"PXLocationStreamStateInitial == _state"}];
  }

  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%@ Requesting authorization...", buf, 0xCu);
  }

  [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
}

- (void)_open
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"PXLocationStreamStateInitial == _state"}];
  }

  if (([MEMORY[0x1E695FBE8] locationServicesEnabled] & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v7 = "%@ Unrecoverable failure: Location services are disabled.";
      v8 = v5;
      v9 = 12;
LABEL_11:
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }

LABEL_12:

    [(PXLocationStream *)self _closeStreamWithError];
    return;
  }

  authorizationStatus = [MEMORY[0x1E695FBE8] authorizationStatus];
  v4 = PLUIGetLog();
  v5 = v4;
  if ((authorizationStatus - 1) <= 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "denied";
      if (authorizationStatus == 1)
      {
        v6 = "restricted";
      }

      *buf = 138412546;
      selfCopy3 = self;
      v16 = 2080;
      v17 = v6;
      v7 = "%@ Unrecoverable failure: Authorization status %s.";
      v8 = v5;
      v9 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "%@ Opening...", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695FBE8]);
  locationManager = self->_locationManager;
  self->_locationManager = v10;

  [(CLLocationManager *)self->_locationManager setDistanceFilter:self->_accuracy];
  [(CLLocationManager *)self->_locationManager setDesiredAccuracy:self->_accuracy];
  [(CLLocationManager *)self->_locationManager setDelegate:self];
}

- (void)setClosed:(BOOL)closed
{
  v9 = *MEMORY[0x1E69E9840];
  if (!closed)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"shouldClose"}];
  }

  if (![(PXLocationStream *)self isClosed])
  {
    self->_state = 2;
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ Close.", buf, 0xCu);
    }

    [(PXLocationStream *)self _cleanup];
  }
}

- (void)dealloc
{
  [(PXLocationStream *)self setClosed:1];
  v3.receiver = self;
  v3.super_class = PXLocationStream;
  [(PXLocationStream *)&v3 dealloc];
}

- (PXLocationStream)initWithAccuracy:(double)accuracy handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v8 = handlerCopy;
  if (accuracy < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"accuracy >= 0.f"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_3;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXLocationStream.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PXLocationStream;
  v9 = [(PXLocationStream *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 0;
    v9->_accuracy = accuracy;
    v11 = [v8 copy];
    handler = v10->_handler;
    v10->_handler = v11;

    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "%@ Create.", buf, 0xCu);
    }

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PXLocationStream *)v10 performSelector:sel__open withObject:0 afterDelay:0.0];
    }

    else
    {
      objc_initWeak(buf, v10);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PXLocationStream_initWithAccuracy_handler___block_invoke;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v18, buf);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }

  return v10;
}

void __45__PXLocationStream_initWithAccuracy_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _open];
}

@end