@interface MDARController
+ (BOOL)isSupported;
+ (unint64_t)vkARTrackingStateFromARTrackingState:(int64_t)a3;
+ (unint64_t)vkARTrackingStateReasonFromARTrackingStateReason:(int64_t)a3;
- (MDARController)init;
- (MDARControllerDelegate)delegate;
- (void)_avCaptureSessionWasInterrupted:(id)a3;
- (void)dealloc;
- (void)run:(BOOL)a3;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
@end

@implementation MDARController

- (MDARControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_avCaptureSessionWasInterrupted:(id)a3
{
  v4 = a3;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v5 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "AR AV capture session was interrupted", v11, 2u);
  }

  v6 = [v4 userInfo];
  v7 = getAVCaptureSessionInterruptionReasonKey();
  v8 = [v6 objectForKey:v7];
  v9 = [v8 integerValue];

  if ((v9 - 1) >= 4)
  {
    v10 = 1;
  }

  else
  {
    v10 = qword_1B3415310[v9 - 1];
  }

  self->_sessionInterruptedReason = v10;
}

- (void)sessionInterruptionEnded:(id)a3
{
  self->_sessionInterruptedReason = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 arControllerSessionInterruptionEnded:self];
  }
}

- (void)sessionWasInterrupted:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v4 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sessionInterruptedReason = self->_sessionInterruptedReason;
    v9 = 134217984;
    v10 = sessionInterruptedReason;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "AR sessions was interrupted: %lu", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained == 0;

  if (!v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 arController:self arSessionWasInterrupted:self->_sessionInterruptedReason];
  }
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v6 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "AR did fail with error: %@", &v13, 0xCu);
  }

  v7 = [v5 code];
  if (v7 > 101)
  {
    if (v7 != 102)
    {
      if (v7 == 200)
      {
        v8 = 4;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v8 = 3;
  }

  else
  {
    if (v7 != 100)
    {
      if (v7 == 101)
      {
        v8 = 2;
        goto LABEL_15;
      }

LABEL_12:
      v8 = 0;
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Maps.AR" code:v8 userInfo:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained == 0;

  if (!v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 arController:self didEncounterError:v9];
  }
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v6 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 134218240;
    v11 = [v5 trackingState];
    v12 = 2048;
    v13 = [v5 trackingStateReason];
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "AR Tracking state changed: %ld, reason: %ld", &v10, 0x16u);
  }

  self->_trackingState = +[MDARController vkARTrackingStateFromARTrackingState:](MDARController, "vkARTrackingStateFromARTrackingState:", [v5 trackingState]);
  self->_trackingStateReason = +[MDARController vkARTrackingStateReasonFromARTrackingStateReason:](MDARController, "vkARTrackingStateReasonFromARTrackingStateReason:", [v5 trackingStateReason]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained == 0;

  if (!v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 arController:self didChangeTrackingState:self->_trackingState reason:self->_trackingStateReason];
  }
}

- (void)run:(BOOL)a3
{
  if (self->_sessionConfiguration)
  {
    session = self->_session;
    if (a3)
    {
      [ARSession runWithConfiguration:"runWithConfiguration:options:" options:?];
    }

    else
    {
      [(ARSession *)session runWithConfiguration:?];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(ARSession *)self->_session pause];
  session = self->_session;
  self->_session = 0;

  sessionConfiguration = self->_sessionConfiguration;
  self->_sessionConfiguration = 0;

  v6.receiver = self;
  v6.super_class = MDARController;
  [(MDARController *)&v6 dealloc];
}

- (MDARController)init
{
  v13.receiver = self;
  v13.super_class = MDARController;
  v2 = [(MDARController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_trackingStateReason = 0;
    v2->_sessionInterruptedReason = 0;
    v2->_trackingState = 2;
    if (LoadARKit(void)::loadPredicate != -1)
    {
      dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_27012);
    }

    v4 = objc_alloc_init(getARSessionClass());
    session = v3->_session;
    v3->_session = v4;

    [(ARSession *)v3->_session setDelegate:v3];
    sessionConfiguration = v3->_sessionConfiguration;
    v3->_sessionConfiguration = 0;

    if ([getARPositionalTrackingConfigurationClass() isSupported])
    {
      getARPositionalTrackingConfigurationClass();
      v7 = objc_opt_new();
      [(ARPositionalTrackingConfiguration *)v7 setPlaneDetection:0];
      [(ARPositionalTrackingConfiguration *)v7 setWorldAlignment:0];
      [(ARPositionalTrackingConfiguration *)v7 setLightEstimationEnabled:0];
      v8 = v3->_sessionConfiguration;
      v3->_sessionConfiguration = v7;
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = getAVCaptureSessionWasInterruptedNotification();
    [v9 addObserver:v3 selector:sel__avCaptureSessionWasInterrupted_ name:v10 object:0];

    v11 = v3;
  }

  return v3;
}

+ (unint64_t)vkARTrackingStateFromARTrackingState:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)vkARTrackingStateReasonFromARTrackingStateReason:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (BOOL)isSupported
{
  if (LoadARKit(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadARKit(void)::loadPredicate, &__block_literal_global_27012);
  }

  ARPositionalTrackingConfigurationClass = getARPositionalTrackingConfigurationClass();

  return [(objc_class *)ARPositionalTrackingConfigurationClass isSupported];
}

@end