@interface AWDIDSRegistrationAuthenticate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasGenericError:(BOOL)a3;
- (void)setHasIsDSUser:(BOOL)a3;
- (void)setHasIsPhoneUser:(BOOL)a3;
- (void)setHasPOSIXError:(BOOL)a3;
- (void)setHasRegistrationError:(BOOL)a3;
- (void)setHasResultCode:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasURLError:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSRegistrationAuthenticate

- (void)dealloc
{
  [(AWDIDSRegistrationAuthenticate *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationAuthenticate;
  [(AWDIDSRegistrationAuthenticate *)&v3 dealloc];
}

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasConnectionType:(BOOL)a3
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

- (void)setHasResultCode:(BOOL)a3
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

- (void)setHasRegistrationError:(BOOL)a3
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

- (void)setHasGenericError:(BOOL)a3
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

- (void)setHasURLError:(BOOL)a3
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

- (void)setHasPOSIXError:(BOOL)a3
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

- (void)setHasIsPhoneUser:(BOOL)a3
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

- (void)setHasIsDSUser:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationAuthenticate;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRegistrationAuthenticate description](&v3, sel_description), -[AWDIDSRegistrationAuthenticate dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_success), @"success"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resultCode), @"resultCode"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_registrationError), @"registrationError"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_genericError), @"genericError"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_uRLError), @"URLError"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isPhoneUser), @"isPhoneUser"}];
    if ((*&self->_has & 8) == 0)
    {
      return v3;
    }

    goto LABEL_14;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_pOSIXError), @"POSIXError"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((has & 8) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isDSUser), @"isDSUser"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    success = self->_success;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  resultCode = self->_resultCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  registrationError = self->_registrationError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  genericError = self->_genericError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  uRLError = self->_uRLError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    isPhoneUser = self->_isPhoneUser;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  pOSIXError = self->_pOSIXError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_23:
  isDSUser = self->_isDSUser;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 30) |= 1u;
  }

  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(a3 + 13) = self->_success;
    *(a3 + 30) |= 0x100u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 4) = self->_connectionType;
  *(a3 + 30) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 12) = self->_resultCode;
  *(a3 + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 11) = self->_registrationError;
  *(a3 + 30) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 5) = self->_genericError;
  *(a3 + 30) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 14) = self->_uRLError;
  *(a3 + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 10) = self->_pOSIXError;
  *(a3 + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(a3 + 9) = self->_isPhoneUser;
  *(a3 + 30) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_14:
  *(a3 + 8) = self->_isDSUser;
  *(a3 + 30) |= 8u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v6 + 52) = self->_success;
    *(v6 + 60) |= 0x100u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_connectionType;
  *(v6 + 60) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v6 + 48) = self->_resultCode;
  *(v6 + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v6 + 44) = self->_registrationError;
  *(v6 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v6 + 20) = self->_genericError;
  *(v6 + 60) |= 4u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v6 + 56) = self->_uRLError;
  *(v6 + 60) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    *(v6 + 36) = self->_isPhoneUser;
    *(v6 + 60) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_12;
  }

LABEL_20:
  *(v6 + 40) = self->_pOSIXError;
  *(v6 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((has & 8) != 0)
  {
LABEL_12:
    *(v6 + 32) = self->_isDSUser;
    *(v6 + 60) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 30);
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

    guid = self->_guid;
    if (guid | *(a3 + 3))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 30);
    if ((has & 0x100) != 0)
    {
      if ((*(a3 + 30) & 0x100) == 0 || self->_success != *(a3 + 13))
      {
        goto LABEL_54;
      }
    }

    else if ((*(a3 + 30) & 0x100) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_connectionType != *(a3 + 4))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_resultCode != *(a3 + 12))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_registrationError != *(a3 + 11))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_genericError != *(a3 + 5))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(a3 + 30) & 0x200) == 0 || self->_uRLError != *(a3 + 14))
      {
        goto LABEL_54;
      }
    }

    else if ((*(a3 + 30) & 0x200) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_pOSIXError != *(a3 + 10))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_isPhoneUser != *(a3 + 9))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_54;
    }

    LOBYTE(v5) = (v9 & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_isDSUser != *(a3 + 8))
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
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_guid hash];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v6 = 2654435761 * self->_success;
    if ((has & 2) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_connectionType;
      if ((has & 0x80) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_resultCode;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_registrationError;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_genericError;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_uRLError;
    if ((has & 0x20) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_pOSIXError;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v13 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    v14 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_20:
  v12 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v13 = 2654435761 * self->_isPhoneUser;
  if ((has & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v14 = 2654435761 * self->_isDSUser;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 30))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDIDSRegistrationAuthenticate *)self setGuid:?];
  }

  v5 = *(a3 + 30);
  if ((v5 & 0x100) != 0)
  {
    self->_success = *(a3 + 13);
    *&self->_has |= 0x100u;
    v5 = *(a3 + 30);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_connectionType = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_resultCode = *(a3 + 12);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_registrationError = *(a3 + 11);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 30);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_genericError = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_uRLError = *(a3 + 14);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_pOSIXError = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_23:
  self->_isPhoneUser = *(a3 + 9);
  *&self->_has |= 0x10u;
  if ((*(a3 + 30) & 8) == 0)
  {
    return;
  }

LABEL_14:
  self->_isDSUser = *(a3 + 8);
  *&self->_has |= 8u;
}

@end