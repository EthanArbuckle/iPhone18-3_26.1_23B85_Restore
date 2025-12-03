@interface AWDMETRICSKCellularPowerLogServiceStatusEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRat:(id)rat;
- (int)StringAsStatus:(id)status;
- (int)rat;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRat:(BOOL)rat;
- (void)setHasStatus:(BOOL)status;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogServiceStatusEvent

- (int)status
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"LOST"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"ACQ"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"ACQ_FAIL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rat
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"SYS_RAT_GSM"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_UMTS"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_TDS"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_NR5G"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogServiceStatusEvent;
  v4 = [(AWDMETRICSKCellularPowerLogServiceStatusEvent *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogServiceStatusEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  status = self->_status;
  if (status >= 3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
  }

  else
  {
    v9 = off_2782625D0[status];
  }

  [dictionary setObject:v9 forKey:@"status"];

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

LABEL_14:
  rat = self->_rat;
  if (rat > 2)
  {
    if (rat == 3)
    {
      v11 = @"SYS_RAT_TDS";
      goto LABEL_28;
    }

    if (rat != 4)
    {
      if (rat == 255)
      {
        v11 = @"SYS_RAT_INVALID";
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v11 = @"SYS_RAT_NR5G";
  }

  else
  {
    if (!rat)
    {
      v11 = @"SYS_RAT_GSM";
      goto LABEL_28;
    }

    if (rat != 1)
    {
      if (rat == 2)
      {
        v11 = @"SYS_RAT_LTE";
        goto LABEL_28;
      }

LABEL_25:
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
      goto LABEL_28;
    }

    v11 = @"SYS_RAT_UMTS";
  }

LABEL_28:
  [dictionary setObject:v11 forKey:@"rat"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v5 forKey:@"subs_id"];
  }

LABEL_6:

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

  status = self->_status;
  PBDataWriterWriteInt32Field();
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
  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    subsId = self->_subsId;
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
    toCopy[1] = self->_timestamp;
    *(toCopy + 28) |= 1u;
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

  *(toCopy + 5) = self->_status;
  *(toCopy + 28) |= 4u;
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
  *(toCopy + 4) = self->_rat;
  *(toCopy + 28) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 6) = self->_subsId;
    *(toCopy + 28) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
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

  *(result + 5) = self->_status;
  *(result + 28) |= 4u;
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
  *(result + 4) = self->_rat;
  *(result + 28) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 6) = self->_subsId;
  *(result + 28) |= 8u;
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
    if ((*(equalCopy + 28) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_status != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_rat != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 28) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0 || self->_subsId != *(equalCopy + 6))
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
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_status;
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
  v4 = 2654435761 * self->_rat;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
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

  else if ((*(fromCopy + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_status = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 28);
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
  self->_rat = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 28) & 8) != 0)
  {
LABEL_5:
    self->_subsId = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end