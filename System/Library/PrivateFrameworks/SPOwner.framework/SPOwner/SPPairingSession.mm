@interface SPPairingSession
- (SPPairingSession)initWithCoder:(id)a3;
- (SPPairingSession)initWithIdentifier:(id)a3 nonce:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateName:(id)a3 roleId:(int64_t)a4 roleEmoji:(id)a5;
- (void)updateWithConfiguration:(id)a3;
- (void)updateWithPayloadSignature:(id)a3 attestation:(id)a4 collaborativeKey:(id)a5 systemVersion:(id)a6 vendorId:(int64_t)a7 productId:(int64_t)a8 ecid:(id)a9 chipId:(id)a10 serialNumber:(id)a11;
- (void)updateWithSeed:(id)a3 collaborativeKeyC2:(id)a4 serverSignature:(id)a5 serverPublicKey:(id)a6 maskedAppleID:(id)a7 userMessage:(id)a8 baaIntermediateCert:(id)a9 baaLeafCert:(id)a10;
@end

@implementation SPPairingSession

- (SPPairingSession)initWithIdentifier:(id)a3 nonce:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SPPairingSession;
  v9 = [(SPPairingSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_nonce, a4);
  }

  return v10;
}

- (void)updateWithSeed:(id)a3 collaborativeKeyC2:(id)a4 serverSignature:(id)a5 serverPublicKey:(id)a6 maskedAppleID:(id)a7 userMessage:(id)a8 baaIntermediateCert:(id)a9 baaLeafCert:(id)a10
{
  v23 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  [(SPPairingSession *)self setServerSeed:a3];
  [(SPPairingSession *)self setCollaborativeKeyC2:v22];

  [(SPPairingSession *)self setServerSignature:v21];
  [(SPPairingSession *)self setServerPublicKey:v20];

  [(SPPairingSession *)self setMaskedAppleID:v19];
  [(SPPairingSession *)self setUserMessage:v18];

  [(SPPairingSession *)self setBaaIntermediateCert:v17];
  [(SPPairingSession *)self setBaaLeaftCert:v23];
}

- (void)updateWithPayloadSignature:(id)a3 attestation:(id)a4 collaborativeKey:(id)a5 systemVersion:(id)a6 vendorId:(int64_t)a7 productId:(int64_t)a8 ecid:(id)a9 chipId:(id)a10 serialNumber:(id)a11
{
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v23 = a5;
  v21 = a4;
  v22 = a3;
  [(SPPairingSession *)self setSystemVersion:a6];
  [(SPPairingSession *)self setVendorId:a7];
  [(SPPairingSession *)self setProductId:a8];
  [(SPPairingSession *)self setEcid:v20];

  [(SPPairingSession *)self setChipId:v19];
  [(SPPairingSession *)self setSerialNumber:v18];

  [(SPPairingSession *)self setPayloadSignature:v22];
  [(SPPairingSession *)self setAttestation:v21];

  [(SPPairingSession *)self setCollaborativeKeyC1:v23];
}

- (void)updateName:(id)a3 roleId:(int64_t)a4 roleEmoji:(id)a5
{
  v8 = a5;
  [(SPPairingSession *)self setName:a3];
  [(SPPairingSession *)self setRoleId:a4];
  [(SPPairingSession *)self setRoleEmoji:v8];
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(SPPairingSession *)self setName:v5];

  -[SPPairingSession setRoleId:](self, "setRoleId:", [v4 roleId]);
  v6 = [v4 roleEmoji];
  [(SPPairingSession *)self setRoleEmoji:v6];

  v7 = [v4 keyStatus];
  [(SPPairingSession *)self setKeyGenerationStatus:v7];

  v8 = [v4 collaborativeKeyC3];
  [(SPPairingSession *)self setCollaborativeKeyC3:v8];

  v9 = [v4 signatureS4];
  [(SPPairingSession *)self setConfirmSignature:v9];

  -[SPPairingSession setIsZeus:](self, "setIsZeus:", [v4 isZeus]);
  v10 = [v4 batteryLevel];

  [(SPPairingSession *)self setBatteryLevel:v10];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_beaconId forKey:@"beaconId"];
  [v5 encodeObject:self->_nonce forKey:@"nonce"];
  [v5 encodeBool:self->_pairingUsingTool forKey:@"pairingUsingTool"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInteger:self->_roleId forKey:@"roleId"];
  [v5 encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
  [v5 encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [v5 encodeInteger:self->_vendorId forKey:@"vendorId"];
  [v5 encodeInteger:self->_productId forKey:@"productId"];
  [v5 encodeObject:self->_ecid forKey:@"ecid"];
  [v5 encodeObject:self->_chipId forKey:@"chipId"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeObject:self->_collaborativeKeyC1 forKey:@"collaborativeKeyC1"];
  [v5 encodeObject:self->_payloadSignature forKey:@"payloadSignature"];
  [v5 encodeObject:self->_attestation forKey:@"attestation"];
  [v5 encodeObject:self->_systemPublicKey forKey:@"systemPublicKey"];
  [v5 encodeObject:self->_refKeyPublicKey forKey:@"refKeyPublicKey"];
  [v5 encodeObject:self->_maskedAppleID forKey:@"maskedAppleID"];
  [v5 encodeObject:self->_userMessage forKey:@"userMessage"];
  [v5 encodeObject:self->_collaborativeKeyC2 forKey:@"collaborativeKeyC2"];
  [v5 encodeObject:self->_serverSeed forKey:@"serverSeed"];
  [v5 encodeObject:self->_serverSignature forKey:@"serverSignature"];
  [v5 encodeObject:self->_serverPublicKey forKey:@"serverPublicKey"];
  [v5 encodeObject:self->_baaIntermediateCert forKey:@"baaIntermediateCert"];
  [v5 encodeObject:self->_baaLeaftCert forKey:@"baaLeaftCert"];
  [v5 encodeObject:self->_collaborativeKeyC3 forKey:@"collaborativeKeyC3"];
  [v5 encodeObject:self->_confirmSignature forKey:@"confirmSignature"];
  [v5 encodeBool:self->_ackSuccess forKey:@"ackSuccess"];
  [v5 encodeObject:self->_keyGenerationStatus forKey:@"keyGenerationStatus"];
  [v5 encodeBool:self->_isZeus forKey:@"isZeus"];
  [v5 encodeInteger:self->_batteryLevel forKey:@"batteryLevel"];
  [v5 encodeObject:self->_pairingLocation forKey:@"pairingLocation"];
}

- (SPPairingSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconId"];
  beaconId = self->_beaconId;
  self->_beaconId = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
  nonce = self->_nonce;
  self->_nonce = v9;

  self->_pairingUsingTool = [v4 decodeBoolForKey:@"pairingUsingTool"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v11;

  self->_roleId = [v4 decodeIntegerForKey:@"roleId"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];
  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v15;

  self->_vendorId = [v4 decodeIntegerForKey:@"vendorId"];
  self->_productId = [v4 decodeIntegerForKey:@"productId"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecid"];
  ecid = self->_ecid;
  self->_ecid = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chipId"];
  chipId = self->_chipId;
  self->_chipId = v19;

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC1"];
  collaborativeKeyC1 = self->_collaborativeKeyC1;
  self->_collaborativeKeyC1 = v23;

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadSignature"];
  payloadSignature = self->_payloadSignature;
  self->_payloadSignature = v25;

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attestation"];
  attestation = self->_attestation;
  self->_attestation = v27;

  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemPublicKey"];
  systemPublicKey = self->_systemPublicKey;
  self->_systemPublicKey = v29;

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refKeyPublicKey"];
  refKeyPublicKey = self->_refKeyPublicKey;
  self->_refKeyPublicKey = v31;

  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maskedAppleID"];
  maskedAppleID = self->_maskedAppleID;
  self->_maskedAppleID = v33;

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userMessage"];
  userMessage = self->_userMessage;
  self->_userMessage = v35;

  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC2"];
  collaborativeKeyC2 = self->_collaborativeKeyC2;
  self->_collaborativeKeyC2 = v37;

  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverSeed"];
  serverSeed = self->_serverSeed;
  self->_serverSeed = v39;

  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverSignature"];
  serverSignature = self->_serverSignature;
  self->_serverSignature = v41;

  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverPublicKey"];
  serverPublicKey = self->_serverPublicKey;
  self->_serverPublicKey = v43;

  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baaIntermediateCert"];
  baaIntermediateCert = self->_baaIntermediateCert;
  self->_baaIntermediateCert = v45;

  v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baaLeaftCert"];
  baaLeaftCert = self->_baaLeaftCert;
  self->_baaLeaftCert = v47;

  v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC3"];
  collaborativeKeyC3 = self->_collaborativeKeyC3;
  self->_collaborativeKeyC3 = v49;

  v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmSignature"];
  confirmSignature = self->_confirmSignature;
  self->_confirmSignature = v51;

  self->_ackSuccess = [v4 decodeBoolForKey:@"ackSuccess"];
  v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyGenerationStatus"];
  keyGenerationStatus = self->_keyGenerationStatus;
  self->_keyGenerationStatus = v53;

  self->_isZeus = [v4 decodeBoolForKey:@"isZeus"];
  self->_batteryLevel = [v4 decodeIntegerForKey:@"batteryLevel"];
  v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingLocation"];

  pairingLocation = self->_pairingLocation;
  self->_pairingLocation = v55;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPPairingSession *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

@end