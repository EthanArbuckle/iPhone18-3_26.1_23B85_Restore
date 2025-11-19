@interface AWDWiFiMetricsManagerAssociationEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)a3;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerAssociationEvent

- (void)dealloc
{
  [(AWDWiFiMetricsManagerAssociationEvent *)self setEventInfo:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAssociationEvent;
  [(AWDWiFiMetricsManagerAssociationEvent *)&v3 dealloc];
}

- (int)eventType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)a3
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

- (int)StringAsEventType:(id)a3
{
  if ([a3 isEqualToString:@"APPLE80211_JOINASSOC_AUTH_EVENT"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"APPLE80211_JOINASSOC_ASSOC_START_EVENT"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"APPLE80211_JOINASSOC_ASSOC_DONE_EVENT"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"APPLE80211_JOINASSOC_LINK_STATUS_EVENT"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"APPLE80211_JOINASSOC_LINK_CHANGE_EVENT"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"APPLE80211_JOINASSOC_SSID_CHANGE_EVENT"])
  {
    return 5;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAssociationEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerAssociationEvent description](&v3, sel_description), -[AWDWiFiMetricsManagerAssociationEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  eventInfo = self->_eventInfo;
  if (eventInfo)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerEvent dictionaryRepresentation](eventInfo forKey:{"dictionaryRepresentation"), @"eventInfo"}];
  }

  if ((*&self->_has & 2) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 6)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v6 = off_29EE33280[eventType];
    }

    [v3 setObject:v6 forKey:@"eventType"];
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

  if (self->_eventInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    eventType = self->_eventType;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
  }

  if (self->_eventInfo)
  {
    [a3 setEventInfo:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 6) = self->_eventType;
    *(a3 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  *(v6 + 16) = [(AWDWiFiMetricsManagerEvent *)self->_eventInfo copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_eventType;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 28);
    if (has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    eventInfo = self->_eventInfo;
    if (eventInfo | *(a3 + 2))
    {
      v5 = [(AWDWiFiMetricsManagerEvent *)eventInfo isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_eventType != *(a3 + 6))
      {
        goto LABEL_14;
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

  v4 = [(AWDWiFiMetricsManagerEvent *)self->_eventInfo hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_eventType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 28))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  eventInfo = self->_eventInfo;
  v6 = *(a3 + 2);
  if (eventInfo)
  {
    if (v6)
    {
      [(AWDWiFiMetricsManagerEvent *)eventInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiMetricsManagerAssociationEvent *)self setEventInfo:?];
  }

  if ((*(a3 + 28) & 2) != 0)
  {
    self->_eventType = *(a3 + 6);
    *&self->_has |= 2u;
  }
}

@end