@interface AWDWiFiNWActivityScanActivity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAssocDur:(BOOL)dur;
- (void)setHasOtherCount:(BOOL)count;
- (void)setHasOtherDur:(BOOL)dur;
- (void)setHasPnoBSSIDCount:(BOOL)count;
- (void)setHasPnoBSSIDDur:(BOOL)dur;
- (void)setHasPnoSSIDCount:(BOOL)count;
- (void)setHasPnoSSIDDur:(BOOL)dur;
- (void)setHasRoamCount:(BOOL)count;
- (void)setHasRoamDur:(BOOL)dur;
- (void)setHasUserCount:(BOOL)count;
- (void)setHasUserDur:(BOOL)dur;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityScanActivity

- (void)setHasUserCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasUserDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasRoamCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRoamDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAssocDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPnoBSSIDCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasPnoBSSIDDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPnoSSIDCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasPnoSSIDDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasOtherCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasOtherDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityScanActivity;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityScanActivity description](&v3, sel_description), -[AWDWiFiNWActivityScanActivity dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_userCount), @"userCount"}];
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_userDur), @"userDur"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamCount), @"roamCount"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamDur), @"roamDur"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocCount), @"assocCount"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocDur), @"assocDur"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pnoBSSIDCount), @"pnoBSSIDCount"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pnoBSSIDDur), @"pnoBSSIDDur"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pnoSSIDCount), @"pnoSSIDCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_otherCount), @"otherCount"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_13;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pnoSSIDDur), @"pnoSSIDDur"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((has & 8) != 0)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_otherDur), @"otherDur"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    userCount = self->_userCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  userDur = self->_userDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  roamCount = self->_roamCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  roamDur = self->_roamDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  assocCount = self->_assocCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  assocDur = self->_assocDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  pnoBSSIDCount = self->_pnoBSSIDCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  pnoBSSIDDur = self->_pnoBSSIDDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  pnoSSIDCount = self->_pnoSSIDCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    otherCount = self->_otherCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  pnoSSIDDur = self->_pnoSSIDDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_25:
  otherDur = self->_otherDur;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(to + 12) = self->_userCount;
    *(to + 28) |= 0x400u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(to + 13) = self->_userDur;
  *(to + 28) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 10) = self->_roamCount;
  *(to + 28) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 11) = self->_roamDur;
  *(to + 28) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 2) = self->_assocCount;
  *(to + 28) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 3) = self->_assocDur;
  *(to + 28) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 6) = self->_pnoBSSIDCount;
  *(to + 28) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 7) = self->_pnoBSSIDDur;
  *(to + 28) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 8) = self->_pnoSSIDCount;
  *(to + 28) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 9) = self->_pnoSSIDDur;
  *(to + 28) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_25:
    *(to + 5) = self->_otherDur;
    *(to + 28) |= 8u;
    return;
  }

LABEL_24:
  *(to + 4) = self->_otherCount;
  *(to + 28) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_25;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(result + 12) = self->_userCount;
    *(result + 28) |= 0x400u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_userDur;
  *(result + 28) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_roamCount;
  *(result + 28) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 11) = self->_roamDur;
  *(result + 28) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 2) = self->_assocCount;
  *(result + 28) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 3) = self->_assocDur;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_pnoBSSIDCount;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 7) = self->_pnoBSSIDDur;
  *(result + 28) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 8) = self->_pnoSSIDCount;
  *(result + 28) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 9) = self->_pnoSSIDDur;
  *(result + 28) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 4) = self->_otherCount;
  *(result + 28) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 5) = self->_otherDur;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 28);
    if ((has & 0x400) != 0)
    {
      if ((*(equal + 28) & 0x400) == 0 || self->_userCount != *(equal + 12))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 28) & 0x400) != 0)
    {
LABEL_61:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 28) & 0x800) == 0 || self->_userDur != *(equal + 13))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 28) & 0x800) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 28) & 0x100) == 0 || self->_roamCount != *(equal + 10))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 28) & 0x100) != 0)
    {
      goto LABEL_61;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 28) & 0x200) == 0 || self->_roamDur != *(equal + 11))
      {
        goto LABEL_61;
      }
    }

    else if ((*(equal + 28) & 0x200) != 0)
    {
      goto LABEL_61;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_assocCount != *(equal + 2))
      {
        goto LABEL_61;
      }
    }

    else if (v7)
    {
      goto LABEL_61;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_assocDur != *(equal + 3))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_pnoBSSIDCount != *(equal + 6))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_pnoBSSIDDur != *(equal + 7))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_pnoSSIDCount != *(equal + 8))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_pnoSSIDDur != *(equal + 9))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_61;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_otherCount != *(equal + 4))
      {
        goto LABEL_61;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_61;
    }

    LOBYTE(v5) = (v7 & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_otherDur != *(equal + 5))
      {
        goto LABEL_61;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v3 = 2654435761 * self->_userCount;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_userDur;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_roamCount;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_roamDur;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if (has)
  {
LABEL_6:
    v7 = 2654435761 * self->_assocCount;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_assocDur;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_pnoBSSIDCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_pnoBSSIDDur;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_pnoSSIDCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_pnoSSIDDur;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761 * self->_otherCount;
  if ((has & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761 * self->_otherDur;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if ((v3 & 0x400) != 0)
  {
    self->_userCount = *(from + 12);
    *&self->_has |= 0x400u;
    v3 = *(from + 28);
    if ((v3 & 0x800) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(from + 28) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_userDur = *(from + 13);
  *&self->_has |= 0x800u;
  v3 = *(from + 28);
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_roamCount = *(from + 10);
  *&self->_has |= 0x100u;
  v3 = *(from + 28);
  if ((v3 & 0x200) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_roamDur = *(from + 11);
  *&self->_has |= 0x200u;
  v3 = *(from + 28);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    if ((v3 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_assocCount = *(from + 2);
  *&self->_has |= 1u;
  v3 = *(from + 28);
  if ((v3 & 2) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_assocDur = *(from + 3);
  *&self->_has |= 2u;
  v3 = *(from + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_pnoBSSIDCount = *(from + 6);
  *&self->_has |= 0x10u;
  v3 = *(from + 28);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_pnoBSSIDDur = *(from + 7);
  *&self->_has |= 0x20u;
  v3 = *(from + 28);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_pnoSSIDCount = *(from + 8);
  *&self->_has |= 0x40u;
  v3 = *(from + 28);
  if ((v3 & 0x80) == 0)
  {
LABEL_11:
    if ((v3 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_pnoSSIDDur = *(from + 9);
  *&self->_has |= 0x80u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_12:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_25:
    self->_otherDur = *(from + 5);
    *&self->_has |= 8u;
    return;
  }

LABEL_24:
  self->_otherCount = *(from + 4);
  *&self->_has |= 4u;
  if ((*(from + 28) & 8) != 0)
  {
    goto LABEL_25;
  }
}

@end