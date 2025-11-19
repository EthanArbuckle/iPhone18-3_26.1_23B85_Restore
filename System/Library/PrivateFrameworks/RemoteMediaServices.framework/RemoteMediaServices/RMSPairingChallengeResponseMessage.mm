@interface RMSPairingChallengeResponseMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUserCancelled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSPairingChallengeResponseMessage

- (void)setHasUserCancelled:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSPairingChallengeResponseMessage;
  v4 = [(RMSPairingChallengeResponseMessage *)&v8 description];
  v5 = [(RMSPairingChallengeResponseMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_sessionIdentifier];
    [v3 setObject:v4 forKey:@"sessionIdentifier"];
  }

  code = self->_code;
  if (code)
  {
    [v3 setObject:code forKey:@"code"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_userCancelled];
    [v3 setObject:v6 forKey:@"userCancelled"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_code)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_sessionIdentifier;
    *(v4 + 24) |= 1u;
  }

  if (self->_code)
  {
    v5 = v4;
    [v4 setCode:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 20) = self->_userCancelled;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sessionIdentifier;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_code copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_userCancelled;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_sessionIdentifier != *(v4 + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  code = self->_code;
  if (code | *(v4 + 1))
  {
    if (![(NSString *)code isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v7 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) != 0)
    {
      if (self->_userCancelled)
      {
        if ((*(v4 + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 20))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 24))
  {
    self->_sessionIdentifier = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(RMSPairingChallengeResponseMessage *)self setCode:?];
    v4 = v5;
  }

  if ((*(v4 + 24) & 2) != 0)
  {
    self->_userCancelled = *(v4 + 20);
    *&self->_has |= 2u;
  }
}

@end