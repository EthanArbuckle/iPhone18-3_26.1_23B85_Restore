@interface AWDMETRICSKCellularPowerLogSystemEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMode:(id)a3;
- (int)StringAsPrevMode:(id)a3;
- (int)StringAsPrevRat:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)mode;
- (int)prevMode;
- (int)prevRat;
- (int)rat;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMode:(BOOL)a3;
- (void)setHasOosPlmnSearchTimerActive:(BOOL)a3;
- (void)setHasPrevMode:(BOOL)a3;
- (void)setHasPrevRat:(BOOL)a3;
- (void)setHasPrevStateDurationMs:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogSystemEvent

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasOosPlmnSearchTimerActive:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)mode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"POWER_OFF"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DEV_REGISTRATION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DEV_REG_CNF"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AIRPLANE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"POWER_ON"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SILENT_RESET"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DEACTIVATE_AS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REACTIVATE_AS"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"FAST_DETACH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ON_OTA_SUBSCRIPTION"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"UNCHANGE_MODE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CHANGE_FEATURE_LIST"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"FAST_STACK_RESET"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rat
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_RAT_NOT_AVAILABLE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_GSM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_UMTS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_LTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_NR"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prevMode
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_prevMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPrevMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"POWER_OFF"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DEV_REGISTRATION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DEV_REG_CNF"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AIRPLANE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"POWER_ON"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SILENT_RESET"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DEACTIVATE_AS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REACTIVATE_AS"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"FAST_DETACH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ON_OTA_SUBSCRIPTION"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"UNCHANGE_MODE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CHANGE_FEATURE_LIST"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"FAST_STACK_RESET"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prevRat
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_prevRat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevRat:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsPrevRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_RAT_NOT_AVAILABLE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_GSM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_UMTS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_LTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_RAT_NR"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevStateDurationMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogSystemEvent;
  v4 = [(AWDMETRICSKCellularPowerLogSystemEvent *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogSystemEvent *)self dictionaryRepresentation];
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
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v8 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_oosPlmnSearchTimerActive];
  [v3 setObject:v9 forKey:@"oos_plmn_search_timer_active"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_16:
  mode = self->_mode;
  if (mode >= 0xE)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mode];
  }

  else
  {
    v11 = off_279A10578[mode];
  }

  [v3 setObject:v11 forKey:@"mode"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_20:
  rat = self->_rat;
  if (rat >= 5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
  }

  else
  {
    v13 = off_279A105E8[rat];
  }

  [v3 setObject:v13 forKey:@"rat"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_24:
  prevMode = self->_prevMode;
  if (prevMode >= 0xE)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevMode];
  }

  else
  {
    v15 = off_279A10578[prevMode];
  }

  [v3 setObject:v15 forKey:@"prev_mode"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_28:
  prevRat = self->_prevRat;
  if (prevRat >= 5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevRat];
  }

  else
  {
    v17 = off_279A105E8[prevRat];
  }

  [v3 setObject:v17 forKey:@"prev_rat"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurationMs];
  [v3 setObject:v5 forKey:@"prev_state_duration_ms"];

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  oosPlmnSearchTimerActive = self->_oosPlmnSearchTimerActive;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  mode = self->_mode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  prevMode = self->_prevMode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  prevRat = self->_prevRat;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    prevStateDurationMs = self->_prevStateDurationMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 44) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 9) = self->_subsId;
  *(v4 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 40) = self->_oosPlmnSearchTimerActive;
  *(v4 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 4) = self->_mode;
  *(v4 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 8) = self->_rat;
  *(v4 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 5) = self->_prevMode;
  *(v4 + 44) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  *(v4 + 6) = self->_prevRat;
  *(v4 + 44) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(v4 + 7) = self->_prevStateDurationMs;
    *(v4 + 44) |= 0x10u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 44) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_subsId;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 40) = self->_oosPlmnSearchTimerActive;
  *(result + 44) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 4) = self->_mode;
  *(result + 44) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 8) = self->_rat;
  *(result + 44) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 5) = self->_prevMode;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 6) = self->_prevRat;
  *(result + 44) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 7) = self->_prevStateDurationMs;
  *(result + 44) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 44) & 0x40) == 0 || self->_subsId != *(v4 + 9))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x80) == 0)
  {
    if ((*(v4 + 44) & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_44:
    v6 = 0;
    goto LABEL_45;
  }

  if ((*(v4 + 44) & 0x80) == 0)
  {
    goto LABEL_44;
  }

  v5 = *(v4 + 40);
  if (self->_oosPlmnSearchTimerActive)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_44;
  }

LABEL_14:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_mode != *(v4 + 4))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0 || self->_rat != *(v4 + 8))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_prevMode != *(v4 + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_prevRat != *(v4 + 6))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_44;
  }

  v6 = (*(v4 + 44) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0 || self->_prevStateDurationMs != *(v4 + 7))
    {
      goto LABEL_44;
    }

    v6 = 1;
  }

LABEL_45:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_subsId;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_oosPlmnSearchTimerActive;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_mode;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_rat;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_prevMode;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_prevRat;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_prevStateDurationMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 44) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_oosPlmnSearchTimerActive = *(v4 + 40);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 44);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_mode = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_rat = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_prevMode = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_prevRat = *(v4 + 6);
  *&self->_has |= 8u;
  if ((*(v4 + 44) & 0x10) != 0)
  {
LABEL_9:
    self->_prevStateDurationMs = *(v4 + 7);
    *&self->_has |= 0x10u;
  }

LABEL_10:
}

@end