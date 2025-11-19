@interface TPPBSecureElementIdentity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBSecureElementIdentity

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(TPPBSecureElementIdentity *)self setPeerIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(TPPBSecureElementIdentity *)self setPeerData:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerIdentifier = self->_peerIdentifier, !(peerIdentifier | v4[2])) || -[NSData isEqual:](peerIdentifier, "isEqual:")))
  {
    peerData = self->_peerData;
    if (peerData | v4[1])
    {
      v7 = [(NSData *)peerData isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_peerIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_peerData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerIdentifier)
  {
    [v4 setPeerIdentifier:?];
    v4 = v5;
  }

  if (self->_peerData)
  {
    [v5 setPeerData:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_peerData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  peerIdentifier = self->_peerIdentifier;
  if (peerIdentifier)
  {
    [v3 setObject:peerIdentifier forKey:@"peerIdentifier"];
  }

  peerData = self->_peerData;
  if (peerData)
  {
    [v4 setObject:peerData forKey:@"peerData"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBSecureElementIdentity;
  v4 = [(TPPBSecureElementIdentity *)&v8 description];
  v5 = [(TPPBSecureElementIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end