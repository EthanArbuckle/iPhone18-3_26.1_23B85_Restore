@interface SBCaptureButtonDispatchingDeferrer
- (SBCaptureButtonDispatchingDeferrer)initWithZStackResolver:(id)resolver restrictionCoordinator:(id)coordinator;
- (void)_deferCaptureButtonEventsToSceneWithIdentityToken:(id)token PID:(int)d;
- (void)_processZStackParticipantSettings:(id)settings;
- (void)_stopDeferringCaptureButtonEvents;
- (void)_updateCaptureButtonDispatchingDeferringTarget;
- (void)dealloc;
@end

@implementation SBCaptureButtonDispatchingDeferrer

- (SBCaptureButtonDispatchingDeferrer)initWithZStackResolver:(id)resolver restrictionCoordinator:(id)coordinator
{
  resolverCopy = resolver;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = SBCaptureButtonDispatchingDeferrer;
  v9 = [(SBCaptureButtonDispatchingDeferrer *)&v16 init];
  if (v9)
  {
    mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v9->_deliveryManager;
    v9->_deliveryManager = mEMORY[0x277CF0668];

    objc_storeStrong(&v9->_zStackResolver, resolver);
    v12 = [coordinatorCopy addObserver:v9];
    inhibitionObservation = v9->_inhibitionObservation;
    v9->_inhibitionObservation = v12;

    v9->_inhibitedDueToRestrictionCoordinator = [coordinatorCopy isCaptureButtonActionInhibited:0];
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

- (void)_processZStackParticipantSettings:(id)settings
{
  captureButtonFullFidelityEventRequestingScenes = [settings captureButtonFullFidelityEventRequestingScenes];
  lastObject = [captureButtonFullFidelityEventRequestingScenes lastObject];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(FBScene *)self->_targetScene removeObserver:self];
    objc_storeStrong(&self->_targetScene, lastObject);
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
  v2 = *(self + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Selected scene requesting full-fidelity capture button events: %@", &v3, 0xCu);
}

- (void)_deferCaptureButtonEventsToSceneWithIdentityToken:(id)token PID:(int)d
{
  v4 = *&d;
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
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
    ui_cameraCaptureButtonEnvironment = [MEMORY[0x277CF0628] ui_cameraCaptureButtonEnvironment];
    [v11 setEnvironment:ui_cameraCaptureButtonEnvironment];
    v13 = objc_opt_new();
    [v13 setPid:v4];
    v14 = MEMORY[0x277CF0650];
    stringRepresentation = [tokenCopy stringRepresentation];
    v16 = [v14 tokenForString:stringRepresentation];

    if (v16)
    {
      [v13 setToken:v16];
    }

    v17 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager deferEventsMatchingPredicate:v11 toTarget:v13 withReason:@"Entitled Capture Button Consumer Active"];
    v18 = self->_deferringRuleAssertion;
    self->_deferringRuleAssertion = v17;

    self->_currentDeferralTargetPid = v4;
    objc_storeStrong(&self->_currentDeferralSceneIdentityToken, token);
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