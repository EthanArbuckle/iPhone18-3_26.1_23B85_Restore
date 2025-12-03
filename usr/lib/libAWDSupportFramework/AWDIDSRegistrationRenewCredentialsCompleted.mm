@interface AWDIDSRegistrationRenewCredentialsCompleted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRenewResult:(BOOL)result;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSRegistrationRenewCredentialsCompleted

- (void)dealloc
{
  [(AWDIDSRegistrationRenewCredentialsCompleted *)self setErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationRenewCredentialsCompleted;
  [(AWDIDSRegistrationRenewCredentialsCompleted *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRenewResult:(BOOL)result
{
  if (result)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSRegistrationRenewCredentialsCompleted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSRegistrationRenewCredentialsCompleted description](&v3, sel_description), -[AWDIDSRegistrationRenewCredentialsCompleted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_renewResult), @"renewResult"}];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_errorCode), @"errorCode"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    renewResult = self->_renewResult;
    PBDataWriterWriteInt32Field();
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;

    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(to + 8) = self->_renewResult;
    *(to + 36) |= 4u;
  }

  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_errorCode;
    *(to + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_renewResult;
    *(v5 + 36) |= 4u;
  }

  *(v6 + 24) = [(NSString *)self->_errorDomain copyWithZone:zone];
  if (*&self->_has)
  {
    *(v6 + 8) = self->_errorCode;
    *(v6 + 36) |= 1u;
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
    if ((has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_renewResult != *(equal + 8))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_19;
    }

    errorDomain = self->_errorDomain;
    if (errorDomain | *(equal + 3))
    {
      v5 = [(NSString *)errorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 36) & 1) == 0;
    if (has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_errorCode != *(equal + 1))
      {
        goto LABEL_19;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_renewResult;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 36);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 36);
  }

  if ((v5 & 4) != 0)
  {
    self->_renewResult = *(from + 8);
    *&self->_has |= 4u;
  }

  if (*(from + 3))
  {
    [(AWDIDSRegistrationRenewCredentialsCompleted *)self setErrorDomain:?];
  }

  if (*(from + 36))
  {
    self->_errorCode = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end