@interface RMSPairingSessionDidPairMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSPairingSessionDidPairMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSPairingSessionDidPairMessage;
  v4 = [(RMSPairingSessionDidPairMessage *)&v8 description];
  v5 = [(RMSPairingSessionDidPairMessage *)self dictionaryRepresentation];
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

  serviceNetworkName = self->_serviceNetworkName;
  if (serviceNetworkName)
  {
    [v3 setObject:serviceNetworkName forKey:@"serviceNetworkName"];
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID)
  {
    [v3 setObject:pairingGUID forKey:@"pairingGUID"];
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

  if (self->_serviceNetworkName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_pairingGUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_sessionIdentifier;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_serviceNetworkName)
  {
    [v4 setServiceNetworkName:?];
    v4 = v5;
  }

  if (self->_pairingGUID)
  {
    [v5 setPairingGUID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_sessionIdentifier;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_serviceNetworkName copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_pairingGUID copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_sessionIdentifier != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  serviceNetworkName = self->_serviceNetworkName;
  if (serviceNetworkName | *(v4 + 2) && ![(NSString *)serviceNetworkName isEqual:?])
  {
    goto LABEL_11;
  }

  pairingGUID = self->_pairingGUID;
  if (pairingGUID | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_sessionIdentifier = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(RMSPairingSessionDidPairMessage *)self setServiceNetworkName:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(RMSPairingSessionDidPairMessage *)self setPairingGUID:?];
    v4 = v5;
  }
}

@end