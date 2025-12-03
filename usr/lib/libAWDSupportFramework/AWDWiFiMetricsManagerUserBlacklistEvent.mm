@interface AWDWiFiMetricsManagerUserBlacklistEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDstChange:(BOOL)change;
- (void)setHasEventType:(BOOL)type;
- (void)setHasLocState:(BOOL)state;
- (void)setHasMoState:(BOOL)state;
- (void)setHasSecurityType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTrigger:(BOOL)trigger;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerUserBlacklistEvent

- (void)dealloc
{
  [(AWDWiFiMetricsManagerUserBlacklistEvent *)self setSsid:0];
  [(AWDWiFiMetricsManagerUserBlacklistEvent *)self setApuuid:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerUserBlacklistEvent;
  [(AWDWiFiMetricsManagerUserBlacklistEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSecurityType:(BOOL)type
{
  if (type)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDstChange:(BOOL)change
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

- (void)setHasMoState:(BOOL)state
{
  if (state)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasLocState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerUserBlacklistEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerUserBlacklistEvent description](&v3, sel_description), -[AWDWiFiMetricsManagerUserBlacklistEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventType), @"eventType"}];
  }

  ssid = self->_ssid;
  if (ssid)
  {
    [dictionary setObject:ssid forKey:@"ssid"];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_trigger), @"trigger"}];
    *&v6 = self->_has;
  }

LABEL_10:
  if (*&v6)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_blacklistDuration), @"blacklistDuration"}];
  }

  apuuid = self->_apuuid;
  if (apuuid)
  {
    [dictionary setObject:apuuid forKey:@"apuuid"];
  }

  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_moState), @"moState"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_17;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dstChange), @"dstChange"}];
  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v8 & 0x20) != 0)
  {
LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_locState), @"locState"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_ssid)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x80000000) == 0)
  {
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  securityType = self->_securityType;
  PBDataWriterWriteUint32Field();
  *&v7 = self->_has;
  if ((*&v7 & 8) != 0)
  {
LABEL_9:
    trigger = self->_trigger;
    PBDataWriterWriteUint64Field();
    *&v7 = self->_has;
  }

LABEL_10:
  if (*&v7)
  {
    blacklistDuration = self->_blacklistDuration;
    PBDataWriterWriteUint64Field();
  }

  if (self->_apuuid)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    moState = self->_moState;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  dstChange = self->_dstChange;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((v10 & 0x20) == 0)
  {
    return;
  }

LABEL_20:
  locState = self->_locState;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 72) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(to + 12) = self->_eventType;
    *(to + 72) |= 0x10u;
  }

  if (self->_ssid)
  {
    [to setSsid:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(to + 15) = self->_securityType;
  *(to + 72) |= 0x80u;
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    *(to + 4) = self->_trigger;
    *(to + 72) |= 8u;
    *&v6 = self->_has;
  }

LABEL_10:
  if (*&v6)
  {
    *(to + 1) = self->_blacklistDuration;
    *(to + 72) |= 1u;
  }

  if (self->_apuuid)
  {
    [to setApuuid:?];
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    *(to + 2) = self->_dstChange;
    *(to + 72) |= 2u;
    v7 = self->_has;
    if ((v7 & 0x40) == 0)
    {
LABEL_16:
      if ((v7 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

  *(to + 14) = self->_moState;
  *(to + 72) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_17:
    *(to + 13) = self->_locState;
    *(to + 72) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 72) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 48) = self->_eventType;
    *(v5 + 72) |= 0x10u;
  }

  *(v6 + 64) = [(NSString *)self->_ssid copyWithZone:zone];
  v8 = self->_has;
  if ((*&v8 & 0x80000000) == 0)
  {
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v6 + 60) = self->_securityType;
  *(v6 + 72) |= 0x80u;
  *&v8 = self->_has;
  if ((*&v8 & 8) != 0)
  {
LABEL_7:
    *(v6 + 32) = self->_trigger;
    *(v6 + 72) |= 8u;
    *&v8 = self->_has;
  }

LABEL_8:
  if (*&v8)
  {
    *(v6 + 8) = self->_blacklistDuration;
    *(v6 + 72) |= 1u;
  }

  *(v6 + 40) = [(NSString *)self->_apuuid copyWithZone:zone];
  v9 = self->_has;
  if ((v9 & 2) == 0)
  {
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    *(v6 + 56) = self->_moState;
    *(v6 + 72) |= 0x40u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_13;
  }

  *(v6 + 16) = self->_dstChange;
  *(v6 + 72) |= 2u;
  v9 = self->_has;
  if ((v9 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v9 & 0x20) != 0)
  {
LABEL_13:
    *(v6 + 52) = self->_locState;
    *(v6 + 72) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 72);
    if ((has & 4) != 0)
    {
      if ((*(equal + 72) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 72) & 4) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 72) & 0x10) == 0 || self->_eventType != *(equal + 12))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 72) & 0x10) != 0)
    {
      goto LABEL_47;
    }

    ssid = self->_ssid;
    if (ssid | *(equal + 8))
    {
      v5 = [(NSString *)ssid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 72);
    if (has < 0)
    {
      if ((*(equal + 72) & 0x80) == 0 || self->_securityType != *(equal + 15))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 72) & 0x80) != 0)
    {
LABEL_47:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 72) & 8) == 0 || self->_trigger != *(equal + 4))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 72) & 8) != 0)
    {
      goto LABEL_47;
    }

    if (has)
    {
      if ((*(equal + 72) & 1) == 0 || self->_blacklistDuration != *(equal + 1))
      {
        goto LABEL_47;
      }
    }

    else if (*(equal + 72))
    {
      goto LABEL_47;
    }

    apuuid = self->_apuuid;
    if (apuuid | *(equal + 5))
    {
      v5 = [(NSString *)apuuid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 72) & 2) == 0 || self->_dstChange != *(equal + 2))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 72) & 2) != 0)
    {
      goto LABEL_47;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(equal + 72) & 0x40) == 0 || self->_moState != *(equal + 14))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 72) & 0x40) != 0)
    {
      goto LABEL_47;
    }

    LOBYTE(v5) = (*(equal + 72) & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((*(equal + 72) & 0x20) == 0 || self->_locState != *(equal + 13))
      {
        goto LABEL_47;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_eventType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_ssid hash];
  if ((*&self->_has & 0x80) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 2654435761u * self->_trigger;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = 2654435761 * self->_securityType;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 0;
  if (*&self->_has)
  {
LABEL_9:
    v8 = 2654435761u * self->_blacklistDuration;
    goto LABEL_13;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  v9 = [(NSString *)self->_apuuid hash];
  if ((*&self->_has & 2) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v11 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v12 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v10 = 2654435761u * self->_dstChange;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v11 = 2654435761 * self->_moState;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v12 = 2654435761 * self->_locState;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 72);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v5 = *(from + 72);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_eventType = *(from + 12);
    *&self->_has |= 0x10u;
  }

  if (*(from + 8))
  {
    [(AWDWiFiMetricsManagerUserBlacklistEvent *)self setSsid:?];
  }

  v6 = *(from + 72);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_securityType = *(from + 15);
  *&self->_has |= 0x80u;
  LOBYTE(v6) = *(from + 72);
  if ((v6 & 8) != 0)
  {
LABEL_9:
    self->_trigger = *(from + 4);
    *&self->_has |= 8u;
    LOBYTE(v6) = *(from + 72);
  }

LABEL_10:
  if (v6)
  {
    self->_blacklistDuration = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 5))
  {
    [(AWDWiFiMetricsManagerUserBlacklistEvent *)self setApuuid:?];
  }

  v7 = *(from + 72);
  if ((v7 & 2) != 0)
  {
    self->_dstChange = *(from + 2);
    *&self->_has |= 2u;
    v7 = *(from + 72);
    if ((v7 & 0x40) == 0)
    {
LABEL_16:
      if ((v7 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((*(from + 72) & 0x40) == 0)
  {
    goto LABEL_16;
  }

  self->_moState = *(from + 14);
  *&self->_has |= 0x40u;
  if ((*(from + 72) & 0x20) != 0)
  {
LABEL_17:
    self->_locState = *(from + 13);
    *&self->_has |= 0x20u;
  }
}

@end