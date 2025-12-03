@interface WFLocator
+ (void)determineLocationWithWorkflowEnvironment:(int64_t)environment completion:(id)completion;
+ (void)determineLocationWithWorkflowEnvironment:(int64_t)environment desiredAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion;
- (WFLocator)initWithWorkflowEnvironment:(int64_t)environment;
- (void)dealloc;
- (void)finishUpdatingLocation;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)requestLocation;
- (void)start;
- (void)startUpdatingLocation;
@end

@implementation WFLocator

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = getkCLErrorDomain();
  if (![domain isEqualToString:v7])
  {

LABEL_7:
    v10 = getWFWFLocatorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[WFLocator locationManager:didFailWithError:]";
      v18 = 2112;
      v19 = errorCopy;
      v12 = "%s Locator failed with unknown location error (%@) — finishing";
      v13 = v10;
      v14 = 22;
      goto LABEL_9;
    }

LABEL_10:

    [(WFLocator *)self finishUpdatingLocation];
    goto LABEL_11;
  }

  code = [errorCopy code];

  if (code)
  {
    goto LABEL_7;
  }

  useRequestLocation = [(WFLocator *)self useRequestLocation];
  v10 = getWFWFLocatorLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (useRequestLocation)
  {
    if (v11)
    {
      v16 = 136315138;
      v17 = "[WFLocator locationManager:didFailWithError:]";
      v12 = "%s Locator failed with unknown location error — since we're using request location, finishing...";
      v13 = v10;
      v14 = 12;
LABEL_9:
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v11)
  {
    v16 = 136315138;
    v17 = "[WFLocator locationManager:didFailWithError:]";
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Locator failed with unknown location error — CoreLocation will continue trying to find a location", &v16, 0xCu);
  }

LABEL_11:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v35 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = getWFWFLocatorLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315394;
    v32 = "[WFLocator locationManager:didUpdateLocations:]";
    v33 = 2112;
    v34 = locationsCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s did update with locations: %@", &v31, 0x16u);
  }

  lastObject = [locationsCopy lastObject];
  if ([(WFLocator *)self useRequestLocation])
  {
    [(WFLocator *)self setBestEffortLocation:lastObject];
LABEL_5:
    [(WFLocator *)self finishUpdatingLocation];
    goto LABEL_25;
  }

  timestamp = [lastObject timestamp];
  [timestamp timeIntervalSinceNow];
  v12 = -v11;

  [(WFLocator *)self timeout];
  if (v13 < v12)
  {
    v14 = getWFWFLocatorLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "[WFLocator locationManager:didUpdateLocations:]";
      v15 = "%s Ignoring location update due to stale location age";
LABEL_23:
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, v15, &v31, 0xCu);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  [lastObject horizontalAccuracy];
  if (v16 < 0.0)
  {
    v14 = getWFWFLocatorLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136315138;
      v32 = "[WFLocator locationManager:didUpdateLocations:]";
      v15 = "%s Ignoring location update since horizontal accuracy < 0";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  bestEffortLocation = [(WFLocator *)self bestEffortLocation];
  if (bestEffortLocation)
  {
    v18 = bestEffortLocation;
    bestEffortLocation2 = [(WFLocator *)self bestEffortLocation];
    [bestEffortLocation2 horizontalAccuracy];
    v21 = v20;
    [lastObject horizontalAccuracy];
    v23 = v22;

    if (v21 <= v23)
    {
      v14 = getWFWFLocatorLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315138;
        v32 = "[WFLocator locationManager:didUpdateLocations:]";
        v15 = "%s Dropping due to bad accuracy / not having a best effort location";
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  [(WFLocator *)self setBestEffortLocation:lastObject];
  [lastObject horizontalAccuracy];
  v25 = v24;
  [managerCopy desiredAccuracy];
  v27 = v26;
  v28 = getWFWFLocatorLogObject();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v25 <= v27)
  {
    if (v29)
    {
      v31 = 136315138;
      v32 = "[WFLocator locationManager:didUpdateLocations:]";
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_DEFAULT, "%s Location is within desired accuracy, will finish", &v31, 0xCu);
    }

    goto LABEL_5;
  }

  if (v29)
  {
    v31 = 136315138;
    v32 = "[WFLocator locationManager:didUpdateLocations:]";
    _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_DEFAULT, "%s Location is not within desired accuracy, dropping", &v31, 0xCu);
  }

LABEL_25:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)finishUpdatingLocation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = getWFWFLocatorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    completionHandler = [(WFLocator *)self completionHandler];
    v5 = _Block_copy(completionHandler);
    *buf = 136315394;
    v23 = "[WFLocator finishUpdatingLocation]";
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s finishing with completion handler: %@", buf, 0x16u);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_finishUpdatingLocation object:0];
  locationManager = [(WFLocator *)self locationManager];
  [locationManager stopUpdatingLocation];

  locationManager2 = [(WFLocator *)self locationManager];
  [locationManager2 setDelegate:0];

  [(WFLocator *)self setLocationManager:0];
  completionHandler2 = [(WFLocator *)self completionHandler];

  if (completionHandler2)
  {
    bestEffortLocation = [(WFLocator *)self bestEffortLocation];
    if (bestEffortLocation)
    {
      completionHandler3 = [(WFLocator *)self completionHandler];
      (completionHandler3)[2](completionHandler3, bestEffortLocation, 0);
    }

    else
    {
      currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
      if ([currentDevice hasCapability:*MEMORY[0x1E69E1060]])
      {
        v12 = @"Make sure your device isn’t in Airplane Mode and try again; turning WLAN on may help.";
      }

      else
      {
        v12 = @"Make sure your device isn’t in Airplane Mode and try again; turning Wi-Fi on may help.";
      }

      completionHandler3 = WFLocalizedString(v12);

      completionHandler4 = [(WFLocator *)self completionHandler];
      v14 = MEMORY[0x1E696ABC0];
      v15 = getkCLErrorDomain();
      v20[0] = *MEMORY[0x1E696A588];
      v16 = WFLocalizedString(@"Shortcuts was unable to find your current location.");
      v20[1] = *MEMORY[0x1E696A578];
      v21[0] = v16;
      v21[1] = completionHandler3;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v18 = [v14 errorWithDomain:v15 code:0 userInfo:{v17, v20[0]}];
      (completionHandler4)[2](completionHandler4, 0, v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingLocation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = getWFWFLocatorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFLocator startUpdatingLocation]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s startUpdatingLocation", &v6, 0xCu);
  }

  locationManager = [(WFLocator *)self locationManager];
  [locationManager startUpdatingLocation];

  [(WFLocator *)self timeout];
  [(WFLocator *)self performSelector:sel_finishUpdatingLocation withObject:0 afterDelay:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestLocation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = getWFWFLocatorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[WFLocator requestLocation]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s requestLocation", &v6, 0xCu);
  }

  locationManager = [(WFLocator *)self locationManager];
  [locationManager requestLocation];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = getWFWFLocatorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFLocator start]";
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting locator...", &v5, 0xCu);
  }

  if ([(WFLocator *)self useRequestLocation])
  {
    [(WFLocator *)self requestLocation];
  }

  else
  {
    [(WFLocator *)self startUpdatingLocation];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(CLLocationManager *)self->_locationManager setDelegate:0];
  [(CLInUseAssertion *)self->_inUseAssertion invalidate];
  v3.receiver = self;
  v3.super_class = WFLocator;
  [(WFLocator *)&v3 dealloc];
}

- (WFLocator)initWithWorkflowEnvironment:(int64_t)environment
{
  v13.receiver = self;
  v13.super_class = WFLocator;
  v4 = [(WFLocator *)&v13 init];
  if (v4)
  {
    v5 = WFCLLocationManagerWithOptions(environment, v4, MEMORY[0x1E69E96A0]);
    locationManager = v4->_locationManager;
    v4->_locationManager = v5;

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = WFCLInUseAssertionWithOptions(environment, v8);
    inUseAssertion = v4->_inUseAssertion;
    v4->_inUseAssertion = v9;

    v11 = v4;
  }

  return v4;
}

+ (void)determineLocationWithWorkflowEnvironment:(int64_t)environment desiredAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__WFLocator_determineLocationWithWorkflowEnvironment_desiredAccuracy_timeout_completion___block_invoke;
  v11[3] = &unk_1E837C5B0;
  accuracyCopy = accuracy;
  timeoutCopy = timeout;
  v12 = completionCopy;
  environmentCopy = environment;
  v10 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __89__WFLocator_determineLocationWithWorkflowEnvironment_desiredAccuracy_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = [[WFLocator alloc] initWithWorkflowEnvironment:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = [(WFLocator *)v2 locationManager];
  [v4 setDesiredAccuracy:v3];

  [(WFLocator *)v2 setTimeout:*(a1 + 56)];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__59251;
  v12[4] = __Block_byref_object_dispose__59252;
  v5 = v2;
  v13 = v5;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __89__WFLocator_determineLocationWithWorkflowEnvironment_desiredAccuracy_timeout_completion___block_invoke_180;
  v9 = &unk_1E837C588;
  v10 = *(a1 + 32);
  v11 = v12;
  [(WFLocator *)v5 setCompletionHandler:&v6];
  [(WFLocator *)v5 start:v6];

  _Block_object_dispose(v12, 8);
}

void __89__WFLocator_determineLocationWithWorkflowEnvironment_desiredAccuracy_timeout_completion___block_invoke_180(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

+ (void)determineLocationWithWorkflowEnvironment:(int64_t)environment completion:(id)completion
{
  completionCopy = completion;
  getkCLLocationAccuracyNearestTenMeters();
  [self determineLocationWithWorkflowEnvironment:environment desiredAccuracy:completionCopy completion:?];
}

@end