@interface ICMutableMusicSubscriptionStatus
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCellularOperatorName:(id)name;
- (void)setExpirationDate:(id)date;
- (void)setInitialPurchaseTimestamp:(id)timestamp;
- (void)setPartner:(id)partner;
- (void)setPhoneNumber:(id)number;
- (void)setServiceBeginsTimestamp:(id)timestamp;
- (void)setSessionIdentifier:(id)identifier;
- (void)setStudentExpirationDate:(id)date;
- (void)setStudentVerificationId:(id)id;
- (void)setStudentVerifier:(id)verifier;
- (void)setTermsStatusList:(id)list;
@end

@implementation ICMutableMusicSubscriptionStatus

- (void)setSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sessionIdentifier = self->super._sessionIdentifier;
  if (sessionIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    sessionIdentifier = [(NSString *)sessionIdentifier isEqual:identifierCopy];
    identifierCopy = v8;
    if ((sessionIdentifier & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._sessionIdentifier;
      self->super._sessionIdentifier = v6;

      identifierCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](sessionIdentifier, identifierCopy);
}

- (void)setCellularOperatorName:(id)name
{
  nameCopy = name;
  cellularOperatorName = self->super._cellularOperatorName;
  if (cellularOperatorName != nameCopy)
  {
    v8 = nameCopy;
    cellularOperatorName = [(NSString *)cellularOperatorName isEqual:nameCopy];
    nameCopy = v8;
    if ((cellularOperatorName & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._cellularOperatorName;
      self->super._cellularOperatorName = v6;

      nameCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](cellularOperatorName, nameCopy);
}

- (void)setPhoneNumber:(id)number
{
  numberCopy = number;
  phoneNumber = self->super._phoneNumber;
  if (phoneNumber != numberCopy)
  {
    v8 = numberCopy;
    phoneNumber = [(NSString *)phoneNumber isEqual:numberCopy];
    numberCopy = v8;
    if ((phoneNumber & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._phoneNumber;
      self->super._phoneNumber = v6;

      numberCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](phoneNumber, numberCopy);
}

- (void)setTermsStatusList:(id)list
{
  listCopy = list;
  termsStatusList = self->super._termsStatusList;
  if (termsStatusList != listCopy)
  {
    v8 = listCopy;
    termsStatusList = [(NSArray *)termsStatusList isEqual:listCopy];
    listCopy = v8;
    if ((termsStatusList & 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->super._termsStatusList;
      self->super._termsStatusList = v6;

      listCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](termsStatusList, listCopy);
}

- (void)setPartner:(id)partner
{
  partnerCopy = partner;
  partner = self->super._partner;
  if (partner != partnerCopy)
  {
    v8 = partnerCopy;
    partner = [(NSString *)partner isEqual:partnerCopy];
    partnerCopy = v8;
    if ((partner & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._partner;
      self->super._partner = v6;

      partnerCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](partner, partnerCopy);
}

- (void)setServiceBeginsTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = self->super._serviceBeginsTimestamp;
  serviceBeginsTimestamp = v4;
  if (v4 != timestampCopy)
  {
    v6 = [(NSDate *)v4 isEqual:timestampCopy];

    v7 = timestampCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = timestampCopy;
    serviceBeginsTimestamp = self->super._serviceBeginsTimestamp;
    self->super._serviceBeginsTimestamp = v8;
  }

  v7 = timestampCopy;
LABEL_5:
}

- (void)setInitialPurchaseTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = self->super._initialPurchaseTimestamp;
  initialPurchaseTimestamp = v4;
  if (v4 != timestampCopy)
  {
    v6 = [(NSDate *)v4 isEqual:timestampCopy];

    v7 = timestampCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = timestampCopy;
    initialPurchaseTimestamp = self->super._initialPurchaseTimestamp;
    self->super._initialPurchaseTimestamp = v8;
  }

  v7 = timestampCopy;
LABEL_5:
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  v4 = self->super._expirationDate;
  expirationDate = v4;
  if (v4 != dateCopy)
  {
    v6 = [(NSDate *)v4 isEqual:dateCopy];

    v7 = dateCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = dateCopy;
    expirationDate = self->super._expirationDate;
    self->super._expirationDate = v8;
  }

  v7 = dateCopy;
LABEL_5:
}

- (void)setStudentVerifier:(id)verifier
{
  verifierCopy = verifier;
  studentVerifier = self->super._studentVerifier;
  if (studentVerifier != verifierCopy)
  {
    v8 = verifierCopy;
    studentVerifier = [(NSString *)studentVerifier isEqual:verifierCopy];
    verifierCopy = v8;
    if ((studentVerifier & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._studentVerifier;
      self->super._studentVerifier = v6;

      verifierCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](studentVerifier, verifierCopy);
}

- (void)setStudentVerificationId:(id)id
{
  idCopy = id;
  studentVerificationId = self->super._studentVerificationId;
  if (studentVerificationId != idCopy)
  {
    v8 = idCopy;
    studentVerificationId = [(NSString *)studentVerificationId isEqual:idCopy];
    idCopy = v8;
    if ((studentVerificationId & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._studentVerificationId;
      self->super._studentVerificationId = v6;

      idCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](studentVerificationId, idCopy);
}

- (void)setStudentExpirationDate:(id)date
{
  dateCopy = date;
  v4 = self->super._studentExpirationDate;
  studentExpirationDate = v4;
  if (v4 != dateCopy)
  {
    v6 = [(NSDate *)v4 isEqual:dateCopy];

    v7 = dateCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = dateCopy;
    studentExpirationDate = self->super._studentExpirationDate;
    self->super._studentExpirationDate = v8;
  }

  v7 = dateCopy;
LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [[ICMusicSubscriptionStatus alloc] _init];
  [(ICMusicSubscriptionStatus *)self _copySubscriptionStatusPropertiesToStatus:_init withZone:zone];
  return _init;
}

@end