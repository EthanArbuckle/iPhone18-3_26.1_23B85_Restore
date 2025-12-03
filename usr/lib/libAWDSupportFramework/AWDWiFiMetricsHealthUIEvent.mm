@interface AWDWiFiMetricsHealthUIEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasEventType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsHealthUIEvent

- (void)dealloc
{
  [(AWDWiFiMetricsHealthUIEvent *)self setHashCode:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsHealthUIEvent;
  [(AWDWiFiMetricsHealthUIEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasEventType:(BOOL)type
{
  if (type)
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
  v3.super_class = AWDWiFiMetricsHealthUIEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsHealthUIEvent description](&v3, sel_description), -[AWDWiFiMetricsHealthUIEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventType), @"eventType"}];
  if (*&self->_has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_healthIssues), @"healthIssues"}];
  }

LABEL_5:
  hashCode = self->_hashCode;
  if (hashCode)
  {
    [dictionary setObject:hashCode forKey:@"hashCode"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_4:
    healthIssues = self->_healthIssues;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_hashCode)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_eventType;
  *(to + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(to + 1) = self->_healthIssues;
    *(to + 40) |= 1u;
  }

LABEL_5:
  hashCode = self->_hashCode;
  if (hashCode)
  {
    [to setHashCode:hashCode];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_eventType;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_timestamp;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_healthIssues;
    *(v5 + 40) |= 1u;
  }

LABEL_5:

  v6[4] = [(NSString *)self->_hashCode copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_eventType != *(equal + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_19;
    }

    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_healthIssues != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_19;
    }

    hashCode = self->_hashCode;
    if (hashCode | *(equal + 4))
    {

      LOBYTE(v5) = [(NSString *)hashCode isEqual:?];
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
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_hashCode hash:v3];
  }

  v6 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_eventType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761u * self->_healthIssues;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_hashCode hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 40);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 40);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_eventType = *(from + 6);
  *&self->_has |= 4u;
  if (*(from + 40))
  {
LABEL_4:
    self->_healthIssues = *(from + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(from + 4))
  {
    [(AWDWiFiMetricsHealthUIEvent *)self setHashCode:?];
  }
}

@end