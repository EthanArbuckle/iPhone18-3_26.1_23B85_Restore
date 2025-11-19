@interface AWDPushProxyManagerSend
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsNearby:(BOOL)a3;
- (void)setHasMessageCommand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPushProxyManagerSend

- (void)dealloc
{
  [(AWDPushProxyManagerSend *)self setGuid:0];
  [(AWDPushProxyManagerSend *)self setTopic:0];
  v3.receiver = self;
  v3.super_class = AWDPushProxyManagerSend;
  [(AWDPushProxyManagerSend *)&v3 dealloc];
}

- (void)setHasMessageCommand:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsNearby:(BOOL)a3
{
  if (a3)
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
  v3.super_class = AWDPushProxyManagerSend;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushProxyManagerSend description](&v3, sel_description), -[AWDPushProxyManagerSend dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageCommand), @"messageCommand"}];
  }

  topic = self->_topic;
  if (topic)
  {
    [v3 setObject:topic forKey:@"topic"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNearby), @"isNearby"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 7) = self->_messageCommand;
    *(a3 + 40) |= 4u;
  }

  if (self->_topic)
  {
    [a3 setTopic:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 6) = self->_isNearby;
    *(a3 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_guid copyWithZone:a3];
  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 28) = self->_messageCommand;
    *(v6 + 40) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_topic copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_isNearby;
    *(v6 + 40) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if (has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(a3 + 2))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 40);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_messageCommand != *(a3 + 7))
      {
        goto LABEL_22;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
      goto LABEL_22;
    }

    topic = self->_topic;
    if (topic | *(a3 + 4))
    {
      v5 = [(NSString *)topic isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 40) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_isNearby != *(a3 + 6))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDPushProxyManagerSend *)self setGuid:?];
  }

  if ((*(a3 + 40) & 4) != 0)
  {
    self->_messageCommand = *(a3 + 7);
    *&self->_has |= 4u;
  }

  if (*(a3 + 4))
  {
    [(AWDPushProxyManagerSend *)self setTopic:?];
  }

  if ((*(a3 + 40) & 2) != 0)
  {
    self->_isNearby = *(a3 + 6);
    *&self->_has |= 2u;
  }
}

@end