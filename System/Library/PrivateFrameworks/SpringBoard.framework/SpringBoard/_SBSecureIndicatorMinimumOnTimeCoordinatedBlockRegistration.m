@interface _SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration
- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration)initWithIndicators:(int64_t)a3 block:(id)a4;
- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistrationDelegate)delegate;
- (void)invalidate;
@end

@implementation _SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration

- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration)initWithIndicators:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration;
  v7 = [(_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_indicators = a3;
    v9 = [v6 copy];
    block = v8->_block;
    v8->_block = v9;
  }

  return v8;
}

- (void)invalidate
{
  v3 = [(_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)self delegate];
  [v3 registrationDidInvalidate:self];
}

- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end