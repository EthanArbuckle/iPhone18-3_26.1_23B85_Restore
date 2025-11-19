@interface WiFiAwareDatapathConfiguration
- (BOOL)internetSharingEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)pairSetupServiceSpecificInfoEqual:(id)a3;
- (BOOL)passphraseEqual:(id)a3;
- (BOOL)pmkEqual:(id)a3;
- (BOOL)pmkIDEqual:(id)a3;
- (BOOL)serviceSpecificInfoEqual:(id)a3;
- (WiFiAwareDatapathConfiguration)initWithCoder:(id)a3;
- (WiFiAwareDatapathConfiguration)initWithDiscoveryResult:(id)a3 serviceType:(int64_t)a4 passphrase:(id)a5 pmk:(id)a6 pmkID:(id)a7 serviceSpecificInfo:(id)a8 internetSharingConfiguration:(id)a9 pairingMethod:(int64_t)a10 pairingCachingEnabled:(BOOL)a11 pairSetupServiceSpecificInfo:(id)a12 connectionMode:(int64_t)a13 pairingMetadata:(id)a14;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDatapathConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self discoveryResult];
  [v4 encodeObject:v5 forKey:@"WiFiAwareDataRequest.discoveryResult"];

  [v4 encodeInteger:-[WiFiAwareDatapathConfiguration serviceType](self forKey:{"serviceType"), @"WiFiAwareDataRequest.serviceType"}];
  v6 = [(WiFiAwareDatapathConfiguration *)self passphrase];
  [v4 encodeObject:v6 forKey:@"WiFiAwareDataRequest.passphrase"];

  v7 = [(WiFiAwareDatapathConfiguration *)self pmk];
  [v4 encodeObject:v7 forKey:@"WiFiAwareDataRequest.pmk"];

  v8 = [(WiFiAwareDatapathConfiguration *)self pmkID];
  [v4 encodeObject:v8 forKey:@"WiFiAwareDataRequest.pmkID"];

  v9 = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
  [v4 encodeObject:v9 forKey:@"WiFiAwareDataRequest.serviceSpecificInfo"];

  v10 = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
  [v4 encodeObject:v10 forKey:@"WiFiAwareDataRequest.internetSharingConfiguration"];

  [v4 encodeInteger:-[WiFiAwareDatapathConfiguration pairingMethod](self forKey:{"pairingMethod"), @"WiFiAwareDataRequest.pairingMethod"}];
  [v4 encodeBool:-[WiFiAwareDatapathConfiguration pairingCachingEnabled](self forKey:{"pairingCachingEnabled"), @"WiFiAwareDataRequest.pairingCaching"}];
  v11 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  [v4 encodeObject:v11 forKey:@"WiFiAwareDataRequest.pairSetupServiceSpecificInfo"];

  [v4 encodeInteger:-[WiFiAwareDatapathConfiguration connectionMode](self forKey:{"connectionMode"), @"WiFiAwareDataRequest.connectionMode"}];
  v12 = [(WiFiAwareDatapathConfiguration *)self pairingMetadata];
  [v4 encodeObject:v12 forKey:@"WiFiAwareDataRequest.pairingMetadata"];
}

- (WiFiAwareDatapathConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.discoveryResult"];
  v20 = [v3 decodeIntegerForKey:@"WiFiAwareDataRequest.serviceType"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.passphrase"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.pmk"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.pmkID"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.serviceSpecificInfo"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.internetSharingConfiguration"];
  v7 = [v3 decodeIntegerForKey:@"WiFiAwareDataRequest.pairingMethod"];
  v8 = [v3 decodeBoolForKey:@"WiFiAwareDataRequest.pairingCaching"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDataRequest.pairSetupServiceSpecificInfo"];
  v10 = [v3 decodeIntegerForKey:@"WiFiAwareDataRequest.connectionMode"];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"WiFiAwareDataRequest.pairingMetadata"];

  LOBYTE(v17) = v8;
  v15 = [(WiFiAwareDatapathConfiguration *)self initWithDiscoveryResult:v21 serviceType:v20 passphrase:v19 pmk:v18 pmkID:v4 serviceSpecificInfo:v5 internetSharingConfiguration:v6 pairingMethod:v7 pairingCachingEnabled:v17 pairSetupServiceSpecificInfo:v9 connectionMode:v10 pairingMetadata:v14];

  return v15;
}

- (WiFiAwareDatapathConfiguration)initWithDiscoveryResult:(id)a3 serviceType:(int64_t)a4 passphrase:(id)a5 pmk:(id)a6 pmkID:(id)a7 serviceSpecificInfo:(id)a8 internetSharingConfiguration:(id)a9 pairingMethod:(int64_t)a10 pairingCachingEnabled:(BOOL)a11 pairSetupServiceSpecificInfo:(id)a12 connectionMode:(int64_t)a13 pairingMetadata:(id)a14
{
  v45 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a12;
  v27 = a14;
  v46.receiver = self;
  v46.super_class = WiFiAwareDatapathConfiguration;
  v28 = [(WiFiAwareDatapathConfiguration *)&v46 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_discoveryResult, a3);
    v29->_serviceType = a4;
    v30 = [v21 copy];
    passphrase = v29->_passphrase;
    v29->_passphrase = v30;

    v32 = [v22 copy];
    pmk = v29->_pmk;
    v29->_pmk = v32;

    v34 = [v23 copy];
    pmkID = v29->_pmkID;
    v29->_pmkID = v34;

    v36 = [v24 copy];
    serviceSpecificInfo = v29->_serviceSpecificInfo;
    v29->_serviceSpecificInfo = v36;

    v38 = [v25 copy];
    internetSharingConfiguration = v29->_internetSharingConfiguration;
    v29->_internetSharingConfiguration = v38;

    v29->_pairingMethod = a10;
    v29->_pairingCachingEnabled = a11;
    v40 = [v26 copy];
    pairSetupServiceSpecificInfo = v29->_pairSetupServiceSpecificInfo;
    v29->_pairSetupServiceSpecificInfo = v40;

    v29->_connectionMode = a13;
    v42 = [v27 copy];
    pairingMetadata = v29->_pairingMetadata;
    v29->_pairingMetadata = v42;
  }

  return v29;
}

- (BOOL)passphraseEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self passphrase];
  v6 = [v4 passphrase];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self passphrase];
    v8 = [v4 passphrase];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)pmkEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self pmk];
  v6 = [v4 pmk];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self pmk];
    v8 = [v4 pmk];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)pmkIDEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self pmkID];
  v6 = [v4 pmkID];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self pmkID];
    v8 = [v4 pmkID];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)serviceSpecificInfoEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
  v6 = [v4 serviceSpecificInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
    v8 = [v4 serviceSpecificInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)pairSetupServiceSpecificInfoEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  v6 = [v4 pairSetupServiceSpecificInfo];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
    v8 = [v4 pairSetupServiceSpecificInfo];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)internetSharingEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
  v6 = [v4 internetSharingConfiguration];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
    v8 = [v4 internetSharingConfiguration];
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

    v5 = v4;
    v6 = [(WiFiAwareDatapathConfiguration *)self discoveryResult];
    v7 = [(WiFiAwareDatapathConfiguration *)v5 discoveryResult];
    if (![v6 isEqual:v7] || (v8 = -[WiFiAwareDatapathConfiguration serviceType](self, "serviceType"), v8 != -[WiFiAwareDatapathConfiguration serviceType](v5, "serviceType")) || !-[WiFiAwareDatapathConfiguration passphraseEqual:](self, "passphraseEqual:", v5) || !-[WiFiAwareDatapathConfiguration pmkEqual:](self, "pmkEqual:", v5) || !-[WiFiAwareDatapathConfiguration pmkIDEqual:](self, "pmkIDEqual:", v5) || !-[WiFiAwareDatapathConfiguration serviceSpecificInfoEqual:](self, "serviceSpecificInfoEqual:", v5) || !-[WiFiAwareDatapathConfiguration internetSharingEqual:](self, "internetSharingEqual:", v5) || (v9 = -[WiFiAwareDatapathConfiguration pairingMethod](self, "pairingMethod"), v9 != -[WiFiAwareDatapathConfiguration pairingMethod](v5, "pairingMethod")) || (v10 = -[WiFiAwareDatapathConfiguration pairingCachingEnabled](self, "pairingCachingEnabled"), v10 != -[WiFiAwareDatapathConfiguration pairingCachingEnabled](v5, "pairingCachingEnabled")) || !-[WiFiAwareDatapathConfiguration pairSetupServiceSpecificInfoEqual:](self, "pairSetupServiceSpecificInfoEqual:", v5) || (v11 = -[WiFiAwareDatapathConfiguration connectionMode](self, "connectionMode"), v11 != -[WiFiAwareDatapathConfiguration connectionMode](v5, "connectionMode")))
    {

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    v12 = [(WiFiAwareDatapathConfiguration *)self pairingMetadata];
    v13 = [(WiFiAwareDatapathConfiguration *)v5 pairingMetadata];
    v14 = [v12 isEqual:v13];

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
  v3 = [(WiFiAwareDatapathConfiguration *)self discoveryResult];
  v4 = [(WiFiAwareDatapathConfiguration *)self serviceType];
  if (v4 > 2)
  {
    v5 = "unrecognized";
  }

  else
  {
    v5 = off_2787AB360[v4];
  }

  v17 = v5;
  v19 = [(WiFiAwareDatapathConfiguration *)self passphrase];
  v20 = [(WiFiAwareDatapathConfiguration *)self pmk];
  v6 = [(WiFiAwareDatapathConfiguration *)self pmkID];
  v7 = [(WiFiAwareDatapathConfiguration *)self serviceSpecificInfo];
  v8 = [(WiFiAwareDatapathConfiguration *)self internetSharingConfiguration];
  v9 = WiFiAwarePairingMethodString([(WiFiAwareDatapathConfiguration *)self pairingMethod]);
  if ([(WiFiAwareDatapathConfiguration *)self pairingCachingEnabled])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v11 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  if (v11)
  {
    v12 = [(WiFiAwareDatapathConfiguration *)self pairSetupServiceSpecificInfo];
  }

  else
  {
    v12 = @"none";
  }

  v13 = [(WiFiAwareDatapathConfiguration *)self connectionMode];
  v14 = [(WiFiAwareDatapathConfiguration *)self pairingMetadata];
  v15 = [v18 stringWithFormat:@"<WiFiAwareDatapathConfiguration: discoveryResult=%@, serviceType=%s, passphrase=%@, pmk=%@, pmkID=%@, serviceSpecificInfo=%@, internetSharing=%@, pairingMethod=%s, pairingCaching=%s, pairSetupServiceSpecificInfo=%@>, connectionMode=%ld, pairingMetadata=%@", v3, v17, v19, v20, v6, v7, v8, v9, v10, v12, v13, v14];

  if (v11)
  {
  }

  return v15;
}

@end