@interface AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChanType:(id)type;
- (int)StringAsRat:(id)rat;
- (int)chanType;
- (int)rat;
- (unint64_t)hash;
- (unsigned)countAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRat:(BOOL)rat;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist;
  [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)&v3 dealloc];
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
  if ([ratCopy isEqualToString:@"LTE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [ratCopy isEqualToString:@"NR"];
  }

  return v4;
}

- (int)chanType
{
  if (*&self->_has)
  {
    return self->_chanType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsChanType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PUSCH"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"PUCCH"];
  }

  return v4;
}

- (unsigned)countAtIndex:(unint64_t)index
{
  p_counts = &self->_counts;
  count = self->_counts.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_counts->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    rat = self->_rat;
    if (rat)
    {
      if (rat == 1)
      {
        v6 = @"NR";
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
      }
    }

    else
    {
      v6 = @"LTE";
    }

    [dictionary setObject:v6 forKey:@"rat"];

    has = self->_has;
  }

  if (has)
  {
    chanType = self->_chanType;
    if (chanType)
    {
      if (chanType == 1)
      {
        v8 = @"PUCCH";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_chanType];
      }
    }

    else
    {
      v8 = @"PUSCH";
    }

    [dictionary setObject:v8 forKey:@"chan_type"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v9 forKey:@"count"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v11 = toCopy;
  if ((has & 2) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
  }

  if (has)
  {
    chanType = self->_chanType;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

  p_counts = &self->_counts;
  if (p_counts->count)
  {
    v9 = 0;
    do
    {
      v10 = p_counts->list[v9];
      PBDataWriterWriteUint32Field();
      toCopy = v11;
      ++v9;
    }

    while (v9 < p_counts->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_rat;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[8] = self->_chanType;
    *(toCopy + 40) |= 1u;
  }

  v9 = toCopy;
  if ([(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)self countsCount])
  {
    [v9 clearCounts];
    countsCount = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)self countsCount];
    if (countsCount)
    {
      v7 = countsCount;
      for (i = 0; i != v7; ++i)
      {
        [v9 addCount:{-[AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist countAtIndex:](self, "countAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 36) = self->_rat;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 32) = self->_chanType;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_rat != *(equalCopy + 9))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_13:
    IsEqual = 0;
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_chanType != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_13;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_14:

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_rat;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2 ^ PBRepeatedUInt32Hash();
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_chanType;
  return v3 ^ v2 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_rat = *(fromCopy + 9);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if (v5)
  {
    self->_chanType = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v9 = fromCopy;
  countsCount = [fromCopy countsCount];
  if (countsCount)
  {
    v7 = countsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist addCount:](self, "addCount:", [v9 countAtIndex:i]);
    }
  }
}

@end