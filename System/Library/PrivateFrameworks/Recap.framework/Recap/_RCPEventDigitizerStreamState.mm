@interface _RCPEventDigitizerStreamState
+ (id)streamStateWithEnvironment:(id)environment;
- (void)ingestEvent:(id)event;
@end

@implementation _RCPEventDigitizerStreamState

+ (id)streamStateWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = objc_opt_new();
  [v4 setEnvironment:environmentCopy];

  [v4 setEventNumber:-1];

  return v4;
}

- (void)ingestEvent:(id)event
{
  eventCopy = event;
  v12 = eventCopy;
  if (self->_eventNumber == -1)
  {
    -[RCPEventEnvironment timeIntervalForMachAbsoluteTime:](self->_environment, "timeIntervalForMachAbsoluteTime:", [eventCopy deliveryTimestamp]);
    eventCopy = v12;
    self->_streamStartTimeInterval = v5;
  }

  hidEvent = [eventCopy hidEvent];
  if (IOHIDEventGetType() == 11)
  {
    v7 = _RCPEventHIDDigitizerEventCountOfTouchingContacts(hidEvent);
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