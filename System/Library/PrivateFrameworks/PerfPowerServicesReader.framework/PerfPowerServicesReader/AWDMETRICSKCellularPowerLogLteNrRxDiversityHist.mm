@interface AWDMETRICSKCellularPowerLogLteNrRxDiversityHist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLastSdmState:(id)state;
- (int)lastSdmState;
- (unint64_t)hash;
- (void)addCell:(id)cell;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasLastSdmState:(BOOL)state;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrRxDiversityHist

- (void)addCell:(id)cell
{
  cellCopy = cell;
  cells = self->_cells;
  v8 = cellCopy;
  if (!cells)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cells;
    self->_cells = v6;

    cellCopy = v8;
    cells = self->_cells;
  }

  [(NSMutableArray *)cells addObject:cellCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
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

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
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
  if ((*&self->_has & 4) != 0)
  {
    return self->_lastSdmState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastSdmState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsLastSdmState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"SDM_STATE_DISABLED"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SDM_STATE_ENABLED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SDM_STATE_DISABLED_5G_ON"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"SDM_STATE_DISABLED_LTE_ON"])
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
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrRxDiversityHist;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_cells count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cells, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = self->_cells;
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

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"cell"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v13 forKey:@"subs_id"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_14:
      if ((has & 8) == 0)
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

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [dictionary setObject:v14 forKey:@"duration_ms"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [dictionary setObject:v16 forKey:@"is_data_preferred"];

    if ((*&self->_has & 4) == 0)
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
      v18 = off_279A102D0[lastSdmState];
    }

    [dictionary setObject:v18 forKey:@"last_sdm_state"];

    goto LABEL_26;
  }

LABEL_20:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSubs];
  [dictionary setObject:v15 forKey:@"num_subs"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((has & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_cells;
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
  if ((has & 0x10) != 0)
  {
    subsId = self->_subsId;
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

  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  numSubs = self->_numSubs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 4) != 0)
  {
LABEL_15:
    lastSdmState = self->_lastSdmState;
    PBDataWriterWriteInt32Field();
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 44) |= 1u;
  }

  v10 = toCopy;
  if ([(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist *)self cellsCount])
  {
    [v10 clearCells];
    cellsCount = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist *)self cellsCount];
    if (cellsCount)
    {
      v6 = cellsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist *)self cellAtIndex:i];
        [v10 addCell:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v10 + 9) = self->_subsId;
    *(v10 + 44) |= 0x10u;
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

  *(v10 + 6) = self->_durationMs;
  *(v10 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v10 + 8) = self->_numSubs;
  *(v10 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  *(v10 + 40) = self->_isDataPreferred;
  *(v10 + 44) |= 0x20u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v10 + 7) = self->_lastSdmState;
    *(v10 + 44) |= 4u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v7 = self->_cells;
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
        [v6 addCell:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 36) = self->_subsId;
    *(v6 + 44) |= 0x10u;
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

  *(v6 + 24) = self->_durationMs;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    *(v6 + 40) = self->_isDataPreferred;
    *(v6 + 44) |= 0x20u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  *(v6 + 32) = self->_numSubs;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 4) != 0)
  {
LABEL_15:
    *(v6 + 28) = self->_lastSdmState;
    *(v6 + 44) |= 4u;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_32;
  }

  cells = self->_cells;
  if (cells | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)cells isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 44) & 0x10) == 0 || self->_subsId != *(equalCopy + 9))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 44) & 0x10) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_durationMs != *(equalCopy + 6))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0 || self->_numSubs != *(equalCopy + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 0x20) == 0)
  {
    if ((*(equalCopy + 44) & 0x20) == 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v8 = 0;
    goto LABEL_33;
  }

  if ((*(equalCopy + 44) & 0x20) == 0)
  {
    goto LABEL_32;
  }

  v10 = *(equalCopy + 40);
  if (self->_isDataPreferred)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_32;
  }

LABEL_27:
  v8 = (*(equalCopy + 44) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_lastSdmState != *(equalCopy + 7))
    {
      goto LABEL_32;
    }

    v8 = 1;
  }

LABEL_33:

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

  v4 = [(NSMutableArray *)self->_cells hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_subsId;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_durationMs;
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
    v7 = 2654435761 * self->_numSubs;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_isDataPreferred;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_lastSdmState;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 44))
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

        [(AWDMETRICSKCellularPowerLogLteNrRxDiversityHist *)self addCell:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 44);
  if ((v11 & 0x10) != 0)
  {
    self->_subsId = *(v5 + 9);
    *&self->_has |= 0x10u;
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

  self->_durationMs = *(v5 + 6);
  *&self->_has |= 2u;
  v11 = *(v5 + 44);
  if ((v11 & 8) == 0)
  {
LABEL_13:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    self->_isDataPreferred = *(v5 + 40);
    *&self->_has |= 0x20u;
    if ((*(v5 + 44) & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_19:
  self->_numSubs = *(v5 + 8);
  *&self->_has |= 8u;
  v11 = *(v5 + 44);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((v11 & 4) != 0)
  {
LABEL_15:
    self->_lastSdmState = *(v5 + 7);
    *&self->_has |= 4u;
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

@end