@interface SBFDeviceLockOutController
- (BOOL)isLockedOut;
- (SBFDeviceLockOutController)initWithThermalController:(id)a3 authenticationController:(id)a4;
- (double)timeIntervalUntilUnblockedSinceReferenceDate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)deviceBlockStatus;
- (void)_noteLockedOutReasonsMayHaveChanged;
- (void)_noteLockedOutStateMayHaveChanged:(BOOL)a3;
- (void)dealloc;
- (void)setLiquidDetectionBlockProvider:(id)a3;
- (void)setProximityReaderBlockProvider:(id)a3;
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
  v3 = [(SBFDeviceLockOutController *)self isPermanentlyBlocked];
  if ([(SBFDeviceLockOutController *)self isTemporarilyBlocked])
  {
    v3 |= 2uLL;
  }

  if ([(SBFDeviceLockOutController *)self isThermallyBlocked])
  {
    v3 |= 4uLL;
  }

  if ([(SBFDeviceLockOutController *)self isLiquidDetectionCriticalUIBlocked])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (void)_noteLockedOutReasonsMayHaveChanged
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SBFDeviceBlockStateDidChangeNotification" object:0];

  [(SBFDeviceLockOutController *)self _noteLockedOutStateMayHaveChanged:0];
}

- (SBFDeviceLockOutController)initWithThermalController:(id)a3 authenticationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SBFDeviceLockOutController;
  v9 = [(SBFDeviceLockOutController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_thermalProvider, a3);
    thermalProvider = v10->_thermalProvider;
    if (thermalProvider)
    {
      [(SBFThermalBlockProvider *)thermalProvider addThermalObserver:v10];
    }

    objc_storeStrong(&v10->_authenticationController, a4);
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFDeviceLockOutController;
  [(SBFDeviceLockOutController *)&v4 dealloc];
}

- (void)setLiquidDetectionBlockProvider:(id)a3
{
  v5 = a3;
  liquidDetectionBlockProvider = self->_liquidDetectionBlockProvider;
  if (liquidDetectionBlockProvider != v5)
  {
    v7 = v5;
    if (liquidDetectionBlockProvider)
    {
      [(SBFLiquidDetectionBlockProvider *)liquidDetectionBlockProvider removeLiquidDetectionObserver:self];
    }

    objc_storeStrong(&self->_liquidDetectionBlockProvider, a3);
    liquidDetectionBlockProvider = [(SBFLiquidDetectionBlockProvider *)self->_liquidDetectionBlockProvider addLiquidDetectionObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](liquidDetectionBlockProvider, v5);
}

- (void)setProximityReaderBlockProvider:(id)a3
{
  v5 = a3;
  proximityReaderBlockProvider = self->_proximityReaderBlockProvider;
  if (proximityReaderBlockProvider != v5)
  {
    v7 = v5;
    if (proximityReaderBlockProvider)
    {
      [(SBFProximityReaderBlockProvider *)proximityReaderBlockProvider removeProximityReaderObserver:self];
    }

    objc_storeStrong(&self->_proximityReaderBlockProvider, a3);
    proximityReaderBlockProvider = [(SBFProximityReaderBlockProvider *)self->_proximityReaderBlockProvider addProximityReaderObserver:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](proximityReaderBlockProvider, v5);
}

- (id)succinctDescription
{
  v2 = [(SBFDeviceLockOutController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFDeviceLockOutController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFDeviceLockOutController *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_thermalProvider withName:@"thermalProvider"];

  return v4;
}

- (double)timeIntervalUntilUnblockedSinceReferenceDate
{
  [(SBFUserAuthenticationController *)self->_authenticationController _timeUntilUnblockedSinceReferenceDate];
  v3 = v2;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (v3 < v4)
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
    [v5 timeIntervalSinceReferenceDate];
    v3 = v6;
  }

  return v3;
}

- (void)_noteLockedOutStateMayHaveChanged:(BOOL)a3
{
  lockedOutCached = [(SBFDeviceLockOutController *)self isLockedOut];
  v6 = [(SBFDeviceLockOutController *)self deviceBlockStatus];
  if (a3 || self->_lockedOutCached != lockedOutCached || v6 != self->_lastBlockedStatus)
  {
    self->_lockedOutCached = lockedOutCached;
    self->_lastBlockedStatus = v6;
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