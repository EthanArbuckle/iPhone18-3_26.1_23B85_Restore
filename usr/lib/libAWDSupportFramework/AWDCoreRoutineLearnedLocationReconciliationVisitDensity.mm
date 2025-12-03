@interface AWDCoreRoutineLearnedLocationReconciliationVisitDensity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCountDeviceLost:(BOOL)lost;
- (void)setHasTotalBranchCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLearnedLocationReconciliationVisitDensity

- (void)setHasTotalBranchCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCountDeviceLost:(BOOL)lost
{
  if (lost)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedLocationReconciliationVisitDensity;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLearnedLocationReconciliationVisitDensity description](&v3, sel_description), -[AWDCoreRoutineLearnedLocationReconciliationVisitDensity dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_totalBranchCount), @"totalBranchCount"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_countDeviceLost), @"countDeviceLost"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    totalBranchCount = self->_totalBranchCount;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_7:
  countDeviceLost = self->_countDeviceLost;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 4) = self->_countDeviceLost;
      *(to + 24) |= 2u;
      return;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_totalBranchCount;
  *(to + 24) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
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

  *(result + 5) = self->_totalBranchCount;
  *(result + 24) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_countDeviceLost;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(equal + 24))
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 24) & 4) == 0 || self->_totalBranchCount != *(equal + 5))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 24) & 4) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(equal + 24) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_countDeviceLost != *(equal + 4))
      {
        goto LABEL_16;
      }

      LOBYTE(v5) = 1;
    }
  }

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

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_totalBranchCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_countDeviceLost;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 24);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 24);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        return;
      }

LABEL_7:
      self->_countDeviceLost = *(from + 4);
      *&self->_has |= 2u;
      return;
    }
  }

  else if ((*(from + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_totalBranchCount = *(from + 5);
  *&self->_has |= 4u;
  if ((*(from + 24) & 2) != 0)
  {
    goto LABEL_7;
  }
}

@end