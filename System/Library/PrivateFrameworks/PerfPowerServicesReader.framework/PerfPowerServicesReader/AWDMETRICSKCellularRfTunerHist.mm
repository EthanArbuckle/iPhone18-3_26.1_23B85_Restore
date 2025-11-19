@interface AWDMETRICSKCellularRfTunerHist
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTunerStateDuration:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularRfTunerHist

- (void)addTunerStateDuration:(id)a3
{
  v4 = a3;
  tunerStateDurations = self->_tunerStateDurations;
  v8 = v4;
  if (!tunerStateDurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tunerStateDurations;
    self->_tunerStateDurations = v6;

    v4 = v8;
    tunerStateDurations = self->_tunerStateDurations;
  }

  [(NSMutableArray *)tunerStateDurations addObject:v4];
}

- (void)setHasIsDataPreferred:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularRfTunerHist;
  v4 = [(AWDMETRICSKCellularRfTunerHist *)&v8 description];
  v5 = [(AWDMETRICSKCellularRfTunerHist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_tunerStateDurations count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_tunerStateDurations, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_tunerStateDurations;
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

          v11 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"tuner_state_duration"];
  }

  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v14 forKey:@"is_data_preferred"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v15 forKey:@"subs_id"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_tunerStateDurations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

  v15 = *MEMORY[0x277D85DE8];
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
  if ([(AWDMETRICSKCellularRfTunerHist *)self tunerStateDurationsCount])
  {
    [v10 clearTunerStateDurations];
    v5 = [(AWDMETRICSKCellularRfTunerHist *)self tunerStateDurationsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(AWDMETRICSKCellularRfTunerHist *)self tunerStateDurationAtIndex:i];
        [v10 addTunerStateDuration:v8];
      }
    }
  }

  if (self->_plmn)
  {
    [v10 setPlmn:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v10 + 40) = self->_isDataPreferred;
    *(v10 + 44) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 6) = self->_subsId;
    *(v10 + 44) |= 2u;
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
    *(v5 + 44) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_tunerStateDurations;
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
        [v6 addTunerStateDuration:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [(NSData *)self->_plmn copyWithZone:a3];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 40) = self->_isDataPreferred;
    *(v6 + 44) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_subsId;
    *(v6 + 44) |= 2u;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_18;
  }

  tunerStateDurations = self->_tunerStateDurations;
  if (tunerStateDurations | *(v4 + 4) && ![(NSMutableArray *)tunerStateDurations isEqual:?])
  {
    goto LABEL_18;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 2))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(v4 + 40);
  if (self->_isDataPreferred)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_18;
  }

LABEL_13:
  v8 = (*(v4 + 44) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_subsId != *(v4 + 6))
    {
      goto LABEL_18;
    }

    v8 = 1;
  }

LABEL_19:

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

  v4 = [(NSMutableArray *)self->_tunerStateDurations hash];
  v5 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_isDataPreferred;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
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
  v6 = *(v4 + 4);
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

        [(AWDMETRICSKCellularRfTunerHist *)self addTunerStateDuration:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*(v5 + 2))
  {
    [(AWDMETRICSKCellularRfTunerHist *)self setPlmn:?];
  }

  v11 = *(v5 + 44);
  if ((v11 & 4) != 0)
  {
    self->_isDataPreferred = *(v5 + 40);
    *&self->_has |= 4u;
    v11 = *(v5 + 44);
  }

  if ((v11 & 2) != 0)
  {
    self->_subsId = *(v5 + 6);
    *&self->_has |= 2u;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end