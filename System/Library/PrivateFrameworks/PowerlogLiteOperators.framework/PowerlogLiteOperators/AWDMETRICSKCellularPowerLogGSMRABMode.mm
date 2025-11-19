@interface AWDMETRICSKCellularPowerLogGSMRABMode
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
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogGSMRABMode

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

- (void)setHasNumSubs:(BOOL)a3
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogGSMRABMode;
  v4 = [(AWDMETRICSKCellularPowerLogGSMRABMode *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogGSMRABMode *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_bins count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_bins;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"bin"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v17 forKey:@"duration_ms"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_14:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_subsId, v20}];
  [v3 setObject:v18 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_numSubs, v20}];
  [v3 setObject:v19 forKey:@"num_subs"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isDataPreferred, v20}];
    [v3 setObject:v13 forKey:@"is_data_preferred"];
  }

LABEL_17:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
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

        v11 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_20:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  v11 = v4;
  if ([(AWDMETRICSKCellularPowerLogGSMRABMode *)self binsCount])
  {
    [v11 clearBins];
    v5 = [(AWDMETRICSKCellularPowerLogGSMRABMode *)self binsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogGSMRABMode *)self binAtIndex:i];
        [v11 addBin:v8];
      }
    }
  }

  has = self->_has;
  v10 = v11;
  if ((has & 2) != 0)
  {
    *(v11 + 6) = self->_durationMs;
    *(v11 + 48) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(v11 + 10) = self->_subsId;
  *(v11 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  *(v11 + 7) = self->_numSubs;
  *(v11 + 48) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    *(v11 + 44) = self->_isDataPreferred;
    *(v11 + 48) |= 0x10u;
  }

LABEL_12:
  if (self->_plmn)
  {
    [v11 setPlmn:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_bins;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addBin:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_durationMs;
    *(v6 + 48) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      *(v6 + 28) = self->_numSubs;
      *(v6 + 48) |= 4u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 40) = self->_subsId;
  *(v6 + 48) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 0x10) != 0)
  {
LABEL_14:
    *(v6 + 44) = self->_isDataPreferred;
    *(v6 + 48) |= 0x10u;
  }

LABEL_15:
  v14 = [(NSData *)self->_plmn copyWithZone:a3, v18];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_30;
  }

  bins = self->_bins;
  if (bins | *(v4 + 2))
  {
    if (![(NSMutableArray *)bins isEqual:?])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = *(v4 + 48);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durationMs != *(v4 + 6))
    {
      goto LABEL_30;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_subsId != *(v4 + 10))
    {
      goto LABEL_30;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_numSubs != *(v4 + 7))
    {
      goto LABEL_30;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 0x10) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v9 = 0;
    goto LABEL_31;
  }

  if ((v6 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  v11 = *(v4 + 44);
  if (self->_isDataPreferred)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_30;
  }

LABEL_27:
  plmn = self->_plmn;
  if (plmn | *(v4 + 4))
  {
    v9 = [(NSData *)plmn isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_31:

  return v9;
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
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_durationMs;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_subsId;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSData *)self->_plmn hash];
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_numSubs;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_isDataPreferred;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSData *)self->_plmn hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 48))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 2);
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

        [(AWDMETRICSKCellularPowerLogGSMRABMode *)self addBin:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 48);
  if ((v11 & 2) != 0)
  {
    self->_durationMs = *(v5 + 6);
    *&self->_has |= 2u;
    v11 = *(v5 + 48);
    if ((v11 & 8) == 0)
    {
LABEL_12:
      if ((v11 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else if ((*(v5 + 48) & 8) == 0)
  {
    goto LABEL_12;
  }

  self->_subsId = *(v5 + 10);
  *&self->_has |= 8u;
  v11 = *(v5 + 48);
  if ((v11 & 4) == 0)
  {
LABEL_13:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_20:
  self->_numSubs = *(v5 + 7);
  *&self->_has |= 4u;
  if ((*(v5 + 48) & 0x10) != 0)
  {
LABEL_14:
    self->_isDataPreferred = *(v5 + 44);
    *&self->_has |= 0x10u;
  }

LABEL_15:
  if (*(v5 + 4))
  {
    [(AWDMETRICSKCellularPowerLogGSMRABMode *)self setPlmn:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end