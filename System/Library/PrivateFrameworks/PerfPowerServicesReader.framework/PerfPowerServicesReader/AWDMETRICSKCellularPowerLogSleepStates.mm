@interface AWDMETRICSKCellularPowerLogSleepStates
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBin:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogSleepStates

- (void)setHasDurationMs:(BOOL)a3
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

- (void)addBin:(id)a3
{
  v4 = a3;
  bins = self->_bins;
  v8 = v4;
  if (!bins)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_bins;
    self->_bins = v6;

    v4 = v8;
    bins = self->_bins;
  }

  [(NSMutableArray *)bins addObject:v4];
}

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasIsDataPreferred:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogSleepStates;
  v4 = [(AWDMETRICSKCellularPowerLogSleepStates *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogSleepStates *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v6 forKey:@"duration_ms"];
  }

  if ([(NSMutableArray *)self->_bins count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_bins;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"bin"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v15 forKey:@"subs_id"];

    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v16 forKey:@"is_data_preferred"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_bins;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_durationMs;
    *(v4 + 36) |= 2u;
  }

  v11 = v4;
  if ([(AWDMETRICSKCellularPowerLogSleepStates *)self binsCount])
  {
    [v11 clearBins];
    v6 = [(AWDMETRICSKCellularPowerLogSleepStates *)self binsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDMETRICSKCellularPowerLogSleepStates *)self binAtIndex:i];
        [v11 addBin:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    *(v11 + 7) = self->_subsId;
    *(v11 + 36) |= 4u;
    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    *(v11 + 32) = self->_isDataPreferred;
    *(v11 + 36) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_durationMs;
    *(v5 + 36) |= 2u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_bins;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v6 addBin:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v6 + 28) = self->_subsId;
    *(v6 + 36) |= 4u;
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    *(v6 + 32) = self->_isDataPreferred;
    *(v6 + 36) |= 8u;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_durationMs != *(v4 + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  bins = self->_bins;
  if (bins | *(v4 + 2))
  {
    if (![(NSMutableArray *)bins isEqual:?])
    {
      goto LABEL_22;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_subsId != *(v4 + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  v8 = (*(v4 + 36) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(v4 + 32))
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
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_durationMs;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_bins hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_subsId;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v5;
  }

  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 2654435761 * self->_isDataPreferred;
  return v4 ^ v3 ^ v6 ^ v7 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 36);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 36);
  }

  if ((v6 & 2) != 0)
  {
    self->_durationMs = *(v4 + 6);
    *&self->_has |= 2u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDMETRICSKCellularPowerLogSleepStates *)self addBin:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 36);
  if ((v12 & 4) != 0)
  {
    self->_subsId = *(v5 + 7);
    *&self->_has |= 4u;
    v12 = *(v5 + 36);
  }

  if ((v12 & 8) != 0)
  {
    self->_isDataPreferred = *(v5 + 32);
    *&self->_has |= 8u;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end