@interface _RCPEventDigitizerStreamState
+ (id)streamStateWithEnvironment:(id)a3;
- (void)ingestEvent:(id)a3;
@end

@implementation _RCPEventDigitizerStreamState

+ (id)streamStateWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setEnvironment:v3];

  [v4 setEventNumber:-1];

  return v4;
}

- (void)ingestEvent:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_eventNumber == -1)
  {
    -[RCPEventEnvironment timeIntervalForMachAbsoluteTime:](self->_environment, "timeIntervalForMachAbsoluteTime:", [v4 deliveryTimestamp]);
    v4 = v12;
    self->_streamStartTimeInterval = v5;
  }

  v6 = [v4 hidEvent];
  if (IOHIDEventGetType() == 11)
  {
    v7 = _RCPEventHIDDigitizerEventCountOfTouchingContacts(v6);
    countOfContactsTouching = self->_countOfContactsTouching;
    v9 = v7 - countOfContactsTouching;
    v10 = v7 != countOfContactsTouching;
    self->_countOfContactsTouching = v7;
    self->_countOfContactsChangeAmount = v9;
  }

  else
  {
    v10 = 0;
  }

  self->_countOfContactsTouchingDidChange = v10;
  -[RCPEventEnvironment timeIntervalForMachAbsoluteTime:](self->_environment, "timeIntervalForMachAbsoluteTime:", [v12 deliveryTimestamp]);
  self->_timeIntervalSinceStreamStart = v11 - self->_streamStartTimeInterval;
  ++self->_eventNumber;
}

@end