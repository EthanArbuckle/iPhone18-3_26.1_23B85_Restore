@interface AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCdrxEnable:(BOOL)a3;
- (void)setHasHarqRttTimerDl:(BOOL)a3;
- (void)setHasHarqRttTimerUl:(BOOL)a3;
- (void)setHasInactivityTimerMs:(BOOL)a3;
- (void)setHasLongCycle:(BOOL)a3;
- (void)setHasLongCycleOffset:(BOOL)a3;
- (void)setHasOnDurationTimerFraction:(BOOL)a3;
- (void)setHasOnDurationTimerMs:(BOOL)a3;
- (void)setHasRetransmissionTimerDl:(BOOL)a3;
- (void)setHasRetransmissionTimerUl:(BOOL)a3;
- (void)setHasShortCycle:(BOOL)a3;
- (void)setHasShortCycleEnable:(BOOL)a3;
- (void)setHasShortCycleTimer:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup

- (void)setHasCdrxEnable:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasHarqRttTimerDl:(BOOL)a3
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

- (void)setHasHarqRttTimerUl:(BOOL)a3
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

- (void)setHasRetransmissionTimerDl:(BOOL)a3
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

- (void)setHasRetransmissionTimerUl:(BOOL)a3
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

- (void)setHasOnDurationTimerFraction:(BOOL)a3
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

- (void)setHasOnDurationTimerMs:(BOOL)a3
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

- (void)setHasInactivityTimerMs:(BOOL)a3
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

- (void)setHasLongCycle:(BOOL)a3
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

- (void)setHasLongCycleOffset:(BOOL)a3
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

- (void)setHasShortCycleEnable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasShortCycle:(BOOL)a3
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

- (void)setHasShortCycleTimer:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup;
  v4 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_cdrxEnable];
    [v3 setObject:v7 forKey:@"cdrx_enable"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_harqRttTimerDl];
  [v3 setObject:v8 forKey:@"harq_rtt_timer_dl"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_harqRttTimerUl];
  [v3 setObject:v9 forKey:@"harq_rtt_timer_ul"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxSlotOffset];
  [v3 setObject:v10 forKey:@"drx_slot_offset"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retransmissionTimerDl];
  [v3 setObject:v11 forKey:@"retransmission_timer_dl"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retransmissionTimerUl];
  [v3 setObject:v12 forKey:@"retransmission_timer_ul"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_onDurationTimerFraction];
  [v3 setObject:v13 forKey:@"on_duration_timer_fraction"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_onDurationTimerMs];
  [v3 setObject:v14 forKey:@"on_duration_timer_ms"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_inactivityTimerMs];
  [v3 setObject:v15 forKey:@"inactivity_timer_ms"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_longCycle];
  [v3 setObject:v16 forKey:@"long_cycle"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_longCycleOffset];
  [v3 setObject:v17 forKey:@"long_cycle_offset"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_shortCycleEnable];
  [v3 setObject:v18 forKey:@"short_cycle_enable"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shortCycle];
  [v3 setObject:v19 forKey:@"short_cycle"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shortCycleTimer];
    [v3 setObject:v5 forKey:@"short_cycle_timer"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    cdrxEnable = self->_cdrxEnable;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  harqRttTimerDl = self->_harqRttTimerDl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  harqRttTimerUl = self->_harqRttTimerUl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  drxSlotOffset = self->_drxSlotOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  retransmissionTimerDl = self->_retransmissionTimerDl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  retransmissionTimerUl = self->_retransmissionTimerUl;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  onDurationTimerFraction = self->_onDurationTimerFraction;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  onDurationTimerMs = self->_onDurationTimerMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  inactivityTimerMs = self->_inactivityTimerMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  longCycle = self->_longCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  longCycleOffset = self->_longCycleOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  shortCycleEnable = self->_shortCycleEnable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  shortCycle = self->_shortCycle;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_15:
    shortCycleTimer = self->_shortCycleTimer;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v4[56] = self->_cdrxEnable;
    *(v4 + 30) |= 0x1000u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 3) = self->_harqRttTimerDl;
  *(v4 + 30) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 4) = self->_harqRttTimerUl;
  *(v4 + 30) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 2) = self->_drxSlotOffset;
  *(v4 + 30) |= 1u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 10) = self->_retransmissionTimerDl;
  *(v4 + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 11) = self->_retransmissionTimerUl;
  *(v4 + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 8) = self->_onDurationTimerFraction;
  *(v4 + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 9) = self->_onDurationTimerMs;
  *(v4 + 30) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 5) = self->_inactivityTimerMs;
  *(v4 + 30) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 6) = self->_longCycle;
  *(v4 + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 7) = self->_longCycleOffset;
  *(v4 + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[57] = self->_shortCycleEnable;
  *(v4 + 30) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  *(v4 + 12) = self->_shortCycle;
  *(v4 + 30) |= 0x400u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_15:
    *(v4 + 13) = self->_shortCycleTimer;
    *(v4 + 30) |= 0x800u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(result + 56) = self->_cdrxEnable;
    *(result + 30) |= 0x1000u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_harqRttTimerDl;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 4) = self->_harqRttTimerUl;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 2) = self->_drxSlotOffset;
  *(result + 30) |= 1u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 10) = self->_retransmissionTimerDl;
  *(result + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 11) = self->_retransmissionTimerUl;
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 8) = self->_onDurationTimerFraction;
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 9) = self->_onDurationTimerMs;
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 5) = self->_inactivityTimerMs;
  *(result + 30) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 6) = self->_longCycle;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 7) = self->_longCycleOffset;
  *(result + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 57) = self->_shortCycleEnable;
  *(result + 30) |= 0x2000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 12) = self->_shortCycle;
  *(result + 30) |= 0x400u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 13) = self->_shortCycleTimer;
  *(result + 30) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_78;
  }

  has = self->_has;
  v6 = *(v4 + 30);
  if ((has & 0x1000) != 0)
  {
    if ((*(v4 + 30) & 0x1000) == 0)
    {
      goto LABEL_78;
    }

    v7 = *(v4 + 56);
    if (self->_cdrxEnable)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 30) & 0x1000) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_harqRttTimerDl != *(v4 + 3))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_harqRttTimerUl != *(v4 + 4))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_78;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_drxSlotOffset != *(v4 + 2))
    {
      goto LABEL_78;
    }
  }

  else if (v6)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 30) & 0x100) == 0 || self->_retransmissionTimerDl != *(v4 + 10))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 30) & 0x100) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 30) & 0x200) == 0 || self->_retransmissionTimerUl != *(v4 + 11))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 30) & 0x200) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_onDurationTimerFraction != *(v4 + 8))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_onDurationTimerMs != *(v4 + 9))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_inactivityTimerMs != *(v4 + 5))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_longCycle != *(v4 + 6))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_longCycleOffset != *(v4 + 7))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x2000) == 0)
  {
    if ((*(v4 + 30) & 0x2000) == 0)
    {
      goto LABEL_62;
    }

LABEL_78:
    v9 = 0;
    goto LABEL_79;
  }

  if ((*(v4 + 30) & 0x2000) == 0)
  {
    goto LABEL_78;
  }

  v8 = *(v4 + 57);
  if (self->_shortCycleEnable)
  {
    if ((*(v4 + 57) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  else if (*(v4 + 57))
  {
    goto LABEL_78;
  }

LABEL_62:
  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 30) & 0x400) == 0 || self->_shortCycle != *(v4 + 12))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 30) & 0x400) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 30) & 0x800) == 0 || self->_shortCycleTimer != *(v4 + 13))
    {
      goto LABEL_78;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v6 & 0x800) == 0;
  }

LABEL_79:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v3 = 2654435761 * self->_cdrxEnable;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_harqRttTimerDl;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_harqRttTimerUl;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if (has)
  {
LABEL_5:
    v6 = 2654435761 * self->_drxSlotOffset;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_retransmissionTimerDl;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_retransmissionTimerUl;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_onDurationTimerFraction;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_onDurationTimerMs;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_inactivityTimerMs;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_longCycle;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_longCycleOffset;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_shortCycleEnable;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_shortCycle;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_shortCycleTimer;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 30);
  if ((v5 & 0x1000) != 0)
  {
    self->_cdrxEnable = *(v4 + 56);
    *&self->_has |= 0x1000u;
    v5 = *(v4 + 30);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_harqRttTimerDl = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 30);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_harqRttTimerUl = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 30);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_drxSlotOffset = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_retransmissionTimerDl = *(v4 + 10);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_retransmissionTimerUl = *(v4 + 11);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_onDurationTimerFraction = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_onDurationTimerMs = *(v4 + 9);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 30);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_inactivityTimerMs = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_longCycle = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_longCycleOffset = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 30);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_shortCycleEnable = *(v4 + 57);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_shortCycle = *(v4 + 12);
  *&self->_has |= 0x400u;
  if ((*(v4 + 30) & 0x800) != 0)
  {
LABEL_15:
    self->_shortCycleTimer = *(v4 + 13);
    *&self->_has |= 0x800u;
  }

LABEL_16:
}

@end