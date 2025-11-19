@interface RMSPairingChallengeRequestMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSPairingChallengeRequestMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSPairingChallengeRequestMessage;
  v4 = [(RMSPairingChallengeRequestMessage *)&v8 description];
  v5 = [(RMSPairingChallengeRequestMessage *)self dictionaryRepresentation];
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

  pairingCredentials = self->_pairingCredentials;
  if (pairingCredentials)
  {
    v6 = [(RMSPairingCredentialsMessage *)pairingCredentials dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"pairingCredentials"];
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

  if (self->_pairingCredentials)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_sessionIdentifier;
    *(v4 + 20) |= 1u;
  }

  if (self->_pairingCredentials)
  {
    v5 = v4;
    [v4 setPairingCredentials:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sessionIdentifier;
    *(v5 + 20) |= 1u;
  }

  v7 = [(RMSPairingCredentialsMessage *)self->_pairingCredentials copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_sessionIdentifier != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  pairingCredentials = self->_pairingCredentials;
  if (pairingCredentials | *(v4 + 1))
  {
    v6 = [(RMSPairingCredentialsMessage *)pairingCredentials isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sessionIdentifier;
  }

  else
  {
    v2 = 0;
  }

  return [(RMSPairingCredentialsMessage *)self->_pairingCredentials hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_sessionIdentifier = v4[4];
    *&self->_has |= 1u;
  }

  pairingCredentials = self->_pairingCredentials;
  v7 = *(v5 + 1);
  if (pairingCredentials)
  {
    if (v7)
    {
      [(RMSPairingCredentialsMessage *)pairingCredentials mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(RMSPairingChallengeRequestMessage *)self setPairingCredentials:?];
  }

  MEMORY[0x2821F96F8]();
}

@end