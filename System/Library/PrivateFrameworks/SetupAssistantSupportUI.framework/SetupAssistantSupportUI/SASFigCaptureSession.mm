@interface SASFigCaptureSession
- (BOOL)captureLayer:(id)a3 error:(id *)captureSessionQueue;
- (BOOL)captureView:(id)a3 error:(id *)a4;
- (SASFigCaptureSession)init;
- (SASFigCaptureSessionObserver)captureObserver;
- (void)_captureSessionQueue_updateCapture;
- (void)_teardownCapture;
- (void)dealloc;
- (void)invalidate;
- (void)screenCaptureController:(id)a3 didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a4 transformFlags:(unint64_t)a5;
- (void)setCaptureObserver:(id)a3;
@end

@implementation SASFigCaptureSession

- (SASFigCaptureSession)init
{
  v10.receiver = self;
  v10.super_class = SASFigCaptureSession;
  v2 = [(SASFigCaptureSession *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x277CBF398] + 16);
    *(v2 + 8) = *MEMORY[0x277CBF398];
    *(v2 + 24) = v4;
    Serial = BSDispatchQueueCreateSerial();
    captureSessionQueue = v3->_captureSessionQueue;
    v3->_captureSessionQueue = Serial;

    v7 = objc_opt_new();
    invalidationSignal = v3->_invalidationSignal;
    v3->_invalidationSignal = v7;
  }

  return v3;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_invalidationSignal hasBeenSignalled]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SASFigCaptureSession.m";
    v16 = 1024;
    v17 = 43;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_265A4C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)captureView:(id)a3 error:(id *)a4
{
  v6 = [a3 layer];
  LOBYTE(a4) = [(SASFigCaptureSession *)self captureLayer:v6 error:a4];

  return a4;
}

- (BOOL)captureLayer:(id)a3 error:(id *)captureSessionQueue
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v27 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA470];
    v44[0] = @"Missing layer";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    *captureSessionQueue = [v27 errorWithDomain:@"com.apple.setupassistantsupportui" code:-1 userInfo:v28];

    goto LABEL_12;
  }

  v8 = [v6 context];
  v9 = [v8 contextId];

  if (v9)
  {
    [v7 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v7 contentsScale];
    v19 = v18;
    [v7 contentsScale];
    CGAffineTransformMakeScale(&v37, v19, v20);
    v45.origin.x = v11;
    v45.origin.y = v13;
    v45.size.width = v15;
    v45.size.height = v17;
    v46 = CGRectApplyAffineTransform(v45, &v37);
    x = v46.origin.x;
    if (v46.size.width >= 1.0)
    {
      height = v46.size.height;
      if (v46.size.height >= 1.0)
      {
        y = v46.origin.y;
        width = v46.size.width;
        if (!CGRectIsNull(v46))
        {
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          if (!CGRectIsInfinite(v47))
          {
            v32 = self;
            objc_sync_enter(v32);
            v32->_sourceBounds.origin.x = x;
            v32->_sourceBounds.origin.y = y;
            v32->_sourceBounds.size.width = width;
            v32->_sourceBounds.size.height = height;
            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
            v38 = v33;
            v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
            [(SASFigCaptureSession *)v32 setContextIdentifiers:v34];

            objc_sync_exit(v32);
            objc_initWeak(&v37, v32);
            captureSessionQueue = v32->_captureSessionQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __43__SASFigCaptureSession_captureLayer_error___block_invoke;
            block[3] = &unk_279BB2B50;
            objc_copyWeak(&v36, &v37);
            dispatch_async(captureSessionQueue, block);
            objc_destroyWeak(&v36);
            objc_destroyWeak(&v37);
            LOBYTE(captureSessionQueue) = 1;
            goto LABEL_13;
          }
        }
      }
    }

    if (captureSessionQueue)
    {
      v25 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA470];
      v40 = @"layer has invalid geometry";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *captureSessionQueue = [v25 errorWithDomain:@"com.apple.setupassistantsupportui" code:-1 userInfo:v26];

LABEL_12:
      LOBYTE(captureSessionQueue) = 0;
    }
  }

  else if (captureSessionQueue)
  {
    v29 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA470];
    v42 = @"layer is not currently attached, please try again";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *captureSessionQueue = [v29 errorWithDomain:@"com.apple.setupassistantsupportui" code:-1 userInfo:v30];

    goto LABEL_12;
  }

LABEL_13:

  return captureSessionQueue;
}

void __43__SASFigCaptureSession_captureLayer_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _captureSessionQueue_updateCapture];
    WeakRetained = v2;
  }
}

- (SASFigCaptureSessionObserver)captureObserver
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_captureObserver);
  objc_sync_exit(v2);

  return WeakRetained;
}

- (void)setCaptureObserver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  WeakRetained = objc_loadWeakRetained(&v5->_captureObserver);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&v5->_captureObserver, v4);
    objc_initWeak(&location, v5);
    captureController = v5->_captureController;
    if (v4)
    {
      if (!captureController)
      {
        captureSessionQueue = v5->_captureSessionQueue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __43__SASFigCaptureSession_setCaptureObserver___block_invoke;
        v13[3] = &unk_279BB2B50;
        v9 = &v14;
        objc_copyWeak(&v14, &location);
        v10 = v13;
LABEL_7:
        dispatch_async(captureSessionQueue, v10);
        objc_destroyWeak(v9);
      }
    }

    else if (captureController)
    {
      captureSessionQueue = v5->_captureSessionQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__SASFigCaptureSession_setCaptureObserver___block_invoke_2;
      block[3] = &unk_279BB2B50;
      v9 = &v12;
      objc_copyWeak(&v12, &location);
      v10 = block;
      goto LABEL_7;
    }

    objc_destroyWeak(&location);
  }

  objc_sync_exit(v5);
}

void __43__SASFigCaptureSession_setCaptureObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _captureSessionQueue_updateCapture];
    WeakRetained = v2;
  }
}

void __43__SASFigCaptureSession_setCaptureObserver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _teardownCapture];
    WeakRetained = v2;
  }
}

- (void)invalidate
{
  v3 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_265A4C000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate capture session", v4, 2u);
  }

  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    [(SASFigCaptureSession *)self _teardownCapture];
    [(SASFigCaptureSession *)self setContextIdentifiers:0];
    [(SASFigCaptureSession *)self setCaptureObserver:0];
  }
}

- (void)_teardownCapture
{
  v3 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_265A4C000, v3, OS_LOG_TYPE_DEFAULT, "Tear down capture session", v6, 2u);
  }

  captureController = self->_captureController;
  self->_captureController = 0;
  v5 = captureController;

  [(FigScreenCaptureController *)v5 setDelegate:0];
  [(FigScreenCaptureController *)v5 stopCapture];
}

- (void)_captureSessionQueue_updateCapture
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_captureSessionQueue);
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v3 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12.value) = 0;
      v4 = "Capture session already invalidated";
LABEL_15:
      _os_log_impl(&dword_265A4C000, v3, OS_LOG_TYPE_DEFAULT, v4, &v12, 2u);
    }
  }

  else
  {
    if (self->_captureController)
    {
      [(SASFigCaptureSession *)self _teardownCapture];
    }

    v5 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12.value) = 0;
      _os_log_impl(&dword_265A4C000, v5, OS_LOG_TYPE_DEFAULT, "Update capture session", &v12, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_captureObserver);
    if (WeakRetained)
    {
      v3 = [(SASFigCaptureSession *)self contextIdentifiers];
      if ([v3 count]&& !CGRectIsNull(self->_sourceBounds))
      {
        v7 = objc_alloc_init(MEMORY[0x277CD6130]);
        [v7 setSize:self->_sourceBounds.size.width, self->_sourceBounds.size.height];
        CMTimeMake(&v12, 1, 60);
        [v7 setMinFrameInterval:&v12];
        [v7 setContentIDs:v3];
        [v7 setPixelFormat:1999843442];
        v9 = [MEMORY[0x277CD6138] screenCaptureControllerWithCaptureConfiguration:v7];
        captureController = self->_captureController;
        self->_captureController = v9;
        v11 = v9;

        [(FigScreenCaptureController *)v11 setDelegate:self];
        [(FigScreenCaptureController *)v11 startCapture];
      }

      else
      {
        v7 = +[SASUILogging bookendFacility];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v3 count];
          LODWORD(v12.value) = 134217984;
          *(&v12.value + 4) = v8;
          _os_log_impl(&dword_265A4C000, v7, OS_LOG_TYPE_DEFAULT, "Failed to start capture session for contexts: %ld", &v12, 0xCu);
        }
      }
    }

    else
    {
      v3 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12.value) = 0;
        v4 = "Waiting for observer";
        goto LABEL_15;
      }
    }
  }
}

- (void)screenCaptureController:(id)a3 didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a4 transformFlags:(unint64_t)a5
{
  v7 = a3;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    captureSessionQueue = self->_captureSessionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__SASFigCaptureSession_screenCaptureController_didReceiveSampleBuffer_transformFlags___block_invoke;
    block[3] = &unk_279BB2BE0;
    v11 = v7;
    dispatch_async(captureSessionQueue, block);
  }

  else
  {
    v9 = [(SASFigCaptureSession *)self captureObserver];
    [v9 captureSession:self receivedSampleBuffer:a4];
  }
}

uint64_t __86__SASFigCaptureSession_screenCaptureController_didReceiveSampleBuffer_transformFlags___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  v2 = *(a1 + 32);

  return [v2 stopCapture];
}

@end