@interface AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxTxAct:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats

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

- (void)addRxTxAct:(id)a3
{
  v4 = a3;
  rxTxActs = self->_rxTxActs;
  v8 = v4;
  if (!rxTxActs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_rxTxActs;
    self->_rxTxActs = v6;

    v4 = v8;
    rxTxActs = self->_rxTxActs;
  }

  [(NSMutableArray *)rxTxActs addObject:v4];
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
  v8.super_class = AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats;
  v4 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_rxTxActs count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_rxTxActs, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_rxTxActs;
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

    [v3 setObject:v7 forKey:@"rx_tx_act"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v14 forKey:@"subs_id"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v16 forKey:@"is_data_preferred"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_rxTxActs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  v10 = v4;
  if (self->_plmn)
  {
    [v4 setPlmn:?];
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 4) = self->_durationMs;
    *(v4 + 48) |= 2u;
  }

  if ([(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self rxTxActsCount])
  {
    [v10 clearRxTxActs];
    v5 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self rxTxActsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self rxTxActAtIndex:i];
        [v10 addRxTxAct:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 10) = self->_subsId;
    *(v10 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v10 + 44) = self->_isDataPreferred;
    *(v10 + 48) |= 8u;
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

  v7 = [(NSData *)self->_plmn copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_durationMs;
    *(v6 + 48) |= 2u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_rxTxActs;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addRxTxAct:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 40) = self->_subsId;
    *(v6 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 44) = self->_isDataPreferred;
    *(v6 + 48) |= 8u;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_25;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = *(v4 + 48);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_durationMs != *(v4 + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_25;
  }

  rxTxActs = self->_rxTxActs;
  if (rxTxActs | *(v4 + 4))
  {
    if (![(NSMutableArray *)rxTxActs isEqual:?])
    {
      goto LABEL_25;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_subsId != *(v4 + 10))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_25;
  }

  v10 = (*(v4 + 48) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(v4 + 44) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (*(v4 + 44))
      {
        goto LABEL_25;
      }

      v10 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v10 = 0;
  }

LABEL_26:

  return v10;
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

  v4 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_durationMs;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSMutableArray *)self->_rxTxActs hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_subsId;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = 2654435761 * self->_isDataPreferred;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[3])
  {
    [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self setPlmn:?];
  }

  if ((*(v5 + 48) & 2) != 0)
  {
    self->_durationMs = *(v5 + 4);
    *&self->_has |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v5 + 4);
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

        [(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStats *)self addRxTxAct:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(v5 + 48);
  if ((v11 & 4) != 0)
  {
    self->_subsId = *(v5 + 10);
    *&self->_has |= 4u;
    v11 = *(v5 + 48);
  }

  if ((v11 & 8) != 0)
  {
    self->_isDataPreferred = *(v5 + 44);
    *&self->_has |= 8u;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end