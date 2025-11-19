@interface SCROBrailleStealthDriver
- (BOOL)unloadDriver;
- (SCROBrailleStealthDriver)init;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
@end

@implementation SCROBrailleStealthDriver

- (SCROBrailleStealthDriver)init
{
  v3.receiver = self;
  v3.super_class = SCROBrailleStealthDriver;
  result = [(SCROBrailleStealthDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
  }

  return result;
}

- (void)dealloc
{
  [(SCROBrailleStealthDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = SCROBrailleStealthDriver;
  [(SCROBrailleStealthDriver *)&v3 dealloc];
}

- (int)loadDriverWithIOElement:(id)a3
{
  if (self->_isDriverLoaded)
  {
    [(SCROBrailleStealthDriver *)self unloadDriver];
  }

  modelIdentifier = self->_modelIdentifier;
  self->_modelIdentifier = @"com.apple.scrod.braille.driver.stealth.caption";

  *&self->_mainSize = xmmword_26498C720;
  self->_isDriverLoaded = 1;
  return 0;
}

- (BOOL)unloadDriver
{
  if (self->_isDriverLoaded)
  {
    self->_isDriverLoaded = 0;
  }

  return 1;
}

@end