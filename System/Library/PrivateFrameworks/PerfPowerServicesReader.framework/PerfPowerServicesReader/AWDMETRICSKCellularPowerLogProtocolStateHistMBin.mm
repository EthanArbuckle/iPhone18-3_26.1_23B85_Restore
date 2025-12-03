@interface AWDMETRICSKCellularPowerLogProtocolStateHistMBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)id;
- (int)binId;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCount:(BOOL)count;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasDurationBinIndex:(BOOL)index;
- (void)writeTo:(id)to;
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

- (int)StringAsBinId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"AIRPLANE_MODE"])
  {
    v4 = 0;
  }

  else if ([idCopy isEqualToString:@"TX_RX_SUSPENDED"])
  {
    v4 = 1;
  }

  else if ([idCopy isEqualToString:@"OOS_IDLE"])
  {
    v4 = 2;
  }

  else if ([idCopy isEqualToString:@"OOS_3GPP_NETWORK_SCAN"])
  {
    v4 = 3;
  }

  else if ([idCopy isEqualToString:@"GSM_IDLE"])
  {
    v4 = 4;
  }

  else if ([idCopy isEqualToString:@"GSM_CONNECTED"])
  {
    v4 = 5;
  }

  else if ([idCopy isEqualToString:@"WCDMA_IDLE"])
  {
    v4 = 6;
  }

  else if ([idCopy isEqualToString:@"WCDMA_PCH"])
  {
    v4 = 7;
  }

  else if ([idCopy isEqualToString:@"WCDMA_FACH"])
  {
    v4 = 8;
  }

  else if ([idCopy isEqualToString:@"WCDMA_DCH"])
  {
    v4 = 9;
  }

  else if ([idCopy isEqualToString:@"WCDMA_INACTIVE"])
  {
    v4 = 10;
  }

  else if ([idCopy isEqualToString:@"LTE_IDLE"])
  {
    v4 = 11;
  }

  else if ([idCopy isEqualToString:@"LTE_CONNECTED"])
  {
    v4 = 12;
  }

  else if ([idCopy isEqualToString:@"NR_SUB6_IDLE"])
  {
    v4 = 13;
  }

  else if ([idCopy isEqualToString:@"NR_SUB6_CONNECTED"])
  {
    v4 = 14;
  }

  else if ([idCopy isEqualToString:@"NR_SUB6_INACTIVE"])
  {
    v4 = 15;
  }

  else if ([idCopy isEqualToString:@"NR_SUB6_ENDC_ON"])
  {
    v4 = 16;
  }

  else if ([idCopy isEqualToString:@"NR_MMWAVE_IDLE"])
  {
    v4 = 17;
  }

  else if ([idCopy isEqualToString:@"NR_MMWAVE_CONNECTED"])
  {
    v4 = 18;
  }

  else if ([idCopy isEqualToString:@"NR_MMWAVE_INACTIVE"])
  {
    v4 = 19;
  }

  else if ([idCopy isEqualToString:@"NR_MMWAVE_ENDC_ON"])
  {
    v4 = 20;
  }

  else if ([idCopy isEqualToString:@"OTHER"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDurationBinIndex:(BOOL)index
{
  if (index)
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
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogProtocolStateHistMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v9 forKey:@"duration"];

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
  [dictionary setObject:v10 forKey:@"count"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationBinIndex];
    [dictionary setObject:v7 forKey:@"duration_bin_index"];
  }

LABEL_10:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_binId;
    *(toCopy + 24) |= 1u;
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

  toCopy[4] = self->_duration;
  *(toCopy + 24) |= 4u;
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
  toCopy[3] = self->_count;
  *(toCopy + 24) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    toCopy[5] = self->_durationBinIndex;
    *(toCopy + 24) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_binId != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_count != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 24) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_durationBinIndex != *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_binId = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
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

  else if ((*(fromCopy + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 24);
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
  self->_count = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 24) & 8) != 0)
  {
LABEL_5:
    self->_durationBinIndex = *(fromCopy + 5);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end