@interface AWDPushTopicPolicyChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasChange:(BOOL)a3;
- (void)setHasDidCauseFilterChange:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasChange:(BOOL)a3
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

- (void)setHasDidCauseFilterChange:(BOOL)a3
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
  v3.super_class = AWDPushTopicPolicyChange;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushTopicPolicyChange description](&v3, sel_description), -[AWDPushTopicPolicyChange dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  topic = self->_topic;
  if (topic)
  {
    [v3 setObject:topic forKey:@"topic"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_change), @"change"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_didCauseFilterChange), @"didCauseFilterChange"}];
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

  if (self->_topic)
  {
    [a3 setTopic:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_change;
    *(a3 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_didCauseFilterChange;
    *(a3 + 40) |= 4u;
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
  *(v6 + 32) = [(NSString *)self->_topic copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_20;
      }
    }

    else if (*(a3 + 40))
    {
LABEL_20:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (!(guid | *(a3 + 3)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      topic = self->_topic;
      if (!(topic | *(a3 + 4)) || (v5 = [(NSString *)topic isEqual:?]) != 0)
      {
        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 40) & 2) == 0 || self->_change != *(a3 + 4))
          {
            goto LABEL_20;
          }
        }

        else if ((*(a3 + 40) & 2) != 0)
        {
          goto LABEL_20;
        }

        LOBYTE(v5) = (*(a3 + 40) & 4) == 0;
        if ((*&self->_has & 4) != 0)
        {
          if ((*(a3 + 40) & 4) == 0 || self->_didCauseFilterChange != *(a3 + 5))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDPushTopicPolicyChange *)self setGuid:?];
  }

  if (*(a3 + 4))
  {
    [(AWDPushTopicPolicyChange *)self setTopic:?];
  }

  v5 = *(a3 + 40);
  if ((v5 & 2) != 0)
  {
    self->_change = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_didCauseFilterChange = *(a3 + 5);
    *&self->_has |= 4u;
  }
}

@end