@interface ICMutableMusicSubscriptionStatus
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCellularOperatorName:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setInitialPurchaseTimestamp:(id)a3;
- (void)setPartner:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setServiceBeginsTimestamp:(id)a3;
- (void)setSessionIdentifier:(id)a3;
- (void)setStudentExpirationDate:(id)a3;
- (void)setStudentVerificationId:(id)a3;
- (void)setStudentVerifier:(id)a3;
- (void)setTermsStatusList:(id)a3;
@end

@implementation ICMutableMusicSubscriptionStatus

- (void)setSessionIdentifier:(id)a3
{
  v4 = a3;
  sessionIdentifier = self->super._sessionIdentifier;
  if (sessionIdentifier != v4)
  {
    v8 = v4;
    sessionIdentifier = [(NSString *)sessionIdentifier isEqual:v4];
    v4 = v8;
    if ((sessionIdentifier & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._sessionIdentifier;
      self->super._sessionIdentifier = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](sessionIdentifier, v4);
}

- (void)setCellularOperatorName:(id)a3
{
  v4 = a3;
  cellularOperatorName = self->super._cellularOperatorName;
  if (cellularOperatorName != v4)
  {
    v8 = v4;
    cellularOperatorName = [(NSString *)cellularOperatorName isEqual:v4];
    v4 = v8;
    if ((cellularOperatorName & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._cellularOperatorName;
      self->super._cellularOperatorName = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](cellularOperatorName, v4);
}

- (void)setPhoneNumber:(id)a3
{
  v4 = a3;
  phoneNumber = self->super._phoneNumber;
  if (phoneNumber != v4)
  {
    v8 = v4;
    phoneNumber = [(NSString *)phoneNumber isEqual:v4];
    v4 = v8;
    if ((phoneNumber & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._phoneNumber;
      self->super._phoneNumber = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](phoneNumber, v4);
}

- (void)setTermsStatusList:(id)a3
{
  v4 = a3;
  termsStatusList = self->super._termsStatusList;
  if (termsStatusList != v4)
  {
    v8 = v4;
    termsStatusList = [(NSArray *)termsStatusList isEqual:v4];
    v4 = v8;
    if ((termsStatusList & 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->super._termsStatusList;
      self->super._termsStatusList = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](termsStatusList, v4);
}

- (void)setPartner:(id)a3
{
  v4 = a3;
  partner = self->super._partner;
  if (partner != v4)
  {
    v8 = v4;
    partner = [(NSString *)partner isEqual:v4];
    v4 = v8;
    if ((partner & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._partner;
      self->super._partner = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](partner, v4);
}

- (void)setServiceBeginsTimestamp:(id)a3
{
  v9 = a3;
  v4 = self->super._serviceBeginsTimestamp;
  serviceBeginsTimestamp = v4;
  if (v4 != v9)
  {
    v6 = [(NSDate *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = v9;
    serviceBeginsTimestamp = self->super._serviceBeginsTimestamp;
    self->super._serviceBeginsTimestamp = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)setInitialPurchaseTimestamp:(id)a3
{
  v9 = a3;
  v4 = self->super._initialPurchaseTimestamp;
  initialPurchaseTimestamp = v4;
  if (v4 != v9)
  {
    v6 = [(NSDate *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = v9;
    initialPurchaseTimestamp = self->super._initialPurchaseTimestamp;
    self->super._initialPurchaseTimestamp = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)setExpirationDate:(id)a3
{
  v9 = a3;
  v4 = self->super._expirationDate;
  expirationDate = v4;
  if (v4 != v9)
  {
    v6 = [(NSDate *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = v9;
    expirationDate = self->super._expirationDate;
    self->super._expirationDate = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)setStudentVerifier:(id)a3
{
  v4 = a3;
  studentVerifier = self->super._studentVerifier;
  if (studentVerifier != v4)
  {
    v8 = v4;
    studentVerifier = [(NSString *)studentVerifier isEqual:v4];
    v4 = v8;
    if ((studentVerifier & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._studentVerifier;
      self->super._studentVerifier = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](studentVerifier, v4);
}

- (void)setStudentVerificationId:(id)a3
{
  v4 = a3;
  studentVerificationId = self->super._studentVerificationId;
  if (studentVerificationId != v4)
  {
    v8 = v4;
    studentVerificationId = [(NSString *)studentVerificationId isEqual:v4];
    v4 = v8;
    if ((studentVerificationId & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._studentVerificationId;
      self->super._studentVerificationId = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](studentVerificationId, v4);
}

- (void)setStudentExpirationDate:(id)a3
{
  v9 = a3;
  v4 = self->super._studentExpirationDate;
  studentExpirationDate = v4;
  if (v4 != v9)
  {
    v6 = [(NSDate *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = v9;
    studentExpirationDate = self->super._studentExpirationDate;
    self->super._studentExpirationDate = v8;
  }

  v7 = v9;
LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [[ICMusicSubscriptionStatus alloc] _init];
  [(ICMusicSubscriptionStatus *)self _copySubscriptionStatusPropertiesToStatus:v5 withZone:a3];
  return v5;
}

@end