@interface SBTraitsSceneOrientationRequestsAssistant
- (NSString)errorDomain;
- (SBTraitsSceneOrientationRequestsAssistant)initWithTraitsSceneDelegate:(id)delegate errorDomain:(id)domain;
- (SBTraitsSceneParticipantDelegate)traitsDelegate;
- (void)_startSceneOrientationRequestWithDesiredOrientations:(unint64_t)orientations error:(id *)error;
- (void)checkValidityAgainstUpdateReasons:(int64_t)reasons;
- (void)coalescedNotifyArbitrationUpdateNeeded:(id)needed withReason:(id)reason;
- (void)invalidate;
- (void)setUpForTransitionContextIfNeeded:(id)needed;
@end

@implementation SBTraitsSceneOrientationRequestsAssistant

- (SBTraitsSceneOrientationRequestsAssistant)initWithTraitsSceneDelegate:(id)delegate errorDomain:(id)domain
{
  delegateCopy = delegate;
  domainCopy = domain;
  v11.receiver = self;
  v11.super_class = SBTraitsSceneOrientationRequestsAssistant;
  v8 = [(SBTraitsSceneOrientationRequestsAssistant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_traitsDelegate, delegateCopy);
    objc_storeWeak(&v9->_errorDomain, domainCopy);
  }

  return v9;
}

- (void)invalidate
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);
  sceneHandle = [WeakRetained sceneHandle];
  v6 = SBSafeCast(v3, sceneHandle);

  [v6 _setInitialDeviceOrientationFromSceneOrientationRequestSetup:0];
  [v6 _setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:0];
  [v6 _setSettingUpSceneOrientationRequest:0];
}

- (void)checkValidityAgainstUpdateReasons:(int64_t)reasons
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);
  v5 = objc_opt_class();
  sceneHandle = [WeakRetained sceneHandle];
  v7 = SBSafeCast(v5, sceneHandle);

  if (v7)
  {
    if ([v7 _isSettingUpSceneOrientationRequest])
    {
      [v7 _setSettingUpSceneOrientationRequest:0];
    }

    else
    {
      participant = [WeakRetained participant];
      sbf_currentDeviceOrientation = [participant sbf_currentDeviceOrientation];

      _initialDeviceOrientationFromSceneOrientationRequestSetup = [v7 _initialDeviceOrientationFromSceneOrientationRequestSetup];
      if ([v7 _supportedInterfaceOrientationsFromSceneOrientationRequestSetup] && (!_initialDeviceOrientationFromSceneOrientationRequestSetup || sbf_currentDeviceOrientation != _initialDeviceOrientationFromSceneOrientationRequestSetup))
      {
        if ((sbf_currentDeviceOrientation - 1) > 3)
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

- (void)setUpForTransitionContextIfNeeded:(id)needed
{
  v30[1] = *MEMORY[0x277D85DE8];
  actions = [needed actions];
  WeakRetained = objc_loadWeakRetained(&self->_errorDomain);
  if ([actions count])
  {
    v6 = [actions bs_firstObjectPassingTest:&__block_literal_global_334];
    v7 = v6;
    if (v6)
    {
      requestedInterfaceOrientationMask = [v6 requestedInterfaceOrientationMask];
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
        sceneHandle = [v12 sceneHandle];
        v16 = SBSafeCast(v14, sceneHandle);

        if (v16)
        {
          v26 = 0;
          [(SBTraitsSceneOrientationRequestsAssistant *)self _startSceneOrientationRequestWithDesiredOrientations:requestedInterfaceOrientationMask error:&v26];
          v13 = v26;
        }

        else
        {
          v17 = MEMORY[0x277CCA9B8];
          v27 = *MEMORY[0x277CCA450];
          v18 = MEMORY[0x277CCACA8];
          scene = [v12 scene];
          identifier = [scene identifier];
          v21 = [v18 stringWithFormat:@"The requesting scene [%@] is not supported", identifier];
          v28 = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v13 = [v17 errorWithDomain:WeakRetained code:1 userInfo:v22];
        }
      }

      if ([v7 canSendResponse])
      {
        v23 = objc_alloc(MEMORY[0x277CF0B68]);
        info = [v7 info];
        v25 = [v23 initWithInfo:info error:v13];

        [v7 sendResponse:v25];
      }
    }
  }
}

- (void)coalescedNotifyArbitrationUpdateNeeded:(id)needed withReason:(id)reason
{
  neededCopy = needed;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = neededCopy;
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

- (void)_startSceneOrientationRequestWithDesiredOrientations:(unint64_t)orientations error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_traitsDelegate);
  v9 = objc_opt_class();
  sceneHandle = [WeakRetained sceneHandle];
  v11 = SBSafeCast(v9, sceneHandle);

  if (v11)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    [SBTraitsSceneOrientationRequestsAssistant _startSceneOrientationRequestWithDesiredOrientations:a2 error:self];
    if (orientations)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = MEMORY[0x277CCA9B8];
    v15 = objc_loadWeakRetained(&self->_errorDomain);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Invalid requested orientation.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v14 errorWithDomain:v15 code:0 userInfo:v16];

    goto LABEL_8;
  }

  [SBTraitsSceneOrientationRequestsAssistant _startSceneOrientationRequestWithDesiredOrientations:a2 error:self];
  if (!error)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!orientations)
  {
    goto LABEL_7;
  }

LABEL_4:
  _supportedInterfaceOrientationsFromSceneOrientationRequestSetup = [v11 _supportedInterfaceOrientationsFromSceneOrientationRequestSetup];
  [v11 _setInterfaceOrientationFromUserResizing:0];
  [v11 _setSettingUpSceneOrientationRequest:_supportedInterfaceOrientationsFromSceneOrientationRequestSetup == 0];
  [v11 _setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:orientations];
  participant = [WeakRetained participant];
  [v11 _setInitialDeviceOrientationFromSceneOrientationRequestSetup:{objc_msgSend(participant, "currentDeviceOrientation")}];

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