@interface WiFiAwarePublishDatapathServiceSpecificInfo
- (BOOL)hostnameEquals:(id)equals;
- (BOOL)isEqual:(id)equal;
- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithCoder:(id)coder;
- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithProtocolType:(int64_t)type servicePort:(unsigned __int16)port;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePublishDatapathServiceSpecificInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WiFiAwarePublishDatapathServiceSpecificInfo protocolType](self forKey:{"protocolType"), @"WiFiAwarePublishDatapathServiceSpecificInfo.protocolType"}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[WiFiAwarePublishDatapathServiceSpecificInfo servicePort](self, "servicePort")}];
  [coderCopy encodeObject:v5 forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.port"];

  hostname = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  [coderCopy encodeObject:hostname forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.hostname"];
}

- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.protocolType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.port"];
  unsignedShortValue = [v6 unsignedShortValue];

  v8 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self initWithProtocolType:v5 servicePort:unsignedShortValue];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.hostname"];

  [(WiFiAwarePublishDatapathServiceSpecificInfo *)v8 setHostname:v9];
  return v8;
}

- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithProtocolType:(int64_t)type servicePort:(unsigned __int16)port
{
  v7.receiver = self;
  v7.super_class = WiFiAwarePublishDatapathServiceSpecificInfo;
  result = [(WiFiAwarePublishDatapathServiceSpecificInfo *)&v7 init];
  if (result)
  {
    result->_protocolType = type;
    result->_servicePort = port;
  }

  return result;
}

- (BOOL)hostnameEquals:(id)equals
{
  equalsCopy = equals;
  hostname = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  hostname2 = [equalsCopy hostname];
  if (hostname == hostname2)
  {
    v9 = 1;
  }

  else
  {
    hostname3 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
    hostname4 = [equalsCopy hostname];
    v9 = [hostname3 isEqual:hostname4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
LABEL_8:
    v8 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  protocolType = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self protocolType];
  if (protocolType == [(WiFiAwarePublishDatapathServiceSpecificInfo *)v5 protocolType])
  {
    servicePort = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self servicePort];
    if (servicePort == [(WiFiAwarePublishDatapathServiceSpecificInfo *)v5 servicePort])
    {
      if ([(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostnameEquals:v5])
      {
        goto LABEL_8;
      }
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)description
{
  protocolType = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self protocolType];
  v4 = "unrecognized";
  if (protocolType == 1)
  {
    v4 = "UDP";
  }

  if (protocolType)
  {
    v5 = v4;
  }

  else
  {
    v5 = "TCP";
  }

  v6 = MEMORY[0x277CCACA8];
  servicePort = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self servicePort];
  hostname = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  v9 = [v6 stringWithFormat:@"<WiFiAwarePublishDatapathServiceSpecificInfo: protocolType=%s, servicePort=%hu, hostname=%@>", v5, servicePort, hostname];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WiFiAwarePublishDatapathServiceSpecificInfo alloc] initWithProtocolType:[(WiFiAwarePublishDatapathServiceSpecificInfo *)self protocolType] servicePort:[(WiFiAwarePublishDatapathServiceSpecificInfo *)self servicePort]];
  hostname = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  [(WiFiAwarePublishDatapathServiceSpecificInfo *)v4 setHostname:hostname];

  return v4;
}

@end