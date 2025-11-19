@interface AWDSymptomsCellularSDMTimeStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTotalActiveTimeSeconds:(BOOL)a3;
- (void)setHasTotalInferredSleepTimeSeconds:(BOOL)a3;
- (void)setHasTotalQuiesceTimeSeconds:(BOOL)a3;
- (void)setHasTotalTimeSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsCellularSDMTimeStatistics

- (void)setHasTotalTimeSeconds:(BOOL)a3
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

- (void)setHasTotalActiveTimeSeconds:(BOOL)a3
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

- (void)setHasTotalQuiesceTimeSeconds:(BOOL)a3
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

- (void)setHasTotalInferredSleepTimeSeconds:(BOOL)a3
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
  v8.super_class = AWDSymptomsCellularSDMTimeStatistics;
  v4 = [(AWDSymptomsCellularSDMTimeStatistics *)&v8 description];
  v5 = [(AWDSymptomsCellularSDMTimeStatistics *)self dictionaryRepresentation];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalTimeSeconds];
  [v3 setObject:v8 forKey:@"totalTimeSeconds"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalActiveTimeSeconds];
  [v3 setObject:v9 forKey:@"totalActiveTimeSeconds"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalQuiesceTimeSeconds];
  [v3 setObject:v10 forKey:@"totalQuiesceTimeSeconds"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalInferredSleepTimeSeconds];
    [v3 setObject:v5 forKey:@"totalInferredSleepTimeSeconds"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  totalTimeSeconds = self->_totalTimeSeconds;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  totalActiveTimeSeconds = self->_totalActiveTimeSeconds;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  totalQuiesceTimeSeconds = self->_totalQuiesceTimeSeconds;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    totalInferredSleepTimeSeconds = self->_totalInferredSleepTimeSeconds;
    PBDataWriterWriteUint64Field();
  }

LABEL_7:
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[5] = self->_totalTimeSeconds;
  *(v4 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4[2] = self->_totalActiveTimeSeconds;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v4[4] = self->_totalQuiesceTimeSeconds;
  *(v4 + 48) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v4[3] = self->_totalInferredSleepTimeSeconds;
    *(v4 + 48) |= 4u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 48) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_totalTimeSeconds;
  *(result + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 2) = self->_totalActiveTimeSeconds;
  *(result + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 4) = self->_totalQuiesceTimeSeconds;
  *(result + 48) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 3) = self->_totalInferredSleepTimeSeconds;
  *(result + 48) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_totalTimeSeconds != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_totalActiveTimeSeconds != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_totalQuiesceTimeSeconds != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_totalInferredSleepTimeSeconds != *(v4 + 3))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_totalTimeSeconds;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_totalActiveTimeSeconds;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761u * self->_totalQuiesceTimeSeconds;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761u * self->_totalInferredSleepTimeSeconds;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
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
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 48) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_totalTimeSeconds = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 48);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_totalActiveTimeSeconds = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_totalQuiesceTimeSeconds = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_6:
    self->_totalInferredSleepTimeSeconds = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_7:
}

@end