@interface SPFirmwareUpdateStateResult
- (SPFirmwareUpdateStateResult)initWithCoder:(id)a3;
- (id)description;
- (id)dictionary;
- (id)firmwareUpdateState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPFirmwareUpdateStateResult

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"state"];
  [v5 encodeObject:self->_stateDate forKey:@"stateDate"];
  [v5 encodeObject:self->_currentSystemVersion forKey:@"currentSystemVersion"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

- (SPFirmwareUpdateStateResult)initWithCoder:(id)a3
{
  v4 = a3;
  self->_state = [v4 decodeIntegerForKey:@"state"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateDate"];
  stateDate = self->_stateDate;
  self->_stateDate = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSystemVersion"];
  currentSystemVersion = self->_currentSystemVersion;
  self->_currentSystemVersion = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  error = self->_error;
  self->_error = v9;

  return self;
}

- (id)firmwareUpdateState
{
  v2 = [(SPFirmwareUpdateStateResult *)self state];
  if ((v2 + 1) > 7)
  {
    return @"completed";
  }

  else
  {
    return off_279B58CE0[v2 + 1];
  }
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = [(SPFirmwareUpdateStateResult *)self firmwareUpdateState];
  [v3 setObject:v4 forKeyedSubscript:@"FirmwareUpdateState"];

  v5 = [(SPFirmwareUpdateStateResult *)self stateDate];
  [v3 setObject:v5 forKeyedSubscript:@"Date"];

  v6 = [(SPFirmwareUpdateStateResult *)self currentSystemVersion];
  [v3 setObject:v6 forKeyedSubscript:@"SystemVersion"];

  v7 = [(SPFirmwareUpdateStateResult *)self error];
  [v3 setObject:v7 forKeyedSubscript:@"Error"];

  v8 = [v3 copy];

  return v8;
}

- (id)description
{
  v2 = [(SPFirmwareUpdateStateResult *)self dictionary];
  v3 = [v2 description];

  return v3;
}

@end