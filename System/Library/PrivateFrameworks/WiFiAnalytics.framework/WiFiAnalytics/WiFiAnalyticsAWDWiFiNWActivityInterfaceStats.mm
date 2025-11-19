@interface WiFiAnalyticsAWDWiFiNWActivityInterfaceStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAwdlMode:(id)a3;
- (void)addBytes:(id)a3;
- (void)addEnableState:(id)a3;
- (void)addNss:(id)a3;
- (void)addPackets:(id)a3;
- (void)addPeer:(id)a3;
- (void)addPhymode:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDps:(BOOL)a3;
- (void)setHasEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityInterfaceStats

- (void)addPackets:(id)a3
{
  v4 = a3;
  packets = self->_packets;
  v8 = v4;
  if (!packets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_packets;
    self->_packets = v6;

    v4 = v8;
    packets = self->_packets;
  }

  [(NSMutableArray *)packets addObject:v4];
}

- (void)addBytes:(id)a3
{
  v4 = a3;
  bytes = self->_bytes;
  v8 = v4;
  if (!bytes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bytes;
    self->_bytes = v6;

    v4 = v8;
    bytes = self->_bytes;
  }

  [(NSMutableArray *)bytes addObject:v4];
}

- (void)addPeer:(id)a3
{
  v4 = a3;
  peers = self->_peers;
  v8 = v4;
  if (!peers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_peers;
    self->_peers = v6;

    v4 = v8;
    peers = self->_peers;
  }

  [(NSMutableArray *)peers addObject:v4];
}

- (void)setHasDps:(BOOL)a3
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

- (void)addAwdlMode:(id)a3
{
  v4 = a3;
  awdlModes = self->_awdlModes;
  v8 = v4;
  if (!awdlModes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_awdlModes;
    self->_awdlModes = v6;

    v4 = v8;
    awdlModes = self->_awdlModes;
  }

  [(NSMutableArray *)awdlModes addObject:v4];
}

- (void)setHasEnabled:(BOOL)a3
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

- (void)addEnableState:(id)a3
{
  v4 = a3;
  enableStates = self->_enableStates;
  v8 = v4;
  if (!enableStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_enableStates;
    self->_enableStates = v6;

    v4 = v8;
    enableStates = self->_enableStates;
  }

  [(NSMutableArray *)enableStates addObject:v4];
}

- (void)addNss:(id)a3
{
  v4 = a3;
  nss = self->_nss;
  v8 = v4;
  if (!nss)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nss;
    self->_nss = v6;

    v4 = v8;
    nss = self->_nss;
  }

  [(NSMutableArray *)nss addObject:v4];
}

- (void)addPhymode:(id)a3
{
  v4 = a3;
  phymodes = self->_phymodes;
  v8 = v4;
  if (!phymodes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_phymodes;
    self->_phymodes = v6;

    v4 = v8;
    phymodes = self->_phymodes;
  }

  [(NSMutableArray *)phymodes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityInterfaceStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  role = self->_role;
  if (role)
  {
    [v3 setObject:role forKey:@"role"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v7 = self->_packets;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v89 objects:v99 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v90;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v90 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v89 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v89 objects:v99 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v14 = self->_bytes;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v85 objects:v98 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v86;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v86 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v85 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v85 objects:v98 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_peers count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_peers, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v21 = self->_peers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v81 objects:v97 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v82;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v82 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v81 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v81 objects:v97 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"peer"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dps];
    [v4 setObject:v28 forKey:@"dps"];

    has = self->_has;
  }

  if (has)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_consecutivedps];
    [v4 setObject:v29 forKey:@"consecutivedps"];
  }

  assoc = self->_assoc;
  if (assoc)
  {
    v31 = [(WiFiAnalyticsAWDWiFiNWActivityAssoc *)assoc dictionaryRepresentation];
    [v4 setObject:v31 forKey:@"assoc"];
  }

  if ([(NSMutableArray *)self->_awdlModes count])
  {
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_awdlModes, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v33 = self->_awdlModes;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v77 objects:v96 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v78;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v78 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v77 + 1) + 8 * m) dictionaryRepresentation];
          [v32 addObject:v38];
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v77 objects:v96 count:16];
      }

      while (v35);
    }

    [v4 setObject:v32 forKey:@"awdlMode"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_enabled];
    [v4 setObject:v39 forKey:@"enabled"];
  }

  if ([(NSMutableArray *)self->_enableStates count])
  {
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_enableStates, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v41 = self->_enableStates;
    v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v73 objects:v95 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v74;
      do
      {
        for (n = 0; n != v43; ++n)
        {
          if (*v74 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v73 + 1) + 8 * n) dictionaryRepresentation];
          [v40 addObject:v46];
        }

        v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v73 objects:v95 count:16];
      }

      while (v43);
    }

    [v4 setObject:v40 forKey:@"enableState"];
  }

  if ([(NSMutableArray *)self->_nss count])
  {
    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nss, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v48 = self->_nss;
    v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v69 objects:v94 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v70;
      do
      {
        for (ii = 0; ii != v50; ++ii)
        {
          if (*v70 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [*(*(&v69 + 1) + 8 * ii) dictionaryRepresentation];
          [v47 addObject:v53];
        }

        v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v69 objects:v94 count:16];
      }

      while (v50);
    }

    [v4 setObject:v47 forKey:@"nss"];
  }

  if ([(NSMutableArray *)self->_phymodes count])
  {
    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_phymodes, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v55 = self->_phymodes;
    v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v65 objects:v93 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v66;
      do
      {
        for (jj = 0; jj != v57; ++jj)
        {
          if (*v66 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = [*(*(&v65 + 1) + 8 * jj) dictionaryRepresentation];
          [v54 addObject:v60];
        }

        v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v65 objects:v93 count:16];
      }

      while (v57);
    }

    [v4 setObject:v54 forKey:@"phymode"];
  }

  rxStall = self->_rxStall;
  if (rxStall)
  {
    v62 = [(WiFiAnalyticsAWDWiFiRxDataStallStats *)rxStall dictionaryRepresentation];
    [v4 setObject:v62 forKey:@"rxStall"];
  }

  v63 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_role)
  {
    PBDataWriterWriteStringField();
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v5 = self->_packets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v77;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v77 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v76 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v7);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v11 = self->_bytes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v73;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v73 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v72 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v13);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v17 = self->_peers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v68 objects:v84 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v69;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v69 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v68 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v68 objects:v84 count:16];
    }

    while (v19);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dps = self->_dps;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    consecutivedps = self->_consecutivedps;
    PBDataWriterWriteUint32Field();
  }

  if (self->_assoc)
  {
    PBDataWriterWriteSubmessage();
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v26 = self->_awdlModes;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v64 objects:v83 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v65;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v65 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v64 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v64 objects:v83 count:16];
    }

    while (v28);
  }

  if ((*&self->_has & 4) != 0)
  {
    enabled = self->_enabled;
    PBDataWriterWriteUint32Field();
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v33 = self->_enableStates;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v60 objects:v82 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v61;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v61 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v60 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v60 objects:v82 count:16];
    }

    while (v35);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v39 = self->_nss;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v56 objects:v81 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v57;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v56 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v56 objects:v81 count:16];
    }

    while (v41);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = self->_phymodes;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v52 objects:v80 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v53;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v52 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v52 objects:v80 count:16];
    }

    while (v47);
  }

  if (self->_rxStall)
  {
    PBDataWriterWriteSubmessage();
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v33 = a3;
  if (self->_role)
  {
    [v33 setRole:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self packetsCount])
  {
    [v33 clearPackets];
    v4 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self packetsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self packetsAtIndex:i];
        [v33 addPackets:v7];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self bytesCount])
  {
    [v33 clearBytes];
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self bytesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self bytesAtIndex:j];
        [v33 addBytes:v11];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self peersCount])
  {
    [v33 clearPeers];
    v12 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self peersCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self peerAtIndex:k];
        [v33 addPeer:v15];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v33 + 9) = self->_dps;
    *(v33 + 104) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v33 + 8) = self->_consecutivedps;
    *(v33 + 104) |= 1u;
  }

  if (self->_assoc)
  {
    [v33 setAssoc:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self awdlModesCount])
  {
    [v33 clearAwdlModes];
    v17 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self awdlModesCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self awdlModeAtIndex:m];
        [v33 addAwdlMode:v20];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v33 + 12) = self->_enabled;
    *(v33 + 104) |= 4u;
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self enableStatesCount])
  {
    [v33 clearEnableStates];
    v21 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self enableStatesCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self enableStateAtIndex:n];
        [v33 addEnableState:v24];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self nssCount])
  {
    [v33 clearNss];
    v25 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self nssCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self nssAtIndex:ii];
        [v33 addNss:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self phymodesCount])
  {
    [v33 clearPhymodes];
    v29 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self phymodesCount];
    if (v29)
    {
      v30 = v29;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self phymodeAtIndex:jj];
        [v33 addPhymode:v32];
      }
    }
  }

  if (self->_rxStall)
  {
    [v33 setRxStall:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_role copyWithZone:a3];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v8 = self->_packets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v82;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v82 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v81 + 1) + 8 * i) copyWithZone:a3];
        [v5 addPackets:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v10);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v14 = self->_bytes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v78;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v78 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v77 + 1) + 8 * j) copyWithZone:a3];
        [v5 addBytes:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v16);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v20 = self->_peers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v74;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v74 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v73 + 1) + 8 * k) copyWithZone:a3];
        [v5 addPeer:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v22);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 36) = self->_dps;
    *(v5 + 104) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_consecutivedps;
    *(v5 + 104) |= 1u;
  }

  v27 = [(WiFiAnalyticsAWDWiFiNWActivityAssoc *)self->_assoc copyWithZone:a3];
  v28 = *(v5 + 8);
  *(v5 + 8) = v27;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v29 = self->_awdlModes;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v70;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v70 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v69 + 1) + 8 * m) copyWithZone:a3];
        [v5 addAwdlMode:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v69 objects:v88 count:16];
    }

    while (v31);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 48) = self->_enabled;
    *(v5 + 104) |= 4u;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v35 = self->_enableStates;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v65 objects:v87 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v66;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v66 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v65 + 1) + 8 * n) copyWithZone:a3];
        [v5 addEnableState:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v65 objects:v87 count:16];
    }

    while (v37);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v41 = self->_nss;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v61 objects:v86 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v62;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v61 + 1) + 8 * ii) copyWithZone:a3];
        [v5 addNss:v46];
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v61 objects:v86 count:16];
    }

    while (v43);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47 = self->_phymodes;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v57 objects:v85 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v58;
    do
    {
      for (jj = 0; jj != v49; ++jj)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = [*(*(&v57 + 1) + 8 * jj) copyWithZone:{a3, v57}];
        [v5 addPhymode:v52];
      }

      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v57 objects:v85 count:16];
    }

    while (v49);
  }

  v53 = [(WiFiAnalyticsAWDWiFiRxDataStallStats *)self->_rxStall copyWithZone:a3];
  v54 = *(v5 + 96);
  *(v5 + 96) = v53;

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  role = self->_role;
  if (role | *(v4 + 11))
  {
    if (![(NSString *)role isEqual:?])
    {
      goto LABEL_37;
    }
  }

  packets = self->_packets;
  if (packets | *(v4 + 8))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_37;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(v4 + 3))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_37;
    }
  }

  peers = self->_peers;
  if (peers | *(v4 + 9))
  {
    if (![(NSMutableArray *)peers isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v9 = *(v4 + 104);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 104) & 2) == 0 || self->_dps != *(v4 + 9))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 104) & 2) != 0)
  {
LABEL_37:
    v17 = 0;
    goto LABEL_38;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 104) & 1) == 0 || self->_consecutivedps != *(v4 + 8))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 104))
  {
    goto LABEL_37;
  }

  assoc = self->_assoc;
  if (assoc | *(v4 + 1) && ![(WiFiAnalyticsAWDWiFiNWActivityAssoc *)assoc isEqual:?])
  {
    goto LABEL_37;
  }

  awdlModes = self->_awdlModes;
  if (awdlModes | *(v4 + 2))
  {
    if (![(NSMutableArray *)awdlModes isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v12 = *(v4 + 104);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 104) & 4) == 0 || self->_enabled != *(v4 + 12))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 104) & 4) != 0)
  {
    goto LABEL_37;
  }

  enableStates = self->_enableStates;
  if (enableStates | *(v4 + 5) && ![(NSMutableArray *)enableStates isEqual:?])
  {
    goto LABEL_37;
  }

  nss = self->_nss;
  if (nss | *(v4 + 7))
  {
    if (![(NSMutableArray *)nss isEqual:?])
    {
      goto LABEL_37;
    }
  }

  phymodes = self->_phymodes;
  if (phymodes | *(v4 + 10))
  {
    if (![(NSMutableArray *)phymodes isEqual:?])
    {
      goto LABEL_37;
    }
  }

  rxStall = self->_rxStall;
  if (rxStall | *(v4 + 12))
  {
    v17 = [(WiFiAnalyticsAWDWiFiRxDataStallStats *)rxStall isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_38:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_role hash];
  v4 = [(NSMutableArray *)self->_packets hash];
  v5 = [(NSMutableArray *)self->_bytes hash];
  v6 = [(NSMutableArray *)self->_peers hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_dps;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v8 = 2654435761 * self->_consecutivedps;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = [(WiFiAnalyticsAWDWiFiNWActivityAssoc *)self->_assoc hash];
  v10 = [(NSMutableArray *)self->_awdlModes hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_enabled;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v13 = v11 ^ [(NSMutableArray *)self->_enableStates hash];
  v14 = v13 ^ [(NSMutableArray *)self->_nss hash];
  v15 = v12 ^ v14 ^ [(NSMutableArray *)self->_phymodes hash];
  return v15 ^ [(WiFiAnalyticsAWDWiFiRxDataStallStats *)self->_rxStall hash];
}

- (void)mergeFrom:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 11))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self setRole:?];
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v5 = *(v4 + 8);
  v6 = [v5 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addPackets:*(*(&v70 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v7);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addBytes:*(*(&v66 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v12);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = *(v4 + 9);
  v16 = [v15 countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v63;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addPeer:*(*(&v62 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v17);
  }

  v20 = *(v4 + 104);
  if ((v20 & 2) != 0)
  {
    self->_dps = *(v4 + 9);
    *&self->_has |= 2u;
    v20 = *(v4 + 104);
  }

  if (v20)
  {
    self->_consecutivedps = *(v4 + 8);
    *&self->_has |= 1u;
  }

  assoc = self->_assoc;
  v22 = *(v4 + 1);
  if (assoc)
  {
    if (v22)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityAssoc *)assoc mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self setAssoc:?];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v23 = *(v4 + 2);
  v24 = [v23 countByEnumeratingWithState:&v58 objects:v77 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v59;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v59 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addAwdlMode:*(*(&v58 + 1) + 8 * m)];
      }

      v25 = [v23 countByEnumeratingWithState:&v58 objects:v77 count:16];
    }

    while (v25);
  }

  if ((*(v4 + 104) & 4) != 0)
  {
    self->_enabled = *(v4 + 12);
    *&self->_has |= 4u;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = *(v4 + 5);
  v29 = [v28 countByEnumeratingWithState:&v54 objects:v76 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v55;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v55 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addEnableState:*(*(&v54 + 1) + 8 * n)];
      }

      v30 = [v28 countByEnumeratingWithState:&v54 objects:v76 count:16];
    }

    while (v30);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = *(v4 + 7);
  v34 = [v33 countByEnumeratingWithState:&v50 objects:v75 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v51;
    do
    {
      for (ii = 0; ii != v35; ++ii)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addNss:*(*(&v50 + 1) + 8 * ii)];
      }

      v35 = [v33 countByEnumeratingWithState:&v50 objects:v75 count:16];
    }

    while (v35);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = *(v4 + 10);
  v39 = [v38 countByEnumeratingWithState:&v46 objects:v74 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v47;
    do
    {
      for (jj = 0; jj != v40; ++jj)
      {
        if (*v47 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self addPhymode:*(*(&v46 + 1) + 8 * jj), v46];
      }

      v40 = [v38 countByEnumeratingWithState:&v46 objects:v74 count:16];
    }

    while (v40);
  }

  rxStall = self->_rxStall;
  v44 = *(v4 + 12);
  if (rxStall)
  {
    if (v44)
    {
      [(WiFiAnalyticsAWDWiFiRxDataStallStats *)rxStall mergeFrom:?];
    }
  }

  else if (v44)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityInterfaceStats *)self setRxStall:?];
  }

  v45 = *MEMORY[0x1E69E9840];
}

@end