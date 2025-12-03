@interface RMSPairingChallengeResponseMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUserCancelled:(BOOL)cancelled;
- (void)writeTo:(id)to;
@end

@implementation RMSPairingChallengeResponseMessage

- (void)setHasUserCancelled:(BOOL)cancelled
{
  if (cancelled)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSPairingChallengeResponseMessage;
  v4 = [(RMSPairingChallengeResponseMessage *)&v8 description];
  dictionaryRepresentation = [(RMSPairingChallengeResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionIdentifier];
    [dictionary setObject:v4 forKey:@"sessionIdentifier"];
  }

  code = self->_code;
  if (code)
  {
    [dictionary setObject:code forKey:@"code"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_userCancelled];
    [dictionary setObject:v6 forKey:@"userCancelled"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_code)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_sessionIdentifier;
    *(toCopy + 24) |= 1u;
  }

  if (self->_code)
  {
    v5 = toCopy;
    [toCopy setCode:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 20) = self->_userCancelled;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sessionIdentifier;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_code copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_userCancelled;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_sessionIdentifier != *(equalCopy + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_12;
  }

  code = self->_code;
  if (code | *(equalCopy + 1))
  {
    if (![(NSString *)code isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) != 0)
    {
      if (self->_userCancelled)
      {
        if ((*(equalCopy + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 20))
      {
        goto LABEL_12;
      }

      v7 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_sessionIdentifier;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_code hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_userCancelled;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 24))
  {
    self->_sessionIdentifier = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(RMSPairingChallengeResponseMessage *)self setCode:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 24) & 2) != 0)
  {
    self->_userCancelled = *(fromCopy + 20);
    *&self->_has |= 2u;
  }
}

@end