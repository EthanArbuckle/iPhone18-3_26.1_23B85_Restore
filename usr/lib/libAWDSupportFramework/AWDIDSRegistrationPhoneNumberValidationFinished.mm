@interface AWDIDSRegistrationPhoneNumberValidationFinished
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasNumberOfSMSSent:(BOOL)sent;
- (void)setHasRegistrationError:(BOOL)error;
- (void)setHasValidationDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSRegistrationPhoneNumberValidationFinished

- (void)dealloc
{
  [(AWDIDSRegistrationPhoneNumberValidationFinished *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationPhoneNumberValidationFinished;
  [(AWDIDSRegistrationPhoneNumberValidationFinished *)&v3 dealloc];
}

- (void)setHasRegistrationError:(BOOL)error
{
  if (error)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasValidationDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfSMSSent:(BOOL)sent
{
  if (sent)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validationDuration), @"validationDuration"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationError), @"registrationError"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numberOfSMSSent), @"numberOfSMSSent"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
  }

  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 7) = self->_registrationError;
    *(to + 36) |= 4u;
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

  *(to + 8) = self->_validationDuration;
  *(to + 36) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_8:
  *(to + 6) = self->_numberOfSMSSent;
  *(to + 36) |= 2u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_guid copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 36);
    if (has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 36))
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(equal + 2))
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
      if ((*(equal + 36) & 4) == 0 || self->_registrationError != *(equal + 7))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_24;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_validationDuration != *(equal + 8))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_24;
    }

    LOBYTE(v5) = (*(equal + 36) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_numberOfSMSSent != *(equal + 6))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 36))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDIDSRegistrationPhoneNumberValidationFinished *)self setGuid:?];
  }

  v5 = *(from + 36);
  if ((v5 & 4) != 0)
  {
    self->_registrationError = *(from + 7);
    *&self->_has |= 4u;
    v5 = *(from + 36);
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

  else if ((*(from + 36) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_validationDuration = *(from + 8);
  *&self->_has |= 8u;
  if ((*(from + 36) & 2) == 0)
  {
    return;
  }

LABEL_8:
  self->_numberOfSMSSent = *(from + 6);
  *&self->_has |= 2u;
}

@end