@interface AWDIDSRegistrationCompleted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCircleStatus:(BOOL)status;
- (void)setHasRegistrationError:(BOOL)error;
- (void)setHasRegistrationType:(BOOL)type;
- (void)setHasWasSuccessful:(BOOL)successful;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSRegistrationCompleted

- (void)dealloc
{
  [(AWDIDSRegistrationCompleted *)self setServiceIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationCompleted;
  [(AWDIDSRegistrationCompleted *)&v3 dealloc];
}

- (void)setHasRegistrationType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasWasSuccessful:(BOOL)successful
{
  if (successful)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
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

- (void)setHasCircleStatus:(BOOL)status
{
  if (status)
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
  v3.super_class = AWDIDSRegistrationCompleted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRegistrationCompleted description](&v3, sel_description), -[AWDIDSRegistrationCompleted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationType), @"registrationType"}];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [dictionary setObject:serviceIdentifier forKey:@"serviceIdentifier"];
  }

  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_registrationError), @"registrationError"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wasSuccessful), @"wasSuccessful"}];
  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_circleStatus), @"circleStatus"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    registrationType = self->_registrationType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    registrationError = self->_registrationError;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

  wasSuccessful = self->_wasSuccessful;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((v7 & 2) == 0)
  {
    return;
  }

LABEL_13:
  circleStatus = self->_circleStatus;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(to + 6) = self->_registrationType;
    *(to + 44) |= 8u;
  }

  if (self->_serviceIdentifier)
  {
    [to setServiceIdentifier:?];
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(to + 10) = self->_wasSuccessful;
    *(to + 44) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(to + 5) = self->_registrationError;
  *(to + 44) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 4) = self->_circleStatus;
  *(to + 44) |= 2u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 24) = self->_registrationType;
    *(v5 + 44) |= 8u;
  }

  *(v6 + 32) = [(NSString *)self->_serviceIdentifier copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 20) = self->_registrationError;
    *(v6 + 44) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  *(v6 + 40) = self->_wasSuccessful;
  *(v6 + 44) |= 0x10u;
  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v8 & 2) != 0)
  {
LABEL_8:
    *(v6 + 16) = self->_circleStatus;
    *(v6 + 44) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 44);
    if (has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 44))
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_registrationType != *(equal + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 8) != 0)
    {
      goto LABEL_29;
    }

    serviceIdentifier = self->_serviceIdentifier;
    if (serviceIdentifier | *(equal + 4))
    {
      v5 = [(NSString *)serviceIdentifier isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_wasSuccessful != *(equal + 10))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_registrationError != *(equal + 5))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(equal + 44) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_circleStatus != *(equal + 4))
      {
        goto LABEL_29;
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
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_registrationType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_serviceIdentifier hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
  }

  v6 = 2654435761 * self->_wasSuccessful;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761 * self->_registrationError;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761 * self->_circleStatus;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 44);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 44);
  }

  if ((v5 & 8) != 0)
  {
    self->_registrationType = *(from + 6);
    *&self->_has |= 8u;
  }

  if (*(from + 4))
  {
    [(AWDIDSRegistrationCompleted *)self setServiceIdentifier:?];
  }

  v6 = *(from + 44);
  if ((v6 & 0x10) != 0)
  {
    self->_wasSuccessful = *(from + 10);
    *&self->_has |= 0x10u;
    v6 = *(from + 44);
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 44) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_registrationError = *(from + 5);
  *&self->_has |= 4u;
  if ((*(from + 44) & 2) == 0)
  {
    return;
  }

LABEL_10:
  self->_circleStatus = *(from + 4);
  *&self->_has |= 2u;
}

@end