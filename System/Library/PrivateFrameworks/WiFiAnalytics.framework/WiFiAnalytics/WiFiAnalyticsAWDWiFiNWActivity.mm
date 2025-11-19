@interface WiFiAnalyticsAWDWiFiNWActivity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActivities:(id)a3;
- (void)addBtleConnection:(id)a3;
- (void)addInterfaceStats:(id)a3;
- (void)addPeerStats:(id)a3;
- (void)addScore:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivity

- (void)addActivities:(id)a3
{
  v4 = a3;
  activities = self->_activities;
  v8 = v4;
  if (!activities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activities;
    self->_activities = v6;

    v4 = v8;
    activities = self->_activities;
  }

  [(NSMutableArray *)activities addObject:v4];
}

- (void)addInterfaceStats:(id)a3
{
  v4 = a3;
  interfaceStats = self->_interfaceStats;
  v8 = v4;
  if (!interfaceStats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_interfaceStats;
    self->_interfaceStats = v6;

    v4 = v8;
    interfaceStats = self->_interfaceStats;
  }

  [(NSMutableArray *)interfaceStats addObject:v4];
}

- (void)addPeerStats:(id)a3
{
  v4 = a3;
  peerStats = self->_peerStats;
  v8 = v4;
  if (!peerStats)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_peerStats;
    self->_peerStats = v6;

    v4 = v8;
    peerStats = self->_peerStats;
  }

  [(NSMutableArray *)peerStats addObject:v4];
}

- (void)addScore:(id)a3
{
  v4 = a3;
  scores = self->_scores;
  v8 = v4;
  if (!scores)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_scores;
    self->_scores = v6;

    v4 = v8;
    scores = self->_scores;
  }

  [(NSMutableArray *)scores addObject:v4];
}

- (void)addBtleConnection:(id)a3
{
  v4 = a3;
  btleConnections = self->_btleConnections;
  v8 = v4;
  if (!btleConnections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_btleConnections;
    self->_btleConnections = v6;

    v4 = v8;
    btleConnections = self->_btleConnections;
  }

  [(NSMutableArray *)btleConnections addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivity;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivity *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  activities = self->_activities;
  if (activities)
  {
    [v3 setObject:activities forKey:@"activities"];
  }

  if ([(NSMutableArray *)self->_interfaceStats count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_interfaceStats, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v7 = self->_interfaceStats;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v63;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v63 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v62 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"interfaceStats"];
  }

  if ([(NSMutableArray *)self->_peerStats count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_peerStats, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v14 = self->_peerStats;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v59;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v59 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v58 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"peerStats"];
  }

  controllerStats = self->_controllerStats;
  if (controllerStats)
  {
    v21 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"controllerStats"];
  }

  linkQualSample = self->_linkQualSample;
  if (linkQualSample)
  {
    v23 = [(WiFiAnalyticsAWDLinkQualityMeasurements *)linkQualSample dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"linkQualSample"];
  }

  if ([(NSMutableArray *)self->_scores count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_scores, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v25 = self->_scores;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v55;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v55 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v54 + 1) + 8 * k) dictionaryRepresentation];
          [v24 addObject:v30];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKey:@"score"];
  }

  if ([(NSMutableArray *)self->_btleConnections count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_btleConnections, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v32 = self->_btleConnections;
    v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v51;
      do
      {
        for (m = 0; m != v34; ++m)
        {
          if (*v51 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v50 + 1) + 8 * m) dictionaryRepresentation];
          [v31 addObject:v37];
        }

        v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKey:@"btleConnection"];
  }

  apProfile = self->_apProfile;
  if (apProfile)
  {
    [v3 setObject:apProfile forKey:@"apProfile"];
  }

  awdlIfStats = self->_awdlIfStats;
  if (awdlIfStats)
  {
    v40 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)awdlIfStats dictionaryRepresentation];
    [v3 setObject:v40 forKey:@"awdlIfStats"];
  }

  apIfStats = self->_apIfStats;
  if (apIfStats)
  {
    v42 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)apIfStats dictionaryRepresentation];
    [v3 setObject:v42 forKey:@"apIfStats"];
  }

  nanIfStats = self->_nanIfStats;
  if (nanIfStats)
  {
    v44 = [(WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStats *)nanIfStats dictionaryRepresentation];
    [v3 setObject:v44 forKey:@"nanIfStats"];
  }

  irIfStats = self->_irIfStats;
  if (irIfStats)
  {
    v46 = [(WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStats *)irIfStats dictionaryRepresentation];
    [v3 setObject:v46 forKey:@"irIfStats"];
  }

  oui = self->_oui;
  if (oui)
  {
    [v3 setObject:oui forKey:@"oui"];
  }

  v48 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = self->_activities;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      v10 = 0;
      do
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v53 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v8);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->_interfaceStats;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      v16 = 0;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v49 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v14);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = self->_peerStats;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v20);
  }

  if (self->_controllerStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkQualSample)
  {
    PBDataWriterWriteSubmessage();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = self->_scores;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      v28 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v41 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v26);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = self->_btleConnections;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      v34 = 0;
      do
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v37 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v32);
  }

  if (self->_apProfile)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_awdlIfStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_apIfStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nanIfStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_irIfStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_oui)
  {
    PBDataWriterWriteStringField();
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 120) |= 1u;
  }

  v26 = v4;
  if ([(WiFiAnalyticsAWDWiFiNWActivity *)self activitiesCount])
  {
    [v26 clearActivities];
    v5 = [(WiFiAnalyticsAWDWiFiNWActivity *)self activitiesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiNWActivity *)self activitiesAtIndex:i];
        [v26 addActivities:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivity *)self interfaceStatsCount])
  {
    [v26 clearInterfaceStats];
    v9 = [(WiFiAnalyticsAWDWiFiNWActivity *)self interfaceStatsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiNWActivity *)self interfaceStatsAtIndex:j];
        [v26 addInterfaceStats:v12];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivity *)self peerStatsCount])
  {
    [v26 clearPeerStats];
    v13 = [(WiFiAnalyticsAWDWiFiNWActivity *)self peerStatsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(WiFiAnalyticsAWDWiFiNWActivity *)self peerStatsAtIndex:k];
        [v26 addPeerStats:v16];
      }
    }
  }

  if (self->_controllerStats)
  {
    [v26 setControllerStats:?];
  }

  if (self->_linkQualSample)
  {
    [v26 setLinkQualSample:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivity *)self scoresCount])
  {
    [v26 clearScores];
    v17 = [(WiFiAnalyticsAWDWiFiNWActivity *)self scoresCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivity *)self scoreAtIndex:m];
        [v26 addScore:v20];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivity *)self btleConnectionsCount])
  {
    [v26 clearBtleConnections];
    v21 = [(WiFiAnalyticsAWDWiFiNWActivity *)self btleConnectionsCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivity *)self btleConnectionAtIndex:n];
        [v26 addBtleConnection:v24];
      }
    }
  }

  if (self->_apProfile)
  {
    [v26 setApProfile:?];
  }

  v25 = v26;
  if (self->_awdlIfStats)
  {
    [v26 setAwdlIfStats:?];
    v25 = v26;
  }

  if (self->_apIfStats)
  {
    [v26 setApIfStats:?];
    v25 = v26;
  }

  if (self->_nanIfStats)
  {
    [v26 setNanIfStats:?];
    v25 = v26;
  }

  if (self->_irIfStats)
  {
    [v26 setIrIfStats:?];
    v25 = v26;
  }

  if (self->_oui)
  {
    [v26 setOui:?];
    v25 = v26;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 120) |= 1u;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = self->_activities;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v72;
    do
    {
      v11 = 0;
      do
      {
        if (*v72 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v71 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addActivities:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v9);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = self->_interfaceStats;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v68;
    do
    {
      v17 = 0;
      do
      {
        if (*v68 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v67 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addInterfaceStats:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v15);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = self->_peerStats;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v64;
    do
    {
      v23 = 0;
      do
      {
        if (*v64 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v63 + 1) + 8 * v23) copyWithZone:a3];
        [v6 addPeerStats:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v63 objects:v77 count:16];
    }

    while (v21);
  }

  v25 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self->_controllerStats copyWithZone:a3];
  v26 = v6[7];
  v6[7] = v25;

  v27 = [(WiFiAnalyticsAWDLinkQualityMeasurements *)self->_linkQualSample copyWithZone:a3];
  v28 = v6[10];
  v6[10] = v27;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = self->_scores;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v59 objects:v76 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v60;
    do
    {
      v33 = 0;
      do
      {
        if (*v60 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v59 + 1) + 8 * v33) copyWithZone:a3];
        [v6 addScore:v34];

        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v59 objects:v76 count:16];
    }

    while (v31);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = self->_btleConnections;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v55 objects:v75 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v56;
    do
    {
      v39 = 0;
      do
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v55 + 1) + 8 * v39) copyWithZone:{a3, v55}];
        [v6 addBtleConnection:v40];

        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v55 objects:v75 count:16];
    }

    while (v37);
  }

  v41 = [(NSString *)self->_apProfile copyWithZone:a3];
  v42 = v6[4];
  v6[4] = v41;

  v43 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self->_awdlIfStats copyWithZone:a3];
  v44 = v6[5];
  v6[5] = v43;

  v45 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self->_apIfStats copyWithZone:a3];
  v46 = v6[3];
  v6[3] = v45;

  v47 = [(WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStats *)self->_nanIfStats copyWithZone:a3];
  v48 = v6[11];
  v6[11] = v47;

  v49 = [(WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStats *)self->_irIfStats copyWithZone:a3];
  v50 = v6[9];
  v6[9] = v49;

  v51 = [(NSString *)self->_oui copyWithZone:a3];
  v52 = v6[12];
  v6[12] = v51;

  v53 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = *(v4 + 120);
  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 120))
  {
LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  activities = self->_activities;
  if (activities | *(v4 + 2) && ![(NSMutableArray *)activities isEqual:?])
  {
    goto LABEL_33;
  }

  interfaceStats = self->_interfaceStats;
  if (interfaceStats | *(v4 + 8))
  {
    if (![(NSMutableArray *)interfaceStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  peerStats = self->_peerStats;
  if (peerStats | *(v4 + 13))
  {
    if (![(NSMutableArray *)peerStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  controllerStats = self->_controllerStats;
  if (controllerStats | *(v4 + 7))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  linkQualSample = self->_linkQualSample;
  if (linkQualSample | *(v4 + 10))
  {
    if (![(WiFiAnalyticsAWDLinkQualityMeasurements *)linkQualSample isEqual:?])
    {
      goto LABEL_33;
    }
  }

  scores = self->_scores;
  if (scores | *(v4 + 14))
  {
    if (![(NSMutableArray *)scores isEqual:?])
    {
      goto LABEL_33;
    }
  }

  btleConnections = self->_btleConnections;
  if (btleConnections | *(v4 + 6))
  {
    if (![(NSMutableArray *)btleConnections isEqual:?])
    {
      goto LABEL_33;
    }
  }

  apProfile = self->_apProfile;
  if (apProfile | *(v4 + 4))
  {
    if (![(NSString *)apProfile isEqual:?])
    {
      goto LABEL_33;
    }
  }

  awdlIfStats = self->_awdlIfStats;
  if (awdlIfStats | *(v4 + 5))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)awdlIfStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  apIfStats = self->_apIfStats;
  if (apIfStats | *(v4 + 3))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)apIfStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  nanIfStats = self->_nanIfStats;
  if (nanIfStats | *(v4 + 11))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStats *)nanIfStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  irIfStats = self->_irIfStats;
  if (irIfStats | *(v4 + 9))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStats *)irIfStats isEqual:?])
    {
      goto LABEL_33;
    }
  }

  oui = self->_oui;
  if (oui | *(v4 + 12))
  {
    v19 = [(NSString *)oui isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_34:

  return v19;
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

  v4 = [(NSMutableArray *)self->_activities hash]^ v3;
  v5 = [(NSMutableArray *)self->_interfaceStats hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_peerStats hash];
  v7 = [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)self->_controllerStats hash];
  v8 = v7 ^ [(WiFiAnalyticsAWDLinkQualityMeasurements *)self->_linkQualSample hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_scores hash];
  v10 = [(NSMutableArray *)self->_btleConnections hash];
  v11 = v10 ^ [(NSString *)self->_apProfile hash];
  v12 = v11 ^ [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self->_awdlIfStats hash];
  v13 = v9 ^ v12 ^ [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self->_apIfStats hash];
  v14 = [(WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStats *)self->_nanIfStats hash];
  v15 = v14 ^ [(WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStats *)self->_irIfStats hash];
  return v13 ^ v15 ^ [(NSString *)self->_oui hash];
}

- (void)mergeFrom:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 120))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WiFiAnalyticsAWDWiFiNWActivity *)self addActivities:*(*(&v60 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v8);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = v5[8];
  v12 = [v11 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v57;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(WiFiAnalyticsAWDWiFiNWActivity *)self addInterfaceStats:*(*(&v56 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v13);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = v5[13];
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v53;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(WiFiAnalyticsAWDWiFiNWActivity *)self addPeerStats:*(*(&v52 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v18);
  }

  controllerStats = self->_controllerStats;
  v22 = v5[7];
  if (controllerStats)
  {
    if (v22)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityControllerStats *)controllerStats mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setControllerStats:?];
  }

  linkQualSample = self->_linkQualSample;
  v24 = v5[10];
  if (linkQualSample)
  {
    if (v24)
    {
      [(WiFiAnalyticsAWDLinkQualityMeasurements *)linkQualSample mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setLinkQualSample:?];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = v5[14];
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v49;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(WiFiAnalyticsAWDWiFiNWActivity *)self addScore:*(*(&v48 + 1) + 8 * m)];
      }

      v27 = [v25 countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v27);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = v5[6];
  v31 = [v30 countByEnumeratingWithState:&v44 objects:v64 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v45;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(WiFiAnalyticsAWDWiFiNWActivity *)self addBtleConnection:*(*(&v44 + 1) + 8 * n), v44];
      }

      v32 = [v30 countByEnumeratingWithState:&v44 objects:v64 count:16];
    }

    while (v32);
  }

  if (v5[4])
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setApProfile:?];
  }

  awdlIfStats = self->_awdlIfStats;
  v36 = v5[5];
  if (awdlIfStats)
  {
    if (v36)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)awdlIfStats mergeFrom:?];
    }
  }

  else if (v36)
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setAwdlIfStats:?];
  }

  apIfStats = self->_apIfStats;
  v38 = v5[3];
  if (apIfStats)
  {
    if (v38)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)apIfStats mergeFrom:?];
    }
  }

  else if (v38)
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setApIfStats:?];
  }

  nanIfStats = self->_nanIfStats;
  v40 = v5[11];
  if (nanIfStats)
  {
    if (v40)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityNANInterfaceStats *)nanIfStats mergeFrom:?];
    }
  }

  else if (v40)
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setNanIfStats:?];
  }

  irIfStats = self->_irIfStats;
  v42 = v5[9];
  if (irIfStats)
  {
    if (v42)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityIRInterfaceStats *)irIfStats mergeFrom:?];
    }
  }

  else if (v42)
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setIrIfStats:?];
  }

  if (v5[12])
  {
    [(WiFiAnalyticsAWDWiFiNWActivity *)self setOui:?];
  }

  v43 = *MEMORY[0x1E69E9840];
}

@end