@interface WiFiAnalyticsAWDWiFiNWActivityControllerStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRxmdpuLost:(id)a3;
- (void)addRxmpduWME:(id)a3;
- (void)addTxmpduWME:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBackoffStuck:(BOOL)a3;
- (void)setHasCcCaptureDriverLogs:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasChannelBandwidth:(BOOL)a3;
- (void)setHasChannelsVisited0:(BOOL)a3;
- (void)setHasChannelsVisited1:(BOOL)a3;
- (void)setHasCommanderHalted:(BOOL)a3;
- (void)setHasControllerResets:(BOOL)a3;
- (void)setHasIorSuccess:(BOOL)a3;
- (void)setHasIorWA:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityControllerStats

- (void)setHasControllerResets:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasBackoffStuck:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasChannelsVisited0:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasChannelsVisited1:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasChannelBandwidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasCcCaptureDriverLogs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCommanderHalted:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIorSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIorWA:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addTxmpduWME:(id)a3
{
  v4 = a3;
  txmpduWMEs = self->_txmpduWMEs;
  v8 = v4;
  if (!txmpduWMEs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txmpduWMEs;
    self->_txmpduWMEs = v6;

    v4 = v8;
    txmpduWMEs = self->_txmpduWMEs;
  }

  [(NSMutableArray *)txmpduWMEs addObject:v4];
}

- (void)addRxmpduWME:(id)a3
{
  v4 = a3;
  rxmpduWMEs = self->_rxmpduWMEs;
  v8 = v4;
  if (!rxmpduWMEs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rxmpduWMEs;
    self->_rxmpduWMEs = v6;

    v4 = v8;
    rxmpduWMEs = self->_rxmpduWMEs;
  }

  [(NSMutableArray *)rxmpduWMEs addObject:v4];
}

- (void)addRxmdpuLost:(id)a3
{
  v4 = a3;
  rxmdpuLosts = self->_rxmdpuLosts;
  v8 = v4;
  if (!rxmdpuLosts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rxmdpuLosts;
    self->_rxmdpuLosts = v6;

    v4 = v8;
    rxmdpuLosts = self->_rxmdpuLosts;
  }

  [(NSMutableArray *)rxmdpuLosts addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityControllerStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_controllerResets];
    [v3 setObject:v5 forKey:@"controllerResets"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_backoffStuck];
    [v3 setObject:v6 forKey:@"backoffStuck"];
  }

  scanActivity = self->_scanActivity;
  if (scanActivity)
  {
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityScanActivity *)scanActivity dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"scanActivity"];
  }

  powerActivity = self->_powerActivity;
  if (powerActivity)
  {
    v10 = [(WiFiAnalyticsAWDWiFiNWActivityPowerPStats *)powerActivity dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"powerActivity"];
  }

  impedingFunctions = self->_impedingFunctions;
  if (impedingFunctions)
  {
    v12 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)impedingFunctions dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"impedingFunctions"];
  }

  aggregateMetrics = self->_aggregateMetrics;
  if (aggregateMetrics)
  {
    v14 = [(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)aggregateMetrics dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"aggregateMetrics"];
  }

  btCoex = self->_btCoex;
  if (btCoex)
  {
    v16 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)btCoex dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"btCoex"];
  }

  v17 = self->_has;
  if ((v17 & 0x20) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelsVisited0];
    [v3 setObject:v18 forKey:@"channelsVisited0"];

    v17 = self->_has;
  }

  if ((v17 & 0x40) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelsVisited1];
    [v3 setObject:v19 forKey:@"channelsVisited1"];
  }

  phyrate = self->_phyrate;
  if (phyrate)
  {
    v21 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)phyrate dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"phyrate"];
  }

  v22 = self->_has;
  if ((v22 & 8) != 0)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channel];
    [v3 setObject:v51 forKey:@"channel"];

    v22 = self->_has;
    if ((v22 & 0x10) == 0)
    {
LABEL_23:
      if ((v22 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_65;
    }
  }

  else if ((v22 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelBandwidth];
  [v3 setObject:v52 forKey:@"channelBandwidth"];

  v22 = self->_has;
  if ((v22 & 4) == 0)
  {
LABEL_24:
    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccCaptureDriverLogs];
  [v3 setObject:v53 forKey:@"ccCaptureDriverLogs"];

  v22 = self->_has;
  if ((v22 & 1) == 0)
  {
LABEL_25:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandsIssued];
  [v3 setObject:v54 forKey:@"commandsIssued"];

  v22 = self->_has;
  if ((v22 & 0x80) == 0)
  {
LABEL_26:
    if ((v22 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_commanderHalted];
  [v3 setObject:v55 forKey:@"commanderHalted"];

  v22 = self->_has;
  if ((v22 & 0x200) == 0)
  {
LABEL_27:
    if ((v22 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_68:
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_iorSuccess];
  [v3 setObject:v56 forKey:@"iorSuccess"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_28:
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_iorWA];
    [v3 setObject:v23 forKey:@"iorWA"];
  }

LABEL_29:
  if ([(NSMutableArray *)self->_txmpduWMEs count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txmpduWMEs, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v25 = self->_txmpduWMEs;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v66;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v66 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v65 + 1) + 8 * i) dictionaryRepresentation];
          [v24 addObject:v30];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKey:@"txmpduWME"];
  }

  if ([(NSMutableArray *)self->_rxmpduWMEs count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rxmpduWMEs, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v32 = self->_rxmpduWMEs;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v62;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v62 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v61 + 1) + 8 * j) dictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKey:@"rxmpduWME"];
  }

  if ([(NSMutableArray *)self->_rxmdpuLosts count])
  {
    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rxmdpuLosts, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v39 = self->_rxmdpuLosts;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v58;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [*(*(&v57 + 1) + 8 * k) dictionaryRepresentation];
          [v38 addObject:v44];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v41);
    }

    [v3 setObject:v38 forKey:@"rxmdpuLost"];
  }

  omi = self->_omi;
  if (omi)
  {
    v46 = [(WiFiAnalyticsAWDWiFiNWActivityOMI *)omi dictionaryRepresentation];
    [v3 setObject:v46 forKey:@"omi"];
  }

  ruUsage = self->_ruUsage;
  if (ruUsage)
  {
    v48 = [(WiFiAnalyticsAWDWiFiNWActivityRuUsage *)ruUsage dictionaryRepresentation];
    [v3 setObject:v48 forKey:@"ruUsage"];
  }

  v49 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    channelsVisited0 = self->_channelsVisited0;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
  }

  if ((v8 & 0x40) != 0)
  {
    channelsVisited1 = self->_channelsVisited1;
    PBDataWriterWriteUint32Field();
  }

  if (self->_phyrate)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    channel = self->_channel;
    PBDataWriterWriteUint32Field();
    v11 = self->_has;
    if ((v11 & 0x10) == 0)
    {
LABEL_23:
      if ((v11 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  channelBandwidth = self->_channelBandwidth;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((v11 & 4) == 0)
  {
LABEL_24:
    if ((v11 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  ccCaptureDriverLogs = self->_ccCaptureDriverLogs;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((v11 & 1) == 0)
  {
LABEL_25:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  commandsIssued = self->_commandsIssued;
  PBDataWriterWriteUint64Field();
  v11 = self->_has;
  if ((v11 & 0x80) == 0)
  {
LABEL_26:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  commanderHalted = self->_commanderHalted;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((v11 & 0x200) == 0)
  {
LABEL_27:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_60:
  iorSuccess = self->_iorSuccess;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_28:
    iorWA = self->_iorWA;
    PBDataWriterWriteUint32Field();
  }

LABEL_29:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = self->_txmpduWMEs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v47;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v46 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v15);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = self->_rxmpduWMEs;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v21);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = self->_rxmdpuLosts;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v38 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v27);
  }

  if (self->_omi)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_ruUsage)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v4[16] = self->_controllerResets;
    *(v4 + 76) |= 0x100u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[6] = self->_backoffStuck;
    *(v4 + 76) |= 2u;
  }

  v21 = v4;
  if (self->_scanActivity)
  {
    [v4 setScanActivity:?];
    v4 = v21;
  }

  if (self->_powerActivity)
  {
    [v21 setPowerActivity:?];
    v4 = v21;
  }

  if (self->_impedingFunctions)
  {
    [v21 setImpedingFunctions:?];
    v4 = v21;
  }

  if (self->_aggregateMetrics)
  {
    [v21 setAggregateMetrics:?];
    v4 = v21;
  }

  if (self->_btCoex)
  {
    [v21 setBtCoex:?];
    v4 = v21;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    v4[13] = self->_channelsVisited0;
    *(v4 + 76) |= 0x20u;
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {
    v4[14] = self->_channelsVisited1;
    *(v4 + 76) |= 0x40u;
  }

  if (self->_phyrate)
  {
    [v21 setPhyrate:?];
    v4 = v21;
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    v4[11] = self->_channel;
    *(v4 + 76) |= 8u;
    v7 = self->_has;
    if ((v7 & 0x10) == 0)
    {
LABEL_23:
      if ((v7 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_50;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v4[12] = self->_channelBandwidth;
  *(v4 + 76) |= 0x10u;
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_24:
    if ((v7 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  v4[10] = self->_ccCaptureDriverLogs;
  *(v4 + 76) |= 4u;
  v7 = self->_has;
  if ((v7 & 1) == 0)
  {
LABEL_25:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 1) = self->_commandsIssued;
  *(v4 + 76) |= 1u;
  v7 = self->_has;
  if ((v7 & 0x80) == 0)
  {
LABEL_26:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_27;
    }

LABEL_53:
    v4[20] = self->_iorSuccess;
    *(v4 + 76) |= 0x200u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_52:
  v4[15] = self->_commanderHalted;
  *(v4 + 76) |= 0x80u;
  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    goto LABEL_53;
  }

LABEL_27:
  if ((v7 & 0x400) != 0)
  {
LABEL_28:
    v4[21] = self->_iorWA;
    *(v4 + 76) |= 0x400u;
  }

LABEL_29:
  if ([(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self txmpduWMEsCount])
  {
    [v21 clearTxmpduWMEs];
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self txmpduWMEsCount];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self txmpduWMEAtIndex:i];
        [v21 addTxmpduWME:v11];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self rxmpduWMEsCount])
  {
    [v21 clearRxmpduWMEs];
    v12 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self rxmpduWMEsCount];
    if (v12)
    {
      v13 = v12;
      for (j = 0; j != v13; ++j)
      {
        v15 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self rxmpduWMEAtIndex:j];
        [v21 addRxmpduWME:v15];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self rxmdpuLostsCount])
  {
    [v21 clearRxmdpuLosts];
    v16 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self rxmdpuLostsCount];
    if (v16)
    {
      v17 = v16;
      for (k = 0; k != v17; ++k)
      {
        v19 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self rxmdpuLostAtIndex:k];
        [v21 addRxmdpuLost:v19];
      }
    }
  }

  if (self->_omi)
  {
    [v21 setOmi:?];
  }

  v20 = v21;
  if (self->_ruUsage)
  {
    [v21 setRuUsage:?];
    v20 = v21;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 64) = self->_controllerResets;
    *(v5 + 152) |= 0x100u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_backoffStuck;
    *(v5 + 152) |= 2u;
  }

  v8 = [(WiFiAnalyticsAWDWiFiNWActivityScanActivity *)self->_scanActivity copyWithZone:a3];
  v9 = *(v6 + 136);
  *(v6 + 136) = v8;

  v10 = [(WiFiAnalyticsAWDWiFiNWActivityPowerPStats *)self->_powerActivity copyWithZone:a3];
  v11 = *(v6 + 104);
  *(v6 + 104) = v10;

  v12 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self->_impedingFunctions copyWithZone:a3];
  v13 = *(v6 + 72);
  *(v6 + 72) = v12;

  v14 = [(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)self->_aggregateMetrics copyWithZone:a3];
  v15 = *(v6 + 16);
  *(v6 + 16) = v14;

  v16 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)self->_btCoex copyWithZone:a3];
  v17 = *(v6 + 32);
  *(v6 + 32) = v16;

  v18 = self->_has;
  if ((v18 & 0x20) != 0)
  {
    *(v6 + 52) = self->_channelsVisited0;
    *(v6 + 152) |= 0x20u;
    v18 = self->_has;
  }

  if ((v18 & 0x40) != 0)
  {
    *(v6 + 56) = self->_channelsVisited1;
    *(v6 + 152) |= 0x40u;
  }

  v19 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self->_phyrate copyWithZone:a3];
  v20 = *(v6 + 96);
  *(v6 + 96) = v19;

  v21 = self->_has;
  if ((v21 & 8) != 0)
  {
    *(v6 + 44) = self->_channel;
    *(v6 + 152) |= 8u;
    v21 = self->_has;
    if ((v21 & 0x10) == 0)
    {
LABEL_11:
      if ((v21 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }
  }

  else if ((v21 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(v6 + 48) = self->_channelBandwidth;
  *(v6 + 152) |= 0x10u;
  v21 = self->_has;
  if ((v21 & 4) == 0)
  {
LABEL_12:
    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 40) = self->_ccCaptureDriverLogs;
  *(v6 + 152) |= 4u;
  v21 = self->_has;
  if ((v21 & 1) == 0)
  {
LABEL_13:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 8) = self->_commandsIssued;
  *(v6 + 152) |= 1u;
  v21 = self->_has;
  if ((v21 & 0x80) == 0)
  {
LABEL_14:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 60) = self->_commanderHalted;
  *(v6 + 152) |= 0x80u;
  v21 = self->_has;
  if ((v21 & 0x200) == 0)
  {
LABEL_15:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_44:
  *(v6 + 80) = self->_iorSuccess;
  *(v6 + 152) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    *(v6 + 84) = self->_iorWA;
    *(v6 + 152) |= 0x400u;
  }

LABEL_17:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v22 = self->_txmpduWMEs;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v54 + 1) + 8 * i) copyWithZone:a3];
        [v6 addTxmpduWME:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v24);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v28 = self->_rxmpduWMEs;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v51;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v50 + 1) + 8 * j) copyWithZone:a3];
        [v6 addRxmpduWME:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v30);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = self->_rxmdpuLosts;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v47;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v46 + 1) + 8 * k) copyWithZone:{a3, v46}];
        [v6 addRxmdpuLost:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v36);
  }

  v40 = [(WiFiAnalyticsAWDWiFiNWActivityOMI *)self->_omi copyWithZone:a3];
  v41 = *(v6 + 88);
  *(v6 + 88) = v40;

  v42 = [(WiFiAnalyticsAWDWiFiNWActivityRuUsage *)self->_ruUsage copyWithZone:a3];
  v43 = *(v6 + 112);
  *(v6 + 112) = v42;

  v44 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_80;
  }

  has = self->_has;
  v6 = *(v4 + 76);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 76) & 0x100) == 0 || self->_controllerResets != *(v4 + 16))
    {
      goto LABEL_80;
    }
  }

  else if ((*(v4 + 76) & 0x100) != 0)
  {
    goto LABEL_80;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_backoffStuck != *(v4 + 6))
    {
      goto LABEL_80;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_80;
  }

  scanActivity = self->_scanActivity;
  if (scanActivity | *(v4 + 17) && ![(WiFiAnalyticsAWDWiFiNWActivityScanActivity *)scanActivity isEqual:?])
  {
    goto LABEL_80;
  }

  powerActivity = self->_powerActivity;
  if (powerActivity | *(v4 + 13))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityPowerPStats *)powerActivity isEqual:?])
    {
      goto LABEL_80;
    }
  }

  impedingFunctions = self->_impedingFunctions;
  if (impedingFunctions | *(v4 + 9))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)impedingFunctions isEqual:?])
    {
      goto LABEL_80;
    }
  }

  aggregateMetrics = self->_aggregateMetrics;
  if (aggregateMetrics | *(v4 + 2))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)aggregateMetrics isEqual:?])
    {
      goto LABEL_80;
    }
  }

  btCoex = self->_btCoex;
  if (btCoex | *(v4 + 4))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)btCoex isEqual:?])
    {
      goto LABEL_80;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 76);
  if ((v12 & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_channelsVisited0 != *(v4 + 13))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_80;
  }

  if ((v12 & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_channelsVisited1 != *(v4 + 14))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_80;
  }

  phyrate = self->_phyrate;
  if (phyrate | *(v4 + 12))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)phyrate isEqual:?])
    {
LABEL_80:
      v20 = 0;
      goto LABEL_81;
    }

    v12 = self->_has;
    v13 = *(v4 + 76);
  }

  if ((v12 & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_channel != *(v4 + 11))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_80;
  }

  if ((v12 & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_channelBandwidth != *(v4 + 12))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_80;
  }

  if ((v12 & 4) != 0)
  {
    if ((v13 & 4) == 0 || self->_ccCaptureDriverLogs != *(v4 + 10))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 4) != 0)
  {
    goto LABEL_80;
  }

  if (v12)
  {
    if ((v13 & 1) == 0 || self->_commandsIssued != *(v4 + 1))
    {
      goto LABEL_80;
    }
  }

  else if (v13)
  {
    goto LABEL_80;
  }

  if ((v12 & 0x80) != 0)
  {
    if ((v13 & 0x80) == 0 || self->_commanderHalted != *(v4 + 15))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    goto LABEL_80;
  }

  if ((v12 & 0x200) != 0)
  {
    if ((v13 & 0x200) == 0 || self->_iorSuccess != *(v4 + 20))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 0x200) != 0)
  {
    goto LABEL_80;
  }

  if ((v12 & 0x400) != 0)
  {
    if ((v13 & 0x400) == 0 || self->_iorWA != *(v4 + 21))
    {
      goto LABEL_80;
    }
  }

  else if ((v13 & 0x400) != 0)
  {
    goto LABEL_80;
  }

  txmpduWMEs = self->_txmpduWMEs;
  if (txmpduWMEs | *(v4 + 18) && ![(NSMutableArray *)txmpduWMEs isEqual:?])
  {
    goto LABEL_80;
  }

  rxmpduWMEs = self->_rxmpduWMEs;
  if (rxmpduWMEs | *(v4 + 16))
  {
    if (![(NSMutableArray *)rxmpduWMEs isEqual:?])
    {
      goto LABEL_80;
    }
  }

  rxmdpuLosts = self->_rxmdpuLosts;
  if (rxmdpuLosts | *(v4 + 15))
  {
    if (![(NSMutableArray *)rxmdpuLosts isEqual:?])
    {
      goto LABEL_80;
    }
  }

  omi = self->_omi;
  if (omi | *(v4 + 11))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityOMI *)omi isEqual:?])
    {
      goto LABEL_80;
    }
  }

  ruUsage = self->_ruUsage;
  if (ruUsage | *(v4 + 14))
  {
    v20 = [(WiFiAnalyticsAWDWiFiNWActivityRuUsage *)ruUsage isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_81:

  return v20;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v29 = 2654435761 * self->_controllerResets;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = 0;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = [(WiFiAnalyticsAWDWiFiNWActivityScanActivity *)self->_scanActivity hash];
      goto LABEL_6;
    }
  }

  v4 = [(WiFiAnalyticsAWDWiFiNWActivityScanActivity *)self->_scanActivity hash];
LABEL_6:
  v5 = v4;
  v6 = [(WiFiAnalyticsAWDWiFiNWActivityPowerPStats *)self->_powerActivity hash];
  v7 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self->_impedingFunctions hash];
  v8 = [(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)self->_aggregateMetrics hash];
  v9 = [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)self->_btCoex hash];
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
  v13 = [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)self->_phyrate hash];
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
  v22 = v28 ^ v29 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16;
  v23 = v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSMutableArray *)self->_txmpduWMEs hash];
  v24 = v23 ^ [(NSMutableArray *)self->_rxmpduWMEs hash];
  v25 = v24 ^ [(NSMutableArray *)self->_rxmdpuLosts hash];
  v26 = v22 ^ v25 ^ [(WiFiAnalyticsAWDWiFiNWActivityOMI *)self->_omi hash];
  return v26 ^ [(WiFiAnalyticsAWDWiFiNWActivityRuUsage *)self->_ruUsage hash];
}

- (void)mergeFrom:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 76);
  if ((v6 & 0x100) != 0)
  {
    self->_controllerResets = v4[16];
    *&self->_has |= 0x100u;
    v6 = *(v4 + 76);
  }

  if ((v6 & 2) != 0)
  {
    self->_backoffStuck = v4[6];
    *&self->_has |= 2u;
  }

  scanActivity = self->_scanActivity;
  v8 = *(v5 + 17);
  if (scanActivity)
  {
    if (v8)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityScanActivity *)scanActivity mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setScanActivity:?];
  }

  powerActivity = self->_powerActivity;
  v10 = *(v5 + 13);
  if (powerActivity)
  {
    if (v10)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityPowerPStats *)powerActivity mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setPowerActivity:?];
  }

  impedingFunctions = self->_impedingFunctions;
  v12 = *(v5 + 9);
  if (impedingFunctions)
  {
    if (v12)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)impedingFunctions mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setImpedingFunctions:?];
  }

  aggregateMetrics = self->_aggregateMetrics;
  v14 = *(v5 + 2);
  if (aggregateMetrics)
  {
    if (v14)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)aggregateMetrics mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setAggregateMetrics:?];
  }

  btCoex = self->_btCoex;
  v16 = *(v5 + 4);
  if (btCoex)
  {
    if (v16)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityBtCoex *)btCoex mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setBtCoex:?];
  }

  v17 = *(v5 + 76);
  if ((v17 & 0x20) != 0)
  {
    self->_channelsVisited0 = v5[13];
    *&self->_has |= 0x20u;
    v17 = *(v5 + 76);
  }

  if ((v17 & 0x40) != 0)
  {
    self->_channelsVisited1 = v5[14];
    *&self->_has |= 0x40u;
  }

  phyrate = self->_phyrate;
  v19 = *(v5 + 12);
  if (phyrate)
  {
    if (v19)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityRateAndAggregation *)phyrate mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setPhyrate:?];
  }

  v20 = *(v5 + 76);
  if ((v20 & 8) != 0)
  {
    self->_channel = v5[11];
    *&self->_has |= 8u;
    v20 = *(v5 + 76);
    if ((v20 & 0x10) == 0)
    {
LABEL_41:
      if ((v20 & 4) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_73;
    }
  }

  else if ((v20 & 0x10) == 0)
  {
    goto LABEL_41;
  }

  self->_channelBandwidth = v5[12];
  *&self->_has |= 0x10u;
  v20 = *(v5 + 76);
  if ((v20 & 4) == 0)
  {
LABEL_42:
    if ((v20 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_ccCaptureDriverLogs = v5[10];
  *&self->_has |= 4u;
  v20 = *(v5 + 76);
  if ((v20 & 1) == 0)
  {
LABEL_43:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_commandsIssued = *(v5 + 1);
  *&self->_has |= 1u;
  v20 = *(v5 + 76);
  if ((v20 & 0x80) == 0)
  {
LABEL_44:
    if ((v20 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_commanderHalted = v5[15];
  *&self->_has |= 0x80u;
  v20 = *(v5 + 76);
  if ((v20 & 0x200) == 0)
  {
LABEL_45:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_76:
  self->_iorSuccess = v5[20];
  *&self->_has |= 0x200u;
  if ((v5[38] & 0x400) != 0)
  {
LABEL_46:
    self->_iorWA = v5[21];
    *&self->_has |= 0x400u;
  }

LABEL_47:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = *(v5 + 18);
  v22 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v50;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self addTxmpduWME:*(*(&v49 + 1) + 8 * i)];
      }

      v23 = [v21 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v23);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = *(v5 + 16);
  v27 = [v26 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v46;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self addRxmpduWME:*(*(&v45 + 1) + 8 * j)];
      }

      v28 = [v26 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v28);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = *(v5 + 15);
  v32 = [v31 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self addRxmdpuLost:*(*(&v41 + 1) + 8 * k), v41];
      }

      v33 = [v31 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v33);
  }

  omi = self->_omi;
  v37 = *(v5 + 11);
  if (omi)
  {
    if (v37)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityOMI *)omi mergeFrom:?];
    }
  }

  else if (v37)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setOmi:?];
  }

  ruUsage = self->_ruUsage;
  v39 = *(v5 + 14);
  if (ruUsage)
  {
    if (v39)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityRuUsage *)ruUsage mergeFrom:?];
    }
  }

  else if (v39)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self setRuUsage:?];
  }

  v40 = *MEMORY[0x1E69E9840];
}

@end