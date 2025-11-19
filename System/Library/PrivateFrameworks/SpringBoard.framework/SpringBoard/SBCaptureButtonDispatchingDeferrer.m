@interface SBCaptureButtonDispatchingDeferrer
- (SBCaptureButtonDispatchingDeferrer)initWithZStackResolver:(id)a3 restrictionCoordinator:(id)a4;
- (void)_deferCaptureButtonEventsToSceneWithIdentityToken:(id)a3 PID:(int)a4;
- (void)_processZStackParticipantSettings:(id)a3;
- (void)_stopDeferringCaptureButtonEvents;
- (void)_updateCaptureButtonDispatchingDeferringTarget;
- (void)dealloc;
@end

@implementation SBCaptureButtonDispatchingDeferrer

- (SBCaptureButtonDispatchingDeferrer)initWithZStackResolver:(id)a3 restrictionCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SBCaptureButtonDispatchingDeferrer;
  v9 = [(SBCaptureButtonDispatchingDeferrer *)&v16 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v9->_deliveryManager;
    v9->_deliveryManager = v10;

    objc_storeStrong(&v9->_zStackResolver, a3);
    v12 = [v8 addObserver:v9];
    inhibitionObservation = v9->_inhibitionObservation;
    v9->_inhibitionObservation = v12;

    v9->_inhibitedDueToRestrictionCoordinator = [v8 isCaptureButtonActionInhibited:0];
    v14 = [(SBFZStackResolver *)v9->_zStackResolver addObserver:v9 ofParticipantWithIdentifier:29];
    [(SBCaptureButtonDispatchingDeferrer *)v9 _processZStackParticipantSettings:v14];
    [(SBCaptureButtonDispatchingDeferrer *)v9 _updateCaptureButtonDispatchingDeferringTarget];
  }

  return v9;
}

- (void)dealloc
{
  [(SBFZStackResolver *)self->_zStackResolver removeObserver:self ofParticipantWithIdentifier:29];
  zStackResolver = self->_zStackResolver;
  self->_zStackResolver = 0;

  v4.receiver = self;
  v4.super_class = SBCaptureButtonDispatchingDeferrer;
  [(SBCaptureButtonDispatchingDeferrer *)&v4 dealloc];
}

- (void)_processZStackParticipantSettings:(id)a3
{
  v6 = [a3 captureButtonFullFidelityEventRequestingScenes];
  v4 = [v6 lastObject];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(FBScene *)self->_targetScene removeObserver:self];
    objc_storeStrong(&self->_targetScene, v4);
    targetScene = self->_targetScene;
    if (targetScene)
    {
      [(FBScene *)targetScene addObserver:self];
    }

    [(SBCaptureButtonDispatchingDeferrer *)self _updateCaptureButtonDispatchingDeferringTarget];
  }
}

- (void)_updateCaptureButtonDispatchingDeferringTarget
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Selected scene requesting full-fidelity capture button events: %@", &v3, 0xCu);
}

- (void)_deferCaptureButtonEventsToSceneWithIdentityToken:(id)a3 PID:(int)a4
{
  v4 = *&a4;
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (self->_currentDeferralTargetPid != v4)
  {
    v8 = SBLogCameraCaptureOverlay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = BSProcessDescriptionForPID();
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Deferring full-fidelity capture button events to: %@", &v19, 0xCu);
    }

    [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
    deferringRuleAssertion = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = 0;

    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CF0628] ui_cameraCaptureButtonEnvironment];
    [v11 setEnvironment:v12];
    v13 = objc_opt_new();
    [v13 setPid:v4];
    v14 = MEMORY[0x277CF0650];
    v15 = [v7 stringRepresentation];
    v16 = [v14 tokenForString:v15];

    if (v16)
    {
      [v13 setToken:v16];
    }

    v17 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:v11 toTarget:v13 withReason:@"Entitled Capture Button Consumer Active"];
    v18 = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = v17;

    self->_currentDeferralTargetPid = v4;
    objc_storeStrong(&self->_currentDeferralSceneIdentityToken, a3);
  }
}

- (void)_stopDeferringCaptureButtonEvents
{
  if (self->_deferringRuleAssertion)
  {
    v3 = SBLogCameraCaptureOverlay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "No longer deferring full-fidelity capture button events.", v5, 2u);
    }

    [(BSInvalidatable *)self->_deferringRuleAssertion invalidate];
    deferringRuleAssertion = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = 0;

    self->_currentDeferralTargetPid = -1;
  }
}

@end