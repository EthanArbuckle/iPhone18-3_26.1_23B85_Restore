@interface AWDIDSRegistrationPhoneNumberValidationFinished
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNumberOfSMSSent:(BOOL)a3;
- (void)setHasRegistrationError:(BOOL)a3;
- (void)setHasValidationDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSRegistrationPhoneNumberValidationFinished

- (void)dealloc
{
  [(AWDIDSRegistrationPhoneNumberValidationFinished *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationPhoneNumberValidationFinished;
  [(AWDIDSRegistrationPhoneNumberValidationFinished *)&v3 dealloc];
}

- (void)setHasRegistrationError:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasValidationDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfSMSSent:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationPhoneNumberValidationFinished;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRegistrationPhoneNumberValidationFinished description](&v3, sel_description), -[AWDIDSRegistrationPhoneNumberValidationFinished dictionaryRepresentation](self, "dictionaryRepresentation")];
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
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validationDuration), @"validationDuration"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationError), @"registrationError"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfSMSSent), @"numberOfSMSSent"}];
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
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    validationDuration = self->_validationDuration;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  registrationError = self->_registrationError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_11:
  numberOfSMSSent = self->_numberOfSMSSent;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 36) |= 1u;
  }

  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 7) = self->_registrationError;
    *(a3 + 36) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 8) = self->_validationDuration;
  *(a3 + 36) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_8:
  *(a3 + 6) = self->_numberOfSMSSent;
  *(a3 + 36) |= 2u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 32) = self->_validationDuration;
    *(v6 + 36) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 28) = self->_registrationError;
  *(v6 + 36) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v6 + 24) = self->_numberOfSMSSent;
    *(v6 + 36) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 36);
    if (has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(a3 + 2))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_registrationError != *(a3 + 7))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 4) != 0)
    {
      goto LABEL_24;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 36) & 8) == 0 || self->_validationDuration != *(a3 + 8))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 8) != 0)
    {
      goto LABEL_24;
    }

    LOBYTE(v5) = (*(a3 + 36) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_numberOfSMSSent != *(a3 + 6))
      {
        goto LABEL_24;
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
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_registrationError;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_validationDuration;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_numberOfSMSSent;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 36))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDIDSRegistrationPhoneNumberValidationFinished *)self setGuid:?];
  }

  v5 = *(a3 + 36);
  if ((v5 & 4) != 0)
  {
    self->_registrationError = *(a3 + 7);
    *&self->_has |= 4u;
    v5 = *(a3 + 36);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a3 + 36) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_validationDuration = *(a3 + 8);
  *&self->_has |= 8u;
  if ((*(a3 + 36) & 2) == 0)
  {
    return;
  }

LABEL_8:
  self->_numberOfSMSSent = *(a3 + 6);
  *&self->_has |= 2u;
}

@end