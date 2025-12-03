@interface MFConnectionSettings
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)setConnectionServiceType:(__CFString *)type;
@end

@implementation MFConnectionSettings

- (void)dealloc
{
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType)
  {
    CFRelease(connectionServiceType);
  }

  v4.receiver = self;
  v4.super_class = MFConnectionSettings;
  [(MFConnectionSettings *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  hostname = [(MFConnectionSettings *)self hostname];
  [v4 setHostname:hostname];

  serviceName = [(MFConnectionSettings *)self serviceName];
  [v4 setServiceName:serviceName];

  [v4 setPortNumber:{-[MFConnectionSettings portNumber](self, "portNumber")}];
  [v4 setConnectionServiceType:{-[MFConnectionSettings connectionServiceType](self, "connectionServiceType")}];
  [v4 setUsesSSL:{-[MFConnectionSettings usesSSL](self, "usesSSL")}];
  [v4 setUsesOpportunisticSockets:{-[MFConnectionSettings usesOpportunisticSockets](self, "usesOpportunisticSockets")}];
  [v4 setTryDirectSSL:{-[MFConnectionSettings tryDirectSSL](self, "tryDirectSSL")}];
  sourceApplicationBundleIdentifier = [(MFConnectionSettings *)self sourceApplicationBundleIdentifier];
  [v4 setSourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

  accountIdentifier = [(MFConnectionSettings *)self accountIdentifier];
  [v4 setAccountIdentifier:accountIdentifier];

  networkAccountIdentifier = [(MFConnectionSettings *)self networkAccountIdentifier];
  [v4 setNetworkAccountIdentifier:networkAccountIdentifier];

  return v4;
}

- (void)setConnectionServiceType:(__CFString *)type
{
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType != type)
  {
    if (connectionServiceType)
    {
      CFRelease(connectionServiceType);
    }

    self->_connectionServiceType = 0;
    if (type)
    {
      self->_connectionServiceType = CFRetain(type);
    }
  }
}

- (id)description
{
  v2 = "No";
  v3 = "";
  if (self->_usesSSL)
  {
    v2 = "";
  }

  if (self->_tryDirectSSLConnection)
  {
    v4 = "direct";
  }

  else
  {
    v4 = "indirect";
  }

  v5 = " (opportunistic)";
  if (!self->_usesOpportunisticSockets)
  {
    v5 = "";
  }

  sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier;
  if (sourceApplicationBundleIdentifier)
  {
    v3 = ", source application: ";
  }

  else
  {
    sourceApplicationBundleIdentifier = &stru_288159858;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%@>:%d %s SSL (%s)%s%s%@", self->_hostname, self->_serviceName, self->_portNumber, v2, v4, v5, v3, sourceApplicationBundleIdentifier];
}

@end