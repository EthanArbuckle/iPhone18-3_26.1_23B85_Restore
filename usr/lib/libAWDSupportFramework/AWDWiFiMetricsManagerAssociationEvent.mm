@interface AWDWiFiMetricsManagerAssociationEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasEventType:(BOOL)type;
- (void)writeTo:(id)to;
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

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsEventType:(id)type
{
  if ([type isEqualToString:@"APPLE80211_JOINASSOC_AUTH_EVENT"])
  {
    return 0;
  }

  if ([type isEqualToString:@"APPLE80211_JOINASSOC_ASSOC_START_EVENT"])
  {
    return 1;
  }

  if ([type isEqualToString:@"APPLE80211_JOINASSOC_ASSOC_DONE_EVENT"])
  {
    return 2;
  }

  if ([type isEqualToString:@"APPLE80211_JOINASSOC_LINK_STATUS_EVENT"])
  {
    return 3;
  }

  if ([type isEqualToString:@"APPLE80211_JOINASSOC_LINK_CHANGE_EVENT"])
  {
    return 4;
  }

  if ([type isEqualToString:@"APPLE80211_JOINASSOC_SSID_CHANGE_EVENT"])
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  eventInfo = self->_eventInfo;
  if (eventInfo)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerEvent dictionaryRepresentation](eventInfo forKey:{"dictionaryRepresentation"), @"eventInfo"}];
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

    [dictionary setObject:v6 forKey:@"eventType"];
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1u;
  }

  if (self->_eventInfo)
  {
    [to setEventInfo:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 6) = self->_eventType;
    *(to + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  *(v6 + 16) = [(AWDWiFiMetricsManagerEvent *)self->_eventInfo copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_eventType;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 28);
    if (has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    eventInfo = self->_eventInfo;
    if (eventInfo | *(equal + 2))
    {
      v5 = [(AWDWiFiMetricsManagerEvent *)eventInfo isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_eventType != *(equal + 6))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 28))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  eventInfo = self->_eventInfo;
  v6 = *(from + 2);
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

  if ((*(from + 28) & 2) != 0)
  {
    self->_eventType = *(from + 6);
    *&self->_has |= 2u;
  }
}

@end