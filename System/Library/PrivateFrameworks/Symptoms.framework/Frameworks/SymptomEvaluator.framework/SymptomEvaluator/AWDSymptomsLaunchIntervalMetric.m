@interface AWDSymptomsLaunchIntervalMetric
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProcess:(id)a3;
- (int)process;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProcess:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsLaunchIntervalMetric

- (void)setHasTimestamp:(BOOL)a3
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

- (int)process
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_process;
  }

  else
  {
    return 1;
  }
}

- (void)setHasProcess:(BOOL)a3
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

- (int)StringAsProcess:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"symptomsd"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"symptomsd_helper"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"symptomsd_diag"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsLaunchIntervalMetric;
  v4 = [(AWDSymptomsLaunchIntervalMetric *)&v8 description];
  v5 = [(AWDSymptomsLaunchIntervalMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_intervalSincePreviousLaunch];
    [v3 setObject:v6 forKey:@"intervalSincePreviousLaunch"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v7 = self->_process - 1;
    if (v7 >= 3)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_process];
    }

    else
    {
      v8 = off_27898E448[v7];
    }

    [v3 setObject:v8 forKey:@"process"];

    goto LABEL_11;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  [v3 setObject:v5 forKey:@"timestamp"];

  has = self->_has;
  if (has)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
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

  intervalSincePreviousLaunch = self->_intervalSincePreviousLaunch;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    process = self->_process;
    PBDataWriterWriteInt32Field();
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
    v4[2] = self->_timestamp;
    *(v4 + 28) |= 2u;
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

  v4[1] = self->_intervalSincePreviousLaunch;
  *(v4 + 28) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 6) = self->_process;
    *(v4 + 28) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 28) |= 2u;
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

  *(result + 1) = self->_intervalSincePreviousLaunch;
  *(result + 28) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 6) = self->_process;
  *(result + 28) |= 4u;
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
    if ((*(v4 + 28) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_intervalSincePreviousLaunch != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_process != *(v4 + 6))
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

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_intervalSincePreviousLaunch;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_process;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
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

  else if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_intervalSincePreviousLaunch = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_4:
    self->_process = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end