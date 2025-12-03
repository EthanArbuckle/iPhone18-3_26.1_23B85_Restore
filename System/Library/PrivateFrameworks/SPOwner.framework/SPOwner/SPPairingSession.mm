@interface SPPairingSession
- (SPPairingSession)initWithCoder:(id)coder;
- (SPPairingSession)initWithIdentifier:(id)identifier nonce:(id)nonce;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateName:(id)name roleId:(int64_t)id roleEmoji:(id)emoji;
- (void)updateWithConfiguration:(id)configuration;
- (void)updateWithPayloadSignature:(id)signature attestation:(id)attestation collaborativeKey:(id)key systemVersion:(id)version vendorId:(int64_t)id productId:(int64_t)productId ecid:(id)ecid chipId:(id)self0 serialNumber:(id)self1;
- (void)updateWithSeed:(id)seed collaborativeKeyC2:(id)c2 serverSignature:(id)signature serverPublicKey:(id)key maskedAppleID:(id)d userMessage:(id)message baaIntermediateCert:(id)cert baaLeafCert:(id)self0;
@end

@implementation SPPairingSession

- (SPPairingSession)initWithIdentifier:(id)identifier nonce:(id)nonce
{
  identifierCopy = identifier;
  nonceCopy = nonce;
  v12.receiver = self;
  v12.super_class = SPPairingSession;
  v9 = [(SPPairingSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_nonce, nonce);
  }

  return v10;
}

- (void)updateWithSeed:(id)seed collaborativeKeyC2:(id)c2 serverSignature:(id)signature serverPublicKey:(id)key maskedAppleID:(id)d userMessage:(id)message baaIntermediateCert:(id)cert baaLeafCert:(id)self0
{
  leafCertCopy = leafCert;
  certCopy = cert;
  messageCopy = message;
  dCopy = d;
  keyCopy = key;
  signatureCopy = signature;
  c2Copy = c2;
  [(SPPairingSession *)self setServerSeed:seed];
  [(SPPairingSession *)self setCollaborativeKeyC2:c2Copy];

  [(SPPairingSession *)self setServerSignature:signatureCopy];
  [(SPPairingSession *)self setServerPublicKey:keyCopy];

  [(SPPairingSession *)self setMaskedAppleID:dCopy];
  [(SPPairingSession *)self setUserMessage:messageCopy];

  [(SPPairingSession *)self setBaaIntermediateCert:certCopy];
  [(SPPairingSession *)self setBaaLeaftCert:leafCertCopy];
}

- (void)updateWithPayloadSignature:(id)signature attestation:(id)attestation collaborativeKey:(id)key systemVersion:(id)version vendorId:(int64_t)id productId:(int64_t)productId ecid:(id)ecid chipId:(id)self0 serialNumber:(id)self1
{
  numberCopy = number;
  chipIdCopy = chipId;
  ecidCopy = ecid;
  keyCopy = key;
  attestationCopy = attestation;
  signatureCopy = signature;
  [(SPPairingSession *)self setSystemVersion:version];
  [(SPPairingSession *)self setVendorId:id];
  [(SPPairingSession *)self setProductId:productId];
  [(SPPairingSession *)self setEcid:ecidCopy];

  [(SPPairingSession *)self setChipId:chipIdCopy];
  [(SPPairingSession *)self setSerialNumber:numberCopy];

  [(SPPairingSession *)self setPayloadSignature:signatureCopy];
  [(SPPairingSession *)self setAttestation:attestationCopy];

  [(SPPairingSession *)self setCollaborativeKeyC1:keyCopy];
}

- (void)updateName:(id)name roleId:(int64_t)id roleEmoji:(id)emoji
{
  emojiCopy = emoji;
  [(SPPairingSession *)self setName:name];
  [(SPPairingSession *)self setRoleId:id];
  [(SPPairingSession *)self setRoleEmoji:emojiCopy];
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  name = [configurationCopy name];
  [(SPPairingSession *)self setName:name];

  -[SPPairingSession setRoleId:](self, "setRoleId:", [configurationCopy roleId]);
  roleEmoji = [configurationCopy roleEmoji];
  [(SPPairingSession *)self setRoleEmoji:roleEmoji];

  keyStatus = [configurationCopy keyStatus];
  [(SPPairingSession *)self setKeyGenerationStatus:keyStatus];

  collaborativeKeyC3 = [configurationCopy collaborativeKeyC3];
  [(SPPairingSession *)self setCollaborativeKeyC3:collaborativeKeyC3];

  signatureS4 = [configurationCopy signatureS4];
  [(SPPairingSession *)self setConfirmSignature:signatureS4];

  -[SPPairingSession setIsZeus:](self, "setIsZeus:", [configurationCopy isZeus]);
  batteryLevel = [configurationCopy batteryLevel];

  [(SPPairingSession *)self setBatteryLevel:batteryLevel];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_beaconId forKey:@"beaconId"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeBool:self->_pairingUsingTool forKey:@"pairingUsingTool"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_roleId forKey:@"roleId"];
  [coderCopy encodeObject:self->_roleEmoji forKey:@"roleEmoji"];
  [coderCopy encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [coderCopy encodeInteger:self->_vendorId forKey:@"vendorId"];
  [coderCopy encodeInteger:self->_productId forKey:@"productId"];
  [coderCopy encodeObject:self->_ecid forKey:@"ecid"];
  [coderCopy encodeObject:self->_chipId forKey:@"chipId"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_collaborativeKeyC1 forKey:@"collaborativeKeyC1"];
  [coderCopy encodeObject:self->_payloadSignature forKey:@"payloadSignature"];
  [coderCopy encodeObject:self->_attestation forKey:@"attestation"];
  [coderCopy encodeObject:self->_systemPublicKey forKey:@"systemPublicKey"];
  [coderCopy encodeObject:self->_refKeyPublicKey forKey:@"refKeyPublicKey"];
  [coderCopy encodeObject:self->_maskedAppleID forKey:@"maskedAppleID"];
  [coderCopy encodeObject:self->_userMessage forKey:@"userMessage"];
  [coderCopy encodeObject:self->_collaborativeKeyC2 forKey:@"collaborativeKeyC2"];
  [coderCopy encodeObject:self->_serverSeed forKey:@"serverSeed"];
  [coderCopy encodeObject:self->_serverSignature forKey:@"serverSignature"];
  [coderCopy encodeObject:self->_serverPublicKey forKey:@"serverPublicKey"];
  [coderCopy encodeObject:self->_baaIntermediateCert forKey:@"baaIntermediateCert"];
  [coderCopy encodeObject:self->_baaLeaftCert forKey:@"baaLeaftCert"];
  [coderCopy encodeObject:self->_collaborativeKeyC3 forKey:@"collaborativeKeyC3"];
  [coderCopy encodeObject:self->_confirmSignature forKey:@"confirmSignature"];
  [coderCopy encodeBool:self->_ackSuccess forKey:@"ackSuccess"];
  [coderCopy encodeObject:self->_keyGenerationStatus forKey:@"keyGenerationStatus"];
  [coderCopy encodeBool:self->_isZeus forKey:@"isZeus"];
  [coderCopy encodeInteger:self->_batteryLevel forKey:@"batteryLevel"];
  [coderCopy encodeObject:self->_pairingLocation forKey:@"pairingLocation"];
}

- (SPPairingSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconId"];
  beaconId = self->_beaconId;
  self->_beaconId = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
  nonce = self->_nonce;
  self->_nonce = v9;

  self->_pairingUsingTool = [coderCopy decodeBoolForKey:@"pairingUsingTool"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v11;

  self->_roleId = [coderCopy decodeIntegerForKey:@"roleId"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roleEmoji"];
  roleEmoji = self->_roleEmoji;
  self->_roleEmoji = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v15;

  self->_vendorId = [coderCopy decodeIntegerForKey:@"vendorId"];
  self->_productId = [coderCopy decodeIntegerForKey:@"productId"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ecid"];
  ecid = self->_ecid;
  self->_ecid = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chipId"];
  chipId = self->_chipId;
  self->_chipId = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC1"];
  collaborativeKeyC1 = self->_collaborativeKeyC1;
  self->_collaborativeKeyC1 = v23;

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadSignature"];
  payloadSignature = self->_payloadSignature;
  self->_payloadSignature = v25;

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestation"];
  attestation = self->_attestation;
  self->_attestation = v27;

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemPublicKey"];
  systemPublicKey = self->_systemPublicKey;
  self->_systemPublicKey = v29;

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refKeyPublicKey"];
  refKeyPublicKey = self->_refKeyPublicKey;
  self->_refKeyPublicKey = v31;

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskedAppleID"];
  maskedAppleID = self->_maskedAppleID;
  self->_maskedAppleID = v33;

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userMessage"];
  userMessage = self->_userMessage;
  self->_userMessage = v35;

  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC2"];
  collaborativeKeyC2 = self->_collaborativeKeyC2;
  self->_collaborativeKeyC2 = v37;

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverSeed"];
  serverSeed = self->_serverSeed;
  self->_serverSeed = v39;

  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverSignature"];
  serverSignature = self->_serverSignature;
  self->_serverSignature = v41;

  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverPublicKey"];
  serverPublicKey = self->_serverPublicKey;
  self->_serverPublicKey = v43;

  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baaIntermediateCert"];
  baaIntermediateCert = self->_baaIntermediateCert;
  self->_baaIntermediateCert = v45;

  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baaLeaftCert"];
  baaLeaftCert = self->_baaLeaftCert;
  self->_baaLeaftCert = v47;

  v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collaborativeKeyC3"];
  collaborativeKeyC3 = self->_collaborativeKeyC3;
  self->_collaborativeKeyC3 = v49;

  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmSignature"];
  confirmSignature = self->_confirmSignature;
  self->_confirmSignature = v51;

  self->_ackSuccess = [coderCopy decodeBoolForKey:@"ackSuccess"];
  v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyGenerationStatus"];
  keyGenerationStatus = self->_keyGenerationStatus;
  self->_keyGenerationStatus = v53;

  self->_isZeus = [coderCopy decodeBoolForKey:@"isZeus"];
  self->_batteryLevel = [coderCopy decodeIntegerForKey:@"batteryLevel"];
  v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingLocation"];

  pairingLocation = self->_pairingLocation;
  self->_pairingLocation = v55;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SPPairingSession *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, identifier];

  return v6;
}

@end