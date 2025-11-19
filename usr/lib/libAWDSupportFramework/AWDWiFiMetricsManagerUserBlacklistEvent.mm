@interface AWDWiFiMetricsManagerUserBlacklistEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDstChange:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasLocState:(BOOL)a3;
- (void)setHasMoState:(BOOL)a3;
- (void)setHasSecurityType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTrigger:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasEventType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSecurityType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasTrigger:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDstChange:(BOOL)a3
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

- (void)setHasMoState:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasLocState:(BOOL)a3
{
  if (a3)
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventType), @"eventType"}];
  }

  ssid = self->_ssid;
  if (ssid)
  {
    [v3 setObject:ssid forKey:@"ssid"];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_trigger), @"trigger"}];
    *&v6 = self->_has;
  }

LABEL_10:
  if (*&v6)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_blacklistDuration), @"blacklistDuration"}];
  }

  apuuid = self->_apuuid;
  if (apuuid)
  {
    [v3 setObject:apuuid forKey:@"apuuid"];
  }

  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_moState), @"moState"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_17;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dstChange), @"dstChange"}];
  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v8 & 0x20) != 0)
  {
LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_locState), @"locState"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 72) |= 4u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(a3 + 12) = self->_eventType;
    *(a3 + 72) |= 0x10u;
  }

  if (self->_ssid)
  {
    [a3 setSsid:?];
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

  *(a3 + 15) = self->_securityType;
  *(a3 + 72) |= 0x80u;
  *&v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
LABEL_9:
    *(a3 + 4) = self->_trigger;
    *(a3 + 72) |= 8u;
    *&v6 = self->_has;
  }

LABEL_10:
  if (*&v6)
  {
    *(a3 + 1) = self->_blacklistDuration;
    *(a3 + 72) |= 1u;
  }

  if (self->_apuuid)
  {
    [a3 setApuuid:?];
  }

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    *(a3 + 2) = self->_dstChange;
    *(a3 + 72) |= 2u;
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

  *(a3 + 14) = self->_moState;
  *(a3 + 72) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_17:
    *(a3 + 13) = self->_locState;
    *(a3 + 72) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  *(v6 + 64) = [(NSString *)self->_ssid copyWithZone:a3];
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

  *(v6 + 40) = [(NSString *)self->_apuuid copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 72);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 72) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 72) & 4) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 72) & 0x10) == 0 || self->_eventType != *(a3 + 12))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 72) & 0x10) != 0)
    {
      goto LABEL_47;
    }

    ssid = self->_ssid;
    if (ssid | *(a3 + 8))
    {
      v5 = [(NSString *)ssid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 72);
    if (has < 0)
    {
      if ((*(a3 + 72) & 0x80) == 0 || self->_securityType != *(a3 + 15))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 72) & 0x80) != 0)
    {
LABEL_47:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 72) & 8) == 0 || self->_trigger != *(a3 + 4))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 72) & 8) != 0)
    {
      goto LABEL_47;
    }

    if (has)
    {
      if ((*(a3 + 72) & 1) == 0 || self->_blacklistDuration != *(a3 + 1))
      {
        goto LABEL_47;
      }
    }

    else if (*(a3 + 72))
    {
      goto LABEL_47;
    }

    apuuid = self->_apuuid;
    if (apuuid | *(a3 + 5))
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
      if ((*(a3 + 72) & 2) == 0 || self->_dstChange != *(a3 + 2))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 72) & 2) != 0)
    {
      goto LABEL_47;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(a3 + 72) & 0x40) == 0 || self->_moState != *(a3 + 14))
      {
        goto LABEL_47;
      }
    }

    else if ((*(a3 + 72) & 0x40) != 0)
    {
      goto LABEL_47;
    }

    LOBYTE(v5) = (*(a3 + 72) & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((*(a3 + 72) & 0x20) == 0 || self->_locState != *(a3 + 13))
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

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 72);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v5 = *(a3 + 72);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_eventType = *(a3 + 12);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 8))
  {
    [(AWDWiFiMetricsManagerUserBlacklistEvent *)self setSsid:?];
  }

  v6 = *(a3 + 72);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_securityType = *(a3 + 15);
  *&self->_has |= 0x80u;
  LOBYTE(v6) = *(a3 + 72);
  if ((v6 & 8) != 0)
  {
LABEL_9:
    self->_trigger = *(a3 + 4);
    *&self->_has |= 8u;
    LOBYTE(v6) = *(a3 + 72);
  }

LABEL_10:
  if (v6)
  {
    self->_blacklistDuration = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 5))
  {
    [(AWDWiFiMetricsManagerUserBlacklistEvent *)self setApuuid:?];
  }

  v7 = *(a3 + 72);
  if ((v7 & 2) != 0)
  {
    self->_dstChange = *(a3 + 2);
    *&self->_has |= 2u;
    v7 = *(a3 + 72);
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

  else if ((*(a3 + 72) & 0x40) == 0)
  {
    goto LABEL_16;
  }

  self->_moState = *(a3 + 14);
  *&self->_has |= 0x40u;
  if ((*(a3 + 72) & 0x20) != 0)
  {
LABEL_17:
    self->_locState = *(a3 + 13);
    *&self->_has |= 0x20u;
  }
}

@end