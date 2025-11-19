@interface AWDMETRICSKCellularPowerLogWCDMACDRXConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDrxCycleLength:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasUeDrxCycleInactivityThreshold:(BOOL)a3;
- (void)setHasUeDrxGrantMonitoring:(BOOL)a3;
- (void)setHasUeGrantMonitoringInactivityThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogWCDMACDRXConfig

- (void)setHasDrxCycleLength:(BOOL)a3
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

- (void)setHasUeDrxCycleInactivityThreshold:(BOOL)a3
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

- (void)setHasUeGrantMonitoringInactivityThreshold:(BOOL)a3
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

- (void)setHasUeDrxGrantMonitoring:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasIsDataPreferred:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogWCDMACDRXConfig;
  v4 = [(AWDMETRICSKCellularPowerLogWCDMACDRXConfig *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogWCDMACDRXConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drxCycleLength];
  [v3 setObject:v12 forKey:@"drx_cycle_length"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ueDrxCycleInactivityThreshold];
  [v3 setObject:v13 forKey:@"ue_drx_Cycle_InactivityThreshold"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ueGrantMonitoringInactivityThreshold];
  [v3 setObject:v14 forKey:@"ue_GrantMonitoring_InactivityThreshold"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_ueDrxGrantMonitoring];
  [v3 setObject:v15 forKey:@"ue_drx_GrantMonitoring"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_8:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v8 forKey:@"num_subs"];

    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v9 forKey:@"is_data_preferred"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  drxCycleLength = self->_drxCycleLength;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    ueGrantMonitoringInactivityThreshold = self->_ueGrantMonitoringInactivityThreshold;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_17:
  ueDrxCycleInactivityThreshold = self->_ueDrxCycleInactivityThreshold;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((has & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  ueDrxGrantMonitoring = self->_ueDrxGrantMonitoring;
  PBDataWriterWriteBOOLField();
LABEL_6:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v5 = self->_has;
  if ((v5 & 4) != 0)
  {
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
    v5 = self->_has;
    if ((v5 & 0x40) == 0)
    {
LABEL_10:
      if ((v5 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_10;
  }

  isDataPreferred = self->_isDataPreferred;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
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
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 4) = self->_drxCycleLength;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    *(v4 + 10) = self->_ueGrantMonitoringInactivityThreshold;
    *(v4 + 48) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(v4 + 9) = self->_ueDrxCycleInactivityThreshold;
  *(v4 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((has & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  *(v4 + 45) = self->_ueDrxGrantMonitoring;
  *(v4 + 48) |= 0x80u;
LABEL_6:
  if (self->_plmn)
  {
    v7 = v4;
    [v4 setPlmn:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(v4 + 5) = self->_numSubs;
    *(v4 + 48) |= 4u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_10:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_10;
  }

  *(v4 + 44) = self->_isDataPreferred;
  *(v4 + 48) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(v4 + 8) = self->_subsId;
    *(v4 + 48) |= 8u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_drxCycleLength;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    *(v5 + 40) = self->_ueGrantMonitoringInactivityThreshold;
    *(v5 + 48) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_13:
  *(v5 + 36) = self->_ueDrxCycleInactivityThreshold;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((has & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *(v5 + 45) = self->_ueDrxGrantMonitoring;
  *(v5 + 48) |= 0x80u;
LABEL_6:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    *(v6 + 44) = self->_isDataPreferred;
    *(v6 + 48) |= 0x40u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_9;
  }

  *(v6 + 20) = self->_numSubs;
  *(v6 + 48) |= 4u;
  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v10 & 8) != 0)
  {
LABEL_9:
    *(v6 + 32) = self->_subsId;
    *(v6 + 48) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_drxCycleLength != *(v4 + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_ueDrxCycleInactivityThreshold != *(v4 + 9))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 48) & 0x20) == 0 || self->_ueGrantMonitoringInactivityThreshold != *(v4 + 10))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 48) & 0x20) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 48) & 0x80) == 0)
    {
      goto LABEL_45;
    }

    v8 = *(v4 + 45);
    if (self->_ueDrxGrantMonitoring)
    {
      if ((*(v4 + 45) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(v4 + 45))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 48) & 0x80) != 0)
  {
    goto LABEL_45;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_45;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_numSubs != *(v4 + 5))
    {
      goto LABEL_45;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((has & 0x40) == 0)
  {
    if ((*(v4 + 48) & 0x40) == 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  if ((*(v4 + 48) & 0x40) == 0)
  {
    goto LABEL_45;
  }

  v11 = *(v4 + 44);
  if (self->_isDataPreferred)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_45;
  }

LABEL_38:
  v9 = (*(v4 + 48) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_45;
    }

    v9 = 1;
  }

LABEL_46:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_drxCycleLength;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_ueDrxCycleInactivityThreshold;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_ueGrantMonitoringInactivityThreshold;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_ueDrxGrantMonitoring;
    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  v8 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 4) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v8;
  }

  v9 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v10 = 2654435761 * self->_isDataPreferred;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v11 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_drxCycleLength = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    self->_ueGrantMonitoringInactivityThreshold = *(v4 + 10);
    *&self->_has |= 0x20u;
    if ((*(v4 + 48) & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_17:
  self->_ueDrxCycleInactivityThreshold = *(v4 + 9);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 48);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  self->_ueDrxGrantMonitoring = *(v4 + 45);
  *&self->_has |= 0x80u;
LABEL_6:
  if (*(v4 + 3))
  {
    v7 = v4;
    [(AWDMETRICSKCellularPowerLogWCDMACDRXConfig *)self setPlmn:?];
    v4 = v7;
  }

  v6 = *(v4 + 48);
  if ((v6 & 4) != 0)
  {
    self->_numSubs = *(v4 + 5);
    *&self->_has |= 4u;
    v6 = *(v4 + 48);
    if ((v6 & 0x40) == 0)
    {
LABEL_10:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 48) & 0x40) == 0)
  {
    goto LABEL_10;
  }

  self->_isDataPreferred = *(v4 + 44);
  *&self->_has |= 0x40u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_11:
    self->_subsId = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_12:
}

@end