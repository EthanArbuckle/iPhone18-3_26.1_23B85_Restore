@interface TPPBPeerDynamicInfoPeer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPeerDynamicInfoPeer

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(TPPBPeerDynamicInfoPeer *)self setPeerID:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    peerID = self->_peerID;
    if (peerID | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  peerID = self->_peerID;
  if (peerID)
  {
    [to setPeerID:peerID];
  }
}

- (void)writeTo:(id)to
{
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPeerDynamicInfoPeer;
  v4 = [(TPPBPeerDynamicInfoPeer *)&v8 description];
  dictionaryRepresentation = [(TPPBPeerDynamicInfoPeer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end