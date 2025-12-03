@interface AWDWiFiMetricsManagerChipCounters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFrameCounterPerInterface:(id)interface;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerChipCounters

- (void)dealloc
{
  [(AWDWiFiMetricsManagerChipCounters *)self setFrameCounters:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setTxGeneralStats:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setTxErrorStats:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setRxGeneralStats:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setRxMACErrorStats:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setRxMACCounterStats:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setRxPhyErrors:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setUcastWPA2Counters:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setMcastWPA2Counters:0];
  [(AWDWiFiMetricsManagerChipCounters *)self setFrameCounterPerInterfaces:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerChipCounters;
  [(AWDWiFiMetricsManagerChipCounters *)&v3 dealloc];
}

- (void)addFrameCounterPerInterface:(id)interface
{
  frameCounterPerInterfaces = self->_frameCounterPerInterfaces;
  if (!frameCounterPerInterfaces)
  {
    frameCounterPerInterfaces = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_frameCounterPerInterfaces = frameCounterPerInterfaces;
  }

  [(NSMutableArray *)frameCounterPerInterfaces addObject:interface];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerChipCounters;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerChipCounters description](&v3, sel_description), -[AWDWiFiMetricsManagerChipCounters dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  frameCounters = self->_frameCounters;
  if (frameCounters)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerFrameCounterStats dictionaryRepresentation](frameCounters forKey:{"dictionaryRepresentation"), @"frameCounters"}];
  }

  txGeneralStats = self->_txGeneralStats;
  if (txGeneralStats)
  {
    [dictionary setObject:-[AWDChipCountersTx dictionaryRepresentation](txGeneralStats forKey:{"dictionaryRepresentation"), @"txGeneralStats"}];
  }

  txErrorStats = self->_txErrorStats;
  if (txErrorStats)
  {
    [dictionary setObject:-[AWDChipErrorCountersTx dictionaryRepresentation](txErrorStats forKey:{"dictionaryRepresentation"), @"txErrorStats"}];
  }

  rxGeneralStats = self->_rxGeneralStats;
  if (rxGeneralStats)
  {
    [dictionary setObject:-[AWDChipCountersRx dictionaryRepresentation](rxGeneralStats forKey:{"dictionaryRepresentation"), @"rxGeneralStats"}];
  }

  rxMACErrorStats = self->_rxMACErrorStats;
  if (rxMACErrorStats)
  {
    [dictionary setObject:-[AWDMacCountersRxErrors dictionaryRepresentation](rxMACErrorStats forKey:{"dictionaryRepresentation"), @"rxMACErrorStats"}];
  }

  rxMACCounterStats = self->_rxMACCounterStats;
  if (rxMACCounterStats)
  {
    [dictionary setObject:-[AWDMacCountersRx dictionaryRepresentation](rxMACCounterStats forKey:{"dictionaryRepresentation"), @"rxMACCounterStats"}];
  }

  rxPhyErrors = self->_rxPhyErrors;
  if (rxPhyErrors)
  {
    [dictionary setObject:-[AWDRxPhyErrors dictionaryRepresentation](rxPhyErrors forKey:{"dictionaryRepresentation"), @"rxPhyErrors"}];
  }

  ucastWPA2Counters = self->_ucastWPA2Counters;
  if (ucastWPA2Counters)
  {
    [dictionary setObject:-[AWDWPA2Counters dictionaryRepresentation](ucastWPA2Counters forKey:{"dictionaryRepresentation"), @"ucastWPA2Counters"}];
  }

  mcastWPA2Counters = self->_mcastWPA2Counters;
  if (mcastWPA2Counters)
  {
    [dictionary setObject:-[AWDWPA2Counters dictionaryRepresentation](mcastWPA2Counters forKey:{"dictionaryRepresentation"), @"mcastWPA2Counters"}];
  }

  if ([(NSMutableArray *)self->_frameCounterPerInterfaces count])
  {
    v13 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_frameCounterPerInterfaces, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    frameCounterPerInterfaces = self->_frameCounterPerInterfaces;
    v15 = [(NSMutableArray *)frameCounterPerInterfaces countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(frameCounterPerInterfaces);
          }

          [v13 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v16 = [(NSMutableArray *)frameCounterPerInterfaces countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"frameCounterPerInterface"];
  }

  v19 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_frameCounters)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txGeneralStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txErrorStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rxGeneralStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rxMACErrorStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rxMACCounterStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rxPhyErrors)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_ucastWPA2Counters)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mcastWPA2Counters)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  frameCounterPerInterfaces = self->_frameCounterPerInterfaces;
  v6 = [(NSMutableArray *)frameCounterPerInterfaces countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(frameCounterPerInterfaces);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)frameCounterPerInterfaces countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 96) |= 1u;
  }

  if (self->_frameCounters)
  {
    [to setFrameCounters:?];
  }

  if (self->_txGeneralStats)
  {
    [to setTxGeneralStats:?];
  }

  if (self->_txErrorStats)
  {
    [to setTxErrorStats:?];
  }

  if (self->_rxGeneralStats)
  {
    [to setRxGeneralStats:?];
  }

  if (self->_rxMACErrorStats)
  {
    [to setRxMACErrorStats:?];
  }

  if (self->_rxMACCounterStats)
  {
    [to setRxMACCounterStats:?];
  }

  if (self->_rxPhyErrors)
  {
    [to setRxPhyErrors:?];
  }

  if (self->_ucastWPA2Counters)
  {
    [to setUcastWPA2Counters:?];
  }

  if (self->_mcastWPA2Counters)
  {
    [to setMcastWPA2Counters:?];
  }

  if ([(AWDWiFiMetricsManagerChipCounters *)self frameCounterPerInterfacesCount])
  {
    [to clearFrameCounterPerInterfaces];
    frameCounterPerInterfacesCount = [(AWDWiFiMetricsManagerChipCounters *)self frameCounterPerInterfacesCount];
    if (frameCounterPerInterfacesCount)
    {
      v6 = frameCounterPerInterfacesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addFrameCounterPerInterface:{-[AWDWiFiMetricsManagerChipCounters frameCounterPerInterfaceAtIndex:](self, "frameCounterPerInterfaceAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 96) |= 1u;
  }

  *(v6 + 24) = [(AWDWiFiMetricsManagerFrameCounterStats *)self->_frameCounters copyWithZone:zone];
  *(v6 + 80) = [(AWDChipCountersTx *)self->_txGeneralStats copyWithZone:zone];

  *(v6 + 72) = [(AWDChipErrorCountersTx *)self->_txErrorStats copyWithZone:zone];
  *(v6 + 40) = [(AWDChipCountersRx *)self->_rxGeneralStats copyWithZone:zone];

  *(v6 + 56) = [(AWDMacCountersRxErrors *)self->_rxMACErrorStats copyWithZone:zone];
  *(v6 + 48) = [(AWDMacCountersRx *)self->_rxMACCounterStats copyWithZone:zone];

  *(v6 + 64) = [(AWDRxPhyErrors *)self->_rxPhyErrors copyWithZone:zone];
  *(v6 + 88) = [(AWDWPA2Counters *)self->_ucastWPA2Counters copyWithZone:zone];

  *(v6 + 32) = [(AWDWPA2Counters *)self->_mcastWPA2Counters copyWithZone:zone];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  frameCounterPerInterfaces = self->_frameCounterPerInterfaces;
  v8 = [(NSMutableArray *)frameCounterPerInterfaces countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(frameCounterPerInterfaces);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addFrameCounterPerInterface:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)frameCounterPerInterfaces countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 96);
    if (*&self->_has)
    {
      if ((*(equal + 96) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_27;
      }
    }

    else if (*(equal + 96))
    {
LABEL_27:
      LOBYTE(v5) = 0;
      return v5;
    }

    frameCounters = self->_frameCounters;
    if (!(frameCounters | *(equal + 3)) || (v5 = [(AWDWiFiMetricsManagerFrameCounterStats *)frameCounters isEqual:?]) != 0)
    {
      txGeneralStats = self->_txGeneralStats;
      if (!(txGeneralStats | *(equal + 10)) || (v5 = [(AWDChipCountersTx *)txGeneralStats isEqual:?]) != 0)
      {
        txErrorStats = self->_txErrorStats;
        if (!(txErrorStats | *(equal + 9)) || (v5 = [(AWDChipErrorCountersTx *)txErrorStats isEqual:?]) != 0)
        {
          rxGeneralStats = self->_rxGeneralStats;
          if (!(rxGeneralStats | *(equal + 5)) || (v5 = [(AWDChipCountersRx *)rxGeneralStats isEqual:?]) != 0)
          {
            rxMACErrorStats = self->_rxMACErrorStats;
            if (!(rxMACErrorStats | *(equal + 7)) || (v5 = [(AWDMacCountersRxErrors *)rxMACErrorStats isEqual:?]) != 0)
            {
              rxMACCounterStats = self->_rxMACCounterStats;
              if (!(rxMACCounterStats | *(equal + 6)) || (v5 = [(AWDMacCountersRx *)rxMACCounterStats isEqual:?]) != 0)
              {
                rxPhyErrors = self->_rxPhyErrors;
                if (!(rxPhyErrors | *(equal + 8)) || (v5 = [(AWDRxPhyErrors *)rxPhyErrors isEqual:?]) != 0)
                {
                  ucastWPA2Counters = self->_ucastWPA2Counters;
                  if (!(ucastWPA2Counters | *(equal + 11)) || (v5 = [(AWDWPA2Counters *)ucastWPA2Counters isEqual:?]) != 0)
                  {
                    mcastWPA2Counters = self->_mcastWPA2Counters;
                    if (!(mcastWPA2Counters | *(equal + 4)) || (v5 = [(AWDWPA2Counters *)mcastWPA2Counters isEqual:?]) != 0)
                    {
                      frameCounterPerInterfaces = self->_frameCounterPerInterfaces;
                      if (frameCounterPerInterfaces | *(equal + 2))
                      {

                        LOBYTE(v5) = [(NSMutableArray *)frameCounterPerInterfaces isEqual:?];
                      }

                      else
                      {
                        LOBYTE(v5) = 1;
                      }
                    }
                  }
                }
              }
            }
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

  v4 = [(AWDWiFiMetricsManagerFrameCounterStats *)self->_frameCounters hash]^ v3;
  v5 = [(AWDChipCountersTx *)self->_txGeneralStats hash];
  v6 = v4 ^ v5 ^ [(AWDChipErrorCountersTx *)self->_txErrorStats hash];
  v7 = [(AWDChipCountersRx *)self->_rxGeneralStats hash];
  v8 = v7 ^ [(AWDMacCountersRxErrors *)self->_rxMACErrorStats hash];
  v9 = v6 ^ v8 ^ [(AWDMacCountersRx *)self->_rxMACCounterStats hash];
  v10 = [(AWDRxPhyErrors *)self->_rxPhyErrors hash];
  v11 = v10 ^ [(AWDWPA2Counters *)self->_ucastWPA2Counters hash];
  v12 = v11 ^ [(AWDWPA2Counters *)self->_mcastWPA2Counters hash];
  return v9 ^ v12 ^ [(NSMutableArray *)self->_frameCounterPerInterfaces hash];
}

- (void)mergeFrom:(id)from
{
  v34 = *MEMORY[0x29EDCA608];
  if (*(from + 96))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  frameCounters = self->_frameCounters;
  v6 = *(from + 3);
  if (frameCounters)
  {
    if (v6)
    {
      [(AWDWiFiMetricsManagerFrameCounterStats *)frameCounters mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setFrameCounters:?];
  }

  txGeneralStats = self->_txGeneralStats;
  v8 = *(from + 10);
  if (txGeneralStats)
  {
    if (v8)
    {
      [(AWDChipCountersTx *)txGeneralStats mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setTxGeneralStats:?];
  }

  txErrorStats = self->_txErrorStats;
  v10 = *(from + 9);
  if (txErrorStats)
  {
    if (v10)
    {
      [(AWDChipErrorCountersTx *)txErrorStats mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setTxErrorStats:?];
  }

  rxGeneralStats = self->_rxGeneralStats;
  v12 = *(from + 5);
  if (rxGeneralStats)
  {
    if (v12)
    {
      [(AWDChipCountersRx *)rxGeneralStats mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setRxGeneralStats:?];
  }

  rxMACErrorStats = self->_rxMACErrorStats;
  v14 = *(from + 7);
  if (rxMACErrorStats)
  {
    if (v14)
    {
      [(AWDMacCountersRxErrors *)rxMACErrorStats mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setRxMACErrorStats:?];
  }

  rxMACCounterStats = self->_rxMACCounterStats;
  v16 = *(from + 6);
  if (rxMACCounterStats)
  {
    if (v16)
    {
      [(AWDMacCountersRx *)rxMACCounterStats mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setRxMACCounterStats:?];
  }

  rxPhyErrors = self->_rxPhyErrors;
  v18 = *(from + 8);
  if (rxPhyErrors)
  {
    if (v18)
    {
      [(AWDRxPhyErrors *)rxPhyErrors mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setRxPhyErrors:?];
  }

  ucastWPA2Counters = self->_ucastWPA2Counters;
  v20 = *(from + 11);
  if (ucastWPA2Counters)
  {
    if (v20)
    {
      [(AWDWPA2Counters *)ucastWPA2Counters mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setUcastWPA2Counters:?];
  }

  mcastWPA2Counters = self->_mcastWPA2Counters;
  v22 = *(from + 4);
  if (mcastWPA2Counters)
  {
    if (v22)
    {
      [(AWDWPA2Counters *)mcastWPA2Counters mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(AWDWiFiMetricsManagerChipCounters *)self setMcastWPA2Counters:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = *(from + 2);
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(AWDWiFiMetricsManagerChipCounters *)self addFrameCounterPerInterface:*(*(&v29 + 1) + 8 * i)];
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v25);
  }

  v28 = *MEMORY[0x29EDCA608];
}

@end