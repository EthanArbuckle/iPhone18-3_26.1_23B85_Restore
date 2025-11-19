@interface AWDMETRICSKCellularPowerLogProtocolStateHistMBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)a3;
- (int)binId;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCount:(BOOL)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasDurationBinIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogProtocolStateHistMBin

- (int)binId
{
  if (*&self->_has)
  {
    return self->_binId;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsBinId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AIRPLANE_MODE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TX_RX_SUSPENDED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OOS_IDLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"OOS_3GPP_NETWORK_SCAN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GSM_IDLE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GSM_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"WCDMA_IDLE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"WCDMA_PCH"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"WCDMA_FACH"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"WCDMA_DCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"WCDMA_INACTIVE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LTE_IDLE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"LTE_CONNECTED"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_IDLE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_CONNECTED"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_INACTIVE"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"NR_SUB6_ENDC_ON"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NR_MMWAVE_IDLE"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"NR_MMWAVE_CONNECTED"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"NR_MMWAVE_INACTIVE"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"NR_MMWAVE_ENDC_ON"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 21;
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCount:(BOOL)a3
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

- (void)setHasDurationBinIndex:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogProtocolStateHistMBin;
  v4 = [(AWDMETRICSKCellularPowerLogProtocolStateHistMBin *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogProtocolStateHistMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    binId = self->_binId;
    if (binId >= 0x16)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_binId];
    }

    else
    {
      v6 = off_279A0FE20[binId];
    }

    [v3 setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [v3 setObject:v9 forKey:@"duration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count];
  [v3 setObject:v10 forKey:@"count"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationBinIndex];
    [v3 setObject:v7 forKey:@"duration_bin_index"];
  }

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  count = self->_count;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    durationBinIndex = self->_durationBinIndex;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_binId;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_duration;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[3] = self->_count;
  *(v4 + 24) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[5] = self->_durationBinIndex;
    *(v4 + 24) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_binId;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_duration;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 3) = self->_count;
  *(result + 24) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_durationBinIndex;
  *(result + 24) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_binId != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_duration != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_count != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 24) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 24) & 8) == 0 || self->_durationBinIndex != *(v4 + 5))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_binId;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_duration;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_count;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_durationBinIndex;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_binId = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_count = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 24) & 8) != 0)
  {
LABEL_5:
    self->_durationBinIndex = *(v4 + 5);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end