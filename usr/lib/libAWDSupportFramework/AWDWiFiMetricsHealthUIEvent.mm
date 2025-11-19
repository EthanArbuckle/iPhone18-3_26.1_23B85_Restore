@interface AWDWiFiMetricsHealthUIEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsHealthUIEvent

- (void)dealloc
{
  [(AWDWiFiMetricsHealthUIEvent *)self setHashCode:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsHealthUIEvent;
  [(AWDWiFiMetricsHealthUIEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasEventType:(BOOL)a3
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
  v3.super_class = AWDWiFiMetricsHealthUIEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsHealthUIEvent description](&v3, sel_description), -[AWDWiFiMetricsHealthUIEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventType), @"eventType"}];
  if (*&self->_has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_healthIssues), @"healthIssues"}];
  }

LABEL_5:
  hashCode = self->_hashCode;
  if (hashCode)
  {
    [v3 setObject:hashCode forKey:@"hashCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 40) |= 2u;
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

  *(a3 + 6) = self->_eventType;
  *(a3 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(a3 + 1) = self->_healthIssues;
    *(a3 + 40) |= 1u;
  }

LABEL_5:
  hashCode = self->_hashCode;
  if (hashCode)
  {
    [a3 setHashCode:hashCode];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6[4] = [(NSString *)self->_hashCode copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_eventType != *(a3 + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
      goto LABEL_19;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_healthIssues != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_19;
    }

    hashCode = self->_hashCode;
    if (hashCode | *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 40);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v3 = *(a3 + 40);
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

  else if ((*(a3 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_eventType = *(a3 + 6);
  *&self->_has |= 4u;
  if (*(a3 + 40))
  {
LABEL_4:
    self->_healthIssues = *(a3 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(a3 + 4))
  {
    [(AWDWiFiMetricsHealthUIEvent *)self setHashCode:?];
  }
}

@end