@interface SBHIDUISensorModeAssertion
- (SBHIDUISensorModeController)sensorModeController;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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
  succinctDescriptionBuilder = [(SBHIDUISensorModeAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIDUISensorModeAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIDUISensorModeAssertion *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendBool:self->_suspendProximitySensor withName:@"suspendProximitySensor"];
  v6 = [succinctDescriptionBuilder appendBool:self->_pocketTouchesExpected withName:@"pocketTouchesExpected"];
  v7 = NSStringFromSBDisabledDigitizerMode(self->_digitizerMode);
  [succinctDescriptionBuilder appendString:v7 withName:@"digitizerMode"];

  v8 = NSStringFromBKSHIDUISensorDisplayState();
  [succinctDescriptionBuilder appendString:v8 withName:@"displayState"];

  v9 = SBSBacklightChangeSourceDescription(self->_source);
  [succinctDescriptionBuilder appendString:v9 withName:@"source"];

  WeakRetained = objc_loadWeakRetained(&self->_sensorModeController);
  v11 = [succinctDescriptionBuilder appendPointer:WeakRetained withName:@"sensorModeController"];

  [succinctDescriptionBuilder appendString:self->_reason withName:@"reason"];

  return succinctDescriptionBuilder;
}

- (SBHIDUISensorModeController)sensorModeController
{
  WeakRetained = objc_loadWeakRetained(&self->_sensorModeController);

  return WeakRetained;
}

@end