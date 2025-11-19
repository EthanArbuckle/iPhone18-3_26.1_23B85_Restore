@interface AWDMETRICSKCellularPowerLogSubsysSleepStates
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLastSdmState:(id)a3;
- (int)lastSdmState;
- (unint64_t)hash;
- (void)addBin:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLastSdmState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogSubsysSleepStates

- (void)setHasTimestamp:(BOOL)a3
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)lastSdmState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_lastSdmState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastSdmState:(BOOL)a3
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

- (int)StringAsLastSdmState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SDM_STATE_DISABLED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SDM_STATE_ENABLED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SDM_STATE_DISABLED_5G_ON"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SDM_STATE_DISABLED_LTE_ON"])
  {
    v4 = 3;
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
  v8.super_class = AWDMETRICSKCellularPowerLogSubsysSleepStates;
  v4 = [(AWDMETRICSKCellularPowerLogSubsysSleepStates *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogSubsysSleepStates *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_bins count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_bins;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"bin"];
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_durationMs];
    [v3 setObject:v14 forKey:@"duration_ms"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    lastSdmState = self->_lastSdmState;
    if (lastSdmState >= 4)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_lastSdmState];
    }

    else
    {
      v16 = off_27825ADA0[lastSdmState];
    }

    [v3 setObject:v16 forKey:@"last_sdm_state"];

    goto LABEL_22;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v13 forKey:@"subs_id"];

  has = self->_has;
  if (has)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((*&self->_has & 2) != 0)
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
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    lastSdmState = self->_lastSdmState;
    PBDataWriterWriteInt32Field();
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 40) |= 2u;
  }

  v10 = v4;
  if ([(AWDMETRICSKCellularPowerLogSubsysSleepStates *)self binsCount])
  {
    [v10 clearBins];
    v5 = [(AWDMETRICSKCellularPowerLogSubsysSleepStates *)self binsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogSubsysSleepStates *)self binAtIndex:i];
        [v10 addBin:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v10 + 9) = self->_subsId;
    *(v10 + 40) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v10 + 1) = self->_durationMs;
  *(v10 + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(v10 + 8) = self->_lastSdmState;
    *(v10 + 40) |= 4u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 40) |= 2u;
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

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
        [v6 addBin:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    *(v6 + 8) = self->_durationMs;
    *(v6 + 40) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(v6 + 36) = self->_subsId;
  *(v6 + 40) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    *(v6 + 32) = self->_lastSdmState;
    *(v6 + 40) |= 4u;
  }

LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_24;
  }

  bins = self->_bins;
  if (bins | *(v4 + 3))
  {
    if (![(NSMutableArray *)bins isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(v4 + 40);
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_subsId != *(v4 + 9))
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_24;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_durationMs != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v8 = (v6 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_lastSdmState != *(v4 + 8))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_bins hash];
  if ((*&self->_has & 8) == 0)
  {
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_subsId;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761u * self->_durationMs;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_lastSdmState;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 40) & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v4 + 3);
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

        [(AWDMETRICSKCellularPowerLogSubsysSleepStates *)self addBin:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 40);
  if ((v11 & 8) == 0)
  {
    if ((*(v5 + 40) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    self->_durationMs = *(v5 + 1);
    *&self->_has |= 1u;
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  self->_subsId = *(v5 + 9);
  *&self->_has |= 8u;
  v11 = *(v5 + 40);
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v11 & 4) != 0)
  {
LABEL_13:
    self->_lastSdmState = *(v5 + 8);
    *&self->_has |= 4u;
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

@end