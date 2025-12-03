@interface AWDPushTopicPolicyChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasChange:(BOOL)change;
- (void)setHasDidCauseFilterChange:(BOOL)change;
- (void)writeTo:(id)to;
@end

@implementation AWDPushTopicPolicyChange

- (void)dealloc
{
  [(AWDPushTopicPolicyChange *)self setGuid:0];
  [(AWDPushTopicPolicyChange *)self setTopic:0];
  v3.receiver = self;
  v3.super_class = AWDPushTopicPolicyChange;
  [(AWDPushTopicPolicyChange *)&v3 dealloc];
}

- (void)setHasChange:(BOOL)change
{
  if (change)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDidCauseFilterChange:(BOOL)change
{
  if (change)
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
  v3.super_class = AWDPushTopicPolicyChange;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushTopicPolicyChange description](&v3, sel_description), -[AWDPushTopicPolicyChange dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  topic = self->_topic;
  if (topic)
  {
    [dictionary setObject:topic forKey:@"topic"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_change), @"change"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_didCauseFilterChange), @"didCauseFilterChange"}];
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

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    change = self->_change;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    didCauseFilterChange = self->_didCauseFilterChange;

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

  if (self->_topic)
  {
    [to setTopic:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_change;
    *(to + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(to + 5) = self->_didCauseFilterChange;
    *(to + 40) |= 4u;
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
  *(v6 + 32) = [(NSString *)self->_topic copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_change;
    *(v6 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_didCauseFilterChange;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_20;
      }
    }

    else if (*(equal + 40))
    {
LABEL_20:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (!(guid | *(equal + 3)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      topic = self->_topic;
      if (!(topic | *(equal + 4)) || (v5 = [(NSString *)topic isEqual:?]) != 0)
      {
        if ((*&self->_has & 2) != 0)
        {
          if ((*(equal + 40) & 2) == 0 || self->_change != *(equal + 4))
          {
            goto LABEL_20;
          }
        }

        else if ((*(equal + 40) & 2) != 0)
        {
          goto LABEL_20;
        }

        LOBYTE(v5) = (*(equal + 40) & 4) == 0;
        if ((*&self->_has & 4) != 0)
        {
          if ((*(equal + 40) & 4) == 0 || self->_didCauseFilterChange != *(equal + 5))
          {
            goto LABEL_20;
          }

          LOBYTE(v5) = 1;
        }
      }
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
  v5 = [(NSString *)self->_topic hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_change;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761 * self->_didCauseFilterChange;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
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
    [(AWDPushTopicPolicyChange *)self setGuid:?];
  }

  if (*(from + 4))
  {
    [(AWDPushTopicPolicyChange *)self setTopic:?];
  }

  v5 = *(from + 40);
  if ((v5 & 2) != 0)
  {
    self->_change = *(from + 4);
    *&self->_has |= 2u;
    v5 = *(from + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_didCauseFilterChange = *(from + 5);
    *&self->_has |= 4u;
  }
}

@end