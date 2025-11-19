@interface AWDMETRICSCellularDynamicRatSelection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDestRat:(id)a3;
- (int)StringAsSourceRat:(id)a3;
- (int)destRat;
- (int)sourceRat;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBwObservedAfterSwitch:(BOOL)a3;
- (void)setHasBwObservedBeforeSwitch:(BOOL)a3;
- (void)setHasDestRat:(BOOL)a3;
- (void)setHasDlTputObservedAfterSwitch:(BOOL)a3;
- (void)setHasDlTputObservedBeforeSwitch:(BOOL)a3;
- (void)setHasSourceRat:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasUlTputObservedAfterSwitch:(BOOL)a3;
- (void)setHasUlTputObservedBeforeSwitch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularDynamicRatSelection

- (int)sourceRat
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_sourceRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSourceRat:(BOOL)a3
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

- (int)StringAsSourceRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WCDMA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ENDC_SUB6"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ENDC_MMW"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NR_SA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GSM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CDMA"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"EVDO"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ONEXSRLTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ONEXHYBRID"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NRDC_SUB6"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NRDC_MMW"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)destRat
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_destRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDestRat:(BOOL)a3
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

- (int)StringAsDestRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WCDMA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ENDC_SUB6"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ENDC_MMW"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NR_SA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GSM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CDMA"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"EVDO"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ONEXSRLTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ONEXHYBRID"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NRDC_SUB6"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NRDC_MMW"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDlTputObservedBeforeSwitch:(BOOL)a3
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

- (void)setHasDlTputObservedAfterSwitch:(BOOL)a3
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

- (void)setHasBwObservedBeforeSwitch:(BOOL)a3
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

- (void)setHasBwObservedAfterSwitch:(BOOL)a3
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

- (void)setHasUlTputObservedBeforeSwitch:(BOOL)a3
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

- (void)setHasUlTputObservedAfterSwitch:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularDynamicRatSelection;
  v4 = [(AWDMETRICSCellularDynamicRatSelection *)&v8 description];
  v5 = [(AWDMETRICSCellularDynamicRatSelection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  sourceRat = self->_sourceRat;
  if (sourceRat >= 0xE)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_sourceRat];
  }

  else
  {
    v9 = off_27825A9B0[sourceRat];
  }

  [v3 setObject:v9 forKey:@"source_rat"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_20:
  destRat = self->_destRat;
  if (destRat >= 0xE)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_destRat];
  }

  else
  {
    v11 = off_27825A9B0[destRat];
  }

  [v3 setObject:v11 forKey:@"dest_rat"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dlTputObservedBeforeSwitch];
  [v3 setObject:v12 forKey:@"dl_tput_observed_before_switch"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dlTputObservedAfterSwitch];
  [v3 setObject:v13 forKey:@"dl_tput_observed_after_switch"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bwObservedBeforeSwitch];
  [v3 setObject:v14 forKey:@"bw_observed_before_switch"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bwObservedAfterSwitch];
  [v3 setObject:v15 forKey:@"bw_observed_after_switch"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ulTputObservedBeforeSwitch];
  [v3 setObject:v16 forKey:@"ul_tput_observed_before_switch"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ulTputObservedAfterSwitch];
  [v3 setObject:v17 forKey:@"ul_tput_observed_after_switch"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  sourceRat = self->_sourceRat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  destRat = self->_destRat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  dlTputObservedBeforeSwitch = self->_dlTputObservedBeforeSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  dlTputObservedAfterSwitch = self->_dlTputObservedAfterSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  bwObservedBeforeSwitch = self->_bwObservedBeforeSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  bwObservedAfterSwitch = self->_bwObservedAfterSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  ulTputObservedBeforeSwitch = self->_ulTputObservedBeforeSwitch;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  ulTputObservedAfterSwitch = self->_ulTputObservedAfterSwitch;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 26) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 9) = self->_sourceRat;
  *(v4 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 6) = self->_destRat;
  *(v4 + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 8) = self->_dlTputObservedBeforeSwitch;
  *(v4 + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 7) = self->_dlTputObservedAfterSwitch;
  *(v4 + 26) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 5) = self->_bwObservedBeforeSwitch;
  *(v4 + 26) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 4) = self->_bwObservedAfterSwitch;
  *(v4 + 26) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 12) = self->_ulTputObservedBeforeSwitch;
  *(v4 + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(v4 + 11) = self->_ulTputObservedAfterSwitch;
  *(v4 + 26) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(v4 + 10) = self->_subsId;
    *(v4 + 26) |= 0x80u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 26) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_sourceRat;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 6) = self->_destRat;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 8) = self->_dlTputObservedBeforeSwitch;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 7) = self->_dlTputObservedAfterSwitch;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 5) = self->_bwObservedBeforeSwitch;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 4) = self->_bwObservedAfterSwitch;
  *(result + 26) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 12) = self->_ulTputObservedBeforeSwitch;
  *(result + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 11) = self->_ulTputObservedAfterSwitch;
  *(result + 26) |= 0x100u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 10) = self->_subsId;
  *(result + 26) |= 0x80u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(v4 + 26);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_52;
    }
  }

  else if (v6)
  {
LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_sourceRat != *(v4 + 9))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_destRat != *(v4 + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_dlTputObservedBeforeSwitch != *(v4 + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dlTputObservedAfterSwitch != *(v4 + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_bwObservedBeforeSwitch != *(v4 + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_bwObservedAfterSwitch != *(v4 + 4))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 26) & 0x200) == 0 || self->_ulTputObservedBeforeSwitch != *(v4 + 12))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 26) & 0x200) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 26) & 0x100) == 0 || self->_ulTputObservedAfterSwitch != *(v4 + 11))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 26) & 0x100) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_subsId != *(v4 + 10))
    {
      goto LABEL_52;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x80) == 0;
  }

LABEL_53:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_sourceRat;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_destRat;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_dlTputObservedBeforeSwitch;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_dlTputObservedAfterSwitch;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_bwObservedBeforeSwitch;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_bwObservedAfterSwitch;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_ulTputObservedBeforeSwitch;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_ulTputObservedAfterSwitch;
  if ((has & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 26);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 26);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_sourceRat = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 26);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_destRat = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_dlTputObservedBeforeSwitch = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_dlTputObservedAfterSwitch = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 26);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_bwObservedBeforeSwitch = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 26);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_bwObservedAfterSwitch = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_ulTputObservedBeforeSwitch = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_ulTputObservedAfterSwitch = *(v4 + 11);
  *&self->_has |= 0x100u;
  if ((*(v4 + 26) & 0x80) != 0)
  {
LABEL_11:
    self->_subsId = *(v4 + 10);
    *&self->_has |= 0x80u;
  }

LABEL_12:
}

@end