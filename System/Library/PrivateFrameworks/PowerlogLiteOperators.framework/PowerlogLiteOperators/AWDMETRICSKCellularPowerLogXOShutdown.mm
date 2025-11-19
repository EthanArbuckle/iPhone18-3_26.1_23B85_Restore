@interface AWDMETRICSKCellularPowerLogXOShutdown
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
- (void)setHasDuration:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasLastSdmState:(BOOL)a3;
- (void)setHasShutdownCount:(BOOL)a3;
- (void)setHasTotalNon0States:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogXOShutdown

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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDuration:(BOOL)a3
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

- (void)setHasShutdownCount:(BOOL)a3
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

- (void)setHasTotalNon0States:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)lastSdmState
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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
  v8.super_class = AWDMETRICSKCellularPowerLogXOShutdown;
  v4 = [(AWDMETRICSKCellularPowerLogXOShutdown *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogXOShutdown *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_bins count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_bins, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->_bins;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"bin"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [v3 setObject:v13 forKey:@"duration_ms"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [v3 setObject:v14 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalNon0States];
    [v3 setObject:v16 forKey:@"total_non0_states"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    lastSdmState = self->_lastSdmState;
    if (lastSdmState >= 4)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_lastSdmState];
    }

    else
    {
      v18 = off_278259DD0[lastSdmState];
    }

    [v3 setObject:v18 forKey:@"last_sdm_state"];

    goto LABEL_26;
  }

LABEL_20:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_shutdownCount];
  [v3 setObject:v15 forKey:@"shutdown_count"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((has & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
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

        v11 = *(*(&v19 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    shutdownCount = self->_shutdownCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  lastSdmState = self->_lastSdmState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    totalNon0States = self->_totalNon0States;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 44) |= 1u;
  }

  v10 = v4;
  if ([(AWDMETRICSKCellularPowerLogXOShutdown *)self binsCount])
  {
    [v10 clearBins];
    v5 = [(AWDMETRICSKCellularPowerLogXOShutdown *)self binsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogXOShutdown *)self binAtIndex:i];
        [v10 addBin:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 7) = self->_durationMs;
    *(v10 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v10 + 6) = self->_duration;
  *(v10 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v10 + 8) = self->_lastSdmState;
  *(v10 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  *(v10 + 9) = self->_shutdownCount;
  *(v10 + 44) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    *(v10 + 10) = self->_totalNon0States;
    *(v10 + 44) |= 0x20u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
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
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_durationMs;
    *(v6 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 24) = self->_duration;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    *(v6 + 36) = self->_shutdownCount;
    *(v6 + 44) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  *(v6 + 32) = self->_lastSdmState;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    *(v6 + 40) = self->_totalNon0States;
    *(v6 + 44) |= 0x20u;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_34;
  }

  bins = self->_bins;
  if (bins | *(v4 + 2))
  {
    if (![(NSMutableArray *)bins isEqual:?])
    {
LABEL_34:
      v8 = 0;
      goto LABEL_35;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_durationMs != *(v4 + 7))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_duration != *(v4 + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_lastSdmState != *(v4 + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_shutdownCount != *(v4 + 9))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_34;
  }

  v8 = (v6 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_totalNon0States != *(v4 + 10))
    {
      goto LABEL_34;
    }

    v8 = 1;
  }

LABEL_35:

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
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_durationMs;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_duration;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_lastSdmState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_shutdownCount;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_totalNon0States;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 44))
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

        [(AWDMETRICSKCellularPowerLogXOShutdown *)self addBin:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 44);
  if ((v11 & 4) != 0)
  {
    self->_durationMs = *(v5 + 7);
    *&self->_has |= 4u;
    v11 = *(v5 + 44);
    if ((v11 & 2) == 0)
    {
LABEL_12:
      if ((v11 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v5 + 44) & 2) == 0)
  {
    goto LABEL_12;
  }

  self->_duration = *(v5 + 6);
  *&self->_has |= 2u;
  v11 = *(v5 + 44);
  if ((v11 & 8) == 0)
  {
LABEL_13:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    self->_shutdownCount = *(v5 + 9);
    *&self->_has |= 0x10u;
    if ((*(v5 + 44) & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  self->_lastSdmState = *(v5 + 8);
  *&self->_has |= 8u;
  v11 = *(v5 + 44);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((v11 & 0x20) != 0)
  {
LABEL_15:
    self->_totalNon0States = *(v5 + 10);
    *&self->_has |= 0x20u;
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

@end