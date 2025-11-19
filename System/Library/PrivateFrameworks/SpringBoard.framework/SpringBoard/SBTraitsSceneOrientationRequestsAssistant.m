@interface SBTraitsSceneOrientationRequestsAssistant
- (NSString)errorDomain;
- (SBTraitsSceneOrientationRequestsAssistant)initWithTraitsSceneDelegate:(id)a3 errorDomain:(id)a4;
- (SBTraitsSceneParticipantDelegate)traitsDelegate;
- (void)_startSceneOrientationRequestWithDesiredOrientations:(unint64_t)a3 error:(id *)a4;
- (void)checkValidityAgainstUpdateReasons:(int64_t)a3;
- (void)coalescedNotifyArbitrationUpdateNeeded:(id)a3 withReason:(id)a4;
- (void)invalidate;
- (void)setUpForTransitionContextIfNeeded:(id)a3;
@end

@implementation SBTraitsSceneOrientationRequestsAssistant

- (SBTraitsSceneOrientationRequestsAssistant)initWithTraitsSceneDelegate:(id)a3 errorDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBTraitsSceneOrientationRequestsAssistant;
  v8 = [(SBTraitsSceneOrientationRequestsAssistant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_traitsDelegate, v6);
    objc_storeWeak(&v9->_errorDomain, v7);
  }

  return v9;
}

- (void)invalidate
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);
  v5 = [WeakRetained sceneHandle];
  v6 = SBSafeCast(v3, v5);

  [v6 _setInitialDeviceOrientationFromSceneOrientationRequestSetup:0];
  [v6 _setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:0];
  [v6 _setSettingUpSceneOrientationRequest:0];
}

- (void)checkValidityAgainstUpdateReasons:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);
  v5 = objc_opt_class();
  v6 = [WeakRetained sceneHandle];
  v7 = SBSafeCast(v5, v6);

  if (v7)
  {
    if ([v7 _isSettingUpSceneOrientationRequest])
    {
      [v7 _setSettingUpSceneOrientationRequest:0];
    }

    else
    {
      v8 = [WeakRetained participant];
      v9 = [v8 sbf_currentDeviceOrientation];

      v10 = [v7 _initialDeviceOrientationFromSceneOrientationRequestSetup];
      if ([v7 _supportedInterfaceOrientationsFromSceneOrientationRequestSetup] && (!v10 || v9 != v10))
      {
        if ((v9 - 1) > 3)
        {
          [v7 _setInitialDeviceOrientationFromSceneOrientationRequestSetup:0];
        }

        else
        {
          objc_initWeak(&location, self);
          v11 = MEMORY[0x277CD9FF0];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __79__SBTraitsSceneOrientationRequestsAssistant_checkValidityAgainstUpdateReasons___block_invoke;
          v12[3] = &unk_2783A8C68;
          objc_copyWeak(&v13, &location);
          [v11 bs_performAfterCommit:v12];
          objc_destroyWeak(&v13);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __79__SBTraitsSceneOrientationRequestsAssistant_checkValidityAgainstUpdateReasons___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    [v2 coalescedNotifyArbitrationUpdateNeeded:@"SBSceneGeometryOrientationRequestedNotification" withReason:@"SceneOrientationRequest invalidation"];
    WeakRetained = v2;
  }
}

- (void)setUpForTransitionContextIfNeeded:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 actions];
  WeakRetained = objc_loadWeakRetained(&self->_errorDomain);
  if ([v4 count])
  {
    v6 = [v4 bs_firstObjectPassingTest:&__block_literal_global_334];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 requestedInterfaceOrientationMask];
      if ([v7 policy] == 2 && (+[SBOrientationLockManager sharedInstance](SBOrientationLockManager, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isUserLocked"), v9, v10))
      {
        v11 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA450];
        v30[0] = @"NOOP: honoring user orientation lock";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        v13 = [v11 errorWithDomain:WeakRetained code:1 userInfo:v12];
      }

      else
      {
        v12 = objc_loadWeakRetained(&self->_traitsDelegate);
        v14 = objc_opt_class();
        v15 = [v12 sceneHandle];
        v16 = SBSafeCast(v14, v15);

        if (v16)
        {
          v26 = 0;
          [(SBTraitsSceneOrientationRequestsAssistant *)self _startSceneOrientationRequestWithDesiredOrientations:v8 error:&v26];
          v13 = v26;
        }

        else
        {
          v17 = MEMORY[0x277CCA9B8];
          v27 = *MEMORY[0x277CCA450];
          v18 = MEMORY[0x277CCACA8];
          v19 = [v12 scene];
          v20 = [v19 identifier];
          v21 = [v18 stringWithFormat:@"The requesting scene [%@] is not supported", v20];
          v28 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v13 = [v17 errorWithDomain:WeakRetained code:1 userInfo:v22];
        }
      }

      if ([v7 canSendResponse])
      {
        v23 = objc_alloc(MEMORY[0x277CF0B68]);
        v24 = [v7 info];
        v25 = [v23 initWithInfo:v24 error:v13];

        [v7 sendResponse:v25];
      }
    }
  }
}

- (void)coalescedNotifyArbitrationUpdateNeeded:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = v6;
  BSRunLoopPerformRelativeToCACommit();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __95__SBTraitsSceneOrientationRequestsAssistant_coalescedNotifyArbitrationUpdateNeeded_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:*(a1 + 32) object:0];

    WeakRetained = v4;
  }
}

- (void)_startSceneOrientationRequestWithDesiredOrientations:(unint64_t)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);
  v9 = objc_opt_class();
  v10 = [WeakRetained sceneHandle];
  v11 = SBSafeCast(v9, v10);

  if (v11)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    [SBTraitsSceneOrientationRequestsAssistant _startSceneOrientationRequestWithDesiredOrientations:a2 error:self];
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = MEMORY[0x277CCA9B8];
    v15 = objc_loadWeakRetained(&self->_errorDomain);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Invalid requested orientation.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a4 = [v14 errorWithDomain:v15 code:0 userInfo:v16];

    goto LABEL_8;
  }

  [SBTraitsSceneOrientationRequestsAssistant _startSceneOrientationRequestWithDesiredOrientations:a2 error:self];
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [v11 _supportedInterfaceOrientationsFromSceneOrientationRequestSetup];
  [v11 _setInterfaceOrientationFromUserResizing:0];
  [v11 _setSettingUpSceneOrientationRequest:v12 == 0];
  [v11 _setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:a3];
  v13 = [WeakRetained participant];
  [v11 _setInitialDeviceOrientationFromSceneOrientationRequestSetup:{objc_msgSend(v13, "currentDeviceOrientation")}];

  [(SBTraitsSceneOrientationRequestsAssistant *)self coalescedNotifyArbitrationUpdateNeeded:@"SBSceneGeometryOrientationRequestedNotification" withReason:@"SceneOrientationRequest setup"];
LABEL_8:
}

- (SBTraitsSceneParticipantDelegate)traitsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);

  return WeakRetained;
}

- (NSString)errorDomain
{
  WeakRetained = objc_loadWeakRetained(&self->_errorDomain);

  return WeakRetained;
}

- (void)_startSceneOrientationRequestWithDesiredOrientations:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsSceneOrientationRequestsAssistant.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"sceneHandle"}];
}

- (void)_startSceneOrientationRequestWithDesiredOrientations:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsSceneOrientationRequestsAssistant.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"outError"}];
}

@end