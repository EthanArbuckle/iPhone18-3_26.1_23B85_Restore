@interface RTPowerAssertion
- (RTPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4;
- (void)dealloc;
@end

@implementation RTPowerAssertion

- (RTPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4
{
  v5 = a3;
  if (v5 && ((v9.receiver = self, v9.super_class = RTPowerAssertion, (self = [(RTPowerAssertion *)&v9 init]) == 0) || (v6 = CPPowerAssertionCreate(), (self->_powerAssertion = v6) != 0)))
  {
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
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