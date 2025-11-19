@interface AWDMETRICSKCellularPowerLogSocPerfLevelsMBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)a3;
- (int)binId;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBinId:(BOOL)a3;
- (void)setHasCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogSocPerfLevelsMBin

- (int)binId
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_binId;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBinId:(BOOL)a3
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

- (int)StringAsBinId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_0"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_3"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_4"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_5"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_6"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"VDD_SOC_PERFSTATE_END"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasCount:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogSocPerfLevelsMBin;
  v4 = [(AWDMETRICSKCellularPowerLogSocPerfLevelsMBin *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogSocPerfLevelsMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    binId = self->_binId;
    if (binId >= 8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_binId];
    }

    else
    {
      v6 = off_279A10040[binId];
    }

    [v3 setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_duration];
    [v3 setObject:v7 forKey:@"duration"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count];
    [v3 setObject:v8 forKey:@"count"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    count = self->_count;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_binId;
    *(v4 + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 1) = self->_duration;
  *(v4 + 24) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[5] = self->_count;
    *(v4 + 24) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_binId;
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_duration;
  *(result + 24) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 5) = self->_count;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_binId != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_count != *(v4 + 5))
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
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_binId;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_duration;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_count;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_binId = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 24) & 4) != 0)
  {
LABEL_4:
    self->_count = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end