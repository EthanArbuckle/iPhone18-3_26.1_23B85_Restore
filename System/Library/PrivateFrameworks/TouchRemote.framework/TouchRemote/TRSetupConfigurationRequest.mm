@interface TRSetupConfigurationRequest
- (TRSetupConfigurationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupConfigurationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRSetupConfigurationRequest;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [coderCopy encodeObject:deviceName forKey:@"TRSetupConfigurationMessages_dN"];
  }
}

- (TRSetupConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRSetupConfigurationRequest;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupConfigurationMessages_dN"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceName:[-%@-]", self->_deviceName];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRSetupConfigurationRequest;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end