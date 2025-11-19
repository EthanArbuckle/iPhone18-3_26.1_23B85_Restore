@interface SFSiriClient
- (SFSiriClient)init;
- (void)_activate;
- (void)_completeAllRequestsWithError:(id)a3;
- (void)_completeRequest:(id)a3 error:(id)a4;
- (void)_deviceSetupEnd;
- (void)_deviceSetupPlayGreetingID:(int)a3 completion:(id)a4;
- (void)_deviceSetupPrepareGreetingFlow:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_invalidate;
- (void)_processQueuedRequests;
- (void)activate;
- (void)deviceSetupBegin:(unint64_t)a3;
- (void)deviceSetupEnd;
- (void)deviceSetupPlayGreetingID:(int)a3 completion:(id)a4;
- (void)deviceSetupPrepareGreeting:(id)a3;
- (void)didFinishSpeakingRequest:(id)a3 withError2:(id)a4;
- (void)didFinishSpeakingRequest:(id)a3 withError:(id)a4;
- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error2:(id)a5;
- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5;
- (void)invalidate;
- (void)invalidateWithFlags:(unsigned int)a3;
- (void)preWarmDeviceSetupWelcomePhaseWithCompletion:(id)a3;
- (void)request:(id)a3 didReceiveTimingInfo2:(id)a4;
- (void)request:(id)a3 didReceiveTimingInfo:(id)a4;
- (void)sessionService:(id)a3 didChangeStateFrom:(int64_t)a4 to:(int64_t)a5;
- (void)sessionService:(id)a3 willPresentFeedbackWithDialogIdentifier:(id)a4;
- (void)speakDeviceSetupWelcomePhaseWithCompletion:(id)a3;
- (void)speakPasscode:(id)a3 instructions:(id)a4 languageCode:(id)a5 voiceName:(id)a6 flags:(unsigned int)a7 completion:(id)a8;
- (void)speakText:(id)a3 flags:(unsigned int)a4 rate:(double)a5 delay:(double)a6 startHandler:(id)a7 completion:(id)a8;
- (void)speakText:(id)a3 languageCode:(id)a4 completion:(id)a5;
- (void)speakText:(id)a3 rate:(double)a4 completion:(id)a5;
- (void)startUtteranceRequest:(id)a3;
- (void)stopSpeaking;
@end

@implementation SFSiriClient

- (SFSiriClient)init
{
  v7.receiver = self;
  v7.super_class = SFSiriClient;
  v2 = [(SFSiriClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__SFSiriClient_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient _activate];
  }

  if (self->_siriDialogHandler)
  {
    siriServiceManager = self->_siriServiceManager;
    if (!siriServiceManager)
    {
      v4 = objc_alloc_init(getSVXClientServiceManagerClass());
      v5 = self->_siriServiceManager;
      self->_siriServiceManager = v4;

      siriServiceManager = self->_siriServiceManager;
    }

    v6 = [(SVXClientServiceManager *)siriServiceManager sessionService];
    [v6 setDelegate:self];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFSiriClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithFlags:(unsigned int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SFSiriClient_invalidateWithFlags___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __36__SFSiriClient_invalidateWithFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 12) = *(a1 + 40);
    v2 = *(a1 + 32);
  }

  return [v2 _invalidate];
}

- (void)_invalidate
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient _invalidate];
  }

  self->_invalidateCalled = 1;
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    v4 = currentTimer;
    dispatch_source_cancel(v4);
    v5 = self->_currentTimer;
    self->_currentTimer = 0;

    v6 = NSErrorWithOSStatusF();
    [(SFSiriClient *)self _completeRequest:self->_currentRequest error:v6];
LABEL_6:
    [(SFSiriClient *)self _completeAllRequestsWithError:v6];
LABEL_7:

    goto LABEL_8;
  }

  if ([(SFSiriRequest *)self->_currentRequest synthesizing])
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient _invalidate];
    }

    v11 = [(SFSiriRequest *)self->_currentRequest speechSynthesisRequest];
LABEL_24:
    v6 = v11;
    if (v11)
    {
      [(SiriTTSDaemonSession *)self->_speechSynthesizer cancelWithRequest:v11];
    }

    goto LABEL_7;
  }

  currentRequest = self->_currentRequest;
  if ((self->_invalidateFlags & 0x20) == 0)
  {
    if (currentRequest)
    {
      if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
      {
        [SFSiriClient _invalidate];
      }

      v11 = [(SFSiriRequest *)self->_currentRequest speechUtteranceRequest];
      goto LABEL_24;
    }

LABEL_31:
    v6 = NSErrorWithOSStatusF();
    goto LABEL_6;
  }

  if (!currentRequest)
  {
    goto LABEL_31;
  }

  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient _invalidate];
  }

LABEL_8:
  [(SFSiriClient *)self _deviceSetupEnd];
  siriDialogHandler = self->_siriDialogHandler;
  self->_siriDialogHandler = 0;

  v8 = [(SVXClientServiceManager *)self->_siriServiceManager sessionService];
  [v8 setDelegate:0];

  siriServiceManager = self->_siriServiceManager;
  self->_siriServiceManager = 0;

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    invalidationHandler = self->_invalidationHandler;
  }

  self->_invalidationHandler = 0;
}

- (void)preWarmDeviceSetupWelcomePhaseWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_cold_1();
  }

  if (!*(*(a1 + 32) + 88))
  {
    v2 = objc_alloc_init(getSVXClientServiceManagerClass());
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;
  }

  v5 = objc_alloc(getSVXSystemEventClass());
  v6 = [v5 initWithType:1 timestamp:mach_absolute_time()];
  v7 = [*(*(a1 + 32) + 88) activationService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_2;
  v9[3] = &unk_1E788B318;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v7 prewarmForSystemEvent:v6 completion:v9];
}

void __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_2_cold_1();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SFSiriClient_preWarmDeviceSetupWelcomePhaseWithCompletion___block_invoke_3;
    block[3] = &unk_1E788B1C0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)speakDeviceSetupWelcomePhaseWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_cold_1();
  }

  if (!*(*(a1 + 32) + 88))
  {
    v2 = objc_alloc_init(getSVXClientServiceManagerClass());
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;
  }

  v5 = objc_alloc(getSVXSystemEventClass());
  v6 = [v5 initWithType:1 timestamp:mach_absolute_time()];
  v7 = [*(*(a1 + 32) + 88) activationService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_2;
  v9[3] = &unk_1E788CB38;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v7 activateWithSystemEvent:v6 userInfo:0 completion:v9];
}

void __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_2_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__SFSiriClient_speakDeviceSetupWelcomePhaseWithCompletion___block_invoke_3;
    v6[3] = &unk_1E788B318;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)speakPasscode:(id)a3 instructions:(id)a4 languageCode:(id)a5 voiceName:(id)a6 flags:(unsigned int)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SFSiriClient_speakPasscode_instructions_languageCode_voiceName_flags_completion___block_invoke;
  block[3] = &unk_1E78911F8;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v31 = a7;
  v29 = v17;
  v30 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(dispatchQueue, block);
}

- (void)speakText:(id)a3 rate:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SFSiriClient_speakText_rate_completion___block_invoke;
  v13[3] = &unk_1E7891220;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)speakText:(id)a3 languageCode:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__SFSiriClient_speakText_languageCode_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)speakText:(id)a3 flags:(unsigned int)a4 rate:(double)a5 delay:(double)a6 startHandler:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFSiriClient_speakText_flags_rate_delay_startHandler_completion___block_invoke;
  block[3] = &unk_1E7891248;
  block[4] = self;
  v22 = v14;
  v27 = a4;
  v25 = a5;
  v26 = a6;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(dispatchQueue, block);
}

- (void)stopSpeaking
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFSiriClient_stopSpeaking__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __28__SFSiriClient_stopSpeaking__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      __28__SFSiriClient_stopSpeaking__block_invoke_cold_1();
    }

    v2 = [*(*(a1 + 32) + 16) speechUtteranceRequest];
    if (v2)
    {
      v3 = v2;
      [*(*(a1 + 32) + 48) cancelWithRequest:v2];
      v2 = v3;
    }
  }
}

- (void)_processQueuedRequests
{
  v4 = IsAppleInternalBuild();
  if (v4)
  {
    v5 = [a1 text];
  }

  else
  {
    v5 = @"*";
  }

  v6 = v5;
  [a1 rate];
  [a2 delaySecs];
  LogPrintF();
  if (v4)
  {
  }
}

void __38__SFSiriClient__processQueuedRequests__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:*(a1 + 32) withInstrumentMetrics:*(*(*(a1 + 40) + 8) + 40) error:v3];
}

- (void)_completeAllRequestsWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_requests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SFSiriClient *)self _completeRequest:*(*(&v11 + 1) + 8 * v9++) error:v4, v11];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_requests removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_completeRequest:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  currentRequest = self->_currentRequest;
  if (currentRequest == v13)
  {
    self->_currentRequest = 0;

    v7 = v13;
  }

  v9 = [(SFSiriRequest *)v7 speechStartHandler];

  if (v9)
  {
    v10 = [(SFSiriRequest *)v13 speechStartHandler];
    (v10)[2](v10, 0, v6);

    [(SFSiriRequest *)v13 setSpeechStartHandler:0];
  }

  v11 = [(SFSiriRequest *)v13 speechCompletion];

  if (v11)
  {
    v12 = [(SFSiriRequest *)v13 speechCompletion];
    (v12)[2](v12, v6);

    [(SFSiriRequest *)v13 setSpeechCompletion:0];
  }
}

- (void)startUtteranceRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 speechUtteranceRequest];
  [v4 delaySecs];
  if (v6 > 0.0 && gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient startUtteranceRequest:v5];
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
LABEL_6:
    [v4 setSynthesizing:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__SFSiriClient_startUtteranceRequest___block_invoke;
    v18[3] = &unk_1E788B198;
    v7 = v5;
    v19 = v7;
    [v7 setDidStartSpeaking:v18];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__SFSiriClient_startUtteranceRequest___block_invoke_2;
    v14[3] = &unk_1E788FE88;
    objc_copyWeak(&v16, &location);
    v8 = v7;
    v15 = v8;
    [v8 setDidGenerateWordTimings:v14];
    speechSynthesizer = self->_speechSynthesizer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__SFSiriClient_startUtteranceRequest___block_invoke_3;
    v11[3] = &unk_1E788D048;
    objc_copyWeak(&v13, &location);
    v12 = v8;
    [(SiriTTSDaemonSession *)speechSynthesizer speakWithSpeechRequest:v12 didFinish:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);

    goto LABEL_12;
  }

  if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient startUtteranceRequest:];
  }

  v10 = NSErrorWithOSStatusF();
  [(SFSiriClient *)self _completeRequest:v4 error:v10];

LABEL_12:
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __38__SFSiriClient_startUtteranceRequest___block_invoke_cold_1(a1);
  }
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained request:*(a1 + 32) didReceiveTimingInfo:v3];
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakingRequest:*(a1 + 32) withError:v3];
}

- (void)deviceSetupBegin:(unint64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SFSiriClient_deviceSetupBegin___block_invoke;
  v4[3] = &unk_1E788B260;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

void __33__SFSiriClient_deviceSetupBegin___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = (*(a1 + 40) >> 3) & 1;
    v4 = objc_alloc(getSVXDeviceSetupContextClass());
    v5 = [v4 initWithTimestamp:mach_absolute_time() presentsAlternativeFlowWhenStoreAccountIsUnavailable:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = v5;

    v2 = *(a1 + 32);
  }

  if (!v2[8])
  {
    v8 = objc_alloc_init(getSVXClientServiceManagerClass());
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    v2 = *(a1 + 32);
  }

  if (!v2[9])
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      __33__SFSiriClient_deviceSetupBegin___block_invoke_cold_1(a1);
    }

    v11 = [*(*(a1 + 32) + 64) deviceService];
    v12 = *(a1 + 32);
    v13 = *(v12 + 72);
    *(v12 + 72) = v11;

    v14 = *(a1 + 32);
    v15 = *(v14 + 72);
    v16 = *(v14 + 56);

    [v15 beginSetupWithContext:v16];
  }
}

- (void)deviceSetupEnd
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SFSiriClient_deviceSetupEnd__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceSetupEnd
{
  if (self->_siriDeviceSetupService && gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient _deviceSetupEnd];
  }

  [(SVXClientDeviceServicing *)self->_siriDeviceSetupService endSetup];
  siriDeviceSetupService = self->_siriDeviceSetupService;
  self->_siriDeviceSetupService = 0;

  siriDeviceSetupContext = self->_siriDeviceSetupContext;
  self->_siriDeviceSetupContext = 0;

  siriDeviceSetupManager = self->_siriDeviceSetupManager;
  self->_siriDeviceSetupManager = 0;
}

- (void)deviceSetupPrepareGreeting:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] && v2[7] && v2[8])
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 72);
    v6 = *(v4 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_2;
    v9[3] = &unk_1E78912C0;
    v9[4] = v4;
    v10 = v3;
    [v5 prepareForSetupWithContext:v6 completion:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = NSErrorWithOSStatusF();
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 96);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__SFSiriClient_deviceSetupPrepareGreeting___block_invoke_3;
  v12[3] = &unk_1E788B750;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

- (void)_deviceSetupPrepareGreetingFlow:(id)a3 error:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || v9)
  {
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient _deviceSetupPrepareGreetingFlow:error:completion:];
    }

    if (v9)
    {
      v10[2](v10, 0, v9);
    }

    else
    {
      v18 = NSErrorWithOSStatusF();
      v10[2](v10, 0, v18);
    }
  }

  else
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient _deviceSetupPrepareGreetingFlow:error:completion:];
    }

    v20 = objc_alloc_init(SFSiriDeviceSetupGreetingDetails);
    v21 = v8;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v8 scenes];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          if ([v16 sceneID] == 5)
          {
            if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
            {
              [SFSiriClient _deviceSetupPrepareGreetingFlow:error:completion:];
            }

            objc_storeStrong(&self->_deviceSetupSceneOutro, v16);
          }

          else if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
          {
            [SFSiriClient _deviceSetupPrepareGreetingFlow:v16 error:? completion:?];
          }

          ++v15;
        }

        while (v13 != v15);
        v17 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v13 = v17;
      }

      while (v17);
    }

    (v10)[2](v10, v20, 0);
    v8 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)deviceSetupPlayGreetingID:(int)a3 completion:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SFSiriClient_deviceSetupPlayGreetingID_completion___block_invoke;
  block[3] = &unk_1E788EAE0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_deviceSetupPlayGreetingID:(int)a3 completion:(id)a4
{
  v6 = a4;
  if (self->_siriDeviceSetupService && self->_siriDeviceSetupContext && self->_siriDeviceSetupManager)
  {
    if (a3 == 5)
    {
      v7 = self->_deviceSetupSceneOutro;
      if (v7)
      {
        goto LABEL_8;
      }

      v8 = objc_alloc_init(getSVXDeviceSetupFlowSceneBuilderClass());
      [v8 setSceneID:5];
      v9 = [v8 build];
      if (v9)
      {
        v7 = v9;

LABEL_8:
        if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
        {
          [SFSiriClient _deviceSetupPlayGreetingID:completion:];
        }

        v10 = objc_alloc(getSVXSystemEventClass());
        v11 = [v10 initWithType:7 timestamp:mach_absolute_time() alarm:0 deviceSetupFlowScene:v7];
        v12 = [(SVXClientServiceManager *)self->_siriDeviceSetupManager activationService];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke;
        v14[3] = &unk_1E78912E8;
        v16 = 5;
        v14[4] = self;
        v15 = v6;
        [v12 activateWithSystemEvent:v11 userInfo:0 completion:v14];

        goto LABEL_18;
      }

      if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
      {
        [SFSiriClient _deviceSetupPlayGreetingID:completion:];
      }
    }

    v13 = NSErrorWithOSStatusF();
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v13 = NSErrorWithOSStatusF();
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient _deviceSetupPlayGreetingID:completion:];
    }
  }

  if (v6)
  {
    (*(v6 + 2))(v6, v13);
  }

LABEL_18:
}

void __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_cold_1(a1);
    }
  }

  else if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_cold_2(a1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__SFSiriClient__deviceSetupPlayGreetingID_completion___block_invoke_2;
    v6[3] = &unk_1E788B318;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)request:(id)a3 didReceiveTimingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFSiriClient_request_didReceiveTimingInfo___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)request:(id)a3 didReceiveTimingInfo2:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SFSiriRequest *)self->_currentRequest speechStartHandler];
  if (v8)
  {
    [(SFSiriRequest *)self->_currentRequest setSpeechStartHandler:0];
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v7;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v83 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = objc_alloc_init(SFSiriWordTimingInfo);
          [v14 startTime];
          [(SFSiriWordTimingInfo *)v15 setTimeOffset:?];
          v16 = [v14 textRange];
          [(SFSiriWordTimingInfo *)v15 setTextRange:v16, v17];
          [v40 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v83 count:16];
      }

      while (v11);
    }

    v35 = v8;
    (v8)[2](v8, v40, 0);
    v37 = v6;
    v38 = [v6 text];
    v18 = [v38 length];
    v81 = 0u;
    memset(v82, 0, sizeof(v82));
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v45 = &v51;
    v51 = 0;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v9;
    v19 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v41 + 1) + 8 * j);
          v25 = [v23 textRange];
          v26 = v24;
          v27 = v18 >= v25 && v18 - v25 >= v24;
          v28 = @"?";
          if (v27)
          {
            v28 = [v38 substringWithRange:{v25, v24}];
          }

          [v23 startTime];
          v34 = v28;
          v33 = v29;
          v31 = v25;
          v32 = v26;
          SNPrintF_Add();
        }

        v20 = [obj countByEnumeratingWithState:&v41 objects:v50 count:{16, v25, v26, v33, v28}];
      }

      while (v20);
    }

    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient request:? didReceiveTimingInfo2:?];
    }

    v7 = v36;
    v6 = v37;
    v8 = v35;
  }

  else if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient request:v7 didReceiveTimingInfo2:?];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)didFinishSpeakingRequest:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFSiriClient_didFinishSpeakingRequest_withError___block_invoke;
  block[3] = &unk_1E788BD88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)didFinishSpeakingRequest:(id)a3 withError2:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient didFinishSpeakingRequest:v6 withError2:v9];
  }

  v7 = [(SFSiriRequest *)self->_currentRequest speechUtteranceRequest];

  if (v7 != v9 && gLogCategory_SFSiriClient <= 60 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient didFinishSpeakingRequest:withError2:];
  }

  [(SFSiriClient *)self _completeRequest:self->_currentRequest error:v6];
  if (self->_invalidateCalled)
  {
    v8 = NSErrorWithOSStatusF();
    [(SFSiriClient *)self _completeAllRequestsWithError:v8];
  }

  else
  {
    [(SFSiriClient *)self _processQueuedRequests];
  }
}

- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SFSiriClient_didFinishSynthesisRequest_withInstrumentMetrics_error___block_invoke;
  v15[3] = &unk_1E788B9C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)didFinishSynthesisRequest:(id)a3 withInstrumentMetrics:(id)a4 error2:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_currentRequest;
  [(SFSiriRequest *)v11 setSynthesizing:0];
  if (!v10 && self->_invalidateCalled)
  {
    v10 = NSErrorWithOSStatusF();
  }

  if (v10)
  {
    if (gLogCategory_SFSiriClient <= 90 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriClient didFinishSynthesisRequest:v10 withInstrumentMetrics:v8 error2:?];
      if (!v11)
      {
LABEL_10:
        if (self->_invalidateCalled)
        {
          [(SFSiriClient *)self _completeAllRequestsWithError:v10];
        }

        goto LABEL_21;
      }
    }

    else if (!v11)
    {
      goto LABEL_10;
    }

    [(SFSiriClient *)self _completeRequest:v11 error:v10];
    goto LABEL_10;
  }

  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    [SFSiriClient didFinishSynthesisRequest:v9 withInstrumentMetrics:v8 error2:?];
  }

  [(SFSiriRequest *)v11 delaySecs];
  if (v12 > 0.0)
  {
    [(SFSiriRequest *)v11 delaySecs];
    v14 = v13;
    mach_absolute_time();
    [(SFSiriRequest *)v11 startTicks];
    UpTicksToSecondsF();
    if (v14 - v15 <= 0.0)
    {
      [(SFSiriClient *)self startUtteranceRequest:v11];
    }

    else
    {
      currentTimer = self->_currentTimer;
      if (currentTimer)
      {
        v17 = currentTimer;
        dispatch_source_cancel(v17);
        v18 = self->_currentTimer;
        self->_currentTimer = 0;
      }

      v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v20 = self->_currentTimer;
      self->_currentTimer = v19;

      v21 = self->_currentTimer;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __71__SFSiriClient_didFinishSynthesisRequest_withInstrumentMetrics_error2___block_invoke;
      v23[3] = &unk_1E788A658;
      v23[4] = self;
      v24 = v11;
      dispatch_source_set_event_handler(v21, v23);
      v22 = self->_currentTimer;
      CUDispatchTimerSet();
      dispatch_activate(self->_currentTimer);
    }
  }

LABEL_21:
}

uint64_t __71__SFSiriClient_didFinishSynthesisRequest_withInstrumentMetrics_error2___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 startUtteranceRequest:v7];
}

- (void)sessionService:(id)a3 didChangeStateFrom:(int64_t)a4 to:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (gLogCategory_SFSiriClient <= 30)
  {
    v10 = v7;
    if (gLogCategory_SFSiriClient != -1 || (v9 = _LogCategory_Initialize(), v8 = v10, v9))
    {
      [SFSiriClient sessionService:a4 didChangeStateFrom:a5 to:?];
      v8 = v10;
    }
  }
}

- (void)sessionService:(id)a3 willPresentFeedbackWithDialogIdentifier:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SFSiriClient_sessionService_willPresentFeedbackWithDialogIdentifier___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

uint64_t __71__SFSiriClient_sessionService_willPresentFeedbackWithDialogIdentifier___block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_SFSiriClient <= 30)
  {
    if (gLogCategory_SFSiriClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __71__SFSiriClient_sessionService_willPresentFeedbackWithDialogIdentifier___block_invoke_cold_1(v1);
    }
  }

  v2 = *(v1 + 40);
  if ((*(v2 + 8) & 1) == 0)
  {
    result = *(v2 + 112);
    if (result)
    {
      v3 = *(v1 + 32);
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

- (void)startUtteranceRequest:(void *)a1 .cold.1(void *a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = [a1 text];
    LogPrintF();
  }

  else
  {
    LogPrintF();
  }
}

void __38__SFSiriClient_startUtteranceRequest___block_invoke_cold_1(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = [*(a1 + 32) text];
    LogPrintF();
  }

  else
  {
    LogPrintF();
  }
}

- (void)didFinishSpeakingRequest:(uint64_t)a1 withError2:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if (IsAppleInternalBuild())
  {
    v3 = [a2 text];
    LogPrintF();
  }

  else
  {
    LogPrintF();
  }
}

- (void)didFinishSynthesisRequest:(uint64_t)a1 withInstrumentMetrics:(void *)a2 error2:.cold.1(uint64_t a1, void *a2)
{
  if (IsAppleInternalBuild())
  {
    v3 = [a2 text];
    LogPrintF();
  }

  else
  {
    LogPrintF();
  }
}

- (void)didFinishSynthesisRequest:(void *)a1 withInstrumentMetrics:(void *)a2 error2:.cold.2(void *a1, void *a2)
{
  v4 = IsAppleInternalBuild();
  if (v4)
  {
    v5 = [a2 text];
  }

  else
  {
    v5 = @"*";
  }

  v6 = v5;
  [a1 audioStartLatency];
  LogPrintF();
  if (v4)
  {
  }
}

- (uint64_t)sessionService:(unint64_t)a1 didChangeStateFrom:(unint64_t)a2 to:.cold.1(unint64_t a1, unint64_t a2)
{
  if (a1 <= 4)
  {
    v2 = off_1E7891308[a1];
  }

  if (a2 <= 4)
  {
    v3 = off_1E7891308[a2];
  }

  return LogPrintF();
}

@end