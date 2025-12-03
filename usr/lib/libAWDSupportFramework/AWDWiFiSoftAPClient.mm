@interface AWDWiFiSoftAPClient
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnhancedSecurityType:(BOOL)type;
- (void)setHasFailureReason:(BOOL)reason;
- (void)setHasFamilyDevice:(BOOL)device;
- (void)setHasJoinedByAutoHS:(BOOL)s;
- (void)setHasRssi:(BOOL)rssi;
- (void)setHasSwitchedToAnotherNetwork:(BOOL)network;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiSoftAPClient

- (void)setHasFamilyDevice:(BOOL)device
{
  if (device)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasJoinedByAutoHS:(BOOL)s
{
  if (s)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSwitchedToAnotherNetwork:(BOOL)network
{
  if (network)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasFailureReason:(BOOL)reason
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

- (void)setHasRssi:(BOOL)rssi
{
  if (rssi)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEnhancedSecurityType:(BOOL)type
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiSoftAPClient;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiSoftAPClient description](&v3, sel_description), -[AWDWiFiSoftAPClient dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_familyDevice), @"familyDevice"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_joinedByAutoHS), @"joinedByAutoHS"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_switchedToAnotherNetwork), @"switchedToAnotherNetwork"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rssi), @"rssi"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_failureReason), @"failureReason"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_enhancedSecurityType), @"enhancedSecurityType"}];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  familyDevice = self->_familyDevice;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  joinedByAutoHS = self->_joinedByAutoHS;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  switchedToAnotherNetwork = self->_switchedToAnotherNetwork;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    rssi = self->_rssi;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  failureReason = self->_failureReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_15:
  enhancedSecurityType = self->_enhancedSecurityType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 28) = self->_familyDevice;
  *(to + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 29) = self->_joinedByAutoHS;
  *(to + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 30) = self->_switchedToAnotherNetwork;
  *(to + 32) |= 0x40u;
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
  *(to + 5) = self->_failureReason;
  *(to + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_15:
    *(to + 4) = self->_enhancedSecurityType;
    *(to + 32) |= 2u;
    return;
  }

LABEL_14:
  *(to + 6) = self->_rssi;
  *(to + 32) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 28) = self->_familyDevice;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 29) = self->_joinedByAutoHS;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 30) = self->_switchedToAnotherNetwork;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_failureReason;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 6) = self->_rssi;
  *(result + 32) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 4) = self->_enhancedSecurityType;
  *(result + 32) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(equal + 32))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 32) & 0x10) == 0)
    {
      goto LABEL_45;
    }

    v6 = *(equal + 28);
    if (self->_familyDevice)
    {
      if ((*(equal + 28) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(equal + 28))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equal + 32) & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equal + 32) & 0x20) == 0)
    {
      goto LABEL_45;
    }

    v7 = *(equal + 29);
    if (self->_joinedByAutoHS)
    {
      if ((*(equal + 29) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(equal + 29))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equal + 32) & 0x20) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equal + 32) & 0x40) != 0)
    {
      v8 = *(equal + 30);
      if (self->_switchedToAnotherNetwork)
      {
        if ((*(equal + 30) & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if (*(equal + 30))
      {
        goto LABEL_45;
      }

      goto LABEL_13;
    }

LABEL_45:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 32) & 0x40) != 0)
  {
    goto LABEL_45;
  }

LABEL_13:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 32) & 4) == 0 || self->_failureReason != *(equal + 5))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equal + 32) & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 32) & 8) == 0 || self->_rssi != *(equal + 6))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equal + 32) & 8) != 0)
  {
    goto LABEL_45;
  }

  LOBYTE(v5) = (*(equal + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 32) & 2) == 0 || self->_enhancedSecurityType != *(equal + 4))
    {
      goto LABEL_45;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_familyDevice;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_joinedByAutoHS;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_switchedToAnotherNetwork;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_failureReason;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_rssi;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_enhancedSecurityType;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 32);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_familyDevice = *(from + 28);
  *&self->_has |= 0x10u;
  v3 = *(from + 32);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_joinedByAutoHS = *(from + 29);
  *&self->_has |= 0x20u;
  v3 = *(from + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_switchedToAnotherNetwork = *(from + 30);
  *&self->_has |= 0x40u;
  v3 = *(from + 32);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_failureReason = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 32);
  if ((v3 & 8) == 0)
  {
LABEL_7:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_15:
    self->_enhancedSecurityType = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_14:
  self->_rssi = *(from + 6);
  *&self->_has |= 8u;
  if ((*(from + 32) & 2) != 0)
  {
    goto LABEL_15;
  }
}

@end