@interface WiFiAwareDatapathConfiguration
- (BOOL)internetSharingEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)pairSetupServiceSpecificInfoEqual:(id)equal;
- (BOOL)passphraseEqual:(id)equal;
- (BOOL)pmkEqual:(id)equal;
- (BOOL)pmkIDEqual:(id)equal;
- (BOOL)serviceSpecificInfoEqual:(id)equal;
- (WiFiAwareDatapathConfiguration)initWithCoder:(id)coder;
- (WiFiAwareDatapathConfiguration)initWithDiscoveryResult:(id)result serviceType:(int64_t)type passphrase:(id)passphrase pmk:(id)pmk pmkID:(id)d serviceSpecificInfo:(id)info internetSharingConfiguration:(id)configuration pairingMethod:(int64_t)self0 pairingCachingEnabled:(BOOL)self1 pairSetupServiceSpecificInfo:(id)self2 connectionMode:(int64_t)self3 pairingMetadata:(id)self4;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareDatapathConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  discoveryResult = [(WiFiAwareDatapathConfiguration *)self discoveryResult];
  [coderCopy encodeObject:discoveryResult forKey:@"WiFiAwareDataRequest.discoveryResult"];

  [coderCopy encodeInteger:-[WiFiAwareDatapathConfiguration serviceType](self forKey:{"serviceType"), @"WiFiAwareDataRequest.serviceType"}];
  passphrase = [(WiFiAwareDatapathConfiguration *)self passphrase];
  [coderCopy encodeObject:passphrase forKey:@"WiFiAwareDataRequest.passphrase"];

  v7 = [(WiFiAwareDatapathConfiguration *)self pmk];
  [coderCopy encodeObject:v7 forKey:@"WiFiAwareDataRequest.pmk"];

  pmkID = [(WiFiAwareDatapathConfiguration *)self pmkID];
  [coderCopy encodeObject:pmkID forKey:@"WiFiAwareDataRequest.pmkID"];

  serviceSpecificInfo = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
  [coderCopy encodeObject:serviceSpecificInfo forKey:@"WiFiAwareDataRequest.serviceSpecificInfo"];

  internetSharingConfiguration = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
  [coderCopy encodeObject:internetSharingConfiguration forKey:@"WiFiAwareDataRequest.internetSharingConfiguration"];

  [coderCopy encodeInteger:-[WiFiAwareDatapathConfiguration pairingMethod](self forKey:{"pairingMethod"), @"WiFiAwareDataRequest.pairingMethod"}];
  [coderCopy encodeBool:-[WiFiAwareDatapathConfiguration pairingCachingEnabled](self forKey:{"pairingCachingEnabled"), @"WiFiAwareDataRequest.pairingCaching"}];
  pairSetupServiceSpecificInfo = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  [coderCopy encodeObject:pairSetupServiceSpecificInfo forKey:@"WiFiAwareDataRequest.pairSetupServiceSpecificInfo"];

  [coderCopy encodeInteger:-[WiFiAwareDatapathConfiguration connectionMode](self forKey:{"connectionMode"), @"WiFiAwareDataRequest.connectionMode"}];
  pairingMetadata = [(WiFiAwareDatapathConfiguration *)self pairingMetadata];
  [coderCopy encodeObject:pairingMetadata forKey:@"WiFiAwareDataRequest.pairingMetadata"];
}

- (WiFiAwareDatapathConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.discoveryResult"];
  v20 = [coderCopy decodeIntegerForKey:@"WiFiAwareDataRequest.serviceType"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.passphrase"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.pmk"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.pmkID"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.serviceSpecificInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.internetSharingConfiguration"];
  v7 = [coderCopy decodeIntegerForKey:@"WiFiAwareDataRequest.pairingMethod"];
  v8 = [coderCopy decodeBoolForKey:@"WiFiAwareDataRequest.pairingCaching"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.pairSetupServiceSpecificInfo"];
  v10 = [coderCopy decodeIntegerForKey:@"WiFiAwareDataRequest.connectionMode"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"WiFiAwareDataRequest.pairingMetadata"];

  LOBYTE(v17) = v8;
  v15 = [(WiFiAwareDatapathConfiguration *)self initWithDiscoveryResult:v21 serviceType:v20 passphrase:v19 pmk:v18 pmkID:v4 serviceSpecificInfo:v5 internetSharingConfiguration:v6 pairingMethod:v7 pairingCachingEnabled:v17 pairSetupServiceSpecificInfo:v9 connectionMode:v10 pairingMetadata:v14];

  return v15;
}

- (WiFiAwareDatapathConfiguration)initWithDiscoveryResult:(id)result serviceType:(int64_t)type passphrase:(id)passphrase pmk:(id)pmk pmkID:(id)d serviceSpecificInfo:(id)info internetSharingConfiguration:(id)configuration pairingMethod:(int64_t)self0 pairingCachingEnabled:(BOOL)self1 pairSetupServiceSpecificInfo:(id)self2 connectionMode:(int64_t)self3 pairingMetadata:(id)self4
{
  resultCopy = result;
  passphraseCopy = passphrase;
  pmkCopy = pmk;
  dCopy = d;
  infoCopy = info;
  configurationCopy = configuration;
  specificInfoCopy = specificInfo;
  metadataCopy = metadata;
  v46.receiver = self;
  v46.super_class = WiFiAwareDatapathConfiguration;
  v28 = [(WiFiAwareDatapathConfiguration *)&v46 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_discoveryResult, result);
    v29->_serviceType = type;
    v30 = [passphraseCopy copy];
    passphrase = v29->_passphrase;
    v29->_passphrase = v30;

    v32 = [pmkCopy copy];
    pmk = v29->_pmk;
    v29->_pmk = v32;

    v34 = [dCopy copy];
    pmkID = v29->_pmkID;
    v29->_pmkID = v34;

    v36 = [infoCopy copy];
    serviceSpecificInfo = v29->_serviceSpecificInfo;
    v29->_serviceSpecificInfo = v36;

    v38 = [configurationCopy copy];
    internetSharingConfiguration = v29->_internetSharingConfiguration;
    v29->_internetSharingConfiguration = v38;

    v29->_pairingMethod = method;
    v29->_pairingCachingEnabled = enabled;
    v40 = [specificInfoCopy copy];
    pairSetupServiceSpecificInfo = v29->_pairSetupServiceSpecificInfo;
    v29->_pairSetupServiceSpecificInfo = v40;

    v29->_connectionMode = mode;
    v42 = [metadataCopy copy];
    pairingMetadata = v29->_pairingMetadata;
    v29->_pairingMetadata = v42;
  }

  return v29;
}

- (BOOL)passphraseEqual:(id)equal
{
  equalCopy = equal;
  passphrase = [(WiFiAwareDatapathConfiguration *)self passphrase];
  passphrase2 = [equalCopy passphrase];
  if (passphrase == passphrase2)
  {
    v9 = 1;
  }

  else
  {
    passphrase3 = [(WiFiAwareDatapathConfiguration *)self passphrase];
    passphrase4 = [equalCopy passphrase];
    v9 = [passphrase3 isEqual:passphrase4];
  }

  return v9;
}

- (BOOL)pmkEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(WiFiAwareDatapathConfiguration *)self pmk];
  v6 = [equalCopy pmk];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self pmk];
    v8 = [equalCopy pmk];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)pmkIDEqual:(id)equal
{
  equalCopy = equal;
  pmkID = [(WiFiAwareDatapathConfiguration *)self pmkID];
  pmkID2 = [equalCopy pmkID];
  if (pmkID == pmkID2)
  {
    v9 = 1;
  }

  else
  {
    pmkID3 = [(WiFiAwareDatapathConfiguration *)self pmkID];
    pmkID4 = [equalCopy pmkID];
    v9 = [pmkID3 isEqual:pmkID4];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)equal
{
  equalCopy = equal;
  serviceSpecificInfo = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
  serviceSpecificInfo2 = [equalCopy serviceSpecificInfo];
  if (serviceSpecificInfo == serviceSpecificInfo2)
  {
    v9 = 1;
  }

  else
  {
    serviceSpecificInfo3 = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
    serviceSpecificInfo4 = [equalCopy serviceSpecificInfo];
    v9 = [serviceSpecificInfo3 isEqual:serviceSpecificInfo4];
  }

  return v9;
}

- (BOOL)pairSetupServiceSpecificInfoEqual:(id)equal
{
  equalCopy = equal;
  pairSetupServiceSpecificInfo = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  pairSetupServiceSpecificInfo2 = [equalCopy pairSetupServiceSpecificInfo];
  if (pairSetupServiceSpecificInfo == pairSetupServiceSpecificInfo2)
  {
    v9 = 1;
  }

  else
  {
    pairSetupServiceSpecificInfo3 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
    pairSetupServiceSpecificInfo4 = [equalCopy pairSetupServiceSpecificInfo];
    v9 = [pairSetupServiceSpecificInfo3 isEqual:pairSetupServiceSpecificInfo4];
  }

  return v9;
}

- (BOOL)internetSharingEqual:(id)equal
{
  equalCopy = equal;
  internetSharingConfiguration = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
  internetSharingConfiguration2 = [equalCopy internetSharingConfiguration];
  if (internetSharingConfiguration == internetSharingConfiguration2)
  {
    v9 = 1;
  }

  else
  {
    internetSharingConfiguration3 = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
    internetSharingConfiguration4 = [equalCopy internetSharingConfiguration];
    v9 = [internetSharingConfiguration3 isEqual:internetSharingConfiguration4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      v5 = 0;
      goto LABEL_21;
    }

    v5 = equalCopy;
    discoveryResult = [(WiFiAwareDatapathConfiguration *)self discoveryResult];
    discoveryResult2 = [(WiFiAwareDatapathConfiguration *)v5 discoveryResult];
    if (![discoveryResult isEqual:discoveryResult2] || (v8 = -[WiFiAwareDatapathConfiguration serviceType](self, "serviceType"), v8 != -[WiFiAwareDatapathConfiguration serviceType](v5, "serviceType")) || !-[WiFiAwareDatapathConfiguration passphraseEqual:](self, "passphraseEqual:", v5) || !-[WiFiAwareDatapathConfiguration pmkEqual:](self, "pmkEqual:", v5) || !-[WiFiAwareDatapathConfiguration pmkIDEqual:](self, "pmkIDEqual:", v5) || !-[WiFiAwareDatapathConfiguration serviceSpecificInfoEqual:](self, "serviceSpecificInfoEqual:", v5) || !-[WiFiAwareDatapathConfiguration internetSharingEqual:](self, "internetSharingEqual:", v5) || (v9 = -[WiFiAwareDatapathConfiguration pairingMethod](self, "pairingMethod"), v9 != -[WiFiAwareDatapathConfiguration pairingMethod](v5, "pairingMethod")) || (v10 = -[WiFiAwareDatapathConfiguration pairingCachingEnabled](self, "pairingCachingEnabled"), v10 != -[WiFiAwareDatapathConfiguration pairingCachingEnabled](v5, "pairingCachingEnabled")) || !-[WiFiAwareDatapathConfiguration pairSetupServiceSpecificInfoEqual:](self, "pairSetupServiceSpecificInfoEqual:", v5) || (v11 = -[WiFiAwareDatapathConfiguration connectionMode](self, "connectionMode"), v11 != -[WiFiAwareDatapathConfiguration connectionMode](v5, "connectionMode")))
    {

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    pairingMetadata = [(WiFiAwareDatapathConfiguration *)self pairingMetadata];
    pairingMetadata2 = [(WiFiAwareDatapathConfiguration *)v5 pairingMetadata];
    v14 = [pairingMetadata isEqual:pairingMetadata2];

    if (!v14)
    {
      goto LABEL_20;
    }
  }

  v15 = 1;
LABEL_21:

  return v15;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  discoveryResult = [(WiFiAwareDatapathConfiguration *)self discoveryResult];
  serviceType = [(WiFiAwareDatapathConfiguration *)self serviceType];
  if (serviceType > 2)
  {
    v5 = "unrecognized";
  }

  else
  {
    v5 = off_2787AB360[serviceType];
  }

  v17 = v5;
  passphrase = [(WiFiAwareDatapathConfiguration *)self passphrase];
  v20 = [(WiFiAwareDatapathConfiguration *)self pmk];
  pmkID = [(WiFiAwareDatapathConfiguration *)self pmkID];
  serviceSpecificInfo = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
  internetSharingConfiguration = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
  v9 = WiFiAwarePairingMethodString([(WiFiAwareDatapathConfiguration *)self pairingMethod]);
  if ([(WiFiAwareDatapathConfiguration *)self pairingCachingEnabled])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  pairSetupServiceSpecificInfo = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  if (pairSetupServiceSpecificInfo)
  {
    pairSetupServiceSpecificInfo2 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  }

  else
  {
    pairSetupServiceSpecificInfo2 = @"none";
  }

  connectionMode = [(WiFiAwareDatapathConfiguration *)self connectionMode];
  pairingMetadata = [(WiFiAwareDatapathConfiguration *)self pairingMetadata];
  v15 = [v18 stringWithFormat:@"<WiFiAwareDatapathConfiguration: discoveryResult=%@, serviceType=%s, passphrase=%@, pmk=%@, pmkID=%@, serviceSpecificInfo=%@, internetSharing=%@, pairingMethod=%s, pairingCaching=%s, pairSetupServiceSpecificInfo=%@>, connectionMode=%ld, pairingMetadata=%@", discoveryResult, v17, passphrase, v20, pmkID, serviceSpecificInfo, internetSharingConfiguration, v9, v10, pairSetupServiceSpecificInfo2, connectionMode, pairingMetadata];

  if (pairSetupServiceSpecificInfo)
  {
  }

  return v15;
}

@end