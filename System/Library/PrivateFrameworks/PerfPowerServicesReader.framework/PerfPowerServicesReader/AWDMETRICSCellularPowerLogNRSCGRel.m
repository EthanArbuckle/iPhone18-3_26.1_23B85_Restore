@interface AWDMETRICSCellularPowerLogNRSCGRel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)a3;
- (int)StringAsFr:(id)a3;
- (int)event;
- (int)fr;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEvent:(BOOL)a3;
- (void)setHasFr:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLogNRSCGRel

- (int)event
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_event;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEvent:(BOOL)a3
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

- (int)StringAsEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFG_REL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RLF"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DATA_INACTIVE_PROPRIETARY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DATA_INACTIVE_SPEC"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MSIM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NAS_CONN_ABORT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
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

- (int)fr
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFr:(BOOL)a3
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

- (int)StringAsFr:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUB6"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MMWAVE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INVALID"])
  {
    v4 = 2;
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
  v8.super_class = AWDMETRICSCellularPowerLogNRSCGRel;
  v4 = [(AWDMETRICSCellularPowerLogNRSCGRel *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLogNRSCGRel *)self dictionaryRepresentation];
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

LABEL_11:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
      [v3 setObject:v8 forKey:@"subs_id"];

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_16;
      }

LABEL_12:
      fr = self->_fr;
      if (fr >= 3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
      }

      else
      {
        v10 = off_279A10ED8[fr];
      }

      [v3 setObject:v10 forKey:@"fr"];

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  event = self->_event;
  if (event >= 7)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_event];
  }

  else
  {
    v7 = off_279A10EA0[event];
  }

  [v3 setObject:v7 forKey:@"event"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:

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

  event = self->_event;
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
    fr = self->_fr;
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

  *(v4 + 4) = self->_event;
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
    *(v4 + 5) = self->_fr;
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

  *(result + 4) = self->_event;
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
  *(result + 5) = self->_fr;
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
    if ((*(v4 + 28) & 2) == 0 || self->_event != *(v4 + 4))
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
    if ((*(v4 + 28) & 4) == 0 || self->_fr != *(v4 + 5))
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
      v3 = 2654435761 * self->_event;
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
  v5 = 2654435761 * self->_fr;
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

  self->_event = *(v4 + 4);
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
    self->_fr = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end