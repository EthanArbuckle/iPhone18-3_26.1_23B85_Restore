@interface RTPowerAssertion
- (RTPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout;
- (void)dealloc;
@end

@implementation RTPowerAssertion

- (RTPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout
{
  identifierCopy = identifier;
  if (identifierCopy && ((v9.receiver = self, v9.super_class = RTPowerAssertion, (self = [(RTPowerAssertion *)&v9 init]) == 0) || (v6 = CPPowerAssertionCreate(), (self->_powerAssertion = v6) != 0)))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    CFRelease(powerAssertion);
    self->_powerAssertion = 0;
  }

  v4.receiver = self;
  v4.super_class = RTPowerAssertion;
  [(RTPowerAssertion *)&v4 dealloc];
}

@end