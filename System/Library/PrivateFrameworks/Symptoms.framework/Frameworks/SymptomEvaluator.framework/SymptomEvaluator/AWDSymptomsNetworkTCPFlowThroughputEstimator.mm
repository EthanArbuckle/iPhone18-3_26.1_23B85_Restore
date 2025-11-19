@interface AWDSymptomsNetworkTCPFlowThroughputEstimator
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)a3;
- (int)networkType;
- (unint64_t)hash;
- (void)addFlowThroughputEvent:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNetworkType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsNetworkTCPFlowThroughputEstimator

- (int)networkType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_networkType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNetworkType:(BOOL)a3
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

- (int)StringAsNetworkType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addFlowThroughputEvent:(id)a3
{
  v4 = a3;
  flowThroughputEvents = self->_flowThroughputEvents;
  v8 = v4;
  if (!flowThroughputEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_flowThroughputEvents;
    self->_flowThroughputEvents = v6;

    v4 = v8;
    flowThroughputEvents = self->_flowThroughputEvents;
  }

  [(NSMutableArray *)flowThroughputEvents addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkTCPFlowThroughputEstimator;
  v4 = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)&v8 description];
  v5 = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self dictionaryRepresentation];
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
    v6 = self->_networkType - 1;
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
    }

    else
    {
      v7 = *(&off_27898F0E8 + v6);
    }

    [v3 setObject:v7 forKey:@"networkType"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v3 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  sourceAppIdentifier = self->_sourceAppIdentifier;
  if (sourceAppIdentifier)
  {
    [v3 setObject:sourceAppIdentifier forKey:@"sourceAppIdentifier"];
  }

  if ([(NSMutableArray *)self->_flowThroughputEvents count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_flowThroughputEvents, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_flowThroughputEvents;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"flowThroughputEvent"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
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
    networkType = self->_networkType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceAppIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_flowThroughputEvents;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_networkType;
    *(v4 + 48) |= 2u;
  }

  v10 = v4;
  if (self->_clientIdentifier)
  {
    [v4 setClientIdentifier:?];
  }

  if (self->_sourceAppIdentifier)
  {
    [v10 setSourceAppIdentifier:?];
  }

  if ([(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self flowThroughputEventsCount])
  {
    [v10 clearFlowThroughputEvents];
    v6 = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self flowThroughputEventsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self flowThroughputEventAtIndex:i];
        [v10 addFlowThroughputEvent:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_networkType;
    *(v5 + 48) |= 2u;
  }

  v8 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSString *)self->_sourceAppIdentifier copyWithZone:a3];
  v11 = v6[5];
  v6[5] = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_flowThroughputEvents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addFlowThroughputEvent:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_networkType != *(v4 + 8))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(v4 + 2) && ![(NSString *)clientIdentifier isEqual:?])
  {
    goto LABEL_18;
  }

  sourceAppIdentifier = self->_sourceAppIdentifier;
  if (sourceAppIdentifier | *(v4 + 5))
  {
    if (![(NSString *)sourceAppIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  flowThroughputEvents = self->_flowThroughputEvents;
  if (flowThroughputEvents | *(v4 + 3))
  {
    v9 = [(NSMutableArray *)flowThroughputEvents isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
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

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_networkType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_clientIdentifier hash];
  v6 = [(NSString *)self->_sourceAppIdentifier hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_flowThroughputEvents hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 48);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 48);
  }

  if ((v6 & 2) != 0)
  {
    self->_networkType = *(v4 + 8);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self setClientIdentifier:?];
  }

  if (*(v5 + 5))
  {
    [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self setSourceAppIdentifier:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self addFlowThroughputEvent:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end