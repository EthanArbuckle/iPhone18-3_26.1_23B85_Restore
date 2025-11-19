@interface SFDeviceSetupTVLatencyService
- (SFDeviceSetupTVLatencyService)init;
- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleTVLatencyProgressEvent:(unint64_t)a3 info:(id)a4;
- (void)_handleTVLatencyRequest:(id)a3 responseHandler:(id)a4;
- (void)_invalidate;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidate;
@end

@implementation SFDeviceSetupTVLatencyService

- (SFDeviceSetupTVLatencyService)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceSetupTVLatencyService;
  v2 = [(SFDeviceSetupTVLatencyService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupTVLatencyService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupTVLatencyService_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceSetupTVLatencyService_activate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceSetupTVLatencyService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__SFDeviceSetupTVLatencyService_invalidate__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 10) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      __43__SFDeviceSetupTVLatencyService_invalidate__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 10) = 1;
    v3 = *(v2 + 32);

    return [v3 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFDeviceSetupTVLatencyService *)self _handleSessionEnded:self->_sfSession];
    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    [(SFDeviceSetupTVLatencyService *)self _reportProgress:20 info:0];
    progressHandler = self->_progressHandler;
    self->_progressHandler = 0;

    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _invalidate];
    }
  }
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _sfServiceStart];
  }

  [(SFService *)self->_sfService invalidate];
  v3 = objc_alloc_init(SFService);
  sfService = self->_sfService;
  self->_sfService = v3;

  [(SFService *)self->_sfService setAdvertiseRate:50];
  [(SFService *)self->_sfService setDeviceActionType:25];
  [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
  [(SFService *)self->_sfService setIdentifier:@"com.apple.sharing.AppleTVSetup"];
  [(SFService *)self->_sfService setLabel:@"TVLatency"];
  [(SFService *)self->_sfService setNeedsSetup:1];
  [(SFService *)self->_sfService setPinType:1];
  [(SFService *)self->_sfService setSessionFlags:33];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke;
  v8[3] = &unk_1E788CA68;
  v8[4] = self;
  [(SFService *)self->_sfService setSessionStartedHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_2;
  v7[3] = &unk_1E788CA90;
  v7[4] = self;
  [(SFService *)self->_sfService setSessionEndedHandler:v7];
  v5 = self->_sfService;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_3;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFService *)v5 activateWithCompletion:v6];
}

void __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 90 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_3_cold_1();
    }

    v4 = *(a1 + 32);
    v7 = @"eo";
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 _reportProgress:30 info:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionStarted:(id)a3
{
  v5 = a3;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    [gLogCategory_SFDeviceSetupTVLatencyService _handleSessionStarted:sfSession, v5];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _handleSessionStarted:v5];
    }

    objc_storeStrong(&self->_sfSession, a3);
    [(SFService *)self->_sfService setDeviceActionType:0];
    [(SFService *)self->_sfService setNeedsSetup:0];
    v7 = self->_sfSession;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__SFDeviceSetupTVLatencyService__handleSessionStarted___block_invoke;
    v10[3] = &unk_1E788B4F8;
    v10[4] = self;
    [(SFSession *)v7 registerRequestID:@"_tvlS" options:&unk_1F1D7D5B0 handler:v10];
    v8 = self->_sfSession;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__SFDeviceSetupTVLatencyService__handleSessionStarted___block_invoke_2;
    v9[3] = &unk_1E788B4F8;
    v9[4] = self;
    [(SFSession *)v8 registerRequestID:@"_finish" options:&unk_1F1D7D5D8 handler:v9];
    [(SFDeviceSetupTVLatencyService *)self _reportProgress:31 info:0];
  }
}

- (void)_handleSessionEnded:(id)a3
{
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession != v4)
  {
    goto LABEL_15;
  }

  v9 = v4;
  if (v4 && gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    v8 = [(SFSession *)sfSession peer];
    LogPrintF();
  }

LABEL_7:
  [(SFDeviceSetupTVLatencyService *)self _reportProgress:32 info:0, v8];
  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  v7 = self->_sfSession;
  self->_sfSession = 0;

  if (!self->_finished)
  {
    [(SFService *)self->_sfService setDeviceActionType:25];
    [(SFService *)self->_sfService setNeedsSetup:1];
  }

  v4 = v9;
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _handleSessionEnded:];
    }

    [(SFDeviceSetupTVLatencyService *)self _invalidate];
    v4 = v9;
  }

LABEL_15:
}

- (void)_handleTVLatencyRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:responseHandler:];
  }

  if (self->_tvLatencyEstimator)
  {
    goto LABEL_10;
  }

  v8 = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (v8)
  {
    v9 = v8;
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:responseHandler:];
    }

    v10 = [objc_alloc(getTVLAudioLatencyEstimatorClass_1()) initWithMessageSession:v9];
    tvLatencyEstimator = self->_tvLatencyEstimator;
    self->_tvLatencyEstimator = v10;

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke;
    v17 = &unk_1E788B598;
    v18 = self;
    v19 = v10;
    v12 = v10;
    [(TVLAudioLatencyEstimator *)v12 setProgressEventHandler:&v14];
    [(TVLAudioLatencyEstimator *)v12 activate:v14];
    [(SFDeviceSetupTVLatencyService *)self _reportProgress:260 info:v6];

LABEL_10:
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:responseHandler:];
    }

    (*(v7 + 2))(v7, 0, 0, MEMORY[0x1E695E0F8]);
    goto LABEL_14;
  }

  v13 = NSErrorWithOSStatusF();
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 90 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:responseHandler:];
  }

  (*(v7 + 2))(v7, v13, 0, 0);

LABEL_14:
}

void __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke_2;
  v10[3] = &unk_1E788B570;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v14 = a2;
  v9 = v5;
  dispatch_async(v6, v10);
}

uint64_t __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke_2(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 32))
  {
    return [*(result + 40) _handleTVLatencyProgressEvent:*(result + 56) info:*(result + 48)];
  }

  return result;
}

- (void)_handleTVLatencyProgressEvent:(unint64_t)a3 info:(id)a4
{
  v6 = a4;
  v7 = v6;
  v12 = v6;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (v6 = _LogCategory_Initialize(), v7 = v12, v6))
    {
      v10 = a3;
      v11 = v7;
      v6 = LogPrintF();
    }
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_18;
      }

      v8 = self;
      v9 = 277;
    }

    else
    {
      v8 = self;
      v9 = 270;
    }

    goto LABEL_17;
  }

  if (a3 == 2)
  {
    v8 = self;
    v9 = 274;
LABEL_17:
    v6 = [(SFDeviceSetupTVLatencyService *)v8 _reportProgress:v9 info:v12, v10, v11];
    goto LABEL_18;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_18;
    }

    v8 = self;
    v9 = 276;
    goto LABEL_17;
  }

  if (!self->_eventFinalDelivered)
  {
    v6 = [(SFDeviceSetupTVLatencyService *)self _reportProgress:272 info:v12];
    self->_eventFinalDelivered = 1;
  }

LABEL_18:

  MEMORY[0x1EEE66C30](v6);
}

- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _handleFinishRequest:responseHandler:];
  }

  if (!self->_eventFinalDelivered)
  {
    [(SFDeviceSetupTVLatencyService *)self _reportProgress:272 info:MEMORY[0x1E695E0F8]];
    self->_eventFinalDelivered = 1;
  }

  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _handleFinishRequest:responseHandler:];
  }

  (*(v6 + 2))(v6, 0, 0, MEMORY[0x1E695E0F8]);
  self->_finished = 1;
}

- (uint64_t)sendSetupAction:(unsigned int)a1 info:responseHandler:.cold.1(unsigned int a1)
{
  if (a1 <= 0xA)
  {
    v1 = off_1E7890088[a1];
  }

  return LogPrintF();
}

- (void)_handleSessionStarted:(void *)a3 .cold.1(int a1, void **a2, void *a3, void *a4)
{
  if (a1 <= 60)
  {
    if (a1 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a3 = *a2;
    }

    v7 = [a3 peer];
    v6 = [a4 peer];
    LogPrintF();
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

@end