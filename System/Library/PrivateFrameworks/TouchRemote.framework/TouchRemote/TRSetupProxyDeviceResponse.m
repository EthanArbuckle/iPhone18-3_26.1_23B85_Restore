@interface TRSetupProxyDeviceResponse
- (TRSetupProxyDeviceResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRSetupProxyDeviceResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TRSetupProxyDeviceResponse;
  [(TRMessage *)&v6 encodeWithCoder:v4];
  proxyDevice = self->_proxyDevice;
  if (proxyDevice)
  {
    [v4 encodeObject:proxyDevice forKey:@"TRSetupAuthenticationMessages_pD"];
  }
}

- (TRSetupProxyDeviceResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRSetupProxyDeviceResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupAuthenticationMessages_pD"];
    proxyDevice = v5->_proxyDevice;
    v5->_proxyDevice = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"proxyDevice:[-%@-]", self->_proxyDevice];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRSetupProxyDeviceResponse;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end