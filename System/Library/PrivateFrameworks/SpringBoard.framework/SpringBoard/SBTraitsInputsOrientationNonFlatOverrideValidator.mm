@interface SBTraitsInputsOrientationNonFlatOverrideValidator
- (id)description;
- (id)validateInputs:(id)a3 withContext:(id)a4;
- (void)setLastNonFlatOrientationOverride:(int64_t)a3;
@end

@implementation SBTraitsInputsOrientationNonFlatOverrideValidator

- (void)setLastNonFlatOrientationOverride:(int64_t)a3
{
  if ((a3 - 5) <= 1)
  {
    [(SBTraitsInputsOrientationNonFlatOverrideValidator *)a2 setLastNonFlatOrientationOverride:?];
  }

  if (self->_lastNonFlatOrientationOverride != a3)
  {
    self->_lastNonFlatOrientationOverride = a3;
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

- (id)validateInputs:(id)a3 withContext:(id)a4
{
  v16.receiver = self;
  v16.super_class = SBTraitsInputsOrientationNonFlatOverrideValidator;
  v5 = [(SBTraitsInputsValidator *)&v16 validateInputs:a3 withContext:a4];
  v6 = [v5 deviceOrientationInputs];
  v7 = [v6 currentDeviceOrientation];
  if ((v7 - 1) >= 4 && self->_lastNonFlatOrientationOverride)
  {
    v8 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:v7 nonFlatDeviceOrientation:self->_lastNonFlatOrientationOverride];

    v6 = v8;
  }

  v9 = objc_alloc(MEMORY[0x277D734B0]);
  v10 = [v5 interfaceIdiomInputs];
  v11 = [v5 userInterfaceStyleInputs];
  v12 = [v5 keyboardInputs];
  v13 = [v5 ambientPresentationInputs];
  v14 = [v9 initWithInterfaceIdiomInputs:v10 userInterfaceStyleInputs:v11 deviceOrientationInputs:v6 keyboardInputs:v12 ambientPresentationInputs:v13];

  return v14;
}

- (void)setLastNonFlatOrientationOverride:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsInputsValidators.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"lastNonFlatOrientationOverride != BSDeviceOrientationFaceUp && lastNonFlatOrientationOverride != BSDeviceOrientationFaceDown"}];
}

@end