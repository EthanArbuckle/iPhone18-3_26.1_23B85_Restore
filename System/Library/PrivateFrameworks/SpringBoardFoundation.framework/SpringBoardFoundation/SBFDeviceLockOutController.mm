@interface SBFDeviceLockOutController
- (BOOL)isLockedOut;
- (SBFDeviceLockOutController)initWithThermalController:(id)controller authenticationController:(id)authenticationController;
- (double)timeIntervalUntilUnblockedSinceReferenceDate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)deviceBlockStatus;
- (void)_noteLockedOutReasonsMayHaveChanged;
- (void)_noteLockedOutStateMayHaveChanged:(BOOL)changed;
- (void)dealloc;
- (void)setLiquidDetectionBlockProvider:(id)provider;
- (void)setProximityReaderBlockProvider:(id)provider;
@end

@implementation SBFDeviceLockOutController

- (BOOL)isLockedOut
{
  if ([(SBFDeviceLockOutController *)self isBlocked])
  {
    return 1;
  }

  else
  {
    return ![(SBFUserAuthenticationController *)self->_authenticationController isAuthenticated];
  }
}

- (unint64_t)deviceBlockStatus
{
  isPermanentlyBlocked = [(SBFDeviceLockOutController *)self isPermanentlyBlocked];
  if ([(SBFDeviceLockOutController *)self isTemporarilyBlocked])
  {
    isPermanentlyBlocked |= 2uLL;
  }

  if ([(SBFDeviceLockOutController *)self isThermallyBlocked])
  {
    isPermanentlyBlocked |= 4uLL;
  }

  if ([(SBFDeviceLockOutController *)self isLiquidDetectionCriticalUIBlocked])
  {
    return isPermanentlyBlocked | 8;
  }

  else
  {
    return isPermanentlyBlocked;
  }
}

- (void)_noteLockedOutReasonsMayHaveChanged
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBFDeviceBlockStateDidChangeNotification" object:0];

  [(SBFDeviceLockOutController *)self _noteLockedOutStateMayHaveChanged:0];
}

- (SBFDeviceLockOutController)initWithThermalController:(id)controller authenticationController:(id)authenticationController
{
  controllerCopy = controller;
  authenticationControllerCopy = authenticationController;
  v15.receiver = self;
  v15.super_class = SBFDeviceLockOutController;
  v9 = [(SBFDeviceLockOutController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_thermalProvider, controller);
    thermalProvider = v10->_thermalProvider;
    if (thermalProvider)
    {
      [(SBFThermalBlockProvider *)thermalProvider addThermalObserver:v10];
    }

    objc_storeStrong(&v10->_authenticationController, authenticationController);
    [(SBFUserAuthenticationController *)v10->_authenticationController _addPrivateAuthenticationObserver:v10];
    liquidDetectionBlockProvider = v10->_liquidDetectionBlockProvider;
    v10->_liquidDetectionBlockProvider = 0;

    proximityReaderBlockProvider = v10->_proximityReaderBlockProvider;
    v10->_proximityReaderBlockProvider = 0;

    v10->_lastBlockedStatus = 0;
    [(SBFDeviceLockOutController *)v10 _noteLockedOutStateMayHaveChanged:1];
  }

  return v10;
}

- (void)dealloc
{
  [(SBFThermalBlockProvider *)self->_thermalProvider removeThermalObserver:self];
  [(SBFLiquidDetectionBlockProvider *)self->_liquidDetectionBlockProvider removeLiquidDetectionObserver:self];
  [(SBFProximityReaderBlockProvider *)self->_proximityReaderBlockProvider removeProximityReaderObserver:self];
  [(SBFUserAuthenticationController *)self->_authenticationController _removePrivateAuthenticationObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFDeviceLockOutController;
  [(SBFDeviceLockOutController *)&v4 dealloc];
}

- (void)setLiquidDetectionBlockProvider:(id)provider
{
  providerCopy = provider;
  liquidDetectionBlockProvider = self->_liquidDetectionBlockProvider;
  if (liquidDetectionBlockProvider != providerCopy)
  {
    v7 = providerCopy;
    if (liquidDetectionBlockProvider)
    {
      [(SBFLiquidDetectionBlockProvider *)liquidDetectionBlockProvider removeLiquidDetectionObserver:self];
    }

    objc_storeStrong(&self->_liquidDetectionBlockProvider, provider);
    liquidDetectionBlockProvider = [(SBFLiquidDetectionBlockProvider *)self->_liquidDetectionBlockProvider addLiquidDetectionObserver:self];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](liquidDetectionBlockProvider, providerCopy);
}

- (void)setProximityReaderBlockProvider:(id)provider
{
  providerCopy = provider;
  proximityReaderBlockProvider = self->_proximityReaderBlockProvider;
  if (proximityReaderBlockProvider != providerCopy)
  {
    v7 = providerCopy;
    if (proximityReaderBlockProvider)
    {
      [(SBFProximityReaderBlockProvider *)proximityReaderBlockProvider removeProximityReaderObserver:self];
    }

    objc_storeStrong(&self->_proximityReaderBlockProvider, provider);
    proximityReaderBlockProvider = [(SBFProximityReaderBlockProvider *)self->_proximityReaderBlockProvider addProximityReaderObserver:self];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](proximityReaderBlockProvider, providerCopy);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFDeviceLockOutController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[SBFDeviceLockOutController isLockedOut](self withName:{"isLockedOut"), @"lockedOut"}];
  v5 = [v3 appendBool:-[SBFDeviceLockOutController isBlocked](self withName:"isBlocked") ifEqualTo:{@"blocked", 1}];
  v6 = [v3 appendBool:-[SBFDeviceLockOutController isPermanentlyBlocked](self withName:"isPermanentlyBlocked") ifEqualTo:{@"permanentlyBlocked", 1}];
  v7 = [v3 appendBool:-[SBFDeviceLockOutController isTemporarilyBlocked](self withName:"isTemporarilyBlocked") ifEqualTo:{@"temporarilyBlocked", 1}];
  v8 = [v3 appendBool:-[SBFDeviceLockOutController isThermallyBlocked](self withName:"isThermallyBlocked") ifEqualTo:{@"thermallyBlocked", 1}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFDeviceLockOutController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFDeviceLockOutController *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_thermalProvider withName:@"thermalProvider"];

  return succinctDescriptionBuilder;
}

- (double)timeIntervalUntilUnblockedSinceReferenceDate
{
  [(SBFUserAuthenticationController *)self->_authenticationController _timeUntilUnblockedSinceReferenceDate];
  v3 = v2;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (v3 < v4)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v3 = v6;
  }

  return v3;
}

- (void)_noteLockedOutStateMayHaveChanged:(BOOL)changed
{
  lockedOutCached = [(SBFDeviceLockOutController *)self isLockedOut];
  deviceBlockStatus = [(SBFDeviceLockOutController *)self deviceBlockStatus];
  if (changed || self->_lockedOutCached != lockedOutCached || deviceBlockStatus != self->_lastBlockedStatus)
  {
    self->_lockedOutCached = lockedOutCached;
    self->_lastBlockedStatus = deviceBlockStatus;
    v7 = _noteLockedOutStateMayHaveChanged__token;
    if (_noteLockedOutStateMayHaveChanged__token == -1)
    {
      notify_register_check("com.apple.springboard.passcodeLockedOrBlocked", &_noteLockedOutStateMayHaveChanged__token);
      v7 = _noteLockedOutStateMayHaveChanged__token;
      if (_noteLockedOutStateMayHaveChanged__token == -1)
      {
        return;
      }

      lockedOutCached = self->_lockedOutCached;
    }

    notify_set_state(v7, lockedOutCached);

    notify_post("com.apple.springboard.passcodeLockedOrBlocked");
  }
}

@end