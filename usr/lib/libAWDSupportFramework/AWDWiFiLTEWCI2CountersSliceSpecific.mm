@interface AWDWiFiLTEWCI2CountersSliceSpecific
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLteTxPowerLimitTimeInMS:(BOOL)a3;
- (void)setHasTimeSharingWLANIntervalCount:(BOOL)a3;
- (void)setHasTimeSharingWLANTimeInMS:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType4DueToTimerExpiryCount:(BOOL)a3;
- (void)setHasType4HonouredCount:(BOOL)a3;
- (void)setHasType4HonouredTimeInMS:(BOOL)a3;
- (void)setHasWlanProtectionFramesDueToLTECoexCount:(BOOL)a3;
- (void)setHasWlanRxPriCount:(BOOL)a3;
- (void)setHasWlanRxPriTimeInMS:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiLTEWCI2CountersSliceSpecific

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasWlanRxPriTimeInMS:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasWlanRxPriCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLteTxPowerLimitTimeInMS:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasType4HonouredTimeInMS:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasType4HonouredCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTimeSharingWLANTimeInMS:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeSharingWLANIntervalCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasWlanProtectionFramesDueToLTECoexCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasType4DueToTimerExpiryCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiLTEWCI2CountersSliceSpecific;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiLTEWCI2CountersSliceSpecific description](&v3, sel_description), -[AWDWiFiLTEWCI2CountersSliceSpecific dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanRxPriTimeInMS), @"wlanRxPriTimeInMS"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanRxPriCount), @"wlanRxPriCount"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lteTxPowerLimitTimeInMS), @"lteTxPowerLimitTimeInMS"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lteTxPowerLimitCount), @"lteTxPowerLimitCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type4HonouredTimeInMS), @"type4HonouredTimeInMS"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type4HonouredCount), @"type4HonouredCount"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSharingWLANTimeInMS), @"timeSharingWLANTimeInMS"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanProtectionFramesDueToLTECoexCount), @"wlanProtectionFramesDueToLTECoexCount"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSharingWLANIntervalCount), @"timeSharingWLANIntervalCount"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((has & 0x20) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type4DueToTimerExpiryCount), @"type4DueToTimerExpiryCount"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  wlanRxPriTimeInMS = self->_wlanRxPriTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  wlanRxPriCount = self->_wlanRxPriCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  lteTxPowerLimitTimeInMS = self->_lteTxPowerLimitTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  lteTxPowerLimitCount = self->_lteTxPowerLimitCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  type4HonouredTimeInMS = self->_type4HonouredTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  type4HonouredCount = self->_type4HonouredCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  timeSharingWLANTimeInMS = self->_timeSharingWLANTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    wlanProtectionFramesDueToLTECoexCount = self->_wlanProtectionFramesDueToLTECoexCount;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  timeSharingWLANIntervalCount = self->_timeSharingWLANIntervalCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_23:
  type4DueToTimerExpiryCount = self->_type4DueToTimerExpiryCount;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 48) |= 0x10u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 11) = self->_wlanRxPriTimeInMS;
  *(a3 + 48) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 10) = self->_wlanRxPriCount;
  *(a3 + 48) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 2) = self->_lteTxPowerLimitTimeInMS;
  *(a3 + 48) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 1) = self->_lteTxPowerLimitCount;
  *(a3 + 48) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 8) = self->_type4HonouredTimeInMS;
  *(a3 + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 7) = self->_type4HonouredCount;
  *(a3 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 4) = self->_timeSharingWLANTimeInMS;
  *(a3 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 3) = self->_timeSharingWLANIntervalCount;
  *(a3 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_23:
    *(a3 + 6) = self->_type4DueToTimerExpiryCount;
    *(a3 + 48) |= 0x20u;
    return;
  }

LABEL_22:
  *(a3 + 9) = self->_wlanProtectionFramesDueToLTECoexCount;
  *(a3 + 48) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_23;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = self->_timestamp;
    *(result + 48) |= 0x10u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(result + 11) = self->_wlanRxPriTimeInMS;
  *(result + 48) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 10) = self->_wlanRxPriCount;
  *(result + 48) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 2) = self->_lteTxPowerLimitTimeInMS;
  *(result + 48) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 1) = self->_lteTxPowerLimitCount;
  *(result + 48) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_type4HonouredTimeInMS;
  *(result + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 7) = self->_type4HonouredCount;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 4) = self->_timeSharingWLANTimeInMS;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 3) = self->_timeSharingWLANIntervalCount;
  *(result + 48) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 9) = self->_wlanProtectionFramesDueToLTECoexCount;
  *(result + 48) |= 0x100u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 6) = self->_type4DueToTimerExpiryCount;
  *(result + 48) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 48);
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_timestamp != *(a3 + 5))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
LABEL_56:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 48) & 0x400) == 0 || self->_wlanRxPriTimeInMS != *(a3 + 11))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 48) & 0x400) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 48) & 0x200) == 0 || self->_wlanRxPriCount != *(a3 + 10))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 48) & 0x200) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_lteTxPowerLimitTimeInMS != *(a3 + 2))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_56;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_lteTxPowerLimitCount != *(a3 + 1))
      {
        goto LABEL_56;
      }
    }

    else if (v7)
    {
      goto LABEL_56;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_type4HonouredTimeInMS != *(a3 + 8))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_type4HonouredCount != *(a3 + 7))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_timeSharingWLANTimeInMS != *(a3 + 4))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timeSharingWLANIntervalCount != *(a3 + 3))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 48) & 0x100) == 0 || self->_wlanProtectionFramesDueToLTECoexCount != *(a3 + 9))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 48) & 0x100) != 0)
    {
      goto LABEL_56;
    }

    LOBYTE(v5) = (v7 & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_type4DueToTimerExpiryCount != *(a3 + 6))
      {
        goto LABEL_56;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_wlanRxPriTimeInMS;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_wlanRxPriCount;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_lteTxPowerLimitTimeInMS;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if (has)
  {
LABEL_6:
    v7 = 2654435761u * self->_lteTxPowerLimitCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_type4HonouredTimeInMS;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_type4HonouredCount;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_timeSharingWLANTimeInMS;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_timeSharingWLANIntervalCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761u * self->_wlanProtectionFramesDueToLTECoexCount;
  if ((has & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761u * self->_type4DueToTimerExpiryCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 48);
  if ((v3 & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
    v3 = *(a3 + 48);
    if ((v3 & 0x400) == 0)
    {
LABEL_3:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a3 + 48) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_wlanRxPriTimeInMS = *(a3 + 11);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 48);
  if ((v3 & 0x200) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_wlanRxPriCount = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 48);
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_lteTxPowerLimitTimeInMS = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 48);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_lteTxPowerLimitCount = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 48);
  if ((v3 & 0x80) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_type4HonouredTimeInMS = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 48);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_type4HonouredCount = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 48);
  if ((v3 & 8) == 0)
  {
LABEL_9:
    if ((v3 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_timeSharingWLANTimeInMS = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 48);
  if ((v3 & 4) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_timeSharingWLANIntervalCount = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 48);
  if ((v3 & 0x100) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_23:
    self->_type4DueToTimerExpiryCount = *(a3 + 6);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_22:
  self->_wlanProtectionFramesDueToLTECoexCount = *(a3 + 9);
  *&self->_has |= 0x100u;
  if ((*(a3 + 48) & 0x20) != 0)
  {
    goto LABEL_23;
  }
}

@end