@interface AWDPushFilterChanged
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasChangedReason:(BOOL)reason;
- (void)setHasChangedTopicsCount:(BOOL)count;
- (void)writeTo:(id)to;
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

- (void)setHasChangedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasChangedTopicsCount:(BOOL)count
{
  if (count)
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_changedReason), @"changedReason"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_changedTopicsCount), @"changedTopicsCount"}];
  }

  topic = self->_topic;
  if (topic)
  {
    [dictionary setObject:topic forKey:@"topic"];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_changedReason;
    *(to + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(to + 5) = self->_changedTopicsCount;
    *(to + 40) |= 4u;
  }

  if (self->_topic)
  {

    [to setTopic:?];
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

  *(v6 + 24) = [(NSString *)self->_guid copyWithZone:zone];
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

  *(v6 + 32) = [(NSString *)self->_topic copyWithZone:zone];
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
    if (guid | *(equal + 3))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 40);
    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_changedReason != *(equal + 4))
      {
        goto LABEL_22;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_22;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_changedTopicsCount != *(equal + 5))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDPushFilterChanged *)self setGuid:?];
  }

  v5 = *(from + 40);
  if ((v5 & 2) != 0)
  {
    self->_changedReason = *(from + 4);
    *&self->_has |= 2u;
    v5 = *(from + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_changedTopicsCount = *(from + 5);
    *&self->_has |= 4u;
  }

  if (*(from + 4))
  {

    [(AWDPushFilterChanged *)self setTopic:?];
  }
}

@end