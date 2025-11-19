@interface AWDMETRICSCellularPowerLogNRFRCoverage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsFR1:(id)a3;
- (int)StringAsFR2:(id)a3;
- (int)fR1;
- (int)fR2;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFR1:(BOOL)a3;
- (void)setHasFR2:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLogNRFRCoverage

- (int)fR1
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_fR1;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFR1:(BOOL)a3
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

- (int)StringAsFR1:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_AVAILABLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"AVAILABLE"];
  }

  return v4;
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

- (int)fR2
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fR2;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFR2:(BOOL)a3
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

- (int)StringAsFR2:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NOT_AVAILABLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"AVAILABLE"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSCellularPowerLogNRFRCoverage;
  v4 = [(AWDMETRICSCellularPowerLogNRFRCoverage *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLogNRFRCoverage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
      [v3 setObject:v8 forKey:@"subs_id"];

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_20;
      }

LABEL_14:
      fR2 = self->_fR2;
      if (fR2)
      {
        if (fR2 == 1)
        {
          v10 = @"AVAILABLE";
        }

        else
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fR2];
        }
      }

      else
      {
        v10 = @"NOT_AVAILABLE";
      }

      [v3 setObject:v10 forKey:@"FR2"];

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  fR1 = self->_fR1;
  if (fR1)
  {
    if (fR1 == 1)
    {
      v7 = @"AVAILABLE";
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fR1];
    }
  }

  else
  {
    v7 = @"NOT_AVAILABLE";
  }

  [v3 setObject:v7 forKey:@"FR1"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_20:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  fR1 = self->_fR1;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    fR2 = self->_fR2;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 4) = self->_fR1;
  *(v4 + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v4 + 6) = self->_subsId;
  *(v4 + 28) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v4 + 5) = self->_fR2;
    *(v4 + 28) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_fR1;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 6) = self->_subsId;
  *(result + 28) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_fR2;
  *(result + 28) |= 4u;
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
    if ((*(v4 + 28) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_fR1 != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 28) & 8) == 0 || self->_subsId != *(v4 + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 28) & 8) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_fR2 != *(v4 + 5))
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
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_fR1;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
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
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_subsId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_fR2;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_fR1 = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_subsId = *(v4 + 6);
  *&self->_has |= 8u;
  if ((*(v4 + 28) & 4) != 0)
  {
LABEL_5:
    self->_fR2 = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end