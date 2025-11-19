@interface AWDPushFilterChanged
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasChangedReason:(BOOL)a3;
- (void)setHasChangedTopicsCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPushFilterChanged

- (void)dealloc
{
  [(AWDPushFilterChanged *)self setGuid:0];
  [(AWDPushFilterChanged *)self setTopic:0];
  v3.receiver = self;
  v3.super_class = AWDPushFilterChanged;
  [(AWDPushFilterChanged *)&v3 dealloc];
}

- (void)setHasChangedReason:(BOOL)a3
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

- (void)setHasChangedTopicsCount:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPushFilterChanged;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushFilterChanged description](&v3, sel_description), -[AWDPushFilterChanged dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_changedReason), @"changedReason"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_changedTopicsCount), @"changedTopicsCount"}];
  }

  topic = self->_topic;
  if (topic)
  {
    [v3 setObject:topic forKey:@"topic"];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    changedReason = self->_changedReason;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    changedTopicsCount = self->_changedTopicsCount;
    PBDataWriterWriteUint32Field();
  }

  if (self->_topic)
  {

    PBDataWriterWriteStringField();
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_changedReason;
    *(a3 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_changedTopicsCount;
    *(a3 + 40) |= 4u;
  }

  if (self->_topic)
  {

    [a3 setTopic:?];
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

  *(v6 + 24) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_changedReason;
    *(v6 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_changedTopicsCount;
    *(v6 + 40) |= 4u;
  }

  *(v6 + 32) = [(NSString *)self->_topic copyWithZone:a3];
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
    if (guid | *(a3 + 3))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 40);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_changedReason != *(a3 + 4))
      {
        goto LABEL_22;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
      goto LABEL_22;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_changedTopicsCount != *(a3 + 5))
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

      LOBYTE(v5) = [(NSString *)topic isEqual:?];
    }

    else
    {
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
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_changedReason;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_topic hash];
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_changedTopicsCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_topic hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDPushFilterChanged *)self setGuid:?];
  }

  v5 = *(a3 + 40);
  if ((v5 & 2) != 0)
  {
    self->_changedReason = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_changedTopicsCount = *(a3 + 5);
    *&self->_has |= 4u;
  }

  if (*(a3 + 4))
  {

    [(AWDPushFilterChanged *)self setTopic:?];
  }
}

@end