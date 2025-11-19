@interface WiFiAwareDiscoveryResult
- (BOOL)furtherServiceDiscoveryRequired;
- (BOOL)isEqual:(id)a3;
- (BOOL)serviceSpecificInfoEqual:(id)a3;
- (WiFiAwareDiscoveryResult)initWithCoder:(id)a3;
- (WiFiAwareDiscoveryResult)initWithServiceName:(id)a3 serviceSpecificInfo:(id)a4 publishID:(unsigned __int8)a5 subscribeID:(unsigned __int8)a6 publisherAddressKey:(id)a7 datapathSupported:(BOOL)a8 datapathCipherSuite:(int64_t)a9 fsdFunction:(int64_t)a10 rssi:(int64_t)a11 pairSetupRequired:(BOOL)a12 pairingConfiguration:(id)a13 pairedUUID:(id)a14 pairedDeviceName:(id)a15 signature:(int64_t)a16;
- (const)fsdFunctionString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDiscoveryResult

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(WiFiAwareDiscoveryResult *)self serviceName];
  [v12 encodeObject:v4 forKey:@"WiFiAwareDiscoveryResult.serviceName"];

  v5 = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  [v12 encodeObject:v5 forKey:@"WiFiAwareDiscoveryResult.serviceSpecificInfo"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareDiscoveryResult publishID](self, "publishID")}];
  [v12 encodeObject:v6 forKey:@"WiFiAwareDiscoveryResult.publishID"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[WiFiAwareDiscoveryResult subscribeID](self, "subscribeID")}];
  [v12 encodeObject:v7 forKey:@"WiFiAwareDiscoveryResult.subscribeID"];

  v8 = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  [v12 encodeObject:v8 forKey:@"WiFiAwareDiscoveryResult.publisherAddress"];

  [v12 encodeBool:-[WiFiAwareDiscoveryResult datapathSupported](self forKey:{"datapathSupported"), @"WiFiAwareDiscoveryResult.datapathSupported"}];
  [v12 encodeInteger:-[WiFiAwareDiscoveryResult datapathCipherSuite](self forKey:{"datapathCipherSuite"), @"WiFiAwareDiscoveryResult.datapathCipherSuite"}];
  [v12 encodeInteger:-[WiFiAwareDiscoveryResult fsdFunction](self forKey:{"fsdFunction"), @"WiFiAwareDiscoveryResult.fsdFunction"}];
  [v12 encodeInteger:-[WiFiAwareDiscoveryResult rssi](self forKey:{"rssi"), @"WiFiAwareDiscoveryResult.rssi"}];
  [v12 encodeBool:-[WiFiAwareDiscoveryResult pairSetupRequired](self forKey:{"pairSetupRequired"), @"WiFiAwareDiscoveryResult.pairSetupRequired"}];
  v9 = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
  [v12 encodeObject:v9 forKey:@"WiFiAwareDiscoveryResult.pairingConfiguration"];

  v10 = [(WiFiAwareDiscoveryResult *)self pairedUUID];
  [v12 encodeObject:v10 forKey:@"WiFiAwareDiscoveryResult.pairedUUID"];

  v11 = [(WiFiAwareDiscoveryResult *)self pairedDeviceName];
  [v12 encodeObject:v11 forKey:@"WiFiAwareDiscoveryResult.pairedDeviceName"];

  [v12 encodeInteger:-[WiFiAwareDiscoveryResult signature](self forKey:{"signature"), @"WiFiAwareDiscoveryResult.signature"}];
}

- (WiFiAwareDiscoveryResult)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.serviceName"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.serviceSpecificInfo"];
  v18 = decodeInstanceIDFrom(v3, @"WiFiAwareDiscoveryResult.publishID");
  v17 = decodeInstanceIDFrom(v3, @"WiFiAwareDiscoveryResult.subscribeID");
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.publisherAddress"];
  v16 = [v3 decodeBoolForKey:@"WiFiAwareDiscoveryResult.datapathSupported"];
  v5 = [v3 decodeIntegerForKey:@"WiFiAwareDiscoveryResult.datapathCipherSuite"];
  v6 = [v3 decodeIntegerForKey:@"WiFiAwareDiscoveryResult.fsdFunction"];
  v7 = [v3 decodeIntegerForKey:@"WiFiAwareDiscoveryResult.rssi"];
  v8 = [v3 decodeBoolForKey:@"WiFiAwareDiscoveryResult.pairSetupRequired"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.pairingConfiguration"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.pairedUUID"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDiscoveryResult.pairedDeviceName"];
  v12 = [v3 decodeIntegerForKey:@"WiFiAwareDiscoveryResult.signature"];

  LOBYTE(v15) = v8;
  v13 = [(WiFiAwareDiscoveryResult *)self initWithServiceName:v20 serviceSpecificInfo:v19 publishID:v18 subscribeID:v17 publisherAddressKey:v4 datapathSupported:v16 datapathCipherSuite:v5 fsdFunction:v6 rssi:v7 pairSetupRequired:v15 pairingConfiguration:v9 pairedUUID:v10 pairedDeviceName:v11 signature:v12];

  return v13;
}

- (WiFiAwareDiscoveryResult)initWithServiceName:(id)a3 serviceSpecificInfo:(id)a4 publishID:(unsigned __int8)a5 subscribeID:(unsigned __int8)a6 publisherAddressKey:(id)a7 datapathSupported:(BOOL)a8 datapathCipherSuite:(int64_t)a9 fsdFunction:(int64_t)a10 rssi:(int64_t)a11 pairSetupRequired:(BOOL)a12 pairingConfiguration:(id)a13 pairedUUID:(id)a14 pairedDeviceName:(id)a15 signature:(int64_t)a16
{
  v21 = a3;
  v22 = a4;
  v23 = a7;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v40.receiver = self;
  v40.super_class = WiFiAwareDiscoveryResult;
  v27 = [(WiFiAwareDiscoveryResult *)&v40 init];
  if (v27)
  {
    v28 = [v21 copy];
    serviceName = v27->_serviceName;
    v27->_serviceName = v28;

    v30 = [v22 copy];
    serviceSpecificInfo = v27->_serviceSpecificInfo;
    v27->_serviceSpecificInfo = v30;

    v27->_publishID = a5;
    objc_storeStrong(&v27->_publisherAddress, a7);
    v27->_subscribeID = a6;
    v27->_datapathSupported = a8;
    v27->_datapathCipherSuite = a9;
    v27->_fsdFunction = a10;
    v27->_rssi = a11;
    v27->_pairSetupRequired = a12;
    v32 = [v24 copy];
    pairingConfiguration = v27->_pairingConfiguration;
    v27->_pairingConfiguration = v32;

    v34 = [v25 copy];
    pairedUUID = v27->_pairedUUID;
    v27->_pairedUUID = v34;

    v36 = [v26 copy];
    pairedDeviceName = v27->_pairedDeviceName;
    v27->_pairedDeviceName = v36;

    v27->_signature = a16;
  }

  return v27;
}

- (BOOL)serviceSpecificInfoEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  v6 = [v4 serviceSpecificInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
    v8 = [v4 serviceSpecificInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)furtherServiceDiscoveryRequired
{
  v3 = [(WiFiAwareDiscoveryResult *)self fsdFunction];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(WiFiAwareDiscoveryResult *)self fsdFunction]== 2;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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

  v6 = v5;
  v7 = [(WiFiAwareDiscoveryResult *)self serviceName];
  v8 = [(WiFiAwareDiscoveryResult *)v6 serviceName];
  if (![v7 isEqualToString:v8])
  {
    goto LABEL_14;
  }

  if (![(WiFiAwareDiscoveryResult *)self serviceSpecificInfoEqual:v6])
  {
    goto LABEL_14;
  }

  v9 = [(WiFiAwareDiscoveryResult *)self publishID];
  if (v9 != [(WiFiAwareDiscoveryResult *)v6 publishID])
  {
    goto LABEL_14;
  }

  v10 = [(WiFiAwareDiscoveryResult *)self subscribeID];
  if (v10 != [(WiFiAwareDiscoveryResult *)v6 subscribeID])
  {
    goto LABEL_14;
  }

  v11 = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  v12 = [(WiFiAwareDiscoveryResult *)v6 publisherAddress];
  if ([v11 isEqual:v12])
  {
    v13 = [(WiFiAwareDiscoveryResult *)self datapathSupported];
    if (v13 == [(WiFiAwareDiscoveryResult *)v6 datapathSupported])
    {
      v14 = [(WiFiAwareDiscoveryResult *)self datapathSecurityRequired];
      if (v14 == [(WiFiAwareDiscoveryResult *)v6 datapathSecurityRequired])
      {
        v15 = [(WiFiAwareDiscoveryResult *)self fsdFunction];
        if (v15 == [(WiFiAwareDiscoveryResult *)v6 fsdFunction])
        {
          v16 = [(WiFiAwareDiscoveryResult *)self rssi];
          if (v16 == [(WiFiAwareDiscoveryResult *)v6 rssi])
          {
            v17 = [(WiFiAwareDiscoveryResult *)self pairSetupRequired];
            if (v17 == [(WiFiAwareDiscoveryResult *)v6 pairSetupRequired])
            {
              v20 = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
              v21 = [(WiFiAwareDiscoveryResult *)v6 pairingConfiguration];
              if (v20 == v21 || (-[WiFiAwareDiscoveryResult pairingConfiguration](self, "pairingConfiguration"), v22 = objc_claimAutoreleasedReturnValue(), -[WiFiAwareDiscoveryResult pairingConfiguration](v6, "pairingConfiguration"), v23 = objc_claimAutoreleasedReturnValue(), v27 = v22, v24 = v22, v3 = v23, [v24 isEqual:v23]))
              {
                v26 = [(WiFiAwareDiscoveryResult *)self signature];
                v25 = v26 != [(WiFiAwareDiscoveryResult *)v6 signature];
                if (v20 == v21)
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
  v2 = [(WiFiAwareDiscoveryResult *)self fsdFunction];
  if (v2 > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_2787AAB80[v2];
  }
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v19 = [(WiFiAwareDiscoveryResult *)self serviceName];
  v18 = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  v17 = [(WiFiAwareDiscoveryResult *)self publishID];
  v3 = [(WiFiAwareDiscoveryResult *)self publisherAddress];
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
  v7 = [(WiFiAwareDiscoveryResult *)self fsdFunctionString];
  v8 = [(WiFiAwareDiscoveryResult *)self rssi];
  if ([(WiFiAwareDiscoveryResult *)self pairSetupRequired])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  v10 = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
  v11 = [(WiFiAwareDiscoveryResult *)self pairedUUID];
  v12 = [(WiFiAwareDiscoveryResult *)self pairedDeviceName];
  v13 = [v20 stringWithFormat:@"<WiFiAwareDiscoveryResult: name=%@, serviceSpecificInfo=%@, publishID=%u, publisherAddress=%@, datapath=%s, security=%s, cipherSuite=%s, FSD=%s, rssi=%ld, pairSetup=%s, pairing=%@, UUID=%@>, pairedDeviceName=%@ Signature=0x%02lx [%ld]", v19, v18, v17, v3, v16, v15, v6, v7, v8, v9, v10, v11, v12, -[WiFiAwareDiscoveryResult signature](self, "signature"), -[WiFiAwareDiscoveryResult signature](self, "signature")];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = [WiFiAwareDiscoveryResult alloc];
  v19 = [(WiFiAwareDiscoveryResult *)self serviceName];
  v18 = [(WiFiAwareDiscoveryResult *)self serviceSpecificInfo];
  v17 = [(WiFiAwareDiscoveryResult *)self publishID];
  v16 = [(WiFiAwareDiscoveryResult *)self subscribeID];
  v4 = [(WiFiAwareDiscoveryResult *)self publisherAddress];
  v5 = [(WiFiAwareDiscoveryResult *)self datapathSupported];
  v6 = [(WiFiAwareDiscoveryResult *)self datapathCipherSuite];
  v7 = [(WiFiAwareDiscoveryResult *)self fsdFunction];
  v8 = [(WiFiAwareDiscoveryResult *)self rssi];
  v9 = [(WiFiAwareDiscoveryResult *)self pairSetupRequired];
  v10 = [(WiFiAwareDiscoveryResult *)self pairingConfiguration];
  v11 = [(WiFiAwareDiscoveryResult *)self pairedUUID];
  v12 = [(WiFiAwareDiscoveryResult *)self pairedDeviceName];
  LOBYTE(v15) = v9;
  v13 = [(WiFiAwareDiscoveryResult *)v20 initWithServiceName:v19 serviceSpecificInfo:v18 publishID:v17 subscribeID:v16 publisherAddressKey:v4 datapathSupported:v5 datapathCipherSuite:v6 fsdFunction:v7 rssi:v8 pairSetupRequired:v15 pairingConfiguration:v10 pairedUUID:v11 pairedDeviceName:v12 signature:[(WiFiAwareDiscoveryResult *)self signature]];

  return v13;
}

@end