@interface TPPBSecureElementIdentity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBSecureElementIdentity

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(TPPBSecureElementIdentity *)self setPeerIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(TPPBSecureElementIdentity *)self setPeerData:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerIdentifier = self->_peerIdentifier, !(peerIdentifier | equalCopy[2])) || -[NSData isEqual:](peerIdentifier, "isEqual:")))
  {
    peerData = self->_peerData;
    if (peerData | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_peerIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_peerData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerIdentifier)
  {
    [toCopy setPeerIdentifier:?];
    toCopy = v5;
  }

  if (self->_peerData)
  {
    [v5 setPeerData:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_peerData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  peerIdentifier = self->_peerIdentifier;
  if (peerIdentifier)
  {
    [dictionary setObject:peerIdentifier forKey:@"peerIdentifier"];
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
  dictionaryRepresentation = [(TPPBSecureElementIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end