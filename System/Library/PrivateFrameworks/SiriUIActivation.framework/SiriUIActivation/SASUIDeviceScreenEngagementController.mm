@interface SASUIDeviceScreenEngagementController
- (BOOL)_detectionStartedForType:(unint64_t)a3;
- (BOOL)_startButtonPressAttentionAwarenessClient:(id *)a3;
- (BOOL)_startTouchAttentionAwarenessClient:(id *)a3;
- (BOOL)_stopButtonPressAttentionAwarenessClient:(id *)a3;
- (BOOL)_stopTouchAttentionAwarenessClient:(id *)a3;
- (BOOL)startIfNeededForTypes:(unint64_t)a3 error:(id *)a4;
- (BOOL)stopIfNeededForTypes:(unint64_t)a3 error:(id *)a4;
- (SASUIDeviceScreenEngagementController)initWithSamplingInterval:(double)a3 attentionLostTimeout:(double)a4;
- (SASUIDeviceScreenEngagementController)initWithSignalProviderFactory:(id)a3;
- (SASUIDeviceScreenEngagementControllerDelegate)delegate;
- (void)_handleButtonPressAttentionEvent:(id)a3;
- (void)_handleTouchAttentionEvent:(id)a3;
- (void)dealloc;
- (void)startIfNeededForTypes:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5;
@end

@implementation SASUIDeviceScreenEngagementController

- (SASUIDeviceScreenEngagementControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SASUIDeviceScreenEngagementController)initWithSamplingInterval:(double)a3 attentionLostTimeout:(double)a4
{
  v5 = [[SASUIUserEngagementProviderFactory alloc] initWithSamplingInterval:a3 attentionLostTimeout:a4];
  v6 = [(SASUIDeviceScreenEngagementController *)self initWithSignalProviderFactory:v5];

  return v6;
}

- (SASUIDeviceScreenEngagementController)initWithSignalProviderFactory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SASUIDeviceScreenEngagementController;
  v6 = [(SASUIDeviceScreenEngagementController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userAttentionSignalProviderFactory, a3);
    v8 = dispatch_queue_create("com.apple.siri.AttentionAwarenessQueue", 0);
    attentionAwarenessHandlerQueue = v7->_attentionAwarenessHandlerQueue;
    v7->_attentionAwarenessHandlerQueue = v8;
  }

  return v7;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SASUIDeviceScreenEngagementController dealloc]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_21FEE5000, a2, OS_LOG_TYPE_ERROR, "%s Failed to stop user attention: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)_detectionStartedForType:(unint64_t)a3
{
  attentionDetectionStatuses = self->_attentionDetectionStatuses;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)attentionDetectionStatuses objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)_startTouchAttentionAwarenessClient:(id *)a3
{
  v5 = [(SASUIUserEngagementProviderFactory *)self->_userAttentionSignalProviderFactory touchAttentionAwarenessClient];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = v5;

  objc_initWeak(&location, self);
  v7 = self->_touchAttentionAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __77__SASUIDeviceScreenEngagementController__startTouchAttentionAwarenessClient___block_invoke;
  v13 = &unk_27842FED8;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(a3) = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient resumeWithError:a3, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return a3;
}

void __77__SASUIDeviceScreenEngagementController__startTouchAttentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTouchAttentionEvent:v3];
}

- (BOOL)_startButtonPressAttentionAwarenessClient:(id *)a3
{
  v5 = [(SASUIUserEngagementProviderFactory *)self->_userAttentionSignalProviderFactory buttonPressAwarenessClient];
  buttonPressAwarenessClient = self->_buttonPressAwarenessClient;
  self->_buttonPressAwarenessClient = v5;

  objc_initWeak(&location, self);
  v7 = self->_buttonPressAwarenessClient;
  attentionAwarenessHandlerQueue = self->_attentionAwarenessHandlerQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__SASUIDeviceScreenEngagementController__startButtonPressAttentionAwarenessClient___block_invoke;
  v13 = &unk_27842FED8;
  objc_copyWeak(&v14, &location);
  [(AWAttentionAwarenessClient *)v7 setEventHandlerWithQueue:attentionAwarenessHandlerQueue block:&v10];
  LOBYTE(a3) = [(AWAttentionAwarenessClient *)self->_buttonPressAwarenessClient resumeWithError:a3, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return a3;
}

void __83__SASUIDeviceScreenEngagementController__startButtonPressAttentionAwarenessClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleButtonPressAttentionEvent:v3];
}

- (void)_handleTouchAttentionEvent:(id)a3
{
  v4 = [a3 eventMask];
  if ((v4 & 8) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = (v4 >> 7) & 4;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SASUIDeviceScreenEngagementController__handleTouchAttentionEvent___block_invoke;
  block[3] = &unk_27842FF00;
  v7[1] = v5;
  objc_copyWeak(v7, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __68__SASUIDeviceScreenEngagementController__handleTouchAttentionEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 deviceScreenEngagementController:v3 didGainAttentionWithEvent:*(a1 + 40)];
  }
}

- (void)_handleButtonPressAttentionEvent:(id)a3
{
  v4 = (([a3 eventMask] << 62 >> 63) & 5);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SASUIDeviceScreenEngagementController__handleButtonPressAttentionEvent___block_invoke;
  block[3] = &unk_27842FF00;
  v6[1] = v4;
  objc_copyWeak(v6, &location);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __74__SASUIDeviceScreenEngagementController__handleButtonPressAttentionEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained delegate];
    v3 = objc_loadWeakRetained((a1 + 32));
    [v2 deviceScreenEngagementController:v3 didGainAttentionWithEvent:*(a1 + 40)];
  }
}

- (BOOL)startIfNeededForTypes:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  if ((a3 & 2) != 0 && ![(SASUIDeviceScreenEngagementController *)self _detectionStartedForType:2])
  {
    if (![(SASUIDeviceScreenEngagementController *)self _startTouchAttentionAwarenessClient:a4])
    {
      return 0;
    }

    [(SASUIDeviceScreenEngagementController *)self _setDetectionStarted:1 forType:2];
  }

  if ((v5 & 8) != 0 && ![(SASUIDeviceScreenEngagementController *)self _detectionStartedForType:8])
  {
    if ([(SASUIDeviceScreenEngagementController *)self _startButtonPressAttentionAwarenessClient:a4])
    {
      v7 = 1;
      [(SASUIDeviceScreenEngagementController *)self _setDetectionStarted:1 forType:8];
      return v7;
    }

    return 0;
  }

  return 1;
}

- (BOOL)stopIfNeededForTypes:(unint64_t)a3 error:(id *)a4
{
  if ([(SASUIDeviceScreenEngagementController *)self _detectionStartedForType:2])
  {
    v6 = [(SASUIDeviceScreenEngagementController *)self _stopTouchAttentionAwarenessClient:a4];
    if (!v6)
    {
      return v6;
    }

    [(SASUIDeviceScreenEngagementController *)self _setDetectionStarted:0 forType:2];
  }

  if (![(SASUIDeviceScreenEngagementController *)self _detectionStartedForType:8])
  {
LABEL_7:
    LOBYTE(v6) = 1;
    return v6;
  }

  v6 = [(SASUIDeviceScreenEngagementController *)self _stopButtonPressAttentionAwarenessClient:a4];
  if (v6)
  {
    [(SASUIDeviceScreenEngagementController *)self _setDetectionStarted:0 forType:8];
    goto LABEL_7;
  }

  return v6;
}

- (BOOL)_stopTouchAttentionAwarenessClient:(id *)a3
{
  v4 = [(AWAttentionAwarenessClient *)self->_touchAttentionAwarenessClient invalidateWithError:a3];
  touchAttentionAwarenessClient = self->_touchAttentionAwarenessClient;
  self->_touchAttentionAwarenessClient = 0;

  return v4;
}

- (BOOL)_stopButtonPressAttentionAwarenessClient:(id *)a3
{
  v4 = [(AWAttentionAwarenessClient *)self->_buttonPressAwarenessClient invalidateWithError:a3];
  buttonPressAwarenessClient = self->_buttonPressAwarenessClient;
  self->_buttonPressAwarenessClient = 0;

  return v4;
}

- (void)startIfNeededForTypes:(unint64_t)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    if (!self->_asynchronousCallQueue)
    {
      v11 = dispatch_queue_create("com.apple.siri.SASUIDeviceScreenEngagementControllerQueue", 0);
      asynchronousCallQueue = self->_asynchronousCallQueue;
      self->_asynchronousCallQueue = v11;
    }

    objc_initWeak(&location, self);
    v13 = self->_asynchronousCallQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__SASUIDeviceScreenEngagementController_AsynchronousMethods__startIfNeededForTypes_completionQueue_completion___block_invoke;
    block[3] = &unk_27842FF50;
    objc_copyWeak(v17, &location);
    v17[1] = a3;
    v15 = v8;
    v16 = v10;
    dispatch_async(v13, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

void __111__SASUIDeviceScreenEngagementController_AsynchronousMethods__startIfNeededForTypes_completionQueue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56);
  v11 = 0;
  [WeakRetained startIfNeededForTypes:v3 error:&v11];
  v4 = v11;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__SASUIDeviceScreenEngagementController_AsynchronousMethods__startIfNeededForTypes_completionQueue_completion___block_invoke_2;
  block[3] = &unk_27842FF28;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

@end