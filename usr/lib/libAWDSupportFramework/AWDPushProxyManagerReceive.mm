@interface AWDPushProxyManagerReceive
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsNearby:(BOOL)nearby;
- (void)setHasMessageCommand:(BOOL)command;
- (void)writeTo:(id)to;
@end

@implementation AWDPushProxyManagerReceive

- (void)dealloc
{
  [(AWDPushProxyManagerReceive *)self setGuid:0];
  [(AWDPushProxyManagerReceive *)self setTopic:0];
  v3.receiver = self;
  v3.super_class = AWDPushProxyManagerReceive;
  [(AWDPushProxyManagerReceive *)&v3 dealloc];
}

- (void)setHasMessageCommand:(BOOL)command
{
  if (command)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsNearby:(BOOL)nearby
{
  if (nearby)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPushProxyManagerReceive;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushProxyManagerReceive description](&v3, sel_description), -[AWDPushProxyManagerReceive dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageCommand), @"messageCommand"}];
  }

  topic = self->_topic;
  if (topic)
  {
    [dictionary setObject:topic forKey:@"topic"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNearby), @"isNearby"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    messageCommand = self->_messageCommand;
    PBDataWriterWriteUint32Field();
  }

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    isNearby = self->_isNearby;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if (self->_guid)
  {
    [to setGuid:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(to + 7) = self->_messageCommand;
    *(to + 40) |= 4u;
  }

  if (self->_topic)
  {
    [to setTopic:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 6) = self->_isNearby;
    *(to + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_guid copyWithZone:zone];
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 28) = self->_messageCommand;
    *(v6 + 40) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_topic copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_isNearby;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 40);
    if (has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(equal + 40))
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(equal + 2))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 40);
    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_messageCommand != *(equal + 7))
      {
        goto LABEL_22;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_22;
    }

    topic = self->_topic;
    if (topic | *(equal + 4))
    {
      v5 = [(NSString *)topic isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 40) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_isNearby != *(equal + 6))
      {
        goto LABEL_22;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_messageCommand;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_topic hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_isNearby;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDPushProxyManagerReceive *)self setGuid:?];
  }

  if ((*(from + 40) & 4) != 0)
  {
    self->_messageCommand = *(from + 7);
    *&self->_has |= 4u;
  }

  if (*(from + 4))
  {
    [(AWDPushProxyManagerReceive *)self setTopic:?];
  }

  if ((*(from + 40) & 2) != 0)
  {
    self->_isNearby = *(from + 6);
    *&self->_has |= 2u;
  }
}

@end