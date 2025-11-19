@interface TPPBDispositionEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBDispositionEntry

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(TPPBDispositionEntry *)self setPeerID:?];
    v4 = v7;
  }

  disposition = self->_disposition;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | v4[2])) || -[NSString isEqual:](peerID, "isEqual:")))
  {
    disposition = self->_disposition;
    if (disposition | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(TPPBDisposition *)self->_disposition copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerID)
  {
    [v4 setPeerID:?];
    v4 = v5;
  }

  if (self->_disposition)
  {
    [v5 setDisposition:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_disposition)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  peerID = self->_peerID;
  if (peerID)
  {
    [v3 setObject:peerID forKey:@"peerID"];
  }

  disposition = self->_disposition;
  if (disposition)
  {
    v7 = [(TPPBDisposition *)disposition dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"disposition"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDispositionEntry;
  v4 = [(TPPBDispositionEntry *)&v8 description];
  v5 = [(TPPBDispositionEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end