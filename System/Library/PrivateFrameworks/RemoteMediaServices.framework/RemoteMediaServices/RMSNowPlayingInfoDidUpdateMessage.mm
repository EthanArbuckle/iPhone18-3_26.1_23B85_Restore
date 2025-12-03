@interface RMSNowPlayingInfoDidUpdateMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RMSNowPlayingInfoDidUpdateMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSNowPlayingInfoDidUpdateMessage;
  v4 = [(RMSNowPlayingInfoDidUpdateMessage *)&v8 description];
  dictionaryRepresentation = [(RMSNowPlayingInfoDidUpdateMessage *)self dictionaryRepresentation];
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

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo)
  {
    dictionaryRepresentation = [(RMSNowPlayingInfoMessage *)nowPlayingInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"nowPlayingInfo"];
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

  if (self->_nowPlayingInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_sessionIdentifier;
    *(toCopy + 20) |= 1u;
  }

  if (self->_nowPlayingInfo)
  {
    v5 = toCopy;
    [toCopy setNowPlayingInfo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_sessionIdentifier;
    *(v5 + 20) |= 1u;
  }

  v7 = [(RMSNowPlayingInfoMessage *)self->_nowPlayingInfo copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_sessionIdentifier != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  if (nowPlayingInfo | *(equalCopy + 1))
  {
    v6 = [(RMSNowPlayingInfoMessage *)nowPlayingInfo isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sessionIdentifier;
  }

  else
  {
    v2 = 0;
  }

  return [(RMSNowPlayingInfoMessage *)self->_nowPlayingInfo hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_sessionIdentifier = fromCopy[4];
    *&self->_has |= 1u;
  }

  nowPlayingInfo = self->_nowPlayingInfo;
  v7 = *(v5 + 1);
  if (nowPlayingInfo)
  {
    if (v7)
    {
      [(RMSNowPlayingInfoMessage *)nowPlayingInfo mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(RMSNowPlayingInfoDidUpdateMessage *)self setNowPlayingInfo:?];
  }

  MEMORY[0x2821F96F8]();
}

@end