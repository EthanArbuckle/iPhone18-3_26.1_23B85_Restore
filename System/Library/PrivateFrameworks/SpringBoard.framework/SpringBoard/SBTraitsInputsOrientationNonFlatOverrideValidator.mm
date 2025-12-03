@interface SBTraitsInputsOrientationNonFlatOverrideValidator
- (id)description;
- (id)validateInputs:(id)inputs withContext:(id)context;
- (void)setLastNonFlatOrientationOverride:(int64_t)override;
@end

@implementation SBTraitsInputsOrientationNonFlatOverrideValidator

- (void)setLastNonFlatOrientationOverride:(int64_t)override
{
  if ((override - 5) <= 1)
  {
    [(SBTraitsInputsOrientationNonFlatOverrideValidator *)a2 setLastNonFlatOrientationOverride:?];
  }

  if (self->_lastNonFlatOrientationOverride != override)
  {
    self->_lastNonFlatOrientationOverride = override;
  }
}

- (id)description
{
  v2 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = SBTraitsInputsOrientationNonFlatOverrideValidator;
  v3 = [(SBTraitsInputsValidator *)&v7 description];
  v4 = [v2 stringWithString:v3];

  v5 = SBFStringForBSDeviceOrientation();
  [v4 appendFormat:@", last non-flat orientation override: %@", v5];

  return v4;
}

- (id)validateInputs:(id)inputs withContext:(id)context
{
  v16.receiver = self;
  v16.super_class = SBTraitsInputsOrientationNonFlatOverrideValidator;
  v5 = [(SBTraitsInputsValidator *)&v16 validateInputs:inputs withContext:context];
  deviceOrientationInputs = [v5 deviceOrientationInputs];
  currentDeviceOrientation = [deviceOrientationInputs currentDeviceOrientation];
  if ((currentDeviceOrientation - 1) >= 4 && self->_lastNonFlatOrientationOverride)
  {
    v8 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:currentDeviceOrientation nonFlatDeviceOrientation:self->_lastNonFlatOrientationOverride];

    deviceOrientationInputs = v8;
  }

  v9 = objc_alloc(MEMORY[0x277D734B0]);
  interfaceIdiomInputs = [v5 interfaceIdiomInputs];
  userInterfaceStyleInputs = [v5 userInterfaceStyleInputs];
  keyboardInputs = [v5 keyboardInputs];
  ambientPresentationInputs = [v5 ambientPresentationInputs];
  v14 = [v9 initWithInterfaceIdiomInputs:interfaceIdiomInputs userInterfaceStyleInputs:userInterfaceStyleInputs deviceOrientationInputs:deviceOrientationInputs keyboardInputs:keyboardInputs ambientPresentationInputs:ambientPresentationInputs];

  return v14;
}

- (void)setLastNonFlatOrientationOverride:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsInputsValidators.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"lastNonFlatOrientationOverride != BSDeviceOrientationFaceUp && lastNonFlatOrientationOverride != BSDeviceOrientationFaceDown"}];
}

@end