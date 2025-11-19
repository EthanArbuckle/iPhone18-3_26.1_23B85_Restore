@interface AWDMETRICSCellularPowerLogPLMNScanEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReasonForScan:(id)a3;
- (int)StringAsScanResult:(id)a3;
- (int)StringAsScanType:(id)a3;
- (int)reasonForScan;
- (int)scanResult;
- (int)scanType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasReasonForScan:(BOOL)a3;
- (void)setHasScanResult:(BOOL)a3;
- (void)setHasScanType:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLogPLMNScanEvent

- (int)scanResult
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_scanResult;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScanResult:(BOOL)a3
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

- (int)StringAsScanResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FAILED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ABORT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)scanType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_scanType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScanType:(BOOL)a3
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

- (int)StringAsScanType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FULL_BAND"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ACQ_DB"];
  }

  return v4;
}

- (int)reasonForScan
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_reasonForScan;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReasonForScan:(BOOL)a3
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

- (int)StringAsReasonForScan:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LIMITED_SERV_RECOVERY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MANUAL_LIST_REQUESTED_BY_USER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HPPLMN_LIMITED_SERV_RECOVERY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularPowerLogPLMNScanEvent;
  v4 = [(AWDMETRICSCellularPowerLogPLMNScanEvent *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLogPLMNScanEvent *)self dictionaryRepresentation];
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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  scanResult = self->_scanResult;
  if (scanResult >= 3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scanResult];
  }

  else
  {
    v9 = off_279A10EF0[scanResult];
  }

  [v3 setObject:v9 forKey:@"scan_result"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_16:
  scanType = self->_scanType;
  if (scanType)
  {
    if (scanType == 1)
    {
      v11 = @"ACQ_DB";
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scanType];
    }
  }

  else
  {
    v11 = @"FULL_BAND";
  }

  [v3 setObject:v11 forKey:@"scan_type"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_22:
  reasonForScan = self->_reasonForScan;
  if (reasonForScan >= 3)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_reasonForScan];
  }

  else
  {
    v13 = off_279A10F08[reasonForScan];
  }

  [v3 setObject:v13 forKey:@"reason_for_scan"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [v3 setObject:v14 forKey:@"duration"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  scanResult = self->_scanResult;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  scanType = self->_scanType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  reasonForScan = self->_reasonForScan;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_scanResult;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 7) = self->_scanType;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 5) = self->_reasonForScan;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 4) = self->_duration;
  *(v4 + 36) |= 2u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v4 + 8) = self->_subsId;
    *(v4 + 36) |= 0x20u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_scanResult;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 7) = self->_scanType;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 5) = self->_reasonForScan;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 4) = self->_duration;
  *(result + 36) |= 2u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 8) = self->_subsId;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_scanResult != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_scanType != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_reasonForScan != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_duration != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 36) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_scanResult;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_scanType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_reasonForScan;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_duration;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_scanResult = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_scanType = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_reasonForScan = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_duration = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 36) & 0x20) != 0)
  {
LABEL_7:
    self->_subsId = *(v4 + 8);
    *&self->_has |= 0x20u;
  }

LABEL_8:
}

@end