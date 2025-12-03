@interface WiFiAwareDiscoveryResult
- (BOOL)furtherServiceDiscoveryRequired;
- (BOOL)isEqual:(id)equal;
- (BOOL)serviceSpecificInfoEqual:(id)equal;
- (WiFiAwareDiscoveryResult)initWithCoder:(id)coder;
- (WiFiAwareDiscoveryResult)initWithServiceName:(id)name serviceSpecificInfo:(id)info publishID:(unsigned __int8)d subscribeID:(unsigned __int8)iD publisherAddressKey:(id)key datapathSupported:(BOOL)supported datapathCipherSuite:(int64_t)suite fsdFunction:(int64_t)self0 rssi:(int64_t)self1 pairSetupRequired:(BOOL)self2 pairingConfiguration:(id)self3 pairedUUID:(id)self4 pairedDeviceName:(id)self5 signature:(int64_t)self6;
- (const)fsdFunctionString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareDiscoveryResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serviceName = [(WiFiAwareDiscoveryResult *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"WiFiAwareDiscoveryResult.serviceName"];

  serviceSpecificInfo = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  [coderCopy encodeObject:serviceSpecificInfo forKey:@"WiFiAwareDiscoveryResult.serviceSpecificInfo"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareDiscoveryResult publishID](self, "publishID")}];
  [coderCopy encodeObject:v6 forKey:@"WiFiAwareDiscoveryResult.publishID"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareDiscoveryResult subscribeID](self, "subscribeID")}];
  [coderCopy encodeObject:v7 forKey:@"WiFiAwareDiscoveryResult.subscribeID"];

  publisherAddress = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  [coderCopy encodeObject:publisherAddress forKey:@"WiFiAwareDiscoveryResult.publisherAddress"];

  [coderCopy encodeBool:-[WiFiAwareDiscoveryResult datapathSupported](self forKey:{"datapathSupported"), @"WiFiAwareDiscoveryResult.datapathSupported"}];
  [coderCopy encodeInteger:-[WiFiAwareDiscoveryResult datapathCipherSuite](self forKey:{"datapathCipherSuite"), @"WiFiAwareDiscoveryResult.datapathCipherSuite"}];
  [coderCopy encodeInteger:-[WiFiAwareDiscoveryResult fsdFunction](self forKey:{"fsdFunction"), @"WiFiAwareDiscoveryResult.fsdFunction"}];
  [coderCopy encodeInteger:-[WiFiAwareDiscoveryResult rssi](self forKey:{"rssi"), @"WiFiAwareDiscoveryResult.rssi"}];
  [coderCopy encodeBool:-[WiFiAwareDiscoveryResult pairSetupRequired](self forKey:{"pairSetupRequired"), @"WiFiAwareDiscoveryResult.pairSetupRequired"}];
  pairingConfiguration = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
  [coderCopy encodeObject:pairingConfiguration forKey:@"WiFiAwareDiscoveryResult.pairingConfiguration"];

  pairedUUID = [(WiFiAwareDiscoveryResult *)self pairedUUID];
  [coderCopy encodeObject:pairedUUID forKey:@"WiFiAwareDiscoveryResult.pairedUUID"];

  pairedDeviceName = [(WiFiAwareDiscoveryResult *)self pairedDeviceName];
  [coderCopy encodeObject:pairedDeviceName forKey:@"WiFiAwareDiscoveryResult.pairedDeviceName"];

  [coderCopy encodeInteger:-[WiFiAwareDiscoveryResult signature](self forKey:{"signature"), @"WiFiAwareDiscoveryResult.signature"}];
}

- (WiFiAwareDiscoveryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.serviceName"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.serviceSpecificInfo"];
  v18 = decodeInstanceIDFrom(coderCopy, @"WiFiAwareDiscoveryResult.publishID");
  v17 = decodeInstanceIDFrom(coderCopy, @"WiFiAwareDiscoveryResult.subscribeID");
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.publisherAddress"];
  v16 = [coderCopy decodeBoolForKey:@"WiFiAwareDiscoveryResult.datapathSupported"];
  v5 = [coderCopy decodeIntegerForKey:@"WiFiAwareDiscoveryResult.datapathCipherSuite"];
  v6 = [coderCopy decodeIntegerForKey:@"WiFiAwareDiscoveryResult.fsdFunction"];
  v7 = [coderCopy decodeIntegerForKey:@"WiFiAwareDiscoveryResult.rssi"];
  v8 = [coderCopy decodeBoolForKey:@"WiFiAwareDiscoveryResult.pairSetupRequired"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.pairingConfiguration"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.pairedUUID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.pairedDeviceName"];
  v12 = [coderCopy decodeIntegerForKey:@"WiFiAwareDiscoveryResult.signature"];

  LOBYTE(v15) = v8;
  v13 = [(WiFiAwareDiscoveryResult *)self initWithServiceName:v20 serviceSpecificInfo:v19 publishID:v18 subscribeID:v17 publisherAddressKey:v4 datapathSupported:v16 datapathCipherSuite:v5 fsdFunction:v6 rssi:v7 pairSetupRequired:v15 pairingConfiguration:v9 pairedUUID:v10 pairedDeviceName:v11 signature:v12];

  return v13;
}

- (WiFiAwareDiscoveryResult)initWithServiceName:(id)name serviceSpecificInfo:(id)info publishID:(unsigned __int8)d subscribeID:(unsigned __int8)iD publisherAddressKey:(id)key datapathSupported:(BOOL)supported datapathCipherSuite:(int64_t)suite fsdFunction:(int64_t)self0 rssi:(int64_t)self1 pairSetupRequired:(BOOL)self2 pairingConfiguration:(id)self3 pairedUUID:(id)self4 pairedDeviceName:(id)self5 signature:(int64_t)self6
{
  nameCopy = name;
  infoCopy = info;
  keyCopy = key;
  configurationCopy = configuration;
  uIDCopy = uID;
  deviceNameCopy = deviceName;
  v40.receiver = self;
  v40.super_class = WiFiAwareDiscoveryResult;
  v27 = [(WiFiAwareDiscoveryResult *)&v40 init];
  if (v27)
  {
    v28 = [nameCopy copy];
    serviceName = v27->_serviceName;
    v27->_serviceName = v28;

    v30 = [infoCopy copy];
    serviceSpecificInfo = v27->_serviceSpecificInfo;
    v27->_serviceSpecificInfo = v30;

    v27->_publishID = d;
    objc_storeStrong(&v27->_publisherAddress, key);
    v27->_subscribeID = iD;
    v27->_datapathSupported = supported;
    v27->_datapathCipherSuite = suite;
    v27->_fsdFunction = function;
    v27->_rssi = rssi;
    v27->_pairSetupRequired = required;
    v32 = [configurationCopy copy];
    pairingConfiguration = v27->_pairingConfiguration;
    v27->_pairingConfiguration = v32;

    v34 = [uIDCopy copy];
    pairedUUID = v27->_pairedUUID;
    v27->_pairedUUID = v34;

    v36 = [deviceNameCopy copy];
    pairedDeviceName = v27->_pairedDeviceName;
    v27->_pairedDeviceName = v36;

    v27->_signature = signature;
  }

  return v27;
}

- (BOOL)serviceSpecificInfoEqual:(id)equal
{
  equalCopy = equal;
  serviceSpecificInfo = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  serviceSpecificInfo2 = [equalCopy serviceSpecificInfo];
  if (serviceSpecificInfo == serviceSpecificInfo2)
  {
    v9 = 1;
  }

  else
  {
    serviceSpecificInfo3 = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
    serviceSpecificInfo4 = [equalCopy serviceSpecificInfo];
    v9 = [serviceSpecificInfo3 isEqual:serviceSpecificInfo4];
  }

  return v9;
}

- (BOOL)furtherServiceDiscoveryRequired
{
  fsdFunction = [(WiFiAwareDiscoveryResult *)self fsdFunction];
  if (fsdFunction != 1)
  {
    LOBYTE(fsdFunction) = [(WiFiAwareDiscoveryResult *)self fsdFunction]== 2;
  }

  return fsdFunction;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    v6 = 0;
    goto LABEL_19;
  }

  v6 = equalCopy;
  serviceName = [(WiFiAwareDiscoveryResult *)self serviceName];
  serviceName2 = [(WiFiAwareDiscoveryResult *)v6 serviceName];
  if (![serviceName isEqualToString:serviceName2])
  {
    goto LABEL_14;
  }

  if (![(WiFiAwareDiscoveryResult *)self serviceSpecificInfoEqual:v6])
  {
    goto LABEL_14;
  }

  publishID = [(WiFiAwareDiscoveryResult *)self publishID];
  if (publishID != [(WiFiAwareDiscoveryResult *)v6 publishID])
  {
    goto LABEL_14;
  }

  subscribeID = [(WiFiAwareDiscoveryResult *)self subscribeID];
  if (subscribeID != [(WiFiAwareDiscoveryResult *)v6 subscribeID])
  {
    goto LABEL_14;
  }

  publisherAddress = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  publisherAddress2 = [(WiFiAwareDiscoveryResult *)v6 publisherAddress];
  if ([publisherAddress isEqual:publisherAddress2])
  {
    datapathSupported = [(WiFiAwareDiscoveryResult *)self datapathSupported];
    if (datapathSupported == [(WiFiAwareDiscoveryResult *)v6 datapathSupported])
    {
      datapathSecurityRequired = [(WiFiAwareDiscoveryResult *)self datapathSecurityRequired];
      if (datapathSecurityRequired == [(WiFiAwareDiscoveryResult *)v6 datapathSecurityRequired])
      {
        fsdFunction = [(WiFiAwareDiscoveryResult *)self fsdFunction];
        if (fsdFunction == [(WiFiAwareDiscoveryResult *)v6 fsdFunction])
        {
          rssi = [(WiFiAwareDiscoveryResult *)self rssi];
          if (rssi == [(WiFiAwareDiscoveryResult *)v6 rssi])
          {
            pairSetupRequired = [(WiFiAwareDiscoveryResult *)self pairSetupRequired];
            if (pairSetupRequired == [(WiFiAwareDiscoveryResult *)v6 pairSetupRequired])
            {
              pairingConfiguration = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
              pairingConfiguration2 = [(WiFiAwareDiscoveryResult *)v6 pairingConfiguration];
              if (pairingConfiguration == pairingConfiguration2 || (-[WiFiAwareDiscoveryResult pairingConfiguration](self, "pairingConfiguration"), v22 = objc_claimAutoreleasedReturnValue(), -[WiFiAwareDiscoveryResult pairingConfiguration](v6, "pairingConfiguration"), v23 = objc_claimAutoreleasedReturnValue(), v27 = v22, v24 = v22, v3 = v23, [v24 isEqual:v23]))
              {
                signature = [(WiFiAwareDiscoveryResult *)self signature];
                v25 = signature != [(WiFiAwareDiscoveryResult *)v6 signature];
                if (pairingConfiguration == pairingConfiguration2)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v25 = 1;
              }

LABEL_25:
              if (v25)
              {
                goto LABEL_15;
              }

LABEL_17:
              v18 = 1;
              goto LABEL_19;
            }
          }
        }
      }
    }
  }

LABEL_14:
LABEL_15:
  v18 = 0;
LABEL_19:

  return v18;
}

- (const)fsdFunctionString
{
  fsdFunction = [(WiFiAwareDiscoveryResult *)self fsdFunction];
  if (fsdFunction > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_2787AAB80[fsdFunction];
  }
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  serviceName = [(WiFiAwareDiscoveryResult *)self serviceName];
  serviceSpecificInfo = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  publishID = [(WiFiAwareDiscoveryResult *)self publishID];
  publisherAddress = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  if ([(WiFiAwareDiscoveryResult *)self datapathSupported])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v16 = v4;
  if ([(WiFiAwareDiscoveryResult *)self datapathSecurityRequired])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v15 = v5;
  v6 = WiFiAwareCipherSuiteString([(WiFiAwareDiscoveryResult *)self datapathCipherSuite]);
  fsdFunctionString = [(WiFiAwareDiscoveryResult *)self fsdFunctionString];
  rssi = [(WiFiAwareDiscoveryResult *)self rssi];
  if ([(WiFiAwareDiscoveryResult *)self pairSetupRequired])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  pairingConfiguration = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
  pairedUUID = [(WiFiAwareDiscoveryResult *)self pairedUUID];
  pairedDeviceName = [(WiFiAwareDiscoveryResult *)self pairedDeviceName];
  v13 = [v20 stringWithFormat:@"<WiFiAwareDiscoveryResult: name=%@, serviceSpecificInfo=%@, publishID=%u, publisherAddress=%@, datapath=%s, security=%s, cipherSuite=%s, FSD=%s, rssi=%ld, pairSetup=%s, pairing=%@, UUID=%@>, pairedDeviceName=%@ Signature=0x%02lx [%ld]", serviceName, serviceSpecificInfo, publishID, publisherAddress, v16, v15, v6, fsdFunctionString, rssi, v9, pairingConfiguration, pairedUUID, pairedDeviceName, -[WiFiAwareDiscoveryResult signature](self, "signature"), -[WiFiAwareDiscoveryResult signature](self, "signature")];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [WiFiAwareDiscoveryResult alloc];
  serviceName = [(WiFiAwareDiscoveryResult *)self serviceName];
  serviceSpecificInfo = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  publishID = [(WiFiAwareDiscoveryResult *)self publishID];
  subscribeID = [(WiFiAwareDiscoveryResult *)self subscribeID];
  publisherAddress = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  datapathSupported = [(WiFiAwareDiscoveryResult *)self datapathSupported];
  datapathCipherSuite = [(WiFiAwareDiscoveryResult *)self datapathCipherSuite];
  fsdFunction = [(WiFiAwareDiscoveryResult *)self fsdFunction];
  rssi = [(WiFiAwareDiscoveryResult *)self rssi];
  pairSetupRequired = [(WiFiAwareDiscoveryResult *)self pairSetupRequired];
  pairingConfiguration = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
  pairedUUID = [(WiFiAwareDiscoveryResult *)self pairedUUID];
  pairedDeviceName = [(WiFiAwareDiscoveryResult *)self pairedDeviceName];
  LOBYTE(v15) = pairSetupRequired;
  v13 = [(WiFiAwareDiscoveryResult *)v20 initWithServiceName:serviceName serviceSpecificInfo:serviceSpecificInfo publishID:publishID subscribeID:subscribeID publisherAddressKey:publisherAddress datapathSupported:datapathSupported datapathCipherSuite:datapathCipherSuite fsdFunction:fsdFunction rssi:rssi pairSetupRequired:v15 pairingConfiguration:pairingConfiguration pairedUUID:pairedUUID pairedDeviceName:pairedDeviceName signature:[(WiFiAwareDiscoveryResult *)self signature]];

  return v13;
}

@end