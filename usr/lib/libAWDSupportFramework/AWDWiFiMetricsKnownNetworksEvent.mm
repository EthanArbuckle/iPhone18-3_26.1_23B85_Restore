@interface AWDWiFiMetricsKnownNetworksEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasColocatedState:(BOOL)state;
- (void)setHasEventType:(BOOL)type;
- (void)setHasNetworkScore:(BOOL)score;
- (void)setHasNetworkSecurity:(BOOL)security;
- (void)setHasNetworkTypeBitMap:(BOOL)map;
- (void)setHasSwitchToCount:(BOOL)count;
- (void)setHasSwitchedAwayFromCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsKnownNetworksEvent

- (void)dealloc
{
  [(AWDWiFiMetricsKnownNetworksEvent *)self setOui:0];
  [(AWDWiFiMetricsKnownNetworksEvent *)self setBundleID:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsKnownNetworksEvent;
  [(AWDWiFiMetricsKnownNetworksEvent *)&v3 dealloc];
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

- (void)setHasNetworkTypeBitMap:(BOOL)map
{
  if (map)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNetworkSecurity:(BOOL)security
{
  if (security)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasColocatedState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSwitchedAwayFromCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasSwitchToCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNetworkScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsKnownNetworksEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsKnownNetworksEvent description](&v3, sel_description), -[AWDWiFiMetricsKnownNetworksEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventType), @"eventType"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkTypeBitMap), @"networkTypeBitMap"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkSecurity), @"networkSecurity"}];
  }

LABEL_6:
  oui = self->_oui;
  if (oui)
  {
    [dictionary setObject:oui forKey:@"oui"];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_colocatedState), @"colocatedState"}];
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_switchedAwayFromCount), @"switchedAwayFromCount"}];
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_switchToCount), @"switchToCount"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_networkScore), @"networkScore"}];
  }

LABEL_13:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  networkTypeBitMap = self->_networkTypeBitMap;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    networkSecurity = self->_networkSecurity;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_oui)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    colocatedState = self->_colocatedState;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  switchedAwayFromCount = self->_switchedAwayFromCount;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  switchToCount = self->_switchToCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    networkScore = self->_networkScore;
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
  if (self->_bundleID)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 64) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_eventType;
  *(to + 64) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  *(to + 10) = self->_networkTypeBitMap;
  *(to + 64) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    *(to + 9) = self->_networkSecurity;
    *(to + 64) |= 0x10u;
  }

LABEL_6:
  if (self->_oui)
  {
    [to setOui:?];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(to + 6) = self->_colocatedState;
    *(to + 64) |= 2u;
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_10;
  }

  *(to + 15) = self->_switchedAwayFromCount;
  *(to + 64) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(to + 14) = self->_switchToCount;
  *(to + 64) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    *(to + 8) = self->_networkScore;
    *(to + 64) |= 8u;
  }

LABEL_13:
  if (self->_bundleID)
  {

    [to setBundleID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_eventType;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  *(v5 + 40) = self->_networkTypeBitMap;
  *(v5 + 64) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    *(v5 + 36) = self->_networkSecurity;
    *(v5 + 64) |= 0x10u;
  }

LABEL_6:

  *(v6 + 48) = [(NSData *)self->_oui copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    *(v6 + 24) = self->_colocatedState;
    *(v6 + 64) |= 2u;
    v8 = self->_has;
    if ((v8 & 0x80) == 0)
    {
LABEL_8:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_9;
      }

LABEL_18:
      *(v6 + 56) = self->_switchToCount;
      *(v6 + 64) |= 0x40u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_8;
  }

  *(v6 + 60) = self->_switchedAwayFromCount;
  *(v6 + 64) |= 0x80u;
  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v8 & 8) != 0)
  {
LABEL_10:
    *(v6 + 32) = self->_networkScore;
    *(v6 + 64) |= 8u;
  }

LABEL_11:

  *(v6 + 16) = [(NSString *)self->_bundleID copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 64);
    if (has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_47;
      }
    }

    else if (*(equal + 64))
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 64) & 4) == 0 || self->_eventType != *(equal + 7))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 4) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 64) & 0x20) == 0 || self->_networkTypeBitMap != *(equal + 10))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 0x20) != 0)
    {
      goto LABEL_47;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 64) & 0x10) == 0 || self->_networkSecurity != *(equal + 9))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 0x10) != 0)
    {
      goto LABEL_47;
    }

    oui = self->_oui;
    if (oui | *(equal + 6))
    {
      v5 = [(NSData *)oui isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 64);
    if ((has & 2) != 0)
    {
      if ((*(equal + 64) & 2) == 0 || self->_colocatedState != *(equal + 6))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 2) != 0)
    {
      goto LABEL_47;
    }

    if (has < 0)
    {
      if ((*(equal + 64) & 0x80) == 0 || self->_switchedAwayFromCount != *(equal + 15))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 0x80) != 0)
    {
LABEL_47:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(equal + 64) & 0x40) == 0 || self->_switchToCount != *(equal + 14))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 0x40) != 0)
    {
      goto LABEL_47;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 64) & 8) == 0 || self->_networkScore != *(equal + 8))
      {
        goto LABEL_47;
      }
    }

    else if ((*(equal + 64) & 8) != 0)
    {
      goto LABEL_47;
    }

    bundleID = self->_bundleID;
    if (bundleID | *(equal + 2))
    {

      LOBYTE(v5) = [(NSString *)bundleID isEqual:?];
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
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_eventType;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_networkTypeBitMap;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_networkSecurity;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSData *)self->_oui hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_colocatedState;
    if ((*&self->_has & 0x80) != 0)
    {
LABEL_12:
      v9 = 2654435761 * self->_switchedAwayFromCount;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v10 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v11 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v7 ^ [(NSString *)self->_bundleID hash];
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v10 = 2654435761 * self->_switchToCount;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v11 = 2654435761 * self->_networkScore;
  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v7 ^ [(NSString *)self->_bundleID hash];
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 64);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 64);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(from + 64) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_eventType = *(from + 7);
  *&self->_has |= 4u;
  v5 = *(from + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  self->_networkTypeBitMap = *(from + 10);
  *&self->_has |= 0x20u;
  if ((*(from + 64) & 0x10) != 0)
  {
LABEL_5:
    self->_networkSecurity = *(from + 9);
    *&self->_has |= 0x10u;
  }

LABEL_6:
  if (*(from + 6))
  {
    [(AWDWiFiMetricsKnownNetworksEvent *)self setOui:?];
  }

  v6 = *(from + 64);
  if ((v6 & 2) != 0)
  {
    self->_colocatedState = *(from + 6);
    *&self->_has |= 2u;
    v6 = *(from + 64);
    if ((v6 & 0x80) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((*(from + 64) & 0x80) == 0)
  {
    goto LABEL_10;
  }

  self->_switchedAwayFromCount = *(from + 15);
  *&self->_has |= 0x80u;
  v6 = *(from + 64);
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  self->_switchToCount = *(from + 14);
  *&self->_has |= 0x40u;
  if ((*(from + 64) & 8) != 0)
  {
LABEL_12:
    self->_networkScore = *(from + 8);
    *&self->_has |= 8u;
  }

LABEL_13:
  if (*(from + 2))
  {

    [(AWDWiFiMetricsKnownNetworksEvent *)self setBundleID:?];
  }
}

@end