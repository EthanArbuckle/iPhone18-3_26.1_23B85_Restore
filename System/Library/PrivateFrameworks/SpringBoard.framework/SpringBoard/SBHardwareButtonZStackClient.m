@interface SBHardwareButtonZStackClient
- (SBFZStackResolver)zStackResolver;
- (SBHardwareButtonService)hardwareButtonService;
- (SBHardwareButtonZStackClient)initWithZStackResolver:(id)a3 hardwareButtonService:(id)a4;
- (void)_updateZStackParticipant;
- (void)dealloc;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBHardwareButtonZStackClient

- (void)_updateZStackParticipant
{
  v3 = [(SBHardwareButtonZStackClient *)self zStackParticipant];

  v4 = [(SBHardwareButtonZStackClient *)self hardwareButtonService];
  v5 = [v4 hasConsumersForHomeButtonSinglePress];

  if (!v3 || (v5 & 1) != 0)
  {
    if (((v3 == 0) & v5) == 1)
    {
      v7 = [(SBHardwareButtonZStackClient *)self zStackResolver];
      if (v7)
      {
        v9 = v7;
        v8 = [v7 acquireParticipantWithIdentifier:5 delegate:self];
        [(SBHardwareButtonZStackClient *)self setZStackParticipant:v8];

        v7 = v9;
      }
    }
  }

  else
  {
    v6 = [(SBHardwareButtonZStackClient *)self zStackParticipant];
    [v6 invalidate];

    [(SBHardwareButtonZStackClient *)self setZStackParticipant:0];
  }
}

- (SBHardwareButtonService)hardwareButtonService
{
  WeakRetained = objc_loadWeakRetained(&self->_hardwareButtonService);

  return WeakRetained;
}

- (SBHardwareButtonZStackClient)initWithZStackResolver:(id)a3 hardwareButtonService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBHardwareButtonZStackClient;
  v8 = [(SBHardwareButtonZStackClient *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_zStackResolver, v6);
    objc_storeWeak(&v9->_hardwareButtonService, v7);
    [(SBHardwareButtonZStackClient *)v9 _updateZStackParticipant];
    v10 = [v7 addObserver:v9];
    hardwareButtonObserverAssertion = v9->_hardwareButtonObserverAssertion;
    v9->_hardwareButtonObserverAssertion = v10;
  }

  return v9;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_hardwareButtonObserverAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBHardwareButtonZStackClient;
  [(SBHardwareButtonZStackClient *)&v3 dealloc];
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v4 = a4;
  [v4 setActivationPolicyForParticipantsBelow:0];
  [v4 setHomeGestureConsumption:1];
}

- (SBFZStackResolver)zStackResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_zStackResolver);

  return WeakRetained;
}

@end