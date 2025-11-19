@interface AWDIDSRegistrationAccountStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAccountType:(BOOL)a3;
- (void)setHasDoesExist:(BOOL)a3;
- (void)setHasIsEnabled:(BOOL)a3;
- (void)setHasIsUserDisabled:(BOOL)a3;
- (void)setHasIsiCloudSignedIn:(BOOL)a3;
- (void)setHasIsiTunesSignedIn:(BOOL)a3;
- (void)setHasRegistrationError:(BOOL)a3;
- (void)setHasRegistrationErrorReason:(BOOL)a3;
- (void)setHasRegistrationStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSRegistrationAccountStatus

- (void)dealloc
{
  [(AWDIDSRegistrationAccountStatus *)self setServiceIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationAccountStatus;
  [(AWDIDSRegistrationAccountStatus *)&v3 dealloc];
}

- (void)setHasAccountType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasDoesExist:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIsUserDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsiCloudSignedIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRegistrationStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasRegistrationError:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasRegistrationErrorReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsiTunesSignedIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationAccountStatus;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRegistrationAccountStatus description](&v3, sel_description), -[AWDIDSRegistrationAccountStatus dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_accountType), @"accountType"}];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v3 setObject:serviceIdentifier forKey:@"serviceIdentifier"];
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_doesExist), @"doesExist"}];
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_9;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isEnabled), @"isEnabled"}];
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isUserDisabled), @"isUserDisabled"}];
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isiCloudSignedIn), @"isiCloudSignedIn"}];
  v6 = self->_has;
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationStatus), @"registrationStatus"}];
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_13:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationErrorReason), @"registrationErrorReason"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return v3;
    }

    goto LABEL_15;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationError), @"registrationError"}];
  v6 = self->_has;
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v6 & 0x40) != 0)
  {
LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isiTunesSignedIn), @"isiTunesSignedIn"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    accountType = self->_accountType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    doesExist = self->_doesExist;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_9:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_9;
  }

  isEnabled = self->_isEnabled;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_10:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  isUserDisabled = self->_isUserDisabled;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  isiCloudSignedIn = self->_isiCloudSignedIn;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 0x200) == 0)
  {
LABEL_12:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  registrationStatus = self->_registrationStatus;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((v7 & 0x80) == 0)
  {
LABEL_13:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    registrationErrorReason = self->_registrationErrorReason;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  registrationError = self->_registrationError;
  PBDataWriterWriteInt32Field();
  v7 = self->_has;
  if ((v7 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v7 & 0x40) == 0)
  {
    return;
  }

LABEL_23:
  isiTunesSignedIn = self->_isiTunesSignedIn;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_accountType;
    *(a3 + 32) |= 2u;
  }

  if (self->_serviceIdentifier)
  {
    [a3 setServiceIdentifier:?];
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(a3 + 5) = self->_doesExist;
    *(a3 + 32) |= 4u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_9;
  }

  *(a3 + 6) = self->_isEnabled;
  *(a3 + 32) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 7) = self->_isUserDisabled;
  *(a3 + 32) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 8) = self->_isiCloudSignedIn;
  *(a3 + 32) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 12) = self->_registrationStatus;
  *(a3 + 32) |= 0x200u;
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_13:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 10) = self->_registrationError;
  *(a3 + 32) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_14:
    if ((v6 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_23:
  *(a3 + 11) = self->_registrationErrorReason;
  *(a3 + 32) |= 0x100u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_15:
  *(a3 + 9) = self->_isiTunesSignedIn;
  *(a3 + 32) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_accountType;
    *(v5 + 64) |= 2u;
  }

  *(v6 + 56) = [(NSString *)self->_serviceIdentifier copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    *(v6 + 20) = self->_doesExist;
    *(v6 + 64) |= 4u;
    v8 = self->_has;
    if ((v8 & 8) == 0)
    {
LABEL_7:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 24) = self->_isEnabled;
  *(v6 + 64) |= 8u;
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_8:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v6 + 28) = self->_isUserDisabled;
  *(v6 + 64) |= 0x10u;
  v8 = self->_has;
  if ((v8 & 0x20) == 0)
  {
LABEL_9:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v6 + 32) = self->_isiCloudSignedIn;
  *(v6 + 64) |= 0x20u;
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_10:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v6 + 48) = self->_registrationStatus;
  *(v6 + 64) |= 0x200u;
  v8 = self->_has;
  if ((v8 & 0x80) == 0)
  {
LABEL_11:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    *(v6 + 44) = self->_registrationErrorReason;
    *(v6 + 64) |= 0x100u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v6;
    }

    goto LABEL_13;
  }

LABEL_20:
  *(v6 + 40) = self->_registrationError;
  *(v6 + 64) |= 0x80u;
  v8 = self->_has;
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v8 & 0x40) != 0)
  {
LABEL_13:
    *(v6 + 36) = self->_isiTunesSignedIn;
    *(v6 + 64) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_54;
      }
    }

    else if (v7)
    {
LABEL_54:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_accountType != *(a3 + 4))
      {
        goto LABEL_54;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_54;
    }

    serviceIdentifier = self->_serviceIdentifier;
    if (serviceIdentifier | *(a3 + 7))
    {
      v5 = [(NSString *)serviceIdentifier isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 32);
    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_doesExist != *(a3 + 5))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_isEnabled != *(a3 + 6))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_isUserDisabled != *(a3 + 7))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_isiCloudSignedIn != *(a3 + 8))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(a3 + 32) & 0x200) == 0 || self->_registrationStatus != *(a3 + 12))
      {
        goto LABEL_54;
      }
    }

    else if ((*(a3 + 32) & 0x200) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_registrationError != *(a3 + 10))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x100) != 0)
    {
      if ((*(a3 + 32) & 0x100) == 0 || self->_registrationErrorReason != *(a3 + 11))
      {
        goto LABEL_54;
      }
    }

    else if ((*(a3 + 32) & 0x100) != 0)
    {
      goto LABEL_54;
    }

    LOBYTE(v5) = (v9 & 0x40) == 0;
    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_isiTunesSignedIn != *(a3 + 9))
      {
        goto LABEL_54;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_accountType;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_serviceIdentifier hash];
  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    v8 = 2654435761 * self->_doesExist;
    if ((v7 & 8) != 0)
    {
LABEL_8:
      v9 = 2654435761 * self->_isEnabled;
      if ((v7 & 0x10) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
  if ((v7 & 0x10) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_isUserDisabled;
    if ((v7 & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if ((v7 & 0x20) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_isiCloudSignedIn;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_registrationStatus;
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = 0;
  if ((v7 & 0x80) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_registrationError;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    v14 = 0;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    v15 = 0;
    return v5 ^ v4 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v6;
  }

LABEL_20:
  v13 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  v14 = 2654435761 * self->_registrationErrorReason;
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v15 = 2654435761 * self->_isiTunesSignedIn;
  return v5 ^ v4 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 32);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_accountType = *(a3 + 4);
    *&self->_has |= 2u;
  }

  if (*(a3 + 7))
  {
    [(AWDIDSRegistrationAccountStatus *)self setServiceIdentifier:?];
  }

  v6 = *(a3 + 32);
  if ((v6 & 4) != 0)
  {
    self->_doesExist = *(a3 + 5);
    *&self->_has |= 4u;
    v6 = *(a3 + 32);
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_isEnabled = *(a3 + 6);
  *&self->_has |= 8u;
  v6 = *(a3 + 32);
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_isUserDisabled = *(a3 + 7);
  *&self->_has |= 0x10u;
  v6 = *(a3 + 32);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_isiCloudSignedIn = *(a3 + 8);
  *&self->_has |= 0x20u;
  v6 = *(a3 + 32);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_registrationStatus = *(a3 + 12);
  *&self->_has |= 0x200u;
  v6 = *(a3 + 32);
  if ((v6 & 0x80) == 0)
  {
LABEL_13:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_registrationError = *(a3 + 10);
  *&self->_has |= 0x80u;
  v6 = *(a3 + 32);
  if ((v6 & 0x100) == 0)
  {
LABEL_14:
    if ((v6 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_23:
  self->_registrationErrorReason = *(a3 + 11);
  *&self->_has |= 0x100u;
  if ((*(a3 + 32) & 0x40) == 0)
  {
    return;
  }

LABEL_15:
  self->_isiTunesSignedIn = *(a3 + 9);
  *&self->_has |= 0x40u;
}

@end