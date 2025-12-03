@interface AWDPowerBBNonDataMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAPWakeCacheFlushCnt:(BOOL)cnt;
- (void)setHasIdlePowerMicroWatt:(BOOL)watt;
- (void)setHasOOSPowerMicroWatt:(BOOL)watt;
- (void)setHasRegistrationPowerMicroWatt:(BOOL)watt;
- (void)setHasScanPowerMicroWatt:(BOOL)watt;
- (void)setHasVoicePowerMicroWatt:(BOOL)watt;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerBBNonDataMetrics

- (void)setHasScanPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasOOSPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRegistrationPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIdlePowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVoicePowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasAPWakeCacheFlushCnt:(BOOL)cnt
{
  if (cnt)
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
  v3.super_class = AWDPowerBBNonDataMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBNonDataMetrics description](&v3, sel_description), -[AWDPowerBBNonDataMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanPowerMicroWatt), @"ScanPowerMicroWatt"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_oOSPowerMicroWatt), @"OOSPowerMicroWatt"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_registrationPowerMicroWatt), @"RegistrationPowerMicroWatt"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_voicePowerMicroWatt), @"VoicePowerMicroWatt"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_idlePowerMicroWatt), @"IdlePowerMicroWatt"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_aPWakeCacheFlushCnt), @"APWakeCacheFlushCnt"}];
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  scanPowerMicroWatt = self->_scanPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  oOSPowerMicroWatt = self->_oOSPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  registrationPowerMicroWatt = self->_registrationPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    voicePowerMicroWatt = self->_voicePowerMicroWatt;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  idlePowerMicroWatt = self->_idlePowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_15:
  aPWakeCacheFlushCnt = self->_aPWakeCacheFlushCnt;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 8) = self->_scanPowerMicroWatt;
  *(to + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 6) = self->_oOSPowerMicroWatt;
  *(to + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 7) = self->_registrationPowerMicroWatt;
  *(to + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 5) = self->_idlePowerMicroWatt;
  *(to + 40) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_15:
    *(to + 4) = self->_aPWakeCacheFlushCnt;
    *(to + 40) |= 2u;
    return;
  }

LABEL_14:
  *(to + 9) = self->_voicePowerMicroWatt;
  *(to + 40) |= 0x40u;
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
    *(result + 40) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_scanPowerMicroWatt;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_oOSPowerMicroWatt;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_registrationPowerMicroWatt;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_idlePowerMicroWatt;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 9) = self->_voicePowerMicroWatt;
  *(result + 40) |= 0x40u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 4) = self->_aPWakeCacheFlushCnt;
  *(result + 40) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_36;
      }
    }

    else if (*(equal + 40))
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 40) & 0x20) == 0 || self->_scanPowerMicroWatt != *(equal + 8))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 40) & 0x20) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 40) & 8) == 0 || self->_oOSPowerMicroWatt != *(equal + 6))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 40) & 8) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 40) & 0x10) == 0 || self->_registrationPowerMicroWatt != *(equal + 7))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 40) & 0x10) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_idlePowerMicroWatt != *(equal + 5))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 40) & 0x40) == 0 || self->_voicePowerMicroWatt != *(equal + 9))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 40) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(equal + 40) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_aPWakeCacheFlushCnt != *(equal + 4))
      {
        goto LABEL_36;
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
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_scanPowerMicroWatt;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_oOSPowerMicroWatt;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_registrationPowerMicroWatt;
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
    v6 = 2654435761 * self->_idlePowerMicroWatt;
    if ((*&self->_has & 0x40) != 0)
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
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_voicePowerMicroWatt;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_aPWakeCacheFlushCnt;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 40);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 40);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_scanPowerMicroWatt = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 40);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_oOSPowerMicroWatt = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 40);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_registrationPowerMicroWatt = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 40);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_idlePowerMicroWatt = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 40);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_15:
    self->_aPWakeCacheFlushCnt = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_14:
  self->_voicePowerMicroWatt = *(from + 9);
  *&self->_has |= 0x40u;
  if ((*(from + 40) & 2) != 0)
  {
    goto LABEL_15;
  }
}

@end