@interface RMSPairingSessionDidPairMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RMSPairingSessionDidPairMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSPairingSessionDidPairMessage;
  v4 = [(RMSPairingSessionDidPairMessage *)&v8 description];
  dictionaryRepresentation = [(RMSPairingSessionDidPairMessage *)self dictionaryRepresentation];
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

  serviceNetworkName = self->_serviceNetworkName;
  if (serviceNetworkName)
  {
    [dictionary setObject:serviceNetworkName forKey:@"serviceNetworkName"];
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID)
  {
    [dictionary setObject:pairingGUID forKey:@"pairingGUID"];
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

  if (self->_serviceNetworkName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_pairingGUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_sessionIdentifier;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_serviceNetworkName)
  {
    [toCopy setServiceNetworkName:?];
    toCopy = v5;
  }

  if (self->_pairingGUID)
  {
    [v5 setPairingGUID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_sessionIdentifier;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_serviceNetworkName copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_pairingGUID copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_sessionIdentifier != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  serviceNetworkName = self->_serviceNetworkName;
  if (serviceNetworkName | *(equalCopy + 2) && ![(NSString *)serviceNetworkName isEqual:?])
  {
    goto LABEL_11;
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID | *(equalCopy + 1))
  {
    v7 = [(NSString *)pairingGUID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

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

  v4 = [(NSString *)self->_serviceNetworkName hash]^ v3;
  return v4 ^ [(NSString *)self->_pairingGUID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_sessionIdentifier = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(RMSPairingSessionDidPairMessage *)self setServiceNetworkName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(RMSPairingSessionDidPairMessage *)self setPairingGUID:?];
    fromCopy = v5;
  }
}

@end