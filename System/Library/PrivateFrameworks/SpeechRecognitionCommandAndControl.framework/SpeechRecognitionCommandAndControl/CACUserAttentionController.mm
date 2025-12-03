@interface CACUserAttentionController
- (BOOL)_detectionStartedForType:(unint64_t)type;
- (BOOL)_restartFaceAttentionAwarenessClient:(id *)client;
- (BOOL)_startFaceAttentionAwarenessClient:(id *)client;
- (BOOL)_startTouchAttentionAwarenessClient:(id *)client;
- (BOOL)_stopFaceAttentionAwarenessClient:(id *)client;
- (BOOL)_stopTouchAttentionAwarenessClient:(id *)client;
- (BOOL)startIfNeededForTypes:(unint64_t)types error:(id *)error;
- (BOOL)stopIfNeededForTypes:(unint64_t)types error:(id *)error;
- (CACUserAttentionController)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection;
- (CACUserAttentionController)initWithSignalProviderFactory:(id)factory supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection;
- (CACUserAttentionControllerDelegate)delegate;
- (void)_handleFaceAttentionEvent:(id)event;
- (void)_handleFaceInterruptNotification:(unint64_t)notification;
- (void)_handleTouchAttentionEvent:(id)event;
- (void)_setDetectionStarted:(BOOL)started forType:(unint64_t)type;
- (void)_startWakeGestureManagerIfNeeded;
- (void)_stopWakeGestureManagerIfNeeded;
- (void)dealloc;
- (void)startIfNeededForTypes:(unint64_t)types completionQueue:(id)queue completion:(id)completion;
- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture;
@end

@implementation CACUserAttentionController

- (CACUserAttentionController)initWithSamplingInterval:(double)interval attentionLossTimeout:(double)timeout supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection
{
  detectionCopy = detection;
  v9 = [[CACUserAttentionSignalProviderFactory alloc] initWithSamplingInterval:events attentionLossTimeout:interval supportedAttentionAwarenessEvents:timeout];
  v10 = [(CACUserAttentionController *)self initWithSignalProviderFactory:v9 supportedAttentionAwarenessEvents:events deviceSupportsRaiseGestureDetection:detectionCopy];

  return v10;
}

- (CACUserAttentionController)initWithSignalProviderFactory:(id)factory supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection
{
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = CACUserAttentionController;
  v10 = [(CACUserAttentionController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_userAttentionSignalProviderFactory, factory);
    v11->_supportedAttentionAwarenessEvents = events;
    v11->_deviceSupportsRaiseGestureDetection = detection;
    v11->_deviceLowered = 0;
    v12 = dispatch_queue_create("com.apple.SpeechRecognitionCore.AttentionAwarenessQueue", 0);
    attentionAwarenessHandlerQueue = v11->_attentionAwarenessHandlerQueue;
    v11->_attentionAwarenessHandlerQueue = v12;
  }

  return v11;
}

- (void)dealloc
{
  v13 = 0;
  v3 = [(CACUserAttentionController *)self stopIfNeeded:&v13];
  v4 = v13;
  if (!v3)
  {
    v5 = CACLogAttentionAware();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CACUserAttentionController *)v4 dealloc:v5];
    }
  }

  v12.receiver = self;
  v12.super_class = CACUserAttentionController;
  [(CACUserAttentionController *)&v12 dealloc];
}

- (BOOL)startIfNeededForTypes:(unint64_t)types error:(id *)error
{
  typesCopy = types;
  if ((types & 1) != 0 && ![(CACUserAttentionController *)self _detectionStartedForType:1])
  {
    if (![(CACUserAttentionController *)self _startFaceAttentionAwarenessClient:error])
    {
      return 0;
    }

    [(CACUserAttentionController *)self _setDetectionStarted:1 forType:1];
  }

  if ((typesCopy & 2) != 0 && ![(CACUserAttentionController *)self _detectionStartedForType:2])
  {
    if ([(CACUserAttentionController *)self _startTouchAttentionAwarenessClient:error])
    {
      [(CACUserAttentionController *)self _setDetectionStarted:1 forType:2];
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  if ((typesCopy & 4) == 0 || [(CACUserAttentionController *)self _detectionStartedForType:4])
  {
    return 1;
  }

  [(CACUserAttentionController *)self _startWakeGestureManagerIfNeeded];
  v7 = 1;
  [(CACUserAttentionController *)self _setDetectionStarted:1 forType:4];
  return v7;
}

- (BOOL)stopIfNeededForTypes:(unint64_t)types error:(id *)error
{
  typesCopy = types;
  if ((types & 1) != 0 && [(CACUserAttentionController *)self _detectionStartedForType:1])
  {
    v7 = [(CACUserAttentionController *)self _stopFaceAttentionAwarenessClient:error];
    if (!v7)
    {
      return v7;
    }

    [(CACUserAttentionController *)self _setDetectionStarted:0 forType:1];
  }

  if ((typesCopy & 2) != 0 && [(CACUserAttentionController *)self _detectionStartedForType:2])
  {
    v7 = [(CACUserAttentionController *)self _stopTouchAttentionAwarenessClient:error];
    if (!v7)
    {
      return v7;
    }

    [(CACUserAttentionController *)self _setDetectionStarted:0 forType:2];
  }

  if ((typesCopy & 4) != 0 && [(CACUserAttentionController *)self _detectionStartedForType:4])
  {
    [(CACUserAttentionController *)self _stopWakeGestureManagerIfNeeded];
    [(CACUserAttentionController *)self _setDetectionStarted:0 forType:4];
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (BOOL)_startFaceAttentionAwarenessClient:(id *)client
{
  faceAttentionAwarenessClient = [(CACUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory faceAttentionAwarenessClient];
  faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;
  self->_faceAttentionAwarenessClient = faceAttentionAwarenessClient;

  objc_initWeak(&location, self);
  v7 = self->_faceAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__CACUserAttentionController__startFaceAttentionAwarenessClient___block_invoke;
  v15[3] = &unk_279CEC0C0;
  objc_copyWeak(&v16, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:v15];
  v9 = self->_faceAttentionAwarenessClient;
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__CACUserAttentionController__startFaceAttentionAwarenessClient___block_invoke_2;
  v13[3] = &unk_279CEC0E8;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v9 setNotificationHandlerWithQueue:v10 block:v13];

  LOBYTE(client) = [(AWAttentionAwarenessClient *)self->_faceAttentionAwarenessClient resumeWithError:client];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return client;
}

void __65__CACUserAttentionController__startFaceAttentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFaceAttentionEvent:v3];
}

void __65__CACUserAttentionController__startFaceAttentionAwarenessClient___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFaceInterruptNotification:a2];
}

- (BOOL)_startTouchAttentionAwarenessClient:(id *)client
{
  touchAttentionAwarenessClient = [(CACUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory touchAttentionAwarenessClient];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = touchAttentionAwarenessClient;

  objc_initWeak(&location, self);
  v7 = self->_touchAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66__CACUserAttentionController__startTouchAttentionAwarenessClient___block_invoke;
  v13 = &unk_279CEC0C0;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(client) = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient resumeWithError:client, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return client;
}

void __66__CACUserAttentionController__startTouchAttentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouchAttentionEvent:v3];
}

- (BOOL)_stopFaceAttentionAwarenessClient:(id *)client
{
  v4 = [(AWAttentionAwarenessClient *)self->_faceAttentionAwarenessClient invalidateWithError:client];
  faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;
  self->_faceAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_stopTouchAttentionAwarenessClient:(id *)client
{
  v4 = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient invalidateWithError:client];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_restartFaceAttentionAwarenessClient:(id *)client
{
  if ([(CACUserAttentionController *)self _detectionStartedForType:1])
  {
    faceAttentionAwarenessClient = self->_faceAttentionAwarenessClient;

    return [(AWAttentionAwarenessClient *)faceAttentionAwarenessClient resetAttentionLostTimeoutWithError:client];
  }

  else
  {

    return [(CACUserAttentionController *)self startIfNeededForTypes:1 error:client];
  }
}

- (void)_handleFaceAttentionEvent:(id)event
{
  eventMask = [event eventMask];
  if ([(CACUserAttentionController *)self _isDeviceLowered])
  {
    v5 = 0;
    v6 = 2;
  }

  else
  {
    v7 = 1;
    v8 = 3;
    if ((eventMask & 8) == 0)
    {
      v8 = (eventMask >> 7) & 4;
    }

    if ((eventMask & 0x80) == 0)
    {
      v7 = v8;
    }

    v9 = (eventMask & 1) == 0;
    if (eventMask)
    {
      v5 = 0;
    }

    else
    {
      v5 = v7;
    }

    v6 = !v9;
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CACUserAttentionController__handleFaceAttentionEvent___block_invoke;
  v10[3] = &unk_279CEC110;
  v11[1] = v6;
  objc_copyWeak(v11, &location);
  v11[2] = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __56__CACUserAttentionController__handleFaceAttentionEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didLoseAttentionWithEvent:*(a1 + 40)];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didGainAttentionWithEvent:*(a1 + 48)];
  }
}

- (void)_handleFaceInterruptNotification:(unint64_t)notification
{
  if (notification == 2)
  {
    delegate = [(CACUserAttentionController *)self delegate];
    [delegate userAttentionControllerAttentionAwarenessInterruptionEnded:self];
  }

  else
  {
    if (notification != 1)
    {
      return;
    }

    delegate = [(CACUserAttentionController *)self delegate];
    [delegate userAttentionControllerAttentionAwarenessInterrupted:self];
  }
}

- (void)_handleTouchAttentionEvent:(id)event
{
  eventMask = [event eventMask];
  if ((eventMask & 8) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = (eventMask >> 7) & 4;
  }

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CACUserAttentionController__handleTouchAttentionEvent___block_invoke;
  v6[3] = &unk_279CEC110;
  v7[1] = 0;
  objc_copyWeak(v7, &location);
  v7[2] = v5;
  dispatch_async(MEMORY[0x277D85CD0], v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __57__CACUserAttentionController__handleTouchAttentionEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didLoseAttentionWithEvent:*(a1 + 40)];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 userAttentionController:v3 didGainAttentionWithEvent:*(a1 + 48)];
  }
}

- (void)_startWakeGestureManagerIfNeeded
{
  if (![(CACUserAttentionController *)self _deviceSupportsFaceDetection]&& self->_deviceSupportsRaiseGestureDetection)
  {
    wakeGestureManager = [(CACUserAttentionSignalProviderFactory *)self->_userAttentionSignalProviderFactory wakeGestureManager];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = wakeGestureManager;

    [(CMWakeGestureManager *)self->_wakeGestureManager setDelegate:self];
    v5 = self->_wakeGestureManager;

    [(CMWakeGestureManager *)v5 startWakeGestureUpdates];
  }
}

- (void)_stopWakeGestureManagerIfNeeded
{
  if (![(CACUserAttentionController *)self _deviceSupportsFaceDetection]&& self->_deviceSupportsRaiseGestureDetection)
  {
    [(CMWakeGestureManager *)self->_wakeGestureManager stopWakeGestureUpdates];
    [(CMWakeGestureManager *)self->_wakeGestureManager setDelegate:0];
    wakeGestureManager = self->_wakeGestureManager;
    self->_wakeGestureManager = 0;
  }
}

- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CACUserAttentionController_wakeGestureManager_didUpdateWakeGesture___block_invoke;
  block[3] = &unk_279CEC138;
  v6[1] = gesture;
  objc_copyWeak(v6, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __70__CACUserAttentionController_wakeGestureManager_didUpdateWakeGesture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 - 2) >= 2)
  {
    if (v2 != 1)
    {
      v6 = 0;
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _setDeviceLowered:0];

    v15 = objc_loadWeakRetained((a1 + 32));
    v26 = 0;
    v16 = [v15 stopIfNeededForTypes:1 error:&v26];
    v6 = v26;

    if ((v16 & 1) == 0)
    {
      v17 = CACLogAttentionAware();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __70__CACUserAttentionController_wakeGestureManager_didUpdateWakeGesture___block_invoke_cold_1(v6, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    v24 = [v7 delegate];
    v25 = objc_loadWeakRetained((a1 + 32));
    [v24 userAttentionController:v25 didGainAttentionWithEvent:2];

    goto LABEL_11;
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _setDeviceLowered:1];

  v4 = objc_loadWeakRetained((a1 + 32));
  v27 = 0;
  v5 = [v4 _restartFaceAttentionAwarenessClient:&v27];
  v6 = v27;

  if ((v5 & 1) == 0)
  {
    v7 = CACLogAttentionAware();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__CACUserAttentionController_wakeGestureManager_didUpdateWakeGesture___block_invoke_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_11:
  }

LABEL_13:
}

- (BOOL)_detectionStartedForType:(unint64_t)type
{
  attentionDetectionStatuses = self->_attentionDetectionStatuses;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v5 = [(NSMutableDictionary *)attentionDetectionStatuses objectForKeyedSubscript:v4];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)_setDetectionStarted:(BOOL)started forType:(unint64_t)type
{
  startedCopy = started;
  attentionDetectionStatuses = self->_attentionDetectionStatuses;
  if (attentionDetectionStatuses)
  {
    dictionary = attentionDetectionStatuses;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = self->_attentionDetectionStatuses;
  self->_attentionDetectionStatuses = dictionary;

  v12 = [MEMORY[0x277CCABB0] numberWithBool:startedCopy];
  v10 = self->_attentionDetectionStatuses;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(NSMutableDictionary *)v10 setObject:v12 forKeyedSubscript:v11];
}

- (CACUserAttentionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startIfNeededForTypes:(unint64_t)types completionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = completionCopy;
  if (queueCopy && completionCopy)
  {
    if (!self->_asynchronousCallQueue)
    {
      v11 = dispatch_queue_create("com.apple.SpeechRecognitionCore.CACUserAttentionControllerQueue", 0);
      asynchronousCallQueue = self->_asynchronousCallQueue;
      self->_asynchronousCallQueue = v11;
    }

    objc_initWeak(&location, self);
    v13 = self->_asynchronousCallQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__CACUserAttentionController_AsynchronousMethods__startIfNeededForTypes_completionQueue_completion___block_invoke;
    block[3] = &unk_279CEC188;
    objc_copyWeak(v17, &location);
    v17[1] = types;
    v15 = queueCopy;
    v16 = v10;
    dispatch_async(v13, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

void __100__CACUserAttentionController_AsynchronousMethods__startIfNeededForTypes_completionQueue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v11 = 0;
  [WeakRetained startIfNeededForTypes:v3 error:&v11];
  v4 = v11;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__CACUserAttentionController_AsynchronousMethods__startIfNeededForTypes_completionQueue_completion___block_invoke_2;
  block[3] = &unk_279CEC160;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

@end