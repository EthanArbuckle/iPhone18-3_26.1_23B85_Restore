@interface _SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration
- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration)initWithIndicators:(int64_t)indicators block:(id)block;
- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistrationDelegate)delegate;
- (void)invalidate;
@end

@implementation _SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration

- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration)initWithIndicators:(int64_t)indicators block:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = _SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration;
  v7 = [(_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_indicators = indicators;
    v9 = [blockCopy copy];
    block = v8->_block;
    v8->_block = v9;
  }

  return v8;
}

- (void)invalidate
{
  delegate = [(_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistration *)self delegate];
  [delegate registrationDidInvalidate:self];
}

- (_SBSecureIndicatorMinimumOnTimeCoordinatedBlockRegistrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end