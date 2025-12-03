@interface RMSConnectToServiceMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RMSConnectToServiceMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSConnectToServiceMessage;
  v4 = [(RMSConnectToServiceMessage *)&v8 description];
  dictionaryRepresentation = [(RMSConnectToServiceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  service = self->_service;
  if (service)
  {
    dictionaryRepresentation = [(RMSServiceMessage *)service dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"service"];
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID)
  {
    [dictionary setObject:pairingGUID forKey:@"pairingGUID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowPairing];
    [dictionary setObject:v7 forKey:@"allowPairing"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_pairingGUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_service)
  {
    [toCopy setService:?];
    toCopy = v5;
  }

  if (self->_pairingGUID)
  {
    [v5 setPairingGUID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_allowPairing;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(RMSServiceMessage *)self->_service copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_pairingGUID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_allowPairing;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  service = self->_service;
  if (service | *(equalCopy + 2))
  {
    if (![(RMSServiceMessage *)service isEqual:?])
    {
      goto LABEL_8;
    }
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID | *(equalCopy + 1))
  {
    if (![(NSString *)pairingGUID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_allowPairing)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  service = self->_service;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(RMSConnectToServiceMessage *)self setPairingGUID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 28))
  {
    self->_allowPairing = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end