@interface SBHardwareButtonZStackClient
- (SBFZStackResolver)zStackResolver;
- (SBHardwareButtonService)hardwareButtonService;
- (SBHardwareButtonZStackClient)initWithZStackResolver:(id)resolver hardwareButtonService:(id)service;
- (void)_updateZStackParticipant;
- (void)dealloc;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBHardwareButtonZStackClient

- (void)_updateZStackParticipant
{
  zStackParticipant = [(SBHardwareButtonZStackClient *)self zStackParticipant];

  hardwareButtonService = [(SBHardwareButtonZStackClient *)self hardwareButtonService];
  hasConsumersForHomeButtonSinglePress = [hardwareButtonService hasConsumersForHomeButtonSinglePress];

  if (!zStackParticipant || (hasConsumersForHomeButtonSinglePress & 1) != 0)
  {
    if (((zStackParticipant == 0) & hasConsumersForHomeButtonSinglePress) == 1)
    {
      zStackResolver = [(SBHardwareButtonZStackClient *)self zStackResolver];
      if (zStackResolver)
      {
        v9 = zStackResolver;
        v8 = [zStackResolver acquireParticipantWithIdentifier:5 delegate:self];
        [(SBHardwareButtonZStackClient *)self setZStackParticipant:v8];

        zStackResolver = v9;
      }
    }
  }

  else
  {
    zStackParticipant2 = [(SBHardwareButtonZStackClient *)self zStackParticipant];
    [zStackParticipant2 invalidate];

    [(SBHardwareButtonZStackClient *)self setZStackParticipant:0];
  }
}

- (SBHardwareButtonService)hardwareButtonService
{
  WeakRetained = objc_loadWeakRetained(&self->_hardwareButtonService);

  return WeakRetained;
}

- (SBHardwareButtonZStackClient)initWithZStackResolver:(id)resolver hardwareButtonService:(id)service
{
  resolverCopy = resolver;
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = SBHardwareButtonZStackClient;
  v8 = [(SBHardwareButtonZStackClient *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_zStackResolver, resolverCopy);
    objc_storeWeak(&v9->_hardwareButtonService, serviceCopy);
    [(SBHardwareButtonZStackClient *)v9 _updateZStackParticipant];
    v10 = [serviceCopy addObserver:v9];
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

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:0];
  [preferencesCopy setHomeGestureConsumption:1];
}

- (SBFZStackResolver)zStackResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_zStackResolver);

  return WeakRetained;
}

@end