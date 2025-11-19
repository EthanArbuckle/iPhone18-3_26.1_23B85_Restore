@interface AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChanType:(id)a3;
- (int)StringAsRat:(id)a3;
- (int)chanType;
- (int)rat;
- (unint64_t)hash;
- (unsigned)countAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRat:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasRat:(BOOL)a3
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

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NR"];
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

- (int)StringAsChanType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PUSCH"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"PUCCH"];
  }

  return v4;
}

- (unsigned)countAtIndex:(unint64_t)a3
{
  p_counts = &self->_counts;
  count = self->_counts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_counts->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"rat"];

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

    [v3 setObject:v8 forKey:@"chan_type"];
  }

  v9 = PBRepeatedUInt32NSArray();
  [v3 setObject:v9 forKey:@"count"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v11 = v4;
  if ((has & 2) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    v4 = v11;
    has = self->_has;
  }

  if (has)
  {
    chanType = self->_chanType;
    PBDataWriterWriteInt32Field();
    v4 = v11;
  }

  p_counts = &self->_counts;
  if (p_counts->count)
  {
    v9 = 0;
    do
    {
      v10 = p_counts->list[v9];
      PBDataWriterWriteUint32Field();
      v4 = v11;
      ++v9;
    }

    while (v9 < p_counts->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[9] = self->_rat;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[8] = self->_chanType;
    *(v4 + 40) |= 1u;
  }

  v9 = v4;
  if ([(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)self countsCount])
  {
    [v9 clearCounts];
    v6 = [(AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist *)self countsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addCount:{-[AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist countAtIndex:](self, "countAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_rat != *(v4 + 9))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_13:
    IsEqual = 0;
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_chanType != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_rat = *(v4 + 9);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_chanType = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v9 = v4;
  v6 = [v4 countsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDMETRICSKCellularPowerLogLteNrTxPowerHistHist addCount:](self, "addCount:", [v9 countAtIndex:i]);
    }
  }
}

@end