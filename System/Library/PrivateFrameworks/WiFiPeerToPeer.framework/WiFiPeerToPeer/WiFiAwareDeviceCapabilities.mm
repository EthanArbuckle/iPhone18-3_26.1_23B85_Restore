@interface WiFiAwareDeviceCapabilities
- (BOOL)isEqual:(id)a3;
- (WiFiAwareDeviceCapabilities)initWithCoder:(id)a3;
- (WiFiAwareDeviceCapabilities)initWithSupportedFeatures:(id)a3 operatingChannel:(id)a4 operatingClass:(id)a5 supportedCipherSuites:(id)a6 supportsDataTransfer:(BOOL)a7 supportedBands:(unsigned __int8)a8 discoveryInterfaceName:(id)a9 maxPeers:(int64_t)a10 maxPublishers:(int64_t)a11 maxSubscribers:(int64_t)a12 maxDatapaths:(int64_t)a13;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDeviceCapabilities

- (WiFiAwareDeviceCapabilities)initWithSupportedFeatures:(id)a3 operatingChannel:(id)a4 operatingClass:(id)a5 supportedCipherSuites:(id)a6 supportsDataTransfer:(BOOL)a7 supportedBands:(unsigned __int8)a8 discoveryInterfaceName:(id)a9 maxPeers:(int64_t)a10 maxPublishers:(int64_t)a11 maxSubscribers:(int64_t)a12 maxDatapaths:(int64_t)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a9;
  v36.receiver = self;
  v36.super_class = WiFiAwareDeviceCapabilities;
  v24 = [(WiFiAwareDeviceCapabilities *)&v36 init];
  if (v24)
  {
    v25 = [v19 copy];
    supportedFeatures = v24->_supportedFeatures;
    v24->_supportedFeatures = v25;

    v27 = [v22 copy];
    supportedCipherSuites = v24->_supportedCipherSuites;
    v24->_supportedCipherSuites = v27;

    v24->_supportedBands = a8;
    v24->_supportsDataTransfer = a7;
    v29 = [v20 copy];
    operatingChannel = v24->_operatingChannel;
    v24->_operatingChannel = v29;

    v31 = [v21 copy];
    operatingClass = v24->_operatingClass;
    v24->_operatingClass = v31;

    v33 = [v23 copy];
    discoveryInterfaceName = v24->_discoveryInterfaceName;
    v24->_discoveryInterfaceName = v33;

    v24->_maxPeers = a10;
    v24->_maxPublishers = a11;
    v24->_maxSubscribers = a12;
    v24->_maxDatapaths = a13;
  }

  return v24;
}

- (WiFiAwareDeviceCapabilities)initWithCoder:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"WiFiAwareDeviceCapabilities.supportedFeatures"];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.supportedBands"];
  v10 = [v9 unsignedCharValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.operatingChannel"];
  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.operatingClass"];
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"WiFiAwareDeviceCapabilities.supportedCipherSuites"];

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDeviceCapabilities.discoveryInterfaceName"];
  v17 = [v4 decodeBoolForKey:@"WiFiAwareDeviceCapabilities.supportsDataTransfer"];
  v18 = v17;
  if (!v15)
  {
    v30 = v17;
    v31 = v10;
    v32 = v11;
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v18;
    v31 = v10;
    v32 = v11;
    v39[0] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
LABEL_5:
    v11 = v32;
    v20 = v33;
    self = -[WiFiAwareDeviceCapabilities initWithSupportedFeatures:operatingChannel:operatingClass:supportedCipherSuites:supportsDataTransfer:supportedBands:discoveryInterfaceName:maxPeers:maxPublishers:maxSubscribers:maxDatapaths:](self, "initWithSupportedFeatures:operatingChannel:operatingClass:supportedCipherSuites:supportsDataTransfer:supportedBands:discoveryInterfaceName:maxPeers:maxPublishers:maxSubscribers:maxDatapaths:", v8, v32, v33, v19, v30, v31, v16, [v4 decodeIntegerForKey:@"WiFiAwareDeviceCapabilities.maxPeers"], objc_msgSend(v4, "decodeIntegerForKey:", @"WiFiAwareDeviceCapabilities.maxPublishers"), objc_msgSend(v4, "decodeIntegerForKey:", @"WiFiAwareDeviceCapabilities.maxSubscribers"), objc_msgSend(v4, "decodeIntegerForKey:", @"WiFiAwareDeviceCapabilities.maxDatapaths"));
    v21 = self;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v18;
    v31 = v10;
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

            v21 = 0;
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
  v21 = 0;
LABEL_18:
  v20 = v33;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
  [v10 encodeObject:v4 forKey:@"WiFiAwareDeviceCapabilities.supportedFeatures"];

  v5 = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
  [v10 encodeObject:v5 forKey:@"WiFiAwareDeviceCapabilities.operatingChannel"];

  v6 = [(WiFiAwareDeviceCapabilities *)self operatingClass];
  [v10 encodeObject:v6 forKey:@"WiFiAwareDeviceCapabilities.operatingClass"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareDeviceCapabilities supportedBands](self, "supportedBands")}];
  [v10 encodeObject:v7 forKey:@"WiFiAwareDeviceCapabilities.supportedBands"];

  v8 = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
  [v10 encodeObject:v8 forKey:@"WiFiAwareDeviceCapabilities.supportedCipherSuites"];

  v9 = [(WiFiAwareDeviceCapabilities *)self discoveryInterfaceName];
  [v10 encodeObject:v9 forKey:@"WiFiAwareDeviceCapabilities.discoveryInterfaceName"];

  [v10 encodeBool:-[WiFiAwareDeviceCapabilities supportsDataTransfer](self forKey:{"supportsDataTransfer"), @"WiFiAwareDeviceCapabilities.supportsDataTransfer"}];
  [v10 encodeInteger:-[WiFiAwareDeviceCapabilities maxPeers](self forKey:{"maxPeers"), @"WiFiAwareDeviceCapabilities.maxPeers"}];
  [v10 encodeInteger:-[WiFiAwareDeviceCapabilities maxPublishers](self forKey:{"maxPublishers"), @"WiFiAwareDeviceCapabilities.maxPublishers"}];
  [v10 encodeInteger:-[WiFiAwareDeviceCapabilities maxSubscribers](self forKey:{"maxSubscribers"), @"WiFiAwareDeviceCapabilities.maxSubscribers"}];
  [v10 encodeInteger:-[WiFiAwareDeviceCapabilities maxDatapaths](self forKey:{"maxDatapaths"), @"WiFiAwareDeviceCapabilities.maxDatapaths"}];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v7 = 0;
    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
    v9 = [(WiFiAwareDeviceCapabilities *)v7 operatingChannel];
    if (v8 != v9)
    {
      v3 = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
      v4 = [(WiFiAwareDeviceCapabilities *)v7 operatingChannel];
      if (![v3 isEqual:v4])
      {

LABEL_38:
        v10 = 0;
        goto LABEL_40;
      }
    }

    v11 = [(WiFiAwareDeviceCapabilities *)self operatingClass];
    v12 = [(WiFiAwareDeviceCapabilities *)v7 operatingClass];
    if (v11 != v12)
    {
      v13 = [(WiFiAwareDeviceCapabilities *)self operatingClass];
      v41 = [(WiFiAwareDeviceCapabilities *)v7 operatingClass];
      if (![v13 isEqual:?])
      {
        v16 = 1;
        goto LABEL_34;
      }

      v40 = v13;
    }

    v14 = [(WiFiAwareDeviceCapabilities *)self supportedBands];
    if (v14 != [(WiFiAwareDeviceCapabilities *)v7 supportedBands]|| (v15 = [(WiFiAwareDeviceCapabilities *)self supportsDataTransfer], v15 != [(WiFiAwareDeviceCapabilities *)v7 supportsDataTransfer]))
    {
      v16 = 1;
      v13 = v40;
      if (v11 == v12)
      {
LABEL_35:

        if (v8 != v9)
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

    v17 = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
    v38 = [(WiFiAwareDeviceCapabilities *)v7 supportedCipherSuites];
    v39 = v17;
    v37 = v3;
    if (v17 != v38)
    {
      v18 = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
      v33 = [(WiFiAwareDeviceCapabilities *)v7 supportedCipherSuites];
      v34 = v18;
      if (![v18 isEqual:v33])
      {
        v16 = 1;
        v13 = v40;
        v19 = v38;
LABEL_32:

LABEL_33:
        v3 = v37;
        if (v11 == v12)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v20 = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
    v35 = [(WiFiAwareDeviceCapabilities *)v7 supportedFeatures];
    v36 = v20;
    if (v20 != v35)
    {
      v21 = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
      v22 = [(WiFiAwareDeviceCapabilities *)v7 supportedFeatures];
      v32 = v21;
      v23 = v21;
      v24 = v22;
      if (![v23 isEqual:v22])
      {
        v16 = 1;
        v29 = v35;
        goto LABEL_30;
      }

      v31 = v24;
    }

    v25 = [(WiFiAwareDeviceCapabilities *)self maxPeers];
    if (v25 == [(WiFiAwareDeviceCapabilities *)v7 maxPeers]&& (v26 = [(WiFiAwareDeviceCapabilities *)self maxPublishers], v26 == [(WiFiAwareDeviceCapabilities *)v7 maxPublishers]) && (v27 = [(WiFiAwareDeviceCapabilities *)self maxSubscribers], v27 == [(WiFiAwareDeviceCapabilities *)v7 maxSubscribers]))
    {
      v28 = [(WiFiAwareDeviceCapabilities *)self maxDatapaths];
      v16 = v28 != [(WiFiAwareDeviceCapabilities *)v7 maxDatapaths];
    }

    else
    {
      v16 = 1;
    }

    v29 = v35;
    v24 = v31;
    if (v36 == v35)
    {
LABEL_31:

      v19 = v38;
      v13 = v40;
      if (v39 == v38)
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
  v4 = [(WiFiAwareDeviceCapabilities *)self supportedFeatures];
  v5 = [(WiFiAwareDeviceCapabilities *)self operatingChannel];
  v6 = [(WiFiAwareDeviceCapabilities *)self operatingClass];
  v7 = [(WiFiAwareDeviceCapabilities *)self supportedBands];
  v8 = [(WiFiAwareDeviceCapabilities *)self supportedCipherSuites];
  v9 = [v3 stringWithFormat:@"<WiFiAwareDeviceCapabilities supportedFeatures=%@ operatingChannel=%@, operatingClass=%@, supportedBands=%u, supportedCipherSuites=%@, maxPeers=%ld, maxPublishers=%ld, maxSubscribers=%ld, maxDatapaths=%ld>", v4, v5, v6, v7, v8, -[WiFiAwareDeviceCapabilities maxPeers](self, "maxPeers"), -[WiFiAwareDeviceCapabilities maxPublishers](self, "maxPublishers"), -[WiFiAwareDeviceCapabilities maxSubscribers](self, "maxSubscribers"), -[WiFiAwareDeviceCapabilities maxDatapaths](self, "maxDatapaths")];

  return v9;
}

@end