@interface SBTraitsInputsOrientationLockValidator
- (SBTraitsInputsOrientationLockValidator)initWithValidatorOrder:(id)order;
- (id)description;
- (id)validateInputs:(id)inputs withContext:(id)context;
- (void)setLockOrientation:(int64_t)orientation;
- (void)setPrefersDeferringOrientationUpdates:(BOOL)updates;
@end

@implementation SBTraitsInputsOrientationLockValidator

- (SBTraitsInputsOrientationLockValidator)initWithValidatorOrder:(id)order
{
  v7.receiver = self;
  v7.super_class = SBTraitsInputsOrientationLockValidator;
  v3 = [(SBTraitsInputsValidator *)&v7 initWithValidatorOrder:order];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:0 nonFlatDeviceOrientation:0];
    lastForwardedOrientationInputs = v3->_lastForwardedOrientationInputs;
    v3->_lastForwardedOrientationInputs = v4;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v10.receiver = self;
  v10.super_class = SBTraitsInputsOrientationLockValidator;
  v4 = [(SBTraitsInputsValidator *)&v10 description];
  v5 = [v3 stringWithString:v4];

  v6 = SBFStringForBSDeviceOrientation();
  v7 = v6;
  if (self->_prefersDeferringOrientationUpdates)
  {
    v8 = @"yes";
  }

  else
  {
    v8 = @"no";
  }

  [v5 appendFormat:@", lock orientation: %@, defersUpdates: %@, lastForwardedInputs: %@", v6, v8, self->_lastForwardedOrientationInputs];

  return v5;
}

- (void)setLockOrientation:(int64_t)orientation
{
  if (self->_lockOrientation != orientation)
  {
    self->_lockOrientation = orientation;
  }
}

- (void)setPrefersDeferringOrientationUpdates:(BOOL)updates
{
  if (self->_prefersDeferringOrientationUpdates != updates)
  {
    self->_prefersDeferringOrientationUpdates = updates;
  }
}

- (id)validateInputs:(id)inputs withContext:(id)context
{
  v16.receiver = self;
  v16.super_class = SBTraitsInputsOrientationLockValidator;
  v5 = [(SBTraitsInputsValidator *)&v16 validateInputs:inputs withContext:context];
  lastForwardedOrientationInputs = [v5 deviceOrientationInputs];
  if (self->_lockOrientation && (v7 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:self->_lockOrientation nonFlatDeviceOrientation:self->_lockOrientation], lastForwardedOrientationInputs, lastForwardedOrientationInputs = v7, self->_lockOrientation) || !self->_prefersDeferringOrientationUpdates)
  {
    v8 = lastForwardedOrientationInputs;
    lastForwardedOrientationInputs = self->_lastForwardedOrientationInputs;
    self->_lastForwardedOrientationInputs = v8;
  }

  else
  {
    v8 = self->_lastForwardedOrientationInputs;
  }

  v9 = objc_alloc(MEMORY[0x277D734B0]);
  interfaceIdiomInputs = [v5 interfaceIdiomInputs];
  userInterfaceStyleInputs = [v5 userInterfaceStyleInputs];
  keyboardInputs = [v5 keyboardInputs];
  ambientPresentationInputs = [v5 ambientPresentationInputs];
  v14 = [v9 initWithInterfaceIdiomInputs:interfaceIdiomInputs userInterfaceStyleInputs:userInterfaceStyleInputs deviceOrientationInputs:v8 keyboardInputs:keyboardInputs ambientPresentationInputs:ambientPresentationInputs];

  return v14;
}

@end