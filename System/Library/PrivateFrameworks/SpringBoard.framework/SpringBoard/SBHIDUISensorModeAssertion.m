@interface SBHIDUISensorModeAssertion
- (SBHIDUISensorModeController)sensorModeController;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)invalidate;
@end

@implementation SBHIDUISensorModeAssertion

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_sensorModeController);
  [WeakRetained _removeHIDUISensorModeAssertion:self];

  objc_storeWeak(&self->_sensorModeController, 0);
}

- (id)succinctDescription
{
  v2 = [(SBHIDUISensorModeAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIDUISensorModeAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIDUISensorModeAssertion *)self succinctDescriptionBuilder];
  v5 = [v4 appendBool:self->_suspendProximitySensor withName:@"suspendProximitySensor"];
  v6 = [v4 appendBool:self->_pocketTouchesExpected withName:@"pocketTouchesExpected"];
  v7 = NSStringFromSBDisabledDigitizerMode(self->_digitizerMode);
  [v4 appendString:v7 withName:@"digitizerMode"];

  v8 = NSStringFromBKSHIDUISensorDisplayState();
  [v4 appendString:v8 withName:@"displayState"];

  v9 = SBSBacklightChangeSourceDescription(self->_source);
  [v4 appendString:v9 withName:@"source"];

  WeakRetained = objc_loadWeakRetained(&self->_sensorModeController);
  v11 = [v4 appendPointer:WeakRetained withName:@"sensorModeController"];

  [v4 appendString:self->_reason withName:@"reason"];

  return v4;
}

- (SBHIDUISensorModeController)sensorModeController
{
  WeakRetained = objc_loadWeakRetained(&self->_sensorModeController);

  return WeakRetained;
}

@end