@interface AWDWiFiBlacklistingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBlacklistedDuration:(BOOL)duration;
- (void)setHasBlacklistedReason:(BOOL)reason;
- (void)setHasBlacklistedSubreason:(BOOL)subreason;
- (void)setHasNetworkFlags:(BOOL)flags;
- (void)setHasSecurityType:(BOOL)type;
- (void)setHasUnblacklistingReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiBlacklistingEvent

- (void)dealloc
{
  [(AWDWiFiBlacklistingEvent *)self setOui:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiBlacklistingEvent;
  [(AWDWiFiBlacklistingEvent *)&v3 dealloc];
}

- (void)setHasNetworkFlags:(BOOL)flags
{
  if (flags)
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasBlacklistedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasBlacklistedSubreason:(BOOL)subreason
{
  if (subreason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasBlacklistedDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUnblacklistingReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiBlacklistingEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiBlacklistingEvent description](&v3, sel_description), -[AWDWiFiBlacklistingEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  oui = self->_oui;
  if (oui)
  {
    [dictionary setObject:oui forKey:@"oui"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkFlags), @"networkFlags"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_blacklistedReason), @"blacklistedReason"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_blacklistedDuration), @"blacklistedDuration"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_11;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_blacklistedSubreason), @"blacklistedSubreason"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((has & 0x40) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_unblacklistingReason), @"unblacklistingReason"}];
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

  if (self->_oui)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    networkFlags = self->_networkFlags;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  securityType = self->_securityType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  blacklistedReason = self->_blacklistedReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    blacklistedDuration = self->_blacklistedDuration;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  blacklistedSubreason = self->_blacklistedSubreason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_17:
  unblacklistingReason = self->_unblacklistingReason;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 48) |= 1u;
  }

  if (self->_oui)
  {
    [to setOui:?];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 7) = self->_networkFlags;
    *(to + 48) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_7;
  }

  *(to + 10) = self->_securityType;
  *(to + 48) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 5) = self->_blacklistedReason;
  *(to + 48) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 6) = self->_blacklistedSubreason;
  *(to + 48) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_17:
  *(to + 4) = self->_blacklistedDuration;
  *(to + 48) |= 2u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_11:
  *(to + 11) = self->_unblacklistingReason;
  *(to + 48) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  *(v6 + 32) = [(NSData *)self->_oui copyWithZone:zone];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 28) = self->_networkFlags;
    *(v6 + 48) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_securityType;
  *(v6 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v6 + 20) = self->_blacklistedReason;
  *(v6 + 48) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    *(v6 + 16) = self->_blacklistedDuration;
    *(v6 + 48) |= 2u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v6;
    }

    goto LABEL_9;
  }

LABEL_14:
  *(v6 + 24) = self->_blacklistedSubreason;
  *(v6 + 48) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((has & 0x40) != 0)
  {
LABEL_9:
    *(v6 + 44) = self->_unblacklistingReason;
    *(v6 + 48) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 48);
    if (has)
    {
      if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_39;
      }
    }

    else if (*(equal + 48))
    {
LABEL_39:
      LOBYTE(v5) = 0;
      return v5;
    }

    oui = self->_oui;
    if (oui | *(equal + 4))
    {
      v5 = [(NSData *)oui isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 48) & 0x10) == 0 || self->_networkFlags != *(equal + 7))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 48) & 0x10) != 0)
    {
      goto LABEL_39;
    }

    if ((has & 0x20) != 0)
    {
      if ((*(equal + 48) & 0x20) == 0 || self->_securityType != *(equal + 10))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 48) & 0x20) != 0)
    {
      goto LABEL_39;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 48) & 4) == 0 || self->_blacklistedReason != *(equal + 5))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 48) & 4) != 0)
    {
      goto LABEL_39;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 48) & 8) == 0 || self->_blacklistedSubreason != *(equal + 6))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 48) & 8) != 0)
    {
      goto LABEL_39;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 48) & 2) == 0 || self->_blacklistedDuration != *(equal + 4))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 48) & 2) != 0)
    {
      goto LABEL_39;
    }

    LOBYTE(v5) = (*(equal + 48) & 0x40) == 0;
    if ((has & 0x40) != 0)
    {
      if ((*(equal + 48) & 0x40) == 0 || self->_unblacklistingReason != *(equal + 11))
      {
        goto LABEL_39;
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

  v4 = [(NSData *)self->_oui hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_networkFlags;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_securityType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_blacklistedReason;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_blacklistedSubreason;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v9 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v9 = 2654435761 * self->_blacklistedDuration;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v10 = 2654435761 * self->_unblacklistingReason;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 48))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 4))
  {
    [(AWDWiFiBlacklistingEvent *)self setOui:?];
  }

  v5 = *(from + 48);
  if ((v5 & 0x10) != 0)
  {
    self->_networkFlags = *(from + 7);
    *&self->_has |= 0x10u;
    v5 = *(from + 48);
    if ((v5 & 0x20) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(from + 48) & 0x20) == 0)
  {
    goto LABEL_7;
  }

  self->_securityType = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 48);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_blacklistedReason = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 48);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_blacklistedSubreason = *(from + 6);
  *&self->_has |= 8u;
  v5 = *(from + 48);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_blacklistedDuration = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 48) & 0x40) == 0)
  {
    return;
  }

LABEL_11:
  self->_unblacklistingReason = *(from + 11);
  *&self->_has |= 0x40u;
}

@end