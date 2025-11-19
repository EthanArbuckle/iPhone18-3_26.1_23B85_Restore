@interface RMSConnectToServiceMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSConnectToServiceMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSConnectToServiceMessage;
  v4 = [(RMSConnectToServiceMessage *)&v8 description];
  v5 = [(RMSConnectToServiceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  service = self->_service;
  if (service)
  {
    v5 = [(RMSServiceMessage *)service dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"service"];
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID)
  {
    [v3 setObject:pairingGUID forKey:@"pairingGUID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowPairing];
    [v3 setObject:v7 forKey:@"allowPairing"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_pairingGUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_service)
  {
    [v4 setService:?];
    v4 = v5;
  }

  if (self->_pairingGUID)
  {
    [v5 setPairingGUID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_allowPairing;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(RMSServiceMessage *)self->_service copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_pairingGUID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_allowPairing;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  service = self->_service;
  if (service | *(v4 + 2))
  {
    if (![(RMSServiceMessage *)service isEqual:?])
    {
      goto LABEL_8;
    }
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID | *(v4 + 1))
  {
    if (![(NSString *)pairingGUID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_allowPairing)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(RMSServiceMessage *)self->_service hash];
  v4 = [(NSString *)self->_pairingGUID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_allowPairing;
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
  service = self->_service;
  v6 = *(v4 + 2);
  v7 = v4;
  if (service)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(RMSServiceMessage *)service mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(RMSConnectToServiceMessage *)self setService:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 1))
  {
    [(RMSConnectToServiceMessage *)self setPairingGUID:?];
    v4 = v7;
  }

  if (*(v4 + 28))
  {
    self->_allowPairing = *(v4 + 24);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end