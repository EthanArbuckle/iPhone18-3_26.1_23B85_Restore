@interface TPPBDispositionEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBDispositionEntry

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(TPPBDispositionEntry *)self setPeerID:?];
    fromCopy = v7;
  }

  disposition = self->_disposition;
  v6 = fromCopy[1];
  if (disposition)
  {
    if (v6)
    {
      [(TPPBDisposition *)disposition mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(TPPBDispositionEntry *)self setDisposition:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | equalCopy[2])) || -[NSString isEqual:](peerID, "isEqual:")))
  {
    disposition = self->_disposition;
    if (disposition | equalCopy[1])
    {
      v7 = [(TPPBDisposition *)disposition isEqual:?];
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
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(TPPBDisposition *)self->_disposition copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerID)
  {
    [toCopy setPeerID:?];
    toCopy = v5;
  }

  if (self->_disposition)
  {
    [v5 setDisposition:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_disposition)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  peerID = self->_peerID;
  if (peerID)
  {
    [dictionary setObject:peerID forKey:@"peerID"];
  }

  disposition = self->_disposition;
  if (disposition)
  {
    dictionaryRepresentation = [(TPPBDisposition *)disposition dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"disposition"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDispositionEntry;
  v4 = [(TPPBDispositionEntry *)&v8 description];
  dictionaryRepresentation = [(TPPBDispositionEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end