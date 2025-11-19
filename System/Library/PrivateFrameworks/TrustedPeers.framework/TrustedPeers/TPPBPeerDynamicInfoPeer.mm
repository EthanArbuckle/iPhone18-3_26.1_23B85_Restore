@interface TPPBPeerDynamicInfoPeer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPeerDynamicInfoPeer

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(TPPBPeerDynamicInfoPeer *)self setPeerID:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    peerID = self->_peerID;
    if (peerID | v4[1])
    {
      v6 = [(NSString *)peerID isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  peerID = self->_peerID;
  if (peerID)
  {
    [a3 setPeerID:peerID];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPeerDynamicInfoPeer;
  v4 = [(TPPBPeerDynamicInfoPeer *)&v8 description];
  v5 = [(TPPBPeerDynamicInfoPeer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end