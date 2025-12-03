@interface TRSetupProxyDeviceResponse
- (TRSetupProxyDeviceResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSetupProxyDeviceResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRSetupProxyDeviceResponse;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  proxyDevice = self->_proxyDevice;
  if (proxyDevice)
  {
    [coderCopy encodeObject:proxyDevice forKey:@"TRSetupAuthenticationMessages_pD"];
  }
}

- (TRSetupProxyDeviceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRSetupProxyDeviceResponse;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRSetupAuthenticationMessages_pD"];
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