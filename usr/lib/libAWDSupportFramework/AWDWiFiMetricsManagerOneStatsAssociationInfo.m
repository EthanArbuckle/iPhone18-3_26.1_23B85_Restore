@interface AWDWiFiMetricsManagerOneStatsAssociationInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addChipCountersPerSlice:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerOneStatsAssociationInfo

- (void)dealloc
{
  [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setChipCounters:0];
  [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setBtCoexStats:0];
  [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setBtCoexModeChange:0];
  [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setChipCountersPerSlices:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerOneStatsAssociationInfo;
  [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)&v3 dealloc];
}

- (void)addChipCountersPerSlice:(id)a3
{
  chipCountersPerSlices = self->_chipCountersPerSlices;
  if (!chipCountersPerSlices)
  {
    chipCountersPerSlices = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_chipCountersPerSlices = chipCountersPerSlices;
  }

  [(NSMutableArray *)chipCountersPerSlices addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerOneStatsAssociationInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerOneStatsAssociationInfo description](&v3, sel_description), -[AWDWiFiMetricsManagerOneStatsAssociationInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  chipCounters = self->_chipCounters;
  if (chipCounters)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerChipCounters dictionaryRepresentation](chipCounters forKey:{"dictionaryRepresentation"), @"chipCounters"}];
  }

  btCoexStats = self->_btCoexStats;
  if (btCoexStats)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerBTCoexStats dictionaryRepresentation](btCoexStats forKey:{"dictionaryRepresentation"), @"btCoexStats"}];
  }

  btCoexModeChange = self->_btCoexModeChange;
  if (btCoexModeChange)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerBTCoexModeChange dictionaryRepresentation](btCoexModeChange forKey:{"dictionaryRepresentation"), @"btCoexModeChange"}];
  }

  if ([(NSMutableArray *)self->_chipCountersPerSlices count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_chipCountersPerSlices, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    chipCountersPerSlices = self->_chipCountersPerSlices;
    v9 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(chipCountersPerSlices);
          }

          [v7 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"chipCountersPerSlice"];
  }

  v13 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_chipCounters)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_btCoexStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_btCoexModeChange)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  chipCountersPerSlices = self->_chipCountersPerSlices;
  v6 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(chipCountersPerSlices);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 48) |= 1u;
  }

  if (self->_chipCounters)
  {
    [a3 setChipCounters:?];
  }

  if (self->_btCoexStats)
  {
    [a3 setBtCoexStats:?];
  }

  if (self->_btCoexModeChange)
  {
    [a3 setBtCoexModeChange:?];
  }

  if ([(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self chipCountersPerSlicesCount])
  {
    [a3 clearChipCountersPerSlices];
    v5 = [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self chipCountersPerSlicesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addChipCountersPerSlice:{-[AWDWiFiMetricsManagerOneStatsAssociationInfo chipCountersPerSliceAtIndex:](self, "chipCountersPerSliceAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  *(v6 + 32) = [(AWDWiFiMetricsManagerChipCounters *)self->_chipCounters copyWithZone:a3];
  *(v6 + 24) = [(AWDWiFiMetricsManagerBTCoexStats *)self->_btCoexStats copyWithZone:a3];

  *(v6 + 16) = [(AWDWiFiMetricsManagerBTCoexModeChange *)self->_btCoexModeChange copyWithZone:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  chipCountersPerSlices = self->_chipCountersPerSlices;
  v8 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(chipCountersPerSlices);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addChipCountersPerSlice:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 48);
    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_15;
      }
    }

    else if (*(a3 + 48))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    chipCounters = self->_chipCounters;
    if (!(chipCounters | *(a3 + 4)) || (v5 = [(AWDWiFiMetricsManagerChipCounters *)chipCounters isEqual:?]) != 0)
    {
      btCoexStats = self->_btCoexStats;
      if (!(btCoexStats | *(a3 + 3)) || (v5 = [(AWDWiFiMetricsManagerBTCoexStats *)btCoexStats isEqual:?]) != 0)
      {
        btCoexModeChange = self->_btCoexModeChange;
        if (!(btCoexModeChange | *(a3 + 2)) || (v5 = [(AWDWiFiMetricsManagerBTCoexModeChange *)btCoexModeChange isEqual:?]) != 0)
        {
          chipCountersPerSlices = self->_chipCountersPerSlices;
          if (chipCountersPerSlices | *(a3 + 5))
          {

            LOBYTE(v5) = [(NSMutableArray *)chipCountersPerSlices isEqual:?];
          }

          else
          {
            LOBYTE(v5) = 1;
          }
        }
      }
    }
  }

  return v5;
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

  v4 = [(AWDWiFiMetricsManagerChipCounters *)self->_chipCounters hash]^ v3;
  v5 = [(AWDWiFiMetricsManagerBTCoexStats *)self->_btCoexStats hash];
  v6 = v4 ^ v5 ^ [(AWDWiFiMetricsManagerBTCoexModeChange *)self->_btCoexModeChange hash];
  return v6 ^ [(NSMutableArray *)self->_chipCountersPerSlices hash];
}

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(a3 + 48))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  chipCounters = self->_chipCounters;
  v6 = *(a3 + 4);
  if (chipCounters)
  {
    if (v6)
    {
      [(AWDWiFiMetricsManagerChipCounters *)chipCounters mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setChipCounters:?];
  }

  btCoexStats = self->_btCoexStats;
  v8 = *(a3 + 3);
  if (btCoexStats)
  {
    if (v8)
    {
      [(AWDWiFiMetricsManagerBTCoexStats *)btCoexStats mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setBtCoexStats:?];
  }

  btCoexModeChange = self->_btCoexModeChange;
  v10 = *(a3 + 2);
  if (btCoexModeChange)
  {
    if (v10)
    {
      [(AWDWiFiMetricsManagerBTCoexModeChange *)btCoexModeChange mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self setBtCoexModeChange:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a3 + 5);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDWiFiMetricsManagerOneStatsAssociationInfo *)self addChipCountersPerSlice:*(*(&v17 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end