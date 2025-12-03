@interface AWDWiFiNWActivityControllerStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxmdpuLost:(id)lost;
- (void)addRxmpduWME:(id)e;
- (void)addTxmpduWME:(id)e;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBackoffStuck:(BOOL)stuck;
- (void)setHasCcCaptureDriverLogs:(BOOL)logs;
- (void)setHasChannel:(BOOL)channel;
- (void)setHasChannelBandwidth:(BOOL)bandwidth;
- (void)setHasChannelsVisited0:(BOOL)visited0;
- (void)setHasChannelsVisited1:(BOOL)visited1;
- (void)setHasCommanderHalted:(BOOL)halted;
- (void)setHasControllerResets:(BOOL)resets;
- (void)setHasIorSuccess:(BOOL)success;
- (void)setHasIorWA:(BOOL)a;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityControllerStats

- (void)dealloc
{
  [(AWDWiFiNWActivityControllerStats *)self setScanActivity:0];
  [(AWDWiFiNWActivityControllerStats *)self setPowerActivity:0];
  [(AWDWiFiNWActivityControllerStats *)self setImpedingFunctions:0];
  [(AWDWiFiNWActivityControllerStats *)self setAggregateMetrics:0];
  [(AWDWiFiNWActivityControllerStats *)self setBtCoex:0];
  [(AWDWiFiNWActivityControllerStats *)self setPhyrate:0];
  [(AWDWiFiNWActivityControllerStats *)self setTxmpduWMEs:0];
  [(AWDWiFiNWActivityControllerStats *)self setRxmpduWMEs:0];
  [(AWDWiFiNWActivityControllerStats *)self setRxmdpuLosts:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityControllerStats;
  [(AWDWiFiNWActivityControllerStats *)&v3 dealloc];
}

- (void)setHasControllerResets:(BOOL)resets
{
  if (resets)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasBackoffStuck:(BOOL)stuck
{
  if (stuck)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasChannelsVisited0:(BOOL)visited0
{
  if (visited0)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasChannelsVisited1:(BOOL)visited1
{
  if (visited1)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasChannelBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCcCaptureDriverLogs:(BOOL)logs
{
  if (logs)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCommanderHalted:(BOOL)halted
{
  if (halted)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIorSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIorWA:(BOOL)a
{
  if (a)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addTxmpduWME:(id)e
{
  txmpduWMEs = self->_txmpduWMEs;
  if (!txmpduWMEs)
  {
    txmpduWMEs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txmpduWMEs = txmpduWMEs;
  }

  [(NSMutableArray *)txmpduWMEs addObject:e];
}

- (void)addRxmpduWME:(id)e
{
  rxmpduWMEs = self->_rxmpduWMEs;
  if (!rxmpduWMEs)
  {
    rxmpduWMEs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxmpduWMEs = rxmpduWMEs;
  }

  [(NSMutableArray *)rxmpduWMEs addObject:e];
}

- (void)addRxmdpuLost:(id)lost
{
  rxmdpuLosts = self->_rxmdpuLosts;
  if (!rxmdpuLosts)
  {
    rxmdpuLosts = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxmdpuLosts = rxmdpuLosts;
  }

  [(NSMutableArray *)rxmdpuLosts addObject:lost];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityControllerStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityControllerStats description](&v3, sel_description), -[AWDWiFiNWActivityControllerStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v48 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_controllerResets), @"controllerResets"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_backoffStuck), @"backoffStuck"}];
  }

  scanActivity = self->_scanActivity;
  if (scanActivity)
  {
    [dictionary setObject:-[AWDWiFiNWActivityScanActivity dictionaryRepresentation](scanActivity forKey:{"dictionaryRepresentation"), @"scanActivity"}];
  }

  powerActivity = self->_powerActivity;
  if (powerActivity)
  {
    [dictionary setObject:-[AWDWiFiNWActivityPowerPStats dictionaryRepresentation](powerActivity forKey:{"dictionaryRepresentation"), @"powerActivity"}];
  }

  impedingFunctions = self->_impedingFunctions;
  if (impedingFunctions)
  {
    [dictionary setObject:-[AWDWiFiNWActivityImpedingFunctions dictionaryRepresentation](impedingFunctions forKey:{"dictionaryRepresentation"), @"impedingFunctions"}];
  }

  aggregateMetrics = self->_aggregateMetrics;
  if (aggregateMetrics)
  {
    [dictionary setObject:-[AWDWiFiNWActivityAggregateMetrics dictionaryRepresentation](aggregateMetrics forKey:{"dictionaryRepresentation"), @"aggregateMetrics"}];
  }

  btCoex = self->_btCoex;
  if (btCoex)
  {
    [dictionary setObject:-[AWDWiFiNWActivityBtCoex dictionaryRepresentation](btCoex forKey:{"dictionaryRepresentation"), @"btCoex"}];
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelsVisited0), @"channelsVisited0"}];
    v10 = self->_has;
  }

  if ((v10 & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelsVisited1), @"channelsVisited1"}];
  }

  phyrate = self->_phyrate;
  if (phyrate)
  {
    [dictionary setObject:-[AWDWiFiNWActivityRateAndAggregation dictionaryRepresentation](phyrate forKey:{"dictionaryRepresentation"), @"phyrate"}];
  }

  v12 = self->_has;
  if ((v12 & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
    v12 = self->_has;
    if ((v12 & 0x10) == 0)
    {
LABEL_23:
      if ((v12 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_59;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelBandwidth), @"channelBandwidth"}];
  v12 = self->_has;
  if ((v12 & 4) == 0)
  {
LABEL_24:
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccCaptureDriverLogs), @"ccCaptureDriverLogs"}];
  v12 = self->_has;
  if ((v12 & 1) == 0)
  {
LABEL_25:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_commandsIssued), @"commandsIssued"}];
  v12 = self->_has;
  if ((v12 & 0x80) == 0)
  {
LABEL_26:
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_commanderHalted), @"commanderHalted"}];
  v12 = self->_has;
  if ((v12 & 0x200) == 0)
  {
LABEL_27:
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_iorSuccess), @"iorSuccess"}];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_28:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_iorWA), @"iorWA"}];
  }

LABEL_29:
  if ([(NSMutableArray *)self->_txmpduWMEs count])
  {
    v13 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txmpduWMEs, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    txmpduWMEs = self->_txmpduWMEs;
    v15 = [(NSMutableArray *)txmpduWMEs countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(txmpduWMEs);
          }

          [v13 addObject:{objc_msgSend(*(*(&v41 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v16 = [(NSMutableArray *)txmpduWMEs countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"txmpduWME"];
  }

  if ([(NSMutableArray *)self->_rxmpduWMEs count])
  {
    v19 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxmpduWMEs, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    rxmpduWMEs = self->_rxmpduWMEs;
    v21 = [(NSMutableArray *)rxmpduWMEs countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(rxmpduWMEs);
          }

          [v19 addObject:{objc_msgSend(*(*(&v37 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v22 = [(NSMutableArray *)rxmpduWMEs countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"rxmpduWME"];
  }

  if ([(NSMutableArray *)self->_rxmdpuLosts count])
  {
    v25 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxmdpuLosts, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    rxmdpuLosts = self->_rxmdpuLosts;
    v27 = [(NSMutableArray *)rxmdpuLosts countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(rxmdpuLosts);
          }

          [v25 addObject:{objc_msgSend(*(*(&v33 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v28 = [(NSMutableArray *)rxmdpuLosts countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"rxmdpuLost"];
  }

  v31 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v52 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    controllerResets = self->_controllerResets;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    backoffStuck = self->_backoffStuck;
    PBDataWriterWriteUint32Field();
  }

  if (self->_scanActivity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_powerActivity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_impedingFunctions)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_aggregateMetrics)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_btCoex)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    channelsVisited0 = self->_channelsVisited0;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    channelsVisited1 = self->_channelsVisited1;
    PBDataWriterWriteUint32Field();
  }

  if (self->_phyrate)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    channel = self->_channel;
    PBDataWriterWriteUint32Field();
    v10 = self->_has;
    if ((v10 & 0x10) == 0)
    {
LABEL_23:
      if ((v10 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_53;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  channelBandwidth = self->_channelBandwidth;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_24:
    if ((v10 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  ccCaptureDriverLogs = self->_ccCaptureDriverLogs;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((v10 & 1) == 0)
  {
LABEL_25:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  commandsIssued = self->_commandsIssued;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((v10 & 0x80) == 0)
  {
LABEL_26:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  commanderHalted = self->_commanderHalted;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_27:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_56:
  iorSuccess = self->_iorSuccess;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_28:
    iorWA = self->_iorWA;
    PBDataWriterWriteUint32Field();
  }

LABEL_29:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  txmpduWMEs = self->_txmpduWMEs;
  v13 = [(NSMutableArray *)txmpduWMEs countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(txmpduWMEs);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)txmpduWMEs countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v14);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  rxmpduWMEs = self->_rxmpduWMEs;
  v19 = [(NSMutableArray *)rxmpduWMEs countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(rxmpduWMEs);
        }

        v23 = *(*(&v41 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSMutableArray *)rxmpduWMEs countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v20);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  rxmdpuLosts = self->_rxmdpuLosts;
  v25 = [(NSMutableArray *)rxmdpuLosts countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(rxmdpuLosts);
        }

        v29 = *(*(&v37 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSMutableArray *)rxmdpuLosts countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v26);
  }

  v30 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(to + 16) = self->_controllerResets;
    *(to + 68) |= 0x100u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 6) = self->_backoffStuck;
    *(to + 68) |= 2u;
  }

  if (self->_scanActivity)
  {
    [to setScanActivity:?];
  }

  if (self->_powerActivity)
  {
    [to setPowerActivity:?];
  }

  if (self->_impedingFunctions)
  {
    [to setImpedingFunctions:?];
  }

  if (self->_aggregateMetrics)
  {
    [to setAggregateMetrics:?];
  }

  if (self->_btCoex)
  {
    [to setBtCoex:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(to + 13) = self->_channelsVisited0;
    *(to + 68) |= 0x20u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    *(to + 14) = self->_channelsVisited1;
    *(to + 68) |= 0x40u;
  }

  if (self->_phyrate)
  {
    [to setPhyrate:?];
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    *(to + 11) = self->_channel;
    *(to + 68) |= 8u;
    v7 = self->_has;
    if ((v7 & 0x10) == 0)
    {
LABEL_23:
      if ((v7 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(to + 12) = self->_channelBandwidth;
  *(to + 68) |= 0x10u;
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_24:
    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(to + 10) = self->_ccCaptureDriverLogs;
  *(to + 68) |= 4u;
  v7 = self->_has;
  if ((v7 & 1) == 0)
  {
LABEL_25:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(to + 1) = self->_commandsIssued;
  *(to + 68) |= 1u;
  v7 = self->_has;
  if ((v7 & 0x80) == 0)
  {
LABEL_26:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_27;
    }

LABEL_47:
    *(to + 20) = self->_iorSuccess;
    *(to + 68) |= 0x200u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_46:
  *(to + 15) = self->_commanderHalted;
  *(to + 68) |= 0x80u;
  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    goto LABEL_47;
  }

LABEL_27:
  if ((v7 & 0x400) != 0)
  {
LABEL_28:
    *(to + 21) = self->_iorWA;
    *(to + 68) |= 0x400u;
  }

LABEL_29:
  if ([(AWDWiFiNWActivityControllerStats *)self txmpduWMEsCount])
  {
    [to clearTxmpduWMEs];
    txmpduWMEsCount = [(AWDWiFiNWActivityControllerStats *)self txmpduWMEsCount];
    if (txmpduWMEsCount)
    {
      v9 = txmpduWMEsCount;
      for (i = 0; i != v9; ++i)
      {
        [to addTxmpduWME:{-[AWDWiFiNWActivityControllerStats txmpduWMEAtIndex:](self, "txmpduWMEAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityControllerStats *)self rxmpduWMEsCount])
  {
    [to clearRxmpduWMEs];
    rxmpduWMEsCount = [(AWDWiFiNWActivityControllerStats *)self rxmpduWMEsCount];
    if (rxmpduWMEsCount)
    {
      v12 = rxmpduWMEsCount;
      for (j = 0; j != v12; ++j)
      {
        [to addRxmpduWME:{-[AWDWiFiNWActivityControllerStats rxmpduWMEAtIndex:](self, "rxmpduWMEAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityControllerStats *)self rxmdpuLostsCount])
  {
    [to clearRxmdpuLosts];
    rxmdpuLostsCount = [(AWDWiFiNWActivityControllerStats *)self rxmdpuLostsCount];
    if (rxmdpuLostsCount)
    {
      v15 = rxmdpuLostsCount;
      for (k = 0; k != v15; ++k)
      {
        [to addRxmdpuLost:{-[AWDWiFiNWActivityControllerStats rxmdpuLostAtIndex:](self, "rxmdpuLostAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 64) = self->_controllerResets;
    *(v5 + 136) |= 0x100u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_backoffStuck;
    *(v5 + 136) |= 2u;
  }

  *(v6 + 120) = [(AWDWiFiNWActivityScanActivity *)self->_scanActivity copyWithZone:zone];
  *(v6 + 96) = [(AWDWiFiNWActivityPowerPStats *)self->_powerActivity copyWithZone:zone];

  *(v6 + 72) = [(AWDWiFiNWActivityImpedingFunctions *)self->_impedingFunctions copyWithZone:zone];
  *(v6 + 16) = [(AWDWiFiNWActivityAggregateMetrics *)self->_aggregateMetrics copyWithZone:zone];

  *(v6 + 32) = [(AWDWiFiNWActivityBtCoex *)self->_btCoex copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    *(v6 + 52) = self->_channelsVisited0;
    *(v6 + 136) |= 0x20u;
    v8 = self->_has;
  }

  if ((v8 & 0x40) != 0)
  {
    *(v6 + 56) = self->_channelsVisited1;
    *(v6 + 136) |= 0x40u;
  }

  *(v6 + 88) = [(AWDWiFiNWActivityRateAndAggregation *)self->_phyrate copyWithZone:zone];
  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    *(v6 + 44) = self->_channel;
    *(v6 + 136) |= 8u;
    v9 = self->_has;
    if ((v9 & 0x10) == 0)
    {
LABEL_11:
      if ((v9 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 48) = self->_channelBandwidth;
  *(v6 + 136) |= 0x10u;
  v9 = self->_has;
  if ((v9 & 4) == 0)
  {
LABEL_12:
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 40) = self->_ccCaptureDriverLogs;
  *(v6 + 136) |= 4u;
  v9 = self->_has;
  if ((v9 & 1) == 0)
  {
LABEL_13:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 8) = self->_commandsIssued;
  *(v6 + 136) |= 1u;
  v9 = self->_has;
  if ((v9 & 0x80) == 0)
  {
LABEL_14:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 60) = self->_commanderHalted;
  *(v6 + 136) |= 0x80u;
  v9 = self->_has;
  if ((v9 & 0x200) == 0)
  {
LABEL_15:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_44:
  *(v6 + 80) = self->_iorSuccess;
  *(v6 + 136) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    *(v6 + 84) = self->_iorWA;
    *(v6 + 136) |= 0x400u;
  }

LABEL_17:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  txmpduWMEs = self->_txmpduWMEs;
  v11 = [(NSMutableArray *)txmpduWMEs countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(txmpduWMEs);
        }

        v15 = [*(*(&v38 + 1) + 8 * i) copyWithZone:zone];
        [v6 addTxmpduWME:v15];
      }

      v12 = [(NSMutableArray *)txmpduWMEs countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v12);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  rxmpduWMEs = self->_rxmpduWMEs;
  v17 = [(NSMutableArray *)rxmpduWMEs countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(rxmpduWMEs);
        }

        v21 = [*(*(&v34 + 1) + 8 * j) copyWithZone:zone];
        [v6 addRxmpduWME:v21];
      }

      v18 = [(NSMutableArray *)rxmpduWMEs countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v18);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  rxmdpuLosts = self->_rxmdpuLosts;
  v23 = [(NSMutableArray *)rxmdpuLosts countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(rxmdpuLosts);
        }

        v27 = [*(*(&v30 + 1) + 8 * k) copyWithZone:zone];
        [v6 addRxmdpuLost:v27];
      }

      v24 = [(NSMutableArray *)rxmdpuLosts countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 68);
    if ((has & 0x100) != 0)
    {
      if ((*(equal + 68) & 0x100) == 0 || self->_controllerResets != *(equal + 16))
      {
        goto LABEL_76;
      }
    }

    else if ((*(equal + 68) & 0x100) != 0)
    {
LABEL_76:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_backoffStuck != *(equal + 6))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_76;
    }

    scanActivity = self->_scanActivity;
    if (!(scanActivity | *(equal + 15)) || (v5 = [(AWDWiFiNWActivityScanActivity *)scanActivity isEqual:?]) != 0)
    {
      powerActivity = self->_powerActivity;
      if (!(powerActivity | *(equal + 12)) || (v5 = [(AWDWiFiNWActivityPowerPStats *)powerActivity isEqual:?]) != 0)
      {
        impedingFunctions = self->_impedingFunctions;
        if (!(impedingFunctions | *(equal + 9)) || (v5 = [(AWDWiFiNWActivityImpedingFunctions *)impedingFunctions isEqual:?]) != 0)
        {
          aggregateMetrics = self->_aggregateMetrics;
          if (!(aggregateMetrics | *(equal + 2)) || (v5 = [(AWDWiFiNWActivityAggregateMetrics *)aggregateMetrics isEqual:?]) != 0)
          {
            btCoex = self->_btCoex;
            if (!(btCoex | *(equal + 4)) || (v5 = [(AWDWiFiNWActivityBtCoex *)btCoex isEqual:?]) != 0)
            {
              v13 = self->_has;
              v14 = *(equal + 68);
              if ((v13 & 0x20) != 0)
              {
                if ((v14 & 0x20) == 0 || self->_channelsVisited0 != *(equal + 13))
                {
                  goto LABEL_76;
                }
              }

              else if ((v14 & 0x20) != 0)
              {
                goto LABEL_76;
              }

              if ((v13 & 0x40) != 0)
              {
                if ((v14 & 0x40) == 0 || self->_channelsVisited1 != *(equal + 14))
                {
                  goto LABEL_76;
                }
              }

              else if ((v14 & 0x40) != 0)
              {
                goto LABEL_76;
              }

              phyrate = self->_phyrate;
              if (phyrate | *(equal + 11))
              {
                v5 = [(AWDWiFiNWActivityRateAndAggregation *)phyrate isEqual:?];
                if (!v5)
                {
                  return v5;
                }

                v13 = self->_has;
              }

              v16 = *(equal + 68);
              if ((v13 & 8) != 0)
              {
                if ((v16 & 8) == 0 || self->_channel != *(equal + 11))
                {
                  goto LABEL_76;
                }
              }

              else if ((v16 & 8) != 0)
              {
                goto LABEL_76;
              }

              if ((v13 & 0x10) != 0)
              {
                if ((v16 & 0x10) == 0 || self->_channelBandwidth != *(equal + 12))
                {
                  goto LABEL_76;
                }
              }

              else if ((v16 & 0x10) != 0)
              {
                goto LABEL_76;
              }

              if ((v13 & 4) != 0)
              {
                if ((v16 & 4) == 0 || self->_ccCaptureDriverLogs != *(equal + 10))
                {
                  goto LABEL_76;
                }
              }

              else if ((v16 & 4) != 0)
              {
                goto LABEL_76;
              }

              if (v13)
              {
                if ((v16 & 1) == 0 || self->_commandsIssued != *(equal + 1))
                {
                  goto LABEL_76;
                }
              }

              else if (v16)
              {
                goto LABEL_76;
              }

              if ((v13 & 0x80) != 0)
              {
                if ((v16 & 0x80) == 0 || self->_commanderHalted != *(equal + 15))
                {
                  goto LABEL_76;
                }
              }

              else if ((v16 & 0x80) != 0)
              {
                goto LABEL_76;
              }

              if ((v13 & 0x200) != 0)
              {
                if ((*(equal + 68) & 0x200) == 0 || self->_iorSuccess != *(equal + 20))
                {
                  goto LABEL_76;
                }
              }

              else if ((*(equal + 68) & 0x200) != 0)
              {
                goto LABEL_76;
              }

              if ((v13 & 0x400) != 0)
              {
                if ((*(equal + 68) & 0x400) == 0 || self->_iorWA != *(equal + 21))
                {
                  goto LABEL_76;
                }
              }

              else if ((*(equal + 68) & 0x400) != 0)
              {
                goto LABEL_76;
              }

              txmpduWMEs = self->_txmpduWMEs;
              if (!(txmpduWMEs | *(equal + 16)) || (v5 = [(NSMutableArray *)txmpduWMEs isEqual:?]) != 0)
              {
                rxmpduWMEs = self->_rxmpduWMEs;
                if (!(rxmpduWMEs | *(equal + 14)) || (v5 = [(NSMutableArray *)rxmpduWMEs isEqual:?]) != 0)
                {
                  rxmdpuLosts = self->_rxmdpuLosts;
                  if (rxmdpuLosts | *(equal + 13))
                  {

                    LOBYTE(v5) = [(NSMutableArray *)rxmdpuLosts isEqual:?];
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

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v27 = 2654435761 * self->_controllerResets;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = 0;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = [(AWDWiFiNWActivityScanActivity *)self->_scanActivity hash];
      goto LABEL_6;
    }
  }

  v4 = [(AWDWiFiNWActivityScanActivity *)self->_scanActivity hash];
LABEL_6:
  v5 = v4;
  v6 = [(AWDWiFiNWActivityPowerPStats *)self->_powerActivity hash];
  v7 = [(AWDWiFiNWActivityImpedingFunctions *)self->_impedingFunctions hash];
  v8 = [(AWDWiFiNWActivityAggregateMetrics *)self->_aggregateMetrics hash];
  v9 = [(AWDWiFiNWActivityBtCoex *)self->_btCoex hash];
  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    v11 = 2654435761 * self->_channelsVisited0;
    if ((v10 & 0x40) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if ((v10 & 0x40) != 0)
    {
LABEL_8:
      v12 = 2654435761 * self->_channelsVisited1;
      goto LABEL_11;
    }
  }

  v12 = 0;
LABEL_11:
  v13 = [(AWDWiFiNWActivityRateAndAggregation *)self->_phyrate hash];
  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    v15 = 2654435761 * self->_channel;
    if ((v14 & 0x10) != 0)
    {
LABEL_13:
      v16 = 2654435761 * self->_channelBandwidth;
      if ((v14 & 4) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v15 = 0;
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_13;
    }
  }

  v16 = 0;
  if ((v14 & 4) != 0)
  {
LABEL_14:
    v17 = 2654435761 * self->_ccCaptureDriverLogs;
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  v17 = 0;
  if (v14)
  {
LABEL_15:
    v18 = 2654435761u * self->_commandsIssued;
    if ((v14 & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = 0;
  if ((v14 & 0x80) != 0)
  {
LABEL_16:
    v19 = 2654435761 * self->_commanderHalted;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v20 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    v21 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v19 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  v20 = 2654435761 * self->_iorSuccess;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v21 = 2654435761 * self->_iorWA;
LABEL_26:
  v22 = v26 ^ v27 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16;
  v23 = v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSMutableArray *)self->_txmpduWMEs hash];
  v24 = v23 ^ [(NSMutableArray *)self->_rxmpduWMEs hash];
  return v22 ^ v24 ^ [(NSMutableArray *)self->_rxmdpuLosts hash];
}

- (void)mergeFrom:(id)from
{
  v51 = *MEMORY[0x29EDCA608];
  v5 = *(from + 68);
  if ((v5 & 0x100) != 0)
  {
    self->_controllerResets = *(from + 16);
    *&self->_has |= 0x100u;
    v5 = *(from + 68);
  }

  if ((v5 & 2) != 0)
  {
    self->_backoffStuck = *(from + 6);
    *&self->_has |= 2u;
  }

  scanActivity = self->_scanActivity;
  v7 = *(from + 15);
  if (scanActivity)
  {
    if (v7)
    {
      [(AWDWiFiNWActivityScanActivity *)scanActivity mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDWiFiNWActivityControllerStats *)self setScanActivity:?];
  }

  powerActivity = self->_powerActivity;
  v9 = *(from + 12);
  if (powerActivity)
  {
    if (v9)
    {
      [(AWDWiFiNWActivityPowerPStats *)powerActivity mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDWiFiNWActivityControllerStats *)self setPowerActivity:?];
  }

  impedingFunctions = self->_impedingFunctions;
  v11 = *(from + 9);
  if (impedingFunctions)
  {
    if (v11)
    {
      [(AWDWiFiNWActivityImpedingFunctions *)impedingFunctions mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDWiFiNWActivityControllerStats *)self setImpedingFunctions:?];
  }

  aggregateMetrics = self->_aggregateMetrics;
  v13 = *(from + 2);
  if (aggregateMetrics)
  {
    if (v13)
    {
      [(AWDWiFiNWActivityAggregateMetrics *)aggregateMetrics mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDWiFiNWActivityControllerStats *)self setAggregateMetrics:?];
  }

  btCoex = self->_btCoex;
  v15 = *(from + 4);
  if (btCoex)
  {
    if (v15)
    {
      [(AWDWiFiNWActivityBtCoex *)btCoex mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(AWDWiFiNWActivityControllerStats *)self setBtCoex:?];
  }

  v16 = *(from + 68);
  if ((v16 & 0x20) != 0)
  {
    self->_channelsVisited0 = *(from + 13);
    *&self->_has |= 0x20u;
    v16 = *(from + 68);
  }

  if ((v16 & 0x40) != 0)
  {
    self->_channelsVisited1 = *(from + 14);
    *&self->_has |= 0x40u;
  }

  phyrate = self->_phyrate;
  v18 = *(from + 11);
  if (phyrate)
  {
    if (v18)
    {
      [(AWDWiFiNWActivityRateAndAggregation *)phyrate mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(AWDWiFiNWActivityControllerStats *)self setPhyrate:?];
  }

  v19 = *(from + 68);
  if ((v19 & 8) != 0)
  {
    self->_channel = *(from + 11);
    *&self->_has |= 8u;
    v19 = *(from + 68);
    if ((v19 & 0x10) == 0)
    {
LABEL_41:
      if ((v19 & 4) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_71;
    }
  }

  else if ((v19 & 0x10) == 0)
  {
    goto LABEL_41;
  }

  self->_channelBandwidth = *(from + 12);
  *&self->_has |= 0x10u;
  v19 = *(from + 68);
  if ((v19 & 4) == 0)
  {
LABEL_42:
    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_ccCaptureDriverLogs = *(from + 10);
  *&self->_has |= 4u;
  v19 = *(from + 68);
  if ((v19 & 1) == 0)
  {
LABEL_43:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_commandsIssued = *(from + 1);
  *&self->_has |= 1u;
  v19 = *(from + 68);
  if ((v19 & 0x80) == 0)
  {
LABEL_44:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_commanderHalted = *(from + 15);
  *&self->_has |= 0x80u;
  v19 = *(from + 68);
  if ((v19 & 0x200) == 0)
  {
LABEL_45:
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_74:
  self->_iorSuccess = *(from + 20);
  *&self->_has |= 0x200u;
  if ((*(from + 68) & 0x400) != 0)
  {
LABEL_46:
    self->_iorWA = *(from + 21);
    *&self->_has |= 0x400u;
  }

LABEL_47:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = *(from + 16);
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDWiFiNWActivityControllerStats *)self addTxmpduWME:*(*(&v44 + 1) + 8 * i)];
      }

      v22 = [v20 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = *(from + 14);
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(AWDWiFiNWActivityControllerStats *)self addRxmpduWME:*(*(&v40 + 1) + 8 * j)];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = *(from + 13);
  v31 = [v30 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v37;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(AWDWiFiNWActivityControllerStats *)self addRxmdpuLost:*(*(&v36 + 1) + 8 * k)];
      }

      v32 = [v30 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x29EDCA608];
}

@end