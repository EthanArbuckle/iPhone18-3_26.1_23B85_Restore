@interface SFRemoteHotspotTrafficFilterParams
- (SFRemoteHotspotTrafficFilterParams)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRemoteHotspotTrafficFilterParams

- (SFRemoteHotspotTrafficFilterParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFRemoteHotspotTrafficFilterParams;
  v5 = [(SFRemoteHotspotTrafficFilterParams *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_srcPort = v12;
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_destPort = v12;
    }

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ipProtocol = v12;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ipVersion = v12;
    }

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_idleTimeout = v12;
    }

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  srcIPAddress = self->_srcIPAddress;
  v10 = coderCopy;
  if (srcIPAddress)
  {
    [coderCopy encodeObject:srcIPAddress forKey:@"srcIP"];
    coderCopy = v10;
  }

  if (self->_srcPort)
  {
    [v10 encodeInteger:? forKey:?];
    coderCopy = v10;
  }

  destIPAddress = self->_destIPAddress;
  if (destIPAddress)
  {
    [v10 encodeObject:destIPAddress forKey:@"destIP"];
    coderCopy = v10;
  }

  if (self->_destPort)
  {
    [v10 encodeInteger:? forKey:?];
    coderCopy = v10;
  }

  if (self->_ipProtocol)
  {
    [v10 encodeInteger:? forKey:?];
    coderCopy = v10;
  }

  trafficClass = self->_trafficClass;
  if (trafficClass)
  {
    [v10 encodeObject:trafficClass forKey:@"traCla"];
    coderCopy = v10;
  }

  ipVersion = self->_ipVersion;
  if (ipVersion)
  {
    [v10 encodeInt64:ipVersion forKey:@"ipVer"];
    coderCopy = v10;
  }

  idleTimeout = self->_idleTimeout;
  if (idleTimeout)
  {
    [v10 encodeInt64:idleTimeout forKey:@"timeout"];
    coderCopy = v10;
  }
}

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_srcIPAddress)
  {
    v23 = v3;
    srcIPAddress = self->_srcIPAddress;
    NSAppendPrintF();
    v5 = v23;

    v4 = v5;
  }

  if (self->_srcPort)
  {
    srcPort = self->_srcPort;
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_destIPAddress)
  {
    destIPAddress = self->_destIPAddress;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  if (self->_destPort)
  {
    destPort = self->_destPort;
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  if (self->_ipProtocol)
  {
    ipProtocol = self->_ipProtocol;
    NSAppendPrintF();
    v9 = v4;

    v4 = v9;
  }

  if (self->_trafficClass)
  {
    trafficClass = self->_trafficClass;
    NSAppendPrintF();
    v10 = v4;

    v4 = v10;
  }

  if (self->_ipVersion)
  {
    ipVersion = self->_ipVersion;
    NSAppendPrintF();
    v11 = v4;

    v4 = v11;
  }

  if (self->_idleTimeout)
  {
    idleTimeout = self->_idleTimeout;
    NSAppendPrintF();
    v12 = v4;

    v4 = v12;
  }

  NSAppendPrintF();
  v13 = v4;

  return v4;
}

@end