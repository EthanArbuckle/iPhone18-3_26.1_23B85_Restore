@interface WiFiAwarePublishDatapathServiceSpecificInfo
- (BOOL)hostnameEquals:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithCoder:(id)a3;
- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithProtocolType:(int64_t)a3 servicePort:(unsigned __int16)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePublishDatapathServiceSpecificInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[WiFiAwarePublishDatapathServiceSpecificInfo protocolType](self forKey:{"protocolType"), @"WiFiAwarePublishDatapathServiceSpecificInfo.protocolType"}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[WiFiAwarePublishDatapathServiceSpecificInfo servicePort](self, "servicePort")}];
  [v4 encodeObject:v5 forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.port"];

  v6 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  [v4 encodeObject:v6 forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.hostname"];
}

- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.protocolType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.port"];
  v7 = [v6 unsignedShortValue];

  v8 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self initWithProtocolType:v5 servicePort:v7];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwarePublishDatapathServiceSpecificInfo.hostname"];

  [(WiFiAwarePublishDatapathServiceSpecificInfo *)v8 setHostname:v9];
  return v8;
}

- (WiFiAwarePublishDatapathServiceSpecificInfo)initWithProtocolType:(int64_t)a3 servicePort:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = WiFiAwarePublishDatapathServiceSpecificInfo;
  result = [(WiFiAwarePublishDatapathServiceSpecificInfo *)&v7 init];
  if (result)
  {
    result->_protocolType = a3;
    result->_servicePort = a4;
  }

  return result;
}

- (BOOL)hostnameEquals:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  v6 = [v4 hostname];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
    v8 = [v4 hostname];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self protocolType];
  if (v6 == [(WiFiAwarePublishDatapathServiceSpecificInfo *)v5 protocolType])
  {
    v7 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self servicePort];
    if (v7 == [(WiFiAwarePublishDatapathServiceSpecificInfo *)v5 servicePort])
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
  v3 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self protocolType];
  v4 = "unrecognized";
  if (v3 == 1)
  {
    v4 = "UDP";
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = "TCP";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self servicePort];
  v8 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  v9 = [v6 stringWithFormat:@"<WiFiAwarePublishDatapathServiceSpecificInfo: protocolType=%s, servicePort=%hu, hostname=%@>", v5, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WiFiAwarePublishDatapathServiceSpecificInfo alloc] initWithProtocolType:[(WiFiAwarePublishDatapathServiceSpecificInfo *)self protocolType] servicePort:[(WiFiAwarePublishDatapathServiceSpecificInfo *)self servicePort]];
  v5 = [(WiFiAwarePublishDatapathServiceSpecificInfo *)self hostname];
  [(WiFiAwarePublishDatapathServiceSpecificInfo *)v4 setHostname:v5];

  return v4;
}

@end