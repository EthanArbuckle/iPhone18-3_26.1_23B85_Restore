@interface AWDMETRICSCellularPowerLogNRCDRXConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFr:(id)fr;
- (int)fr;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCdrxEnable:(BOOL)enable;
- (void)setHasDrxSlotOffset:(BOOL)offset;
- (void)setHasFr:(BOOL)fr;
- (void)setHasHarqRttTimerDl:(BOOL)dl;
- (void)setHasHarqRttTimerUl:(BOOL)ul;
- (void)setHasInactivityTimerMs:(BOOL)ms;
- (void)setHasLongCycle:(BOOL)cycle;
- (void)setHasLongCycleOffset:(BOOL)offset;
- (void)setHasOnDurationTimerFraction:(BOOL)fraction;
- (void)setHasOnDurationTimerMs:(BOOL)ms;
- (void)setHasRetransmissionTimerDl:(BOOL)dl;
- (void)setHasRetransmissionTimerUl:(BOOL)ul;
- (void)setHasShortCycle:(BOOL)cycle;
- (void)setHasShortCycleEnable:(BOOL)enable;
- (void)setHasShortCycleTimer:(BOOL)timer;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSCellularPowerLogNRCDRXConfig

- (void)setHasCdrxEnable:(BOOL)enable
{
  if (enable)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasHarqRttTimerDl:(BOOL)dl
{
  if (dl)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasHarqRttTimerUl:(BOOL)ul
{
  if (ul)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasDrxSlotOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasShortCycleEnable:(BOOL)enable
{
  if (enable)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasRetransmissionTimerDl:(BOOL)dl
{
  if (dl)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRetransmissionTimerUl:(BOOL)ul
{
  if (ul)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasOnDurationTimerFraction:(BOOL)fraction
{
  if (fraction)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasOnDurationTimerMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasInactivityTimerMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasLongCycle:(BOOL)cycle
{
  if (cycle)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasLongCycleOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasShortCycle:(BOOL)cycle
{
  if (cycle)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasShortCycleTimer:(BOOL)timer
{
  if (timer)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (int)fr
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFr:(BOOL)fr
{
  if (fr)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)StringAsFr:(id)fr
{
  frCopy = fr;
  if ([frCopy isEqualToString:@"SUB6"])
  {
    v4 = 0;
  }

  else if ([frCopy isEqualToString:@"MMWAVE"])
  {
    v4 = 1;
  }

  else if ([frCopy isEqualToString:@"INVALID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularPowerLogNRCDRXConfig;
  v4 = [(AWDMETRICSCellularPowerLogNRCDRXConfig *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSCellularPowerLogNRCDRXConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (*&has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_cdrxEnable];
  [dictionary setObject:v6 forKey:@"cdrx_enable"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_harqRttTimerDl];
  [dictionary setObject:v7 forKey:@"harq_rtt_timer_dl"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_harqRttTimerUl];
  [dictionary setObject:v8 forKey:@"harq_rtt_timer_ul"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxSlotOffset];
  [dictionary setObject:v9 forKey:@"drx_slot_offset"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_shortCycleEnable];
  [dictionary setObject:v10 forKey:@"short_cycle_enable"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retransmissionTimerDl];
  [dictionary setObject:v11 forKey:@"retransmission_timer_dl"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retransmissionTimerUl];
  [dictionary setObject:v12 forKey:@"retransmission_timer_ul"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_onDurationTimerFraction];
  [dictionary setObject:v13 forKey:@"on_duration_timer_fraction"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_onDurationTimerMs];
  [dictionary setObject:v14 forKey:@"on_duration_timer_ms"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_inactivityTimerMs];
  [dictionary setObject:v15 forKey:@"inactivity_timer_ms"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_longCycle];
  [dictionary setObject:v16 forKey:@"long_cycle"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_longCycleOffset];
  [dictionary setObject:v17 forKey:@"long_cycle_offset"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shortCycle];
  [dictionary setObject:v18 forKey:@"short_cycle"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v20 forKey:@"subs_id"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_39;
    }

LABEL_35:
    fr = self->_fr;
    if (fr >= 3)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
    }

    else
    {
      v22 = off_279A10E38[fr];
    }

    [dictionary setObject:v22 forKey:@"fr"];

    goto LABEL_39;
  }

LABEL_33:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shortCycleTimer];
  [dictionary setObject:v19 forKey:@"short_cycle_timer"];

  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((*&has & 4) != 0)
  {
    goto LABEL_35;
  }

LABEL_39:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  cdrxEnable = self->_cdrxEnable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  harqRttTimerDl = self->_harqRttTimerDl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  harqRttTimerUl = self->_harqRttTimerUl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  drxSlotOffset = self->_drxSlotOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  shortCycleEnable = self->_shortCycleEnable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  retransmissionTimerDl = self->_retransmissionTimerDl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  retransmissionTimerUl = self->_retransmissionTimerUl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  onDurationTimerFraction = self->_onDurationTimerFraction;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  onDurationTimerMs = self->_onDurationTimerMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  inactivityTimerMs = self->_inactivityTimerMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  longCycle = self->_longCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  longCycleOffset = self->_longCycleOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  shortCycle = self->_shortCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  shortCycleTimer = self->_shortCycleTimer;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    fr = self->_fr;
    PBDataWriterWriteInt32Field();
  }

LABEL_19:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (*&has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 19) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 72) = self->_cdrxEnable;
  *(toCopy + 19) |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 6) = self->_harqRttTimerDl;
  *(toCopy + 19) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 7) = self->_harqRttTimerUl;
  *(toCopy + 19) |= 0x10u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 4) = self->_drxSlotOffset;
  *(toCopy + 19) |= 2u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 73) = self->_shortCycleEnable;
  *(toCopy + 19) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 13) = self->_retransmissionTimerDl;
  *(toCopy + 19) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 14) = self->_retransmissionTimerUl;
  *(toCopy + 19) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 11) = self->_onDurationTimerFraction;
  *(toCopy + 19) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 12) = self->_onDurationTimerMs;
  *(toCopy + 19) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 8) = self->_inactivityTimerMs;
  *(toCopy + 19) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 9) = self->_longCycle;
  *(toCopy + 19) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 10) = self->_longCycleOffset;
  *(toCopy + 19) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 15) = self->_shortCycle;
  *(toCopy + 19) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 16) = self->_shortCycleTimer;
  *(toCopy + 19) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  *(toCopy + 17) = self->_subsId;
  *(toCopy + 19) |= 0x4000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(toCopy + 5) = self->_fr;
    *(toCopy + 19) |= 4u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 19) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 72) = self->_cdrxEnable;
  *(result + 19) |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 6) = self->_harqRttTimerDl;
  *(result + 19) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 7) = self->_harqRttTimerUl;
  *(result + 19) |= 0x10u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 4) = self->_drxSlotOffset;
  *(result + 19) |= 2u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 73) = self->_shortCycleEnable;
  *(result + 19) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 13) = self->_retransmissionTimerDl;
  *(result + 19) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 14) = self->_retransmissionTimerUl;
  *(result + 19) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 11) = self->_onDurationTimerFraction;
  *(result + 19) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 12) = self->_onDurationTimerMs;
  *(result + 19) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 8) = self->_inactivityTimerMs;
  *(result + 19) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 9) = self->_longCycle;
  *(result + 19) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 10) = self->_longCycleOffset;
  *(result + 19) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 15) = self->_shortCycle;
  *(result + 19) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 16) = self->_shortCycleTimer;
  *(result + 19) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_35:
  *(result + 17) = self->_subsId;
  *(result + 19) |= 0x4000u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_18:
  *(result + 5) = self->_fr;
  *(result + 19) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_93;
  }

  has = self->_has;
  v6 = *(equalCopy + 19);
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_93;
    }
  }

  else if (v6)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_93;
    }

    v7 = *(equalCopy + 72);
    if (self->_cdrxEnable)
    {
      if ((*(equalCopy + 72) & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    else if (*(equalCopy + 72))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_harqRttTimerDl != *(equalCopy + 6))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_harqRttTimerUl != *(equalCopy + 7))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_drxSlotOffset != *(equalCopy + 4))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x10000) == 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

LABEL_93:
    v9 = 0;
    goto LABEL_94;
  }

  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_93;
  }

  v8 = *(equalCopy + 73);
  if (self->_shortCycleEnable)
  {
    if ((*(equalCopy + 73) & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  else if (*(equalCopy + 73))
  {
    goto LABEL_93;
  }

LABEL_32:
  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_retransmissionTimerDl != *(equalCopy + 13))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_retransmissionTimerUl != *(equalCopy + 14))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_onDurationTimerFraction != *(equalCopy + 11))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_onDurationTimerMs != *(equalCopy + 12))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_inactivityTimerMs != *(equalCopy + 8))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_longCycle != *(equalCopy + 9))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_longCycleOffset != *(equalCopy + 10))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_shortCycle != *(equalCopy + 15))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_shortCycleTimer != *(equalCopy + 16))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_subsId != *(equalCopy + 17))
    {
      goto LABEL_93;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_fr != *(equalCopy + 5))
    {
      goto LABEL_93;
    }

    v9 = 1;
  }

  else
  {
    v9 = (*(equalCopy + 19) & 4) == 0;
  }

LABEL_94:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_cdrxEnable;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_harqRttTimerDl;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_harqRttTimerUl;
    if ((*&has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_drxSlotOffset;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_shortCycleEnable;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_retransmissionTimerDl;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_retransmissionTimerUl;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_onDurationTimerFraction;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_onDurationTimerMs;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_inactivityTimerMs;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_longCycle;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_longCycleOffset;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_shortCycle;
  if ((*&has & 0x2000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_shortCycleTimer;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x4000) != 0)
  {
    v18 = 2654435761 * self->_subsId;
    if ((*&has & 4) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v19 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*&has & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v19 = 2654435761 * self->_fr;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 19);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 19);
    if ((v5 & 0x8000) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  self->_cdrxEnable = *(fromCopy + 72);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 19);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_harqRttTimerDl = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_harqRttTimerUl = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 19);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_drxSlotOffset = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x10000) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_shortCycleEnable = *(fromCopy + 73);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_retransmissionTimerDl = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_retransmissionTimerUl = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_onDurationTimerFraction = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_onDurationTimerMs = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_inactivityTimerMs = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_longCycle = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_longCycleOffset = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_shortCycle = *(fromCopy + 15);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_shortCycleTimer = *(fromCopy + 16);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 19);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  self->_subsId = *(fromCopy + 17);
  *&self->_has |= 0x4000u;
  if ((*(fromCopy + 19) & 4) != 0)
  {
LABEL_18:
    self->_fr = *(fromCopy + 5);
    *&self->_has |= 4u;
  }

LABEL_19:
}

@end