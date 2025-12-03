@interface AWDMETRICSKCellularPowerLogNRBWPHistMBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)id;
- (int)StringAsCcIndex:(id)index;
- (int)binId;
- (int)ccIndex;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCcIndex:(BOOL)index;
- (void)setHasDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogNRBWPHistMBin

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
  if ([idCopy isEqualToString:@"DL_5MHZ"])
  {
    v4 = 0;
  }

  else if ([idCopy isEqualToString:@"DL_10MHZ"])
  {
    v4 = 1;
  }

  else if ([idCopy isEqualToString:@"DL_15MHZ"])
  {
    v4 = 2;
  }

  else if ([idCopy isEqualToString:@"DL_20MHZ"])
  {
    v4 = 3;
  }

  else if ([idCopy isEqualToString:@"DL_25MHZ"])
  {
    v4 = 4;
  }

  else if ([idCopy isEqualToString:@"DL_30MHZ"])
  {
    v4 = 5;
  }

  else if ([idCopy isEqualToString:@"DL_35MHZ"])
  {
    v4 = 6;
  }

  else if ([idCopy isEqualToString:@"DL_40MHZ"])
  {
    v4 = 7;
  }

  else if ([idCopy isEqualToString:@"DL_45MHZ"])
  {
    v4 = 8;
  }

  else if ([idCopy isEqualToString:@"DL_50MHZ"])
  {
    v4 = 9;
  }

  else if ([idCopy isEqualToString:@"DL_60MHZ"])
  {
    v4 = 10;
  }

  else if ([idCopy isEqualToString:@"DL_70MHZ"])
  {
    v4 = 11;
  }

  else if ([idCopy isEqualToString:@"DL_80MHZ"])
  {
    v4 = 12;
  }

  else if ([idCopy isEqualToString:@"DL_90MHZ"])
  {
    v4 = 13;
  }

  else if ([idCopy isEqualToString:@"DL_100MHZ"])
  {
    v4 = 14;
  }

  else if ([idCopy isEqualToString:@"DL_200MHZ"])
  {
    v4 = 15;
  }

  else if ([idCopy isEqualToString:@"DL_400MHZ"])
  {
    v4 = 16;
  }

  else if ([idCopy isEqualToString:@"UL_5MHZ"])
  {
    v4 = 17;
  }

  else if ([idCopy isEqualToString:@"UL_10MHZ"])
  {
    v4 = 18;
  }

  else if ([idCopy isEqualToString:@"UL_15MHZ"])
  {
    v4 = 19;
  }

  else if ([idCopy isEqualToString:@"UL_20MHZ"])
  {
    v4 = 20;
  }

  else if ([idCopy isEqualToString:@"UL_25MHZ"])
  {
    v4 = 21;
  }

  else if ([idCopy isEqualToString:@"UL_30MHZ"])
  {
    v4 = 22;
  }

  else if ([idCopy isEqualToString:@"UL_35MHZ"])
  {
    v4 = 23;
  }

  else if ([idCopy isEqualToString:@"UL_40MHZ"])
  {
    v4 = 24;
  }

  else if ([idCopy isEqualToString:@"UL_45MHZ"])
  {
    v4 = 25;
  }

  else if ([idCopy isEqualToString:@"UL_50MHZ"])
  {
    v4 = 26;
  }

  else if ([idCopy isEqualToString:@"UL_60MHZ"])
  {
    v4 = 27;
  }

  else if ([idCopy isEqualToString:@"UL_70MHZ"])
  {
    v4 = 28;
  }

  else if ([idCopy isEqualToString:@"UL_80MHZ"])
  {
    v4 = 29;
  }

  else if ([idCopy isEqualToString:@"UL_90MHZ"])
  {
    v4 = 30;
  }

  else if ([idCopy isEqualToString:@"UL_100MHZ"])
  {
    v4 = 31;
  }

  else if ([idCopy isEqualToString:@"UL_200MHZ"])
  {
    v4 = 32;
  }

  else if ([idCopy isEqualToString:@"UL_400MHZ"])
  {
    v4 = 33;
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

- (int)ccIndex
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_ccIndex;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCcIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCcIndex:(id)index
{
  indexCopy = index;
  if ([indexCopy isEqualToString:@"PCC"])
  {
    v4 = 0;
  }

  else if ([indexCopy isEqualToString:@"SCC1"])
  {
    v4 = 1;
  }

  else if ([indexCopy isEqualToString:@"SCC2"])
  {
    v4 = 2;
  }

  else if ([indexCopy isEqualToString:@"SCC3"])
  {
    v4 = 3;
  }

  else if ([indexCopy isEqualToString:@"SCC4"])
  {
    v4 = 4;
  }

  else if ([indexCopy isEqualToString:@"SCC5"])
  {
    v4 = 5;
  }

  else if ([indexCopy isEqualToString:@"SCC6"])
  {
    v4 = 6;
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
  v8.super_class = AWDMETRICSKCellularPowerLogNRBWPHistMBin;
  v4 = [(AWDMETRICSKCellularPowerLogNRBWPHistMBin *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNRBWPHistMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v7 forKey:@"duration"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    ccIndex = self->_ccIndex;
    if (ccIndex >= 7)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ccIndex];
    }

    else
    {
      v9 = off_279A0F908[ccIndex];
    }

    [dictionary setObject:v9 forKey:@"cc_index"];

    goto LABEL_14;
  }

  binId = self->_binId;
  if (binId >= 0x22)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_binId];
  }

  else
  {
    v6 = off_279A0F7F8[binId];
  }

  [dictionary setObject:v6 forKey:@"bin_id"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    ccIndex = self->_ccIndex;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_binId;
    *(toCopy + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_duration;
  *(toCopy + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[3] = self->_ccIndex;
    *(toCopy + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_binId;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_duration;
  *(result + 20) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_ccIndex;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_binId != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_ccIndex != *(equalCopy + 3))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_binId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_duration;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_ccIndex;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_binId = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 4);
  *&self->_has |= 4u;
  if ((*(fromCopy + 20) & 2) != 0)
  {
LABEL_4:
    self->_ccIndex = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end