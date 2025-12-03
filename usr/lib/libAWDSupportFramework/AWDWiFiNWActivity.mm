@interface AWDWiFiNWActivity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActivities:(id)activities;
- (void)addBtleConnection:(id)connection;
- (void)addInterfaceStats:(id)stats;
- (void)addPeerStats:(id)stats;
- (void)addScore:(id)score;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivity

- (void)dealloc
{
  [(AWDWiFiNWActivity *)self setActivities:0];
  [(AWDWiFiNWActivity *)self setInterfaceStats:0];
  [(AWDWiFiNWActivity *)self setPeerStats:0];
  [(AWDWiFiNWActivity *)self setControllerStats:0];
  [(AWDWiFiNWActivity *)self setLinkQualSample:0];
  [(AWDWiFiNWActivity *)self setScores:0];
  [(AWDWiFiNWActivity *)self setBtleConnections:0];
  [(AWDWiFiNWActivity *)self setApProfile:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivity;
  [(AWDWiFiNWActivity *)&v3 dealloc];
}

- (void)addActivities:(id)activities
{
  activities = self->_activities;
  if (!activities)
  {
    activities = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_activities = activities;
  }

  [(NSMutableArray *)activities addObject:activities];
}

- (void)addInterfaceStats:(id)stats
{
  interfaceStats = self->_interfaceStats;
  if (!interfaceStats)
  {
    interfaceStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_interfaceStats = interfaceStats;
  }

  [(NSMutableArray *)interfaceStats addObject:stats];
}

- (void)addPeerStats:(id)stats
{
  peerStats = self->_peerStats;
  if (!peerStats)
  {
    peerStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_peerStats = peerStats;
  }

  [(NSMutableArray *)peerStats addObject:stats];
}

- (void)addScore:(id)score
{
  scores = self->_scores;
  if (!scores)
  {
    scores = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_scores = scores;
  }

  [(NSMutableArray *)scores addObject:score];
}

- (void)addBtleConnection:(id)connection
{
  btleConnections = self->_btleConnections;
  if (!btleConnections)
  {
    btleConnections = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_btleConnections = btleConnections;
  }

  [(NSMutableArray *)btleConnections addObject:connection];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivity;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivity description](&v3, sel_description), -[AWDWiFiNWActivity dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v54 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  activities = self->_activities;
  if (activities)
  {
    [dictionary setObject:activities forKey:@"activities"];
  }

  if ([(NSMutableArray *)self->_interfaceStats count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_interfaceStats, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    interfaceStats = self->_interfaceStats;
    v7 = [(NSMutableArray *)interfaceStats countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(interfaceStats);
          }

          [v5 addObject:{objc_msgSend(*(*(&v46 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)interfaceStats countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"interfaceStats"];
  }

  if ([(NSMutableArray *)self->_peerStats count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_peerStats, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    peerStats = self->_peerStats;
    v13 = [(NSMutableArray *)peerStats countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v43;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v43 != v15)
          {
            objc_enumerationMutation(peerStats);
          }

          [v11 addObject:{objc_msgSend(*(*(&v42 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)peerStats countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"peerStats"];
  }

  controllerStats = self->_controllerStats;
  if (controllerStats)
  {
    [dictionary setObject:-[AWDWiFiNWActivityControllerStats dictionaryRepresentation](controllerStats forKey:{"dictionaryRepresentation"), @"controllerStats"}];
  }

  linkQualSample = self->_linkQualSample;
  if (linkQualSample)
  {
    [dictionary setObject:-[AWDLinkQualityMeasurements dictionaryRepresentation](linkQualSample forKey:{"dictionaryRepresentation"), @"linkQualSample"}];
  }

  if ([(NSMutableArray *)self->_scores count])
  {
    v19 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_scores, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    scores = self->_scores;
    v21 = [(NSMutableArray *)scores countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(scores);
          }

          [v19 addObject:{objc_msgSend(*(*(&v38 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v22 = [(NSMutableArray *)scores countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"score"];
  }

  if ([(NSMutableArray *)self->_btleConnections count])
  {
    v25 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_btleConnections, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    btleConnections = self->_btleConnections;
    v27 = [(NSMutableArray *)btleConnections countByEnumeratingWithState:&v34 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(btleConnections);
          }

          [v25 addObject:{objc_msgSend(*(*(&v34 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v28 = [(NSMutableArray *)btleConnections countByEnumeratingWithState:&v34 objects:v50 count:16];
      }

      while (v28);
    }

    [dictionary setObject:v25 forKey:@"btleConnection"];
  }

  apProfile = self->_apProfile;
  if (apProfile)
  {
    [dictionary setObject:apProfile forKey:@"apProfile"];
  }

  v32 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v61 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  activities = self->_activities;
  v6 = [(NSMutableArray *)activities countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(activities);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)activities countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  interfaceStats = self->_interfaceStats;
  v12 = [(NSMutableArray *)interfaceStats countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(interfaceStats);
        }

        v16 = *(*(&v48 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)interfaceStats countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v13);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  peerStats = self->_peerStats;
  v18 = [(NSMutableArray *)peerStats countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(peerStats);
        }

        v22 = *(*(&v44 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)peerStats countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v19);
  }

  if (self->_controllerStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkQualSample)
  {
    PBDataWriterWriteSubmessage();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  scores = self->_scores;
  v24 = [(NSMutableArray *)scores countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(scores);
        }

        v28 = *(*(&v40 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)scores countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v25);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  btleConnections = self->_btleConnections;
  v30 = [(NSMutableArray *)btleConnections countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(btleConnections);
        }

        v34 = *(*(&v36 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)btleConnections countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v31);
  }

  if (self->_apProfile)
  {
    PBDataWriterWriteStringField();
  }

  v35 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 80) |= 1u;
  }

  if ([(AWDWiFiNWActivity *)self activitiesCount])
  {
    [to clearActivities];
    activitiesCount = [(AWDWiFiNWActivity *)self activitiesCount];
    if (activitiesCount)
    {
      v6 = activitiesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addActivities:{-[AWDWiFiNWActivity activitiesAtIndex:](self, "activitiesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivity *)self interfaceStatsCount])
  {
    [to clearInterfaceStats];
    interfaceStatsCount = [(AWDWiFiNWActivity *)self interfaceStatsCount];
    if (interfaceStatsCount)
    {
      v9 = interfaceStatsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addInterfaceStats:{-[AWDWiFiNWActivity interfaceStatsAtIndex:](self, "interfaceStatsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivity *)self peerStatsCount])
  {
    [to clearPeerStats];
    peerStatsCount = [(AWDWiFiNWActivity *)self peerStatsCount];
    if (peerStatsCount)
    {
      v12 = peerStatsCount;
      for (k = 0; k != v12; ++k)
      {
        [to addPeerStats:{-[AWDWiFiNWActivity peerStatsAtIndex:](self, "peerStatsAtIndex:", k)}];
      }
    }
  }

  if (self->_controllerStats)
  {
    [to setControllerStats:?];
  }

  if (self->_linkQualSample)
  {
    [to setLinkQualSample:?];
  }

  if ([(AWDWiFiNWActivity *)self scoresCount])
  {
    [to clearScores];
    scoresCount = [(AWDWiFiNWActivity *)self scoresCount];
    if (scoresCount)
    {
      v15 = scoresCount;
      for (m = 0; m != v15; ++m)
      {
        [to addScore:{-[AWDWiFiNWActivity scoreAtIndex:](self, "scoreAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiNWActivity *)self btleConnectionsCount])
  {
    [to clearBtleConnections];
    btleConnectionsCount = [(AWDWiFiNWActivity *)self btleConnectionsCount];
    if (btleConnectionsCount)
    {
      v18 = btleConnectionsCount;
      for (n = 0; n != v18; ++n)
      {
        [to addBtleConnection:{-[AWDWiFiNWActivity btleConnectionAtIndex:](self, "btleConnectionAtIndex:", n)}];
      }
    }
  }

  if (self->_apProfile)
  {

    [to setApProfile:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v64 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 80) |= 1u;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  activities = self->_activities;
  v8 = [(NSMutableArray *)activities countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(activities);
        }

        v12 = [*(*(&v55 + 1) + 8 * i) copyWithZone:zone];
        [v6 addActivities:v12];
      }

      v9 = [(NSMutableArray *)activities countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v9);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  interfaceStats = self->_interfaceStats;
  v14 = [(NSMutableArray *)interfaceStats countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v52;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(interfaceStats);
        }

        v18 = [*(*(&v51 + 1) + 8 * j) copyWithZone:zone];
        [v6 addInterfaceStats:v18];
      }

      v15 = [(NSMutableArray *)interfaceStats countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v15);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  peerStats = self->_peerStats;
  v20 = [(NSMutableArray *)peerStats countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(peerStats);
        }

        v24 = [*(*(&v47 + 1) + 8 * k) copyWithZone:zone];
        [v6 addPeerStats:v24];
      }

      v21 = [(NSMutableArray *)peerStats countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v21);
  }

  v6[5] = [(AWDWiFiNWActivityControllerStats *)self->_controllerStats copyWithZone:zone];
  v6[7] = [(AWDLinkQualityMeasurements *)self->_linkQualSample copyWithZone:zone];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  scores = self->_scores;
  v26 = [(NSMutableArray *)scores countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(scores);
        }

        v30 = [*(*(&v43 + 1) + 8 * m) copyWithZone:zone];
        [v6 addScore:v30];
      }

      v27 = [(NSMutableArray *)scores countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v27);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  btleConnections = self->_btleConnections;
  v32 = [(NSMutableArray *)btleConnections countByEnumeratingWithState:&v39 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(btleConnections);
        }

        v36 = [*(*(&v39 + 1) + 8 * n) copyWithZone:zone];
        [v6 addBtleConnection:v36];
      }

      v33 = [(NSMutableArray *)btleConnections countByEnumeratingWithState:&v39 objects:v59 count:16];
    }

    while (v33);
  }

  v6[3] = [(NSString *)self->_apProfile copyWithZone:zone];
  v37 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 80);
    if (*&self->_has)
    {
      if ((*(equal + 80) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_23;
      }
    }

    else if (*(equal + 80))
    {
LABEL_23:
      LOBYTE(v5) = 0;
      return v5;
    }

    activities = self->_activities;
    if (!(activities | *(equal + 2)) || (v5 = [(NSMutableArray *)activities isEqual:?]) != 0)
    {
      interfaceStats = self->_interfaceStats;
      if (!(interfaceStats | *(equal + 6)) || (v5 = [(NSMutableArray *)interfaceStats isEqual:?]) != 0)
      {
        peerStats = self->_peerStats;
        if (!(peerStats | *(equal + 8)) || (v5 = [(NSMutableArray *)peerStats isEqual:?]) != 0)
        {
          controllerStats = self->_controllerStats;
          if (!(controllerStats | *(equal + 5)) || (v5 = [(AWDWiFiNWActivityControllerStats *)controllerStats isEqual:?]) != 0)
          {
            linkQualSample = self->_linkQualSample;
            if (!(linkQualSample | *(equal + 7)) || (v5 = [(AWDLinkQualityMeasurements *)linkQualSample isEqual:?]) != 0)
            {
              scores = self->_scores;
              if (!(scores | *(equal + 9)) || (v5 = [(NSMutableArray *)scores isEqual:?]) != 0)
              {
                btleConnections = self->_btleConnections;
                if (!(btleConnections | *(equal + 4)) || (v5 = [(NSMutableArray *)btleConnections isEqual:?]) != 0)
                {
                  apProfile = self->_apProfile;
                  if (apProfile | *(equal + 3))
                  {

                    LOBYTE(v5) = [(NSString *)apProfile isEqual:?];
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
  v7 = [(AWDWiFiNWActivityControllerStats *)self->_controllerStats hash];
  v8 = v7 ^ [(AWDLinkQualityMeasurements *)self->_linkQualSample hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_scores hash];
  v10 = [(NSMutableArray *)self->_btleConnections hash];
  return v9 ^ v10 ^ [(NSString *)self->_apProfile hash];
}

- (void)mergeFrom:(id)from
{
  v60 = *MEMORY[0x29EDCA608];
  if (*(from + 80))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = *(from + 2);
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDWiFiNWActivity *)self addActivities:*(*(&v51 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v7);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = *(from + 6);
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDWiFiNWActivity *)self addInterfaceStats:*(*(&v47 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = *(from + 8);
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDWiFiNWActivity *)self addPeerStats:*(*(&v43 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v17);
  }

  controllerStats = self->_controllerStats;
  v21 = *(from + 5);
  if (controllerStats)
  {
    if (v21)
    {
      [(AWDWiFiNWActivityControllerStats *)controllerStats mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(AWDWiFiNWActivity *)self setControllerStats:?];
  }

  linkQualSample = self->_linkQualSample;
  v23 = *(from + 7);
  if (linkQualSample)
  {
    if (v23)
    {
      [(AWDLinkQualityMeasurements *)linkQualSample mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(AWDWiFiNWActivity *)self setLinkQualSample:?];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = *(from + 9);
  v25 = [v24 countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(AWDWiFiNWActivity *)self addScore:*(*(&v39 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v26);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = *(from + 4);
  v30 = [v29 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v36;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(AWDWiFiNWActivity *)self addBtleConnection:*(*(&v35 + 1) + 8 * n)];
      }

      v31 = [v29 countByEnumeratingWithState:&v35 objects:v55 count:16];
    }

    while (v31);
  }

  if (*(from + 3))
  {
    [(AWDWiFiNWActivity *)self setApProfile:?];
  }

  v34 = *MEMORY[0x29EDCA608];
}

@end