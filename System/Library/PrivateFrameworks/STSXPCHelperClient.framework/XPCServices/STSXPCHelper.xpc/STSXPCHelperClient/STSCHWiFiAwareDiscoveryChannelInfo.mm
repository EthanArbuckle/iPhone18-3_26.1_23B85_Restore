@interface STSCHWiFiAwareDiscoveryChannelInfo
- (BOOL)isEqual:(id)equal;
- (STSCHWiFiAwareDiscoveryChannelInfo)initWithCoder:(id)coder;
- (STSCHWiFiAwareDiscoveryChannelInfo)initWithSupportedBands:(id)bands operatingClass:(id)class channelNumber:(id)number;
- (id)asData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCHWiFiAwareDiscoveryChannelInfo

- (void)encodeWithCoder:(id)coder
{
  supportedBands = self->_supportedBands;
  coderCopy = coder;
  [coderCopy encodeObject:supportedBands forKey:@"supportedBands"];
  [coderCopy encodeObject:self->_operatingClass forKey:@"operatingClass"];
  [coderCopy encodeObject:self->_channelNumber forKey:@"channelNumber"];
}

- (STSCHWiFiAwareDiscoveryChannelInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STSCHWiFiAwareDiscoveryChannelInfo;
  v5 = [(STSCHWiFiAwareDiscoveryChannelInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"supportedBands"];
    supportedBands = v5->_supportedBands;
    v5->_supportedBands = v6;

    v8 = [coderCopy decodeObjectForKey:@"operatingClass"];
    operatingClass = v5->_operatingClass;
    v5->_operatingClass = v8;

    v10 = [coderCopy decodeObjectForKey:@"channelNumber"];
    channelNumber = v5->_channelNumber;
    v5->_channelNumber = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = v6;
        if (self->_supportedBands)
        {
          supportedBands = [(STSCHWiFiAwareDiscoveryChannelInfo *)v6 supportedBands];

          supportedBands = self->_supportedBands;
          if (supportedBands)
          {
            supportedBands2 = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 supportedBands];
            v11 = [(NSNumber *)supportedBands isEqual:supportedBands2];

            if ((v11 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_12;
          }

          if (supportedBands)
          {
            goto LABEL_24;
          }
        }

        supportedBands3 = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 supportedBands];

        if (supportedBands3)
        {
          goto LABEL_24;
        }

LABEL_12:
        if (self->_operatingClass)
        {
          operatingClass = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 operatingClass];

          operatingClass = self->_operatingClass;
          if (operatingClass)
          {
            operatingClass2 = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 operatingClass];
            v17 = [(NSNumber *)operatingClass isEqual:operatingClass2];

            if ((v17 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_18;
          }

          if (operatingClass)
          {
            goto LABEL_24;
          }
        }

        operatingClass3 = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 operatingClass];

        if (operatingClass3)
        {
          goto LABEL_24;
        }

LABEL_18:
        if (self->_channelNumber)
        {
          channelNumber = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 channelNumber];

          channelNumber = self->_channelNumber;
          if (channelNumber)
          {
            channelNumber2 = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 channelNumber];
            v22 = [(NSNumber *)channelNumber isEqual:channelNumber2];

            if (v22)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }

          if (channelNumber)
          {
            goto LABEL_24;
          }
        }

        channelNumber3 = [(STSCHWiFiAwareDiscoveryChannelInfo *)v7 channelNumber];

        if (!channelNumber3)
        {
LABEL_27:
          v12 = 1;
          goto LABEL_25;
        }

LABEL_24:
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v12 = 0;
  }

LABEL_26:

  return v12;
}

- (STSCHWiFiAwareDiscoveryChannelInfo)initWithSupportedBands:(id)bands operatingClass:(id)class channelNumber:(id)number
{
  bandsCopy = bands;
  classCopy = class;
  numberCopy = number;
  v15.receiver = self;
  v15.super_class = STSCHWiFiAwareDiscoveryChannelInfo;
  v12 = [(STSCHWiFiAwareDiscoveryChannelInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_supportedBands, bands);
    objc_storeStrong(&v13->_operatingClass, class);
    objc_storeStrong(&v13->_channelNumber, number);
  }

  return v13;
}

- (id)asData
{
  v3 = +[NSMutableData data];
  supportedBands = self->_supportedBands;
  if (supportedBands)
  {
    v10 = 1026;
    intValue = [(NSNumber *)supportedBands intValue];
    [v3 appendBytes:&v10 length:3];
  }

  operatingClass = self->_operatingClass;
  if (operatingClass && self->_channelNumber)
  {
    v7 = 1283;
    intValue2 = [(NSNumber *)operatingClass intValue];
    intValue3 = [(NSNumber *)self->_channelNumber intValue];
    [v3 appendBytes:&v7 length:4];
  }

  return v3;
}

@end