@interface AWDMETRICSCellularPowerLogLTECDRXConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCdrxEnable:(BOOL)a3;
- (void)setHasCycleStartOffset:(BOOL)a3;
- (void)setHasDrxInactivity:(BOOL)a3;
- (void)setHasDrxRetxTimer:(BOOL)a3;
- (void)setHasDrxShortCycleNum:(BOOL)a3;
- (void)setHasLongDrxCycle:(BOOL)a3;
- (void)setHasOnDuration:(BOOL)a3;
- (void)setHasShortDrxCycle:(BOOL)a3;
- (void)setHasShortDrxCycleEnable:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLogLTECDRXConfig

- (void)setHasOnDuration:(BOOL)a3
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

- (void)setHasDrxInactivity:(BOOL)a3
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

- (void)setHasDrxRetxTimer:(BOOL)a3
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

- (void)setHasLongDrxCycle:(BOOL)a3
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

- (void)setHasCycleStartOffset:(BOOL)a3
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

- (void)setHasShortDrxCycleEnable:(BOOL)a3
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

- (void)setHasShortDrxCycle:(BOOL)a3
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

- (void)setHasDrxShortCycleNum:(BOOL)a3
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

- (void)setHasCdrxEnable:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularPowerLogLTECDRXConfig;
  v4 = [(AWDMETRICSCellularPowerLogLTECDRXConfig *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLogLTECDRXConfig *)self dictionaryRepresentation];
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
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_onDuration];
  [v3 setObject:v8 forKey:@"on_duration"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxInactivity];
  [v3 setObject:v9 forKey:@"drx_inactivity"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxRetxTimer];
  [v3 setObject:v10 forKey:@"drx_retx_timer"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_longDrxCycle];
  [v3 setObject:v11 forKey:@"long_drx_cycle"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cycleStartOffset];
  [v3 setObject:v12 forKey:@"cycle_start_offset"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_shortDrxCycleEnable];
  [v3 setObject:v13 forKey:@"short_drx_cycle_enable"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shortDrxCycle];
  [v3 setObject:v14 forKey:@"short_drx_cycle"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxShortCycleNum];
  [v3 setObject:v15 forKey:@"drx_short_cycle_num"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_cdrxEnable];
  [v3 setObject:v16 forKey:@"cdrx_enable"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_13:

  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  onDuration = self->_onDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  drxInactivity = self->_drxInactivity;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  drxRetxTimer = self->_drxRetxTimer;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  longDrxCycle = self->_longDrxCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  cycleStartOffset = self->_cycleStartOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  shortDrxCycleEnable = self->_shortDrxCycleEnable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  shortDrxCycle = self->_shortDrxCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  drxShortCycleNum = self->_drxShortCycleNum;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  cdrxEnable = self->_cdrxEnable;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_13:
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
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 9) = self->_onDuration;
  *(v4 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 5) = self->_drxInactivity;
  *(v4 + 26) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 6) = self->_drxRetxTimer;
  *(v4 + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 8) = self->_longDrxCycle;
  *(v4 + 26) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 4) = self->_cycleStartOffset;
  *(v4 + 26) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 49) = self->_shortDrxCycleEnable;
  *(v4 + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 10) = self->_shortDrxCycle;
  *(v4 + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 7) = self->_drxShortCycleNum;
  *(v4 + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  *(v4 + 48) = self->_cdrxEnable;
  *(v4 + 26) |= 0x200u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    *(v4 + 11) = self->_subsId;
    *(v4 + 26) |= 0x100u;
  }

LABEL_13:
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
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_onDuration;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 5) = self->_drxInactivity;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 6) = self->_drxRetxTimer;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 8) = self->_longDrxCycle;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 4) = self->_cycleStartOffset;
  *(result + 26) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 49) = self->_shortDrxCycleEnable;
  *(result + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 10) = self->_shortDrxCycle;
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 7) = self->_drxShortCycleNum;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 48) = self->_cdrxEnable;
  *(result + 26) |= 0x200u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 11) = self->_subsId;
  *(result + 26) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  has = self->_has;
  v6 = *(v4 + 26);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_62;
    }
  }

  else if (v6)
  {
    goto LABEL_62;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_onDuration != *(v4 + 9))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_drxInactivity != *(v4 + 5))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_drxRetxTimer != *(v4 + 6))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_longDrxCycle != *(v4 + 8))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cycleStartOffset != *(v4 + 4))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 26) & 0x400) == 0)
    {
      goto LABEL_62;
    }

    v7 = *(v4 + 49);
    if (self->_shortDrxCycleEnable)
    {
      if ((*(v4 + 49) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (*(v4 + 49))
    {
      goto LABEL_62;
    }
  }

  else if ((*(v4 + 26) & 0x400) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_shortDrxCycle != *(v4 + 10))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_drxShortCycleNum != *(v4 + 7))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    if ((*(v4 + 26) & 0x200) == 0)
    {
      goto LABEL_52;
    }

LABEL_62:
    v8 = 0;
    goto LABEL_63;
  }

  if ((*(v4 + 26) & 0x200) == 0)
  {
    goto LABEL_62;
  }

  v9 = *(v4 + 48);
  if (self->_cdrxEnable)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_62;
  }

LABEL_52:
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 26) & 0x100) == 0 || self->_subsId != *(v4 + 11))
    {
      goto LABEL_62;
    }

    v8 = 1;
  }

  else
  {
    v8 = (v6 & 0x100) == 0;
  }

LABEL_63:

  return v8;
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
      v4 = 2654435761 * self->_onDuration;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_drxInactivity;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_drxRetxTimer;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_longDrxCycle;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_cycleStartOffset;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_shortDrxCycleEnable;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_shortDrxCycle;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_drxShortCycleNum;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761 * self->_cdrxEnable;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_onDuration = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 26);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_drxInactivity = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 26);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_drxRetxTimer = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_longDrxCycle = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 26);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_cycleStartOffset = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_shortDrxCycleEnable = *(v4 + 49);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_shortDrxCycle = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_drxShortCycleNum = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  self->_cdrxEnable = *(v4 + 48);
  *&self->_has |= 0x200u;
  if ((*(v4 + 26) & 0x100) != 0)
  {
LABEL_12:
    self->_subsId = *(v4 + 11);
    *&self->_has |= 0x100u;
  }

LABEL_13:
}

@end