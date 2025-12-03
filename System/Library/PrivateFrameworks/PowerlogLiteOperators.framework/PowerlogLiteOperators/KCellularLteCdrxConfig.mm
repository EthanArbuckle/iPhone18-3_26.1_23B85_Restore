@interface KCellularLteCdrxConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRrcState:(id)state;
- (int)rrcState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCdrxConfigStatus:(BOOL)status;
- (void)setHasCellStatus:(BOOL)status;
- (void)setHasDrxInactivityMs:(BOOL)ms;
- (void)setHasDrxRetxTimerMs:(BOOL)ms;
- (void)setHasDrxShortCycleNum:(BOOL)num;
- (void)setHasLongDrxCycleMs:(BOOL)ms;
- (void)setHasOnDurationMs:(BOOL)ms;
- (void)setHasRrcState:(BOOL)state;
- (void)setHasShortDrxCycleMs:(BOOL)ms;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTransmissionMode:(BOOL)mode;
- (void)writeTo:(id)to;
@end

@implementation KCellularLteCdrxConfig

- (void)setHasCellStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasOnDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasDrxInactivityMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDrxRetxTimerMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLongDrxCycleMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasShortDrxCycleMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDrxShortCycleNum:(BOOL)num
{
  if (num)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)rrcState
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_rrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRrcState:(BOOL)state
{
  if (state)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsRrcState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_NULL"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_IDLE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_ATMPT_CONNECTION"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_CONNECTED"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_ENDING"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"KLTE_RRC_STATE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCdrxConfigStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTransmissionMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularLteCdrxConfig;
  v4 = [(KCellularLteCdrxConfig *)&v8 description];
  dictionaryRepresentation = [(KCellularLteCdrxConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cellStatus];
  [dictionary setObject:v8 forKey:@"cell_status"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_onDurationMs];
  [dictionary setObject:v9 forKey:@"on_duration_ms"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxInactivityMs];
  [dictionary setObject:v10 forKey:@"drx_inactivity_ms"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxRetxTimerMs];
  [dictionary setObject:v11 forKey:@"drx_retx_timer_ms"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_longDrxCycleMs];
  [dictionary setObject:v12 forKey:@"long_drx_cycle_ms"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shortDrxCycleMs];
  [dictionary setObject:v13 forKey:@"short_drx_cycle_ms"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxShortCycleNum];
  [dictionary setObject:v14 forKey:@"drx_short_cycle_num"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_25:
  rrcState = self->_rrcState;
  if (rrcState >= 7)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rrcState];
  }

  else
  {
    v16 = off_27825ED50[rrcState];
  }

  [dictionary setObject:v16 forKey:@"rrc_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cdrxConfigStatus];
  [dictionary setObject:v17 forKey:@"cdrx_config_status"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_30:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_transmissionMode];
  [dictionary setObject:v18 forKey:@"transmission_mode"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v5 forKey:@"subs_id"];
  }

LABEL_14:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  cellStatus = self->_cellStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  onDurationMs = self->_onDurationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  drxInactivityMs = self->_drxInactivityMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  drxRetxTimerMs = self->_drxRetxTimerMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  longDrxCycleMs = self->_longDrxCycleMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  shortDrxCycleMs = self->_shortDrxCycleMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  drxShortCycleNum = self->_drxShortCycleNum;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  rrcState = self->_rrcState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  cdrxConfigStatus = self->_cdrxConfigStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  transmissionMode = self->_transmissionMode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 30) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 5) = self->_cellStatus;
  *(toCopy + 30) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(toCopy + 10) = self->_onDurationMs;
  *(toCopy + 30) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 6) = self->_drxInactivityMs;
  *(toCopy + 30) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 7) = self->_drxRetxTimerMs;
  *(toCopy + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 9) = self->_longDrxCycleMs;
  *(toCopy + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 12) = self->_shortDrxCycleMs;
  *(toCopy + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 8) = self->_drxShortCycleNum;
  *(toCopy + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 11) = self->_rrcState;
  *(toCopy + 30) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 4) = self->_cdrxConfigStatus;
  *(toCopy + 30) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(toCopy + 14) = self->_transmissionMode;
  *(toCopy + 30) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    *(toCopy + 13) = self->_subsId;
    *(toCopy + 30) |= 0x400u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 30) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_cellStatus;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_onDurationMs;
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 6) = self->_drxInactivityMs;
  *(result + 30) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 7) = self->_drxRetxTimerMs;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 9) = self->_longDrxCycleMs;
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 12) = self->_shortDrxCycleMs;
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 8) = self->_drxShortCycleNum;
  *(result + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 11) = self->_rrcState;
  *(result + 30) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 4) = self->_cdrxConfigStatus;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 14) = self->_transmissionMode;
  *(result + 30) |= 0x800u;
  if ((*&self->_has & 0x400) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 13) = self->_subsId;
  *(result + 30) |= 0x400u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  has = self->_has;
  v6 = *(equalCopy + 30);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_62;
    }
  }

  else if (v6)
  {
LABEL_62:
    v7 = 0;
    goto LABEL_63;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cellStatus != *(equalCopy + 5))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_onDurationMs != *(equalCopy + 10))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_drxInactivityMs != *(equalCopy + 6))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_drxRetxTimerMs != *(equalCopy + 7))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_longDrxCycleMs != *(equalCopy + 9))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 30) & 0x200) == 0 || self->_shortDrxCycleMs != *(equalCopy + 12))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x200) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_drxShortCycleNum != *(equalCopy + 8))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 30) & 0x100) == 0 || self->_rrcState != *(equalCopy + 11))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x100) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cdrxConfigStatus != *(equalCopy + 4))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 30) & 0x800) == 0 || self->_transmissionMode != *(equalCopy + 14))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 30) & 0x800) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 30) & 0x400) == 0 || self->_subsId != *(equalCopy + 13))
    {
      goto LABEL_62;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x400) == 0;
  }

LABEL_63:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_cellStatus;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_onDurationMs;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_drxInactivityMs;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_drxRetxTimerMs;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_longDrxCycleMs;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_shortDrxCycleMs;
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
    v10 = 2654435761 * self->_drxShortCycleNum;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_rrcState;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 2) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_cdrxConfigStatus;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761 * self->_transmissionMode;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 30);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 30);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_cellStatus = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_onDurationMs = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 30);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_drxInactivityMs = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_drxRetxTimerMs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_longDrxCycleMs = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_shortDrxCycleMs = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_drxShortCycleNum = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_rrcState = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 30);
  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_cdrxConfigStatus = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  self->_transmissionMode = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  if ((*(fromCopy + 30) & 0x400) != 0)
  {
LABEL_13:
    self->_subsId = *(fromCopy + 13);
    *&self->_has |= 0x400u;
  }

LABEL_14:
}

@end