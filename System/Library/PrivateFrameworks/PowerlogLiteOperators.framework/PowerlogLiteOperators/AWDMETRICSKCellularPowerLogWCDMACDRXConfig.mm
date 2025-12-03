@interface AWDMETRICSKCellularPowerLogWCDMACDRXConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDrxCycleLength:(BOOL)length;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasUeDrxCycleInactivityThreshold:(BOOL)threshold;
- (void)setHasUeDrxGrantMonitoring:(BOOL)monitoring;
- (void)setHasUeGrantMonitoringInactivityThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogWCDMACDRXConfig

- (void)setHasDrxCycleLength:(BOOL)length
{
  if (length)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUeDrxCycleInactivityThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUeGrantMonitoringInactivityThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasUeDrxGrantMonitoring:(BOOL)monitoring
{
  if (monitoring)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
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
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogWCDMACDRXConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v11 forKey:@"timestamp"];

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
  [dictionary setObject:v12 forKey:@"drx_cycle_length"];

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
  [dictionary setObject:v13 forKey:@"ue_drx_Cycle_InactivityThreshold"];

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
  [dictionary setObject:v14 forKey:@"ue_GrantMonitoring_InactivityThreshold"];

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
  [dictionary setObject:v15 forKey:@"ue_drx_GrantMonitoring"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v5 forKey:@"subs_id"];
  }

LABEL_8:
  plmn = self->_plmn;
  if (plmn)
  {
    [dictionary setObject:plmn forKey:@"plmn"];
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSubs];
    [dictionary setObject:v8 forKey:@"num_subs"];

    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [dictionary setObject:v9 forKey:@"is_data_preferred"];
  }

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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
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

  *(toCopy + 4) = self->_drxCycleLength;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    *(toCopy + 10) = self->_ueGrantMonitoringInactivityThreshold;
    *(toCopy + 48) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(toCopy + 9) = self->_ueDrxCycleInactivityThreshold;
  *(toCopy + 48) |= 0x10u;
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
  *(toCopy + 45) = self->_ueDrxGrantMonitoring;
  *(toCopy + 48) |= 0x80u;
LABEL_6:
  if (self->_plmn)
  {
    v7 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(toCopy + 5) = self->_numSubs;
    *(toCopy + 48) |= 4u;
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

  *(toCopy + 44) = self->_isDataPreferred;
  *(toCopy + 48) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(toCopy + 8) = self->_subsId;
    *(toCopy + 48) |= 8u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_drxCycleLength != *(equalCopy + 4))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0 || self->_ueDrxCycleInactivityThreshold != *(equalCopy + 9))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 48) & 0x10) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 48) & 0x20) == 0 || self->_ueGrantMonitoringInactivityThreshold != *(equalCopy + 10))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 48) & 0x20) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 48) & 0x80) == 0)
    {
      goto LABEL_45;
    }

    v8 = *(equalCopy + 45);
    if (self->_ueDrxGrantMonitoring)
    {
      if ((*(equalCopy + 45) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (*(equalCopy + 45))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 48) & 0x80) != 0)
  {
    goto LABEL_45;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_45;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_numSubs != *(equalCopy + 5))
    {
      goto LABEL_45;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((has & 0x40) == 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  if ((v6 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  v11 = *(equalCopy + 44);
  if (self->_isDataPreferred)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_45;
  }

LABEL_38:
  v9 = (v6 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_subsId != *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
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

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_drxCycleLength = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    self->_ueGrantMonitoringInactivityThreshold = *(fromCopy + 10);
    *&self->_has |= 0x20u;
    if ((*(fromCopy + 48) & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_17:
  self->_ueDrxCycleInactivityThreshold = *(fromCopy + 9);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
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
  self->_ueDrxGrantMonitoring = *(fromCopy + 45);
  *&self->_has |= 0x80u;
LABEL_6:
  if (*(fromCopy + 3))
  {
    v7 = fromCopy;
    [(AWDMETRICSKCellularPowerLogWCDMACDRXConfig *)self setPlmn:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 48);
  if ((v6 & 4) != 0)
  {
    self->_numSubs = *(fromCopy + 5);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 48);
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

  else if ((*(fromCopy + 48) & 0x40) == 0)
  {
    goto LABEL_10;
  }

  self->_isDataPreferred = *(fromCopy + 44);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 48) & 8) != 0)
  {
LABEL_11:
    self->_subsId = *(fromCopy + 8);
    *&self->_has |= 8u;
  }

LABEL_12:
}

@end