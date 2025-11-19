@interface STSWifiAwareConfiguration
- (STSWifiAwareConfiguration)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSWifiAwareConfiguration

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeBool:self->_publisher forKey:@"publisher"];
    [v5 encodeObject:self->_serviceName forKey:@"serviceName"];
    [v5 encodeObject:self->_securityInfo forKey:@"securityInfo"];
    [v5 encodeObject:self->_channelInfo forKey:@"channelInfo"];
    [v5 encodeObject:self->_peerDHInfo forKey:@"peerDHInfo"];
    [v5 encodeObject:self->_transportKey forKey:@"transportKey"];
    [v5 encodeObject:self->_serviceSpecificInfo forKey:@"serviceSpecificInfo"];
    [v5 encodeObject:self->_portNumber forKey:@"portNumber"];
    [v5 encodeDouble:@"connectionTimeout" forKey:self->_connectionTimeout];
    sessionTimeout = self->_sessionTimeout;
  }

  else
  {
    [v5 encodeBool:0 forKey:@"publisher"];
    [v5 encodeObject:0 forKey:@"serviceName"];
    [v5 encodeObject:0 forKey:@"securityInfo"];
    [v5 encodeObject:0 forKey:@"channelInfo"];
    [v5 encodeObject:0 forKey:@"peerDHInfo"];
    [v5 encodeObject:0 forKey:@"transportKey"];
    [v5 encodeObject:0 forKey:@"serviceSpecificInfo"];
    [v5 encodeObject:0 forKey:@"portNumber"];
    [v5 encodeDouble:@"connectionTimeout" forKey:0.0];
    sessionTimeout = 0.0;
  }

  [v5 encodeDouble:@"sessionTimeout" forKey:sessionTimeout];
}

- (STSWifiAwareConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = STSWifiAwareConfiguration;
  v5 = [(STSWifiAwareConfiguration *)&v23 init];
  if (v5)
  {
    v5->_publisher = [v4 decodeBoolForKey:@"publisher"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityInfo"];
    securityInfo = v5->_securityInfo;
    v5->_securityInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelInfo"];
    channelInfo = v5->_channelInfo;
    v5->_channelInfo = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transportKey"];
    transportKey = v5->_transportKey;
    v5->_transportKey = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerDHInfo"];
    peerDHInfo = v5->_peerDHInfo;
    v5->_peerDHInfo = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceSpecificInfo"];
    serviceSpecificInfo = v5->_serviceSpecificInfo;
    v5->_serviceSpecificInfo = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"portNumber"];
    portNumber = v5->_portNumber;
    v5->_portNumber = v18;

    [v4 decodeDoubleForKey:@"connectionTimeout"];
    v5->_connectionTimeout = v20;
    [v4 decodeDoubleForKey:@"sessionTimeout"];
    v5->_sessionTimeout = v21;
  }

  return v5;
}

- (id)description
{
  if (self)
  {
    publisher = self->_publisher;
    v4 = self->_serviceName;
    v5 = self->_portNumber;
    v6 = self->_serviceSpecificInfo;
    v7 = self->_channelInfo;
    connectionTimeout = self->_connectionTimeout;
    sessionTimeout = self->_sessionTimeout;
  }

  else
  {
    v6 = 0;
    v4 = 0;
    publisher = 0;
    v5 = 0;
    v7 = 0;
    connectionTimeout = 0.0;
    sessionTimeout = 0.0;
  }

  v10 = [NSString stringWithFormat:@"{ publisher=%d, \r\n serviceName=%@, \r\n port=%@, \r\n serviceSpecificInfo=%@, \r\n channelInfo=%@, \r\nconnectionTimeout=%f, \r\nsessionTimeout=%f }", publisher, v4, v5, v6, v7, *&connectionTimeout, *&sessionTimeout];

  return v10;
}

@end