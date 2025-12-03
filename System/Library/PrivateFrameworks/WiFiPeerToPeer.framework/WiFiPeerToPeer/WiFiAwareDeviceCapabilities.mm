@interface WiFiAwareDeviceCapabilities
- (BOOL)isEqual:(id)equal;
- (WiFiAwareDeviceCapabilities)initWithCoder:(id)coder;
- (WiFiAwareDeviceCapabilities)initWithSupportedFeatures:(id)features operatingChannel:(id)channel operatingClass:(id)class supportedCipherSuites:(id)suites supportsDataTransfer:(BOOL)transfer supportedBands:(unsigned __int8)bands discoveryInterfaceName:(id)name maxPeers:(int64_t)self0 maxPublishers:(int64_t)self1 maxSubscribers:(int64_t)self2 maxDatapaths:(int64_t)self3;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareDeviceCapabilities

- (WiFiAwareDeviceCapabilities)initWithSupportedFeatures:(id)features operatingChannel:(id)channel operatingClass:(id)class supportedCipherSuites:(id)suites supportsDataTransfer:(BOOL)transfer supportedBands:(unsigned __int8)bands discoveryInterfaceName:(id)name maxPeers:(int64_t)self0 maxPublishers:(int64_t)self1 maxSubscribers:(int64_t)self2 maxDatapaths:(int64_t)self3
{
  featuresCopy = features;
  channelCopy = channel;
  classCopy = class;
  suitesCopy = suites;
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = WiFiAwareDeviceCapabilities;
  v24 = [(WiFiAwareDeviceCapabilities *)&v36 init];
  if (v24)
  {
    v25 = [featuresCopy copy];
    supportedFeatures = v24->_supportedFeatures;
    v24->_supportedFeatures = v25;

    v27 = [suitesCopy copy];
    supportedCipherSuites = v24->_supportedCipherSuites;
    v24->_supportedCipherSuites = v27;

    v24->_supportedBands = bands;
    v24->_supportsDataTransfer = transfer;
    v29 = [channelCopy copy];
    operatingChannel = v24->_operatingChannel;
    v24->_operatingChannel = v29;

    v31 = [classCopy copy];
    operatingClass = v24->_operatingClass;
    v24->_operatingClass = v31;

    v33 = [nameCopy copy];
    discoveryInterfaceName = v24->_discoveryInterfaceName;
    v24->_discoveryInterfaceName = v33;

    v24->_maxPeers = peers;
    v24->_maxPublishers = publishers;
    v24->_maxSubscribers = subscribers;
    v24->_maxDatapaths = datapaths;
  }

  return v24;
}

- (WiFiAwareDeviceCapabilities)initWithCoder:(id)coder
{
  v39[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"WiFiAwareDeviceCapabilities.supportedFeatures"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.supportedBands"];
  unsignedCharValue = [v9 unsignedCharValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.operatingChannel"];
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.operatingClass"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"WiFiAwareDeviceCapabilities.supportedCipherSuites"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.discoveryInterfaceName"];
  v17 = [coderCopy decodeBoolForKey:@"WiFiAwareDeviceCapabilities.supportsDataTransfer"];
  v18 = v17;
  if (!v15)
  {
    v30 = v17;
    v31 = unsignedCharValue;
    v32 = v11;
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v18;
    v31 = unsignedCharValue;
    v32 = v11;
    v39[0] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
LABEL_5:
    v11 = v32;
    v20 = v33;
    self = -[WiFiAwareDeviceCapabilities initWithSupportedFeatures:operatingChannel:operatingClass:supportedCipherSuites:supportsDataTransfer:supportedBands:discoveryInterfaceName:maxPeers:maxPublishers:maxSubscribers:maxDatapaths:](self, "initWithSupportedFeatures:operatingChannel:operatingClass:supportedCipherSuites:supportsDataTransfer:supportedBands:discoveryInterfaceName:maxPeers:maxPublishers:maxSubscribers:maxDatapaths:", v8, v32, v33, v19, v30, v31, v16, [coderCopy decodeIntegerForKey:@"WiFiAwareDeviceCapabilities.maxPeers"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"WiFiAwareDeviceCapabilities.maxPublishers"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"WiFiAwareDeviceCapabilities.maxSubscribers"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"WiFiAwareDeviceCapabilities.maxDatapaths"));
    selfCopy = self;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v18;
    v31 = unsignedCharValue;
    v32 = v11;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v15;
    v22 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      v29 = v8;
      while (2)
      {
        v25 = 0;
        do
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v34 + 1) + 8 * v25);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            selfCopy = 0;
            v8 = v29;
            v11 = v32;
            goto LABEL_18;
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
        v8 = v29;
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_5;
  }

  v19 = 0;
  selfCopy = 0;
LABEL_18:
  v20 = v33;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportedFeatures = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
  [coderCopy encodeObject:supportedFeatures forKey:@"WiFiAwareDeviceCapabilities.supportedFeatures"];

  operatingChannel = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
  [coderCopy encodeObject:operatingChannel forKey:@"WiFiAwareDeviceCapabilities.operatingChannel"];

  operatingClass = [(WiFiAwareDeviceCapabilities *)self operatingClass];
  [coderCopy encodeObject:operatingClass forKey:@"WiFiAwareDeviceCapabilities.operatingClass"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareDeviceCapabilities supportedBands](self, "supportedBands")}];
  [coderCopy encodeObject:v7 forKey:@"WiFiAwareDeviceCapabilities.supportedBands"];

  supportedCipherSuites = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
  [coderCopy encodeObject:supportedCipherSuites forKey:@"WiFiAwareDeviceCapabilities.supportedCipherSuites"];

  discoveryInterfaceName = [(WiFiAwareDeviceCapabilities *)self discoveryInterfaceName];
  [coderCopy encodeObject:discoveryInterfaceName forKey:@"WiFiAwareDeviceCapabilities.discoveryInterfaceName"];

  [coderCopy encodeBool:-[WiFiAwareDeviceCapabilities supportsDataTransfer](self forKey:{"supportsDataTransfer"), @"WiFiAwareDeviceCapabilities.supportsDataTransfer"}];
  [coderCopy encodeInteger:-[WiFiAwareDeviceCapabilities maxPeers](self forKey:{"maxPeers"), @"WiFiAwareDeviceCapabilities.maxPeers"}];
  [coderCopy encodeInteger:-[WiFiAwareDeviceCapabilities maxPublishers](self forKey:{"maxPublishers"), @"WiFiAwareDeviceCapabilities.maxPublishers"}];
  [coderCopy encodeInteger:-[WiFiAwareDeviceCapabilities maxSubscribers](self forKey:{"maxSubscribers"), @"WiFiAwareDeviceCapabilities.maxSubscribers"}];
  [coderCopy encodeInteger:-[WiFiAwareDeviceCapabilities maxDatapaths](self forKey:{"maxDatapaths"), @"WiFiAwareDeviceCapabilities.maxDatapaths"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 0;
    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    operatingChannel = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
    operatingChannel2 = [(WiFiAwareDeviceCapabilities *)v7 operatingChannel];
    if (operatingChannel != operatingChannel2)
    {
      operatingChannel3 = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
      operatingChannel4 = [(WiFiAwareDeviceCapabilities *)v7 operatingChannel];
      if (![operatingChannel3 isEqual:operatingChannel4])
      {

LABEL_38:
        v10 = 0;
        goto LABEL_40;
      }
    }

    operatingClass = [(WiFiAwareDeviceCapabilities *)self operatingClass];
    operatingClass2 = [(WiFiAwareDeviceCapabilities *)v7 operatingClass];
    if (operatingClass != operatingClass2)
    {
      operatingClass3 = [(WiFiAwareDeviceCapabilities *)self operatingClass];
      operatingClass4 = [(WiFiAwareDeviceCapabilities *)v7 operatingClass];
      if (![operatingClass3 isEqual:?])
      {
        v16 = 1;
        goto LABEL_34;
      }

      v40 = operatingClass3;
    }

    supportedBands = [(WiFiAwareDeviceCapabilities *)self supportedBands];
    if (supportedBands != [(WiFiAwareDeviceCapabilities *)v7 supportedBands]|| (v15 = [(WiFiAwareDeviceCapabilities *)self supportsDataTransfer], v15 != [(WiFiAwareDeviceCapabilities *)v7 supportsDataTransfer]))
    {
      v16 = 1;
      operatingClass3 = v40;
      if (operatingClass == operatingClass2)
      {
LABEL_35:

        if (operatingChannel != operatingChannel2)
        {
        }

        if (v16)
        {
          goto LABEL_38;
        }

LABEL_39:
        v10 = 1;
        goto LABEL_40;
      }

LABEL_34:

      goto LABEL_35;
    }

    supportedCipherSuites = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
    supportedCipherSuites2 = [(WiFiAwareDeviceCapabilities *)v7 supportedCipherSuites];
    v39 = supportedCipherSuites;
    v37 = operatingChannel3;
    if (supportedCipherSuites != supportedCipherSuites2)
    {
      supportedCipherSuites3 = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
      supportedCipherSuites4 = [(WiFiAwareDeviceCapabilities *)v7 supportedCipherSuites];
      v34 = supportedCipherSuites3;
      if (![supportedCipherSuites3 isEqual:supportedCipherSuites4])
      {
        v16 = 1;
        operatingClass3 = v40;
        v19 = supportedCipherSuites2;
LABEL_32:

LABEL_33:
        operatingChannel3 = v37;
        if (operatingClass == operatingClass2)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    supportedFeatures = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
    supportedFeatures2 = [(WiFiAwareDeviceCapabilities *)v7 supportedFeatures];
    v36 = supportedFeatures;
    if (supportedFeatures != supportedFeatures2)
    {
      supportedFeatures3 = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
      supportedFeatures4 = [(WiFiAwareDeviceCapabilities *)v7 supportedFeatures];
      v32 = supportedFeatures3;
      v23 = supportedFeatures3;
      v24 = supportedFeatures4;
      if (![v23 isEqual:supportedFeatures4])
      {
        v16 = 1;
        v29 = supportedFeatures2;
        goto LABEL_30;
      }

      v31 = v24;
    }

    maxPeers = [(WiFiAwareDeviceCapabilities *)self maxPeers];
    if (maxPeers == [(WiFiAwareDeviceCapabilities *)v7 maxPeers]&& (v26 = [(WiFiAwareDeviceCapabilities *)self maxPublishers], v26 == [(WiFiAwareDeviceCapabilities *)v7 maxPublishers]) && (v27 = [(WiFiAwareDeviceCapabilities *)self maxSubscribers], v27 == [(WiFiAwareDeviceCapabilities *)v7 maxSubscribers]))
    {
      maxDatapaths = [(WiFiAwareDeviceCapabilities *)self maxDatapaths];
      v16 = maxDatapaths != [(WiFiAwareDeviceCapabilities *)v7 maxDatapaths];
    }

    else
    {
      v16 = 1;
    }

    v29 = supportedFeatures2;
    v24 = v31;
    if (v36 == supportedFeatures2)
    {
LABEL_31:

      v19 = supportedCipherSuites2;
      operatingClass3 = v40;
      if (v39 == supportedCipherSuites2)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_30:

    goto LABEL_31;
  }

  v10 = 0;
  v7 = 0;
LABEL_40:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  supportedFeatures = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
  operatingChannel = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
  operatingClass = [(WiFiAwareDeviceCapabilities *)self operatingClass];
  supportedBands = [(WiFiAwareDeviceCapabilities *)self supportedBands];
  supportedCipherSuites = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
  v9 = [v3 stringWithFormat:@"<WiFiAwareDeviceCapabilities supportedFeatures=%@ operatingChannel=%@, operatingClass=%@, supportedBands=%u, supportedCipherSuites=%@, maxPeers=%ld, maxPublishers=%ld, maxSubscribers=%ld, maxDatapaths=%ld>", supportedFeatures, operatingChannel, operatingClass, supportedBands, supportedCipherSuites, -[WiFiAwareDeviceCapabilities maxPeers](self, "maxPeers"), -[WiFiAwareDeviceCapabilities maxPublishers](self, "maxPublishers"), -[WiFiAwareDeviceCapabilities maxSubscribers](self, "maxSubscribers"), -[WiFiAwareDeviceCapabilities maxDatapaths](self, "maxDatapaths")];

  return v9;
}

@end