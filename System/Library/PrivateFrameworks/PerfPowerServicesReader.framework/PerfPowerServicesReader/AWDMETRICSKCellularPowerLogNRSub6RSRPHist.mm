@interface AWDMETRICSKCellularPowerLogNRSub6RSRPHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBin:(id)bin;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogNRSub6RSRPHist

- (void)addBin:(id)bin
{
  binCopy = bin;
  bins = self->_bins;
  v8 = binCopy;
  if (!bins)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bins;
    self->_bins = v6;

    binCopy = v8;
    bins = self->_bins;
  }

  [(NSMutableArray *)bins addObject:binCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
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
  v8.super_class = AWDMETRICSKCellularPowerLogNRSub6RSRPHist;
  v4 = [(AWDMETRICSKCellularPowerLogNRSub6RSRPHist *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNRSub6RSRPHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_bins count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_bins;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"bin"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v16 forKey:@"subs_id"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_durationMs, v18}];
  [dictionary setObject:v17 forKey:@"duration_ms"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isDataPreferred, v18}];
    [dictionary setObject:v13 forKey:@"is_data_preferred"];
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_bins;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 8) != 0)
  {
LABEL_13:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
  }

  v10 = toCopy;
  if ([(AWDMETRICSKCellularPowerLogNRSub6RSRPHist *)self binsCount])
  {
    [v10 clearBins];
    binsCount = [(AWDMETRICSKCellularPowerLogNRSub6RSRPHist *)self binsCount];
    if (binsCount)
    {
      v6 = binsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogNRSub6RSRPHist *)self binAtIndex:i];
        [v10 addBin:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 7) = self->_subsId;
    *(v10 + 36) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v10 + 6) = self->_durationMs;
  *(v10 + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v10 + 32) = self->_isDataPreferred;
    *(v10 + 36) |= 8u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_bins;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{zone, v16}];
        [v6 addBin:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    *(v6 + 24) = self->_durationMs;
    *(v6 + 36) |= 2u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(v6 + 28) = self->_subsId;
  *(v6 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 8) != 0)
  {
LABEL_13:
    *(v6 + 32) = self->_isDataPreferred;
    *(v6 + 36) |= 8u;
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_22;
  }

  bins = self->_bins;
  if (bins | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)bins isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_subsId != *(equalCopy + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_durationMs != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  v8 = (*(equalCopy + 36) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(equalCopy + 32) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(equalCopy + 32))
      {
        goto LABEL_22;
      }

      v8 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v8 = 0;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_bins hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_subsId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_durationMs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_isDataPreferred;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 36))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDMETRICSKCellularPowerLogNRSub6RSRPHist *)self addBin:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 36);
  if ((v11 & 4) == 0)
  {
    if ((*(v5 + 36) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    self->_durationMs = *(v5 + 6);
    *&self->_has |= 2u;
    if ((*(v5 + 36) & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  self->_subsId = *(v5 + 7);
  *&self->_has |= 4u;
  v11 = *(v5 + 36);
  if ((v11 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v11 & 8) != 0)
  {
LABEL_13:
    self->_isDataPreferred = *(v5 + 32);
    *&self->_has |= 8u;
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

@end