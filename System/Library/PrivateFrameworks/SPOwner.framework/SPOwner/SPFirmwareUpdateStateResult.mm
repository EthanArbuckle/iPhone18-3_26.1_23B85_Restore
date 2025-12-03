@interface SPFirmwareUpdateStateResult
- (SPFirmwareUpdateStateResult)initWithCoder:(id)coder;
- (id)description;
- (id)dictionary;
- (id)firmwareUpdateState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPFirmwareUpdateStateResult

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeInteger:state forKey:@"state"];
  [coderCopy encodeObject:self->_stateDate forKey:@"stateDate"];
  [coderCopy encodeObject:self->_currentSystemVersion forKey:@"currentSystemVersion"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

- (SPFirmwareUpdateStateResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_state = [coderCopy decodeIntegerForKey:@"state"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateDate"];
  stateDate = self->_stateDate;
  self->_stateDate = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSystemVersion"];
  currentSystemVersion = self->_currentSystemVersion;
  self->_currentSystemVersion = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  error = self->_error;
  self->_error = v9;

  return self;
}

- (id)firmwareUpdateState
{
  state = [(SPFirmwareUpdateStateResult *)self state];
  if ((state + 1) > 7)
  {
    return @"completed";
  }

  else
  {
    return off_279B58CE0[state + 1];
  }
}

- (id)dictionary
{
  v3 = objc_opt_new();
  firmwareUpdateState = [(SPFirmwareUpdateStateResult *)self firmwareUpdateState];
  [v3 setObject:firmwareUpdateState forKeyedSubscript:@"FirmwareUpdateState"];

  stateDate = [(SPFirmwareUpdateStateResult *)self stateDate];
  [v3 setObject:stateDate forKeyedSubscript:@"Date"];

  currentSystemVersion = [(SPFirmwareUpdateStateResult *)self currentSystemVersion];
  [v3 setObject:currentSystemVersion forKeyedSubscript:@"SystemVersion"];

  error = [(SPFirmwareUpdateStateResult *)self error];
  [v3 setObject:error forKeyedSubscript:@"Error"];

  v8 = [v3 copy];

  return v8;
}

- (id)description
{
  dictionary = [(SPFirmwareUpdateStateResult *)self dictionary];
  v3 = [dictionary description];

  return v3;
}

@end