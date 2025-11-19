@interface MFConnectionSettings
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)setConnectionServiceType:(__CFString *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(MFConnectionSettings *)self hostname];
  [v4 setHostname:v5];

  v6 = [(MFConnectionSettings *)self serviceName];
  [v4 setServiceName:v6];

  [v4 setPortNumber:{-[MFConnectionSettings portNumber](self, "portNumber")}];
  [v4 setConnectionServiceType:{-[MFConnectionSettings connectionServiceType](self, "connectionServiceType")}];
  [v4 setUsesSSL:{-[MFConnectionSettings usesSSL](self, "usesSSL")}];
  [v4 setUsesOpportunisticSockets:{-[MFConnectionSettings usesOpportunisticSockets](self, "usesOpportunisticSockets")}];
  [v4 setTryDirectSSL:{-[MFConnectionSettings tryDirectSSL](self, "tryDirectSSL")}];
  v7 = [(MFConnectionSettings *)self sourceApplicationBundleIdentifier];
  [v4 setSourceApplicationBundleIdentifier:v7];

  v8 = [(MFConnectionSettings *)self accountIdentifier];
  [v4 setAccountIdentifier:v8];

  v9 = [(MFConnectionSettings *)self networkAccountIdentifier];
  [v4 setNetworkAccountIdentifier:v9];

  return v4;
}

- (void)setConnectionServiceType:(__CFString *)a3
{
  connectionServiceType = self->_connectionServiceType;
  if (connectionServiceType != a3)
  {
    if (connectionServiceType)
    {
      CFRelease(connectionServiceType);
    }

    self->_connectionServiceType = 0;
    if (a3)
    {
      self->_connectionServiceType = CFRetain(a3);
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