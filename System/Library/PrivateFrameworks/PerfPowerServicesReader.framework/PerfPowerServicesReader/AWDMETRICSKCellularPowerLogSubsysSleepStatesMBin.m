@interface AWDMETRICSKCellularPowerLogSubsysSleepStatesMBin
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
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogSubsysSleepStatesMBin

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
  if ([v3 isEqualToString:@"SUBSYS_SLEEP_STATE_IDLE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SUBSYS_SLEEP_STATE_ACTIVE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBSYS_SLEEP_STATE_CLK_GATE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SUBSYS_SLEEP_STATE_PWR_GATE"])
  {
    v4 = 3;
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
  v8.super_class = AWDMETRICSKCellularPowerLogSubsysSleepStatesMBin;
  v4 = [(AWDMETRICSKCellularPowerLogSubsysSleepStatesMBin *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogSubsysSleepStatesMBin *)self dictionaryRepresentation];
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
    if (binId >= 4)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_binId];
    }

    else
    {
      v6 = off_279A10080[binId];
    }

    [v3 setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_duration];
    [v3 setObject:v7 forKey:@"duration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_binId;
    *(v4 + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_duration;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_binId;
    *(result + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_duration;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_binId != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_duration != *(v4 + 1))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_binId;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761u * self->_duration;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_binId = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
  }

  if (v5)
  {
    self->_duration = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end