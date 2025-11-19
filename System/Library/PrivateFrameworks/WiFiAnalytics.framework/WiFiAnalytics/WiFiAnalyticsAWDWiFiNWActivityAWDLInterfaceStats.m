@interface WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAwdlState:(id)a3;
- (void)addBytes:(id)a3;
- (void)addEnableState:(id)a3;
- (void)addNpeers:(id)a3;
- (void)addNrtpeers:(id)a3;
- (void)addPackets:(id)a3;
- (void)addTxLatencyBE:(id)a3;
- (void)addTxLatencyBK:(id)a3;
- (void)addTxLatencyVI:(id)a3;
- (void)addTxLatencyVO:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEnabled:(BOOL)a3;
- (void)setHasPeerCount:(BOOL)a3;
- (void)setHasPeersAdded:(BOOL)a3;
- (void)setHasPeersRemoved:(BOOL)a3;
- (void)setHasRtPeerCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats

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

- (void)addNpeers:(id)a3
{
  v4 = a3;
  npeers = self->_npeers;
  v8 = v4;
  if (!npeers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_npeers;
    self->_npeers = v6;

    v4 = v8;
    npeers = self->_npeers;
  }

  [(NSMutableArray *)npeers addObject:v4];
}

- (void)addNrtpeers:(id)a3
{
  v4 = a3;
  nrtpeers = self->_nrtpeers;
  v8 = v4;
  if (!nrtpeers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nrtpeers;
    self->_nrtpeers = v6;

    v4 = v8;
    nrtpeers = self->_nrtpeers;
  }

  [(NSMutableArray *)nrtpeers addObject:v4];
}

- (void)addAwdlState:(id)a3
{
  v4 = a3;
  awdlStates = self->_awdlStates;
  v8 = v4;
  if (!awdlStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_awdlStates;
    self->_awdlStates = v6;

    v4 = v8;
    awdlStates = self->_awdlStates;
  }

  [(NSMutableArray *)awdlStates addObject:v4];
}

- (void)setHasRtPeerCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPeerCount:(BOOL)a3
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

- (void)setHasPeersAdded:(BOOL)a3
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

- (void)setHasPeersRemoved:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEnabled:(BOOL)a3
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

- (void)addTxLatencyBK:(id)a3
{
  v4 = a3;
  txLatencyBKs = self->_txLatencyBKs;
  v8 = v4;
  if (!txLatencyBKs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyBKs;
    self->_txLatencyBKs = v6;

    v4 = v8;
    txLatencyBKs = self->_txLatencyBKs;
  }

  [(NSMutableArray *)txLatencyBKs addObject:v4];
}

- (void)addTxLatencyBE:(id)a3
{
  v4 = a3;
  txLatencyBEs = self->_txLatencyBEs;
  v8 = v4;
  if (!txLatencyBEs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyBEs;
    self->_txLatencyBEs = v6;

    v4 = v8;
    txLatencyBEs = self->_txLatencyBEs;
  }

  [(NSMutableArray *)txLatencyBEs addObject:v4];
}

- (void)addTxLatencyVO:(id)a3
{
  v4 = a3;
  txLatencyVOs = self->_txLatencyVOs;
  v8 = v4;
  if (!txLatencyVOs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyVOs;
    self->_txLatencyVOs = v6;

    v4 = v8;
    txLatencyVOs = self->_txLatencyVOs;
  }

  [(NSMutableArray *)txLatencyVOs addObject:v4];
}

- (void)addTxLatencyVI:(id)a3
{
  v4 = a3;
  txLatencyVIs = self->_txLatencyVIs;
  v8 = v4;
  if (!txLatencyVIs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyVIs;
    self->_txLatencyVIs = v6;

    v4 = v8;
    txLatencyVIs = self->_txLatencyVIs;
  }

  [(NSMutableArray *)txLatencyVIs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v135 = *MEMORY[0x1E69E9840];
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
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v7 = self->_packets;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v121 objects:v134 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v122;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v122 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v121 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v121 objects:v134 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v14 = self->_bytes;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v117 objects:v133 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v118;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v118 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v117 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v117 objects:v133 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_npeers count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_npeers, "count")}];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v21 = self->_npeers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v113 objects:v132 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v114;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v114 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v113 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v113 objects:v132 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"npeers"];
  }

  if ([(NSMutableArray *)self->_nrtpeers count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nrtpeers, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v28 = self->_nrtpeers;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v109 objects:v131 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v110;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v110 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v109 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v109 objects:v131 count:16];
      }

      while (v30);
    }

    [v4 setObject:v27 forKey:@"nrtpeers"];
  }

  if ([(NSMutableArray *)self->_awdlStates count])
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_awdlStates, "count")}];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v35 = self->_awdlStates;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v105 objects:v130 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v106;
      do
      {
        for (n = 0; n != v37; ++n)
        {
          if (*v106 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v105 + 1) + 8 * n) dictionaryRepresentation];
          [v34 addObject:v40];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v105 objects:v130 count:16];
      }

      while (v37);
    }

    [v4 setObject:v34 forKey:@"awdlState"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rtPeerCount];
    [v4 setObject:v81 forKey:@"rtPeerCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_50:
      if ((has & 8) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_106;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_50;
  }

  v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peerCount];
  [v4 setObject:v82 forKey:@"peerCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_51:
    if ((has & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_107;
  }

LABEL_106:
  v83 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peersAdded];
  [v4 setObject:v83 forKey:@"peersAdded"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_52:
    if ((has & 2) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_107:
  v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peersRemoved];
  [v4 setObject:v84 forKey:@"peersRemoved"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_53:
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_enabled];
    [v4 setObject:v42 forKey:@"enabled"];
  }

LABEL_54:
  if ([(NSMutableArray *)self->_enableStates count])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_enableStates, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v44 = self->_enableStates;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v101 objects:v129 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v102;
      do
      {
        for (ii = 0; ii != v46; ++ii)
        {
          if (*v102 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = [*(*(&v101 + 1) + 8 * ii) dictionaryRepresentation];
          [v43 addObject:v49];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v101 objects:v129 count:16];
      }

      while (v46);
    }

    [v4 setObject:v43 forKey:@"enableState"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v51 = self->_txLatencyBKs;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v97 objects:v128 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v98;
      do
      {
        for (jj = 0; jj != v53; ++jj)
        {
          if (*v98 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = [*(*(&v97 + 1) + 8 * jj) dictionaryRepresentation];
          [v50 addObject:v56];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v97 objects:v128 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v58 = self->_txLatencyBEs;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v93 objects:v127 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v94;
      do
      {
        for (kk = 0; kk != v60; ++kk)
        {
          if (*v94 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = [*(*(&v93 + 1) + 8 * kk) dictionaryRepresentation];
          [v57 addObject:v63];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v93 objects:v127 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v64 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v65 = self->_txLatencyVOs;
    v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v89 objects:v126 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v90;
      do
      {
        for (mm = 0; mm != v67; ++mm)
        {
          if (*v90 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = [*(*(&v89 + 1) + 8 * mm) dictionaryRepresentation];
          [v64 addObject:v70];
        }

        v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v89 objects:v126 count:16];
      }

      while (v67);
    }

    [v4 setObject:v64 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v72 = self->_txLatencyVIs;
    v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v85 objects:v125 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v86;
      do
      {
        for (nn = 0; nn != v74; ++nn)
        {
          if (*v86 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = [*(*(&v85 + 1) + 8 * nn) dictionaryRepresentation];
          [v71 addObject:v77];
        }

        v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v85 objects:v125 count:16];
      }

      while (v74);
    }

    [v4 setObject:v71 forKey:@"txLatencyVI"];
  }

  if (*&self->_has)
  {
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_afCount];
    [v4 setObject:v78 forKey:@"afCount"];
  }

  v79 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)a3
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_role)
  {
    PBDataWriterWriteStringField();
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v5 = self->_packets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v109 objects:v122 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v110;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v110 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v109 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v109 objects:v122 count:16];
    }

    while (v7);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v11 = self->_bytes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v105 objects:v121 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v106;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v106 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v105 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v105 objects:v121 count:16];
    }

    while (v13);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v17 = self->_npeers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v101 objects:v120 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v102;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v102 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v101 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v101 objects:v120 count:16];
    }

    while (v19);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v23 = self->_nrtpeers;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v97 objects:v119 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v98;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v98 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v97 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v97 objects:v119 count:16];
    }

    while (v25);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v29 = self->_awdlStates;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v93 objects:v118 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v94;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v94 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v93 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v93 objects:v118 count:16];
    }

    while (v31);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    rtPeerCount = self->_rtPeerCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_40:
      if ((has & 8) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_84;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_40;
  }

  peerCount = self->_peerCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_41:
    if ((has & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  peersAdded = self->_peersAdded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_42:
    if ((has & 2) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_85:
  peersRemoved = self->_peersRemoved;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_43:
    enabled = self->_enabled;
    PBDataWriterWriteUint32Field();
  }

LABEL_44:
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v37 = self->_enableStates;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v89 objects:v117 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v90;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v90 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v89 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v89 objects:v117 count:16];
    }

    while (v39);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v43 = self->_txLatencyBKs;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v85 objects:v116 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v86;
    do
    {
      for (jj = 0; jj != v45; ++jj)
      {
        if (*v86 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v85 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v85 objects:v116 count:16];
    }

    while (v45);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v49 = self->_txLatencyBEs;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v81 objects:v115 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v82;
    do
    {
      for (kk = 0; kk != v51; ++kk)
      {
        if (*v82 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v81 + 1) + 8 * kk);
        PBDataWriterWriteSubmessage();
      }

      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v81 objects:v115 count:16];
    }

    while (v51);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v55 = self->_txLatencyVOs;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v77 objects:v114 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v78;
    do
    {
      for (mm = 0; mm != v57; ++mm)
      {
        if (*v78 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v77 + 1) + 8 * mm);
        PBDataWriterWriteSubmessage();
      }

      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v77 objects:v114 count:16];
    }

    while (v57);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v61 = self->_txLatencyVIs;
  v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v73 objects:v113 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v74;
    do
    {
      for (nn = 0; nn != v63; ++nn)
      {
        if (*v74 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v73 + 1) + 8 * nn);
        PBDataWriterWriteSubmessage();
      }

      v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v73 objects:v113 count:16];
    }

    while (v63);
  }

  if (*&self->_has)
  {
    afCount = self->_afCount;
    PBDataWriterWriteUint32Field();
  }

  v68 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v45 = a3;
  if (self->_role)
  {
    [v45 setRole:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self packetsCount])
  {
    [v45 clearPackets];
    v4 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self packetsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self packetsAtIndex:i];
        [v45 addPackets:v7];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self bytesCount])
  {
    [v45 clearBytes];
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self bytesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self bytesAtIndex:j];
        [v45 addBytes:v11];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self npeersCount])
  {
    [v45 clearNpeers];
    v12 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self npeersCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self npeersAtIndex:k];
        [v45 addNpeers:v15];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self nrtpeersCount])
  {
    [v45 clearNrtpeers];
    v16 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self nrtpeersCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self nrtpeersAtIndex:m];
        [v45 addNrtpeers:v19];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self awdlStatesCount])
  {
    [v45 clearAwdlStates];
    v20 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self awdlStatesCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self awdlStateAtIndex:n];
        [v45 addAwdlState:v23];
      }
    }
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v45 + 24) = self->_rtPeerCount;
    *(v45 + 136) |= 0x20u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_25:
      if ((has & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_25;
  }

  *(v45 + 18) = self->_peerCount;
  *(v45 + 136) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_26:
    if ((has & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    *(v45 + 20) = self->_peersRemoved;
    *(v45 + 136) |= 0x10u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_56:
  *(v45 + 19) = self->_peersAdded;
  *(v45 + 136) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  if ((has & 2) != 0)
  {
LABEL_28:
    *(v45 + 10) = self->_enabled;
    *(v45 + 136) |= 2u;
  }

LABEL_29:
  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self enableStatesCount])
  {
    [v45 clearEnableStates];
    v25 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self enableStatesCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self enableStateAtIndex:ii];
        [v45 addEnableState:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyBKsCount])
  {
    [v45 clearTxLatencyBKs];
    v29 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyBKsCount];
    if (v29)
    {
      v30 = v29;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyBKAtIndex:jj];
        [v45 addTxLatencyBK:v32];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyBEsCount])
  {
    [v45 clearTxLatencyBEs];
    v33 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyBEsCount];
    if (v33)
    {
      v34 = v33;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyBEAtIndex:kk];
        [v45 addTxLatencyBE:v36];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyVOsCount])
  {
    [v45 clearTxLatencyVOs];
    v37 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyVOsCount];
    if (v37)
    {
      v38 = v37;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyVOAtIndex:mm];
        [v45 addTxLatencyVO:v40];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyVIsCount])
  {
    [v45 clearTxLatencyVIs];
    v41 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyVIsCount];
    if (v41)
    {
      v42 = v41;
      for (nn = 0; nn != v42; ++nn)
      {
        v44 = [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self txLatencyVIAtIndex:nn];
        [v45 addTxLatencyVI:v44];
      }
    }
  }

  if (*&self->_has)
  {
    *(v45 + 2) = self->_afCount;
    *(v45 + 136) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v121 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_role copyWithZone:a3];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v8 = self->_packets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v107 objects:v120 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v108;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v108 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v107 + 1) + 8 * i) copyWithZone:a3];
        [v5 addPackets:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v107 objects:v120 count:16];
    }

    while (v10);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v14 = self->_bytes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v103 objects:v119 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v104;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v104 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v103 + 1) + 8 * j) copyWithZone:a3];
        [v5 addBytes:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v103 objects:v119 count:16];
    }

    while (v16);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v20 = self->_npeers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v99 objects:v118 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v100;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v100 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v99 + 1) + 8 * k) copyWithZone:a3];
        [v5 addNpeers:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v99 objects:v118 count:16];
    }

    while (v22);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v26 = self->_nrtpeers;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v95 objects:v117 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v96;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v96 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v95 + 1) + 8 * m) copyWithZone:a3];
        [v5 addNrtpeers:v31];
      }

      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v95 objects:v117 count:16];
    }

    while (v28);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v32 = self->_awdlStates;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v91 objects:v116 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v92;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v92 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v91 + 1) + 8 * n) copyWithZone:a3];
        [v5 addAwdlState:v37];
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v91 objects:v116 count:16];
    }

    while (v34);
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 96) = self->_rtPeerCount;
    *(v5 + 136) |= 0x20u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_38:
      if ((has & 8) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_82;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_38;
  }

  *(v5 + 72) = self->_peerCount;
  *(v5 + 136) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_39:
    if ((has & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 76) = self->_peersAdded;
  *(v5 + 136) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_40:
    if ((has & 2) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_83:
  *(v5 + 80) = self->_peersRemoved;
  *(v5 + 136) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_41:
    *(v5 + 40) = self->_enabled;
    *(v5 + 136) |= 2u;
  }

LABEL_42:
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v39 = self->_enableStates;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v87 objects:v115 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v88;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v88 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v87 + 1) + 8 * ii) copyWithZone:a3];
        [v5 addEnableState:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v87 objects:v115 count:16];
    }

    while (v41);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v45 = self->_txLatencyBKs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v83 objects:v114 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v84;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v84 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v83 + 1) + 8 * jj) copyWithZone:a3];
        [v5 addTxLatencyBK:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v83 objects:v114 count:16];
    }

    while (v47);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v51 = self->_txLatencyBEs;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v79 objects:v113 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v80;
    do
    {
      for (kk = 0; kk != v53; ++kk)
      {
        if (*v80 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v79 + 1) + 8 * kk) copyWithZone:a3];
        [v5 addTxLatencyBE:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v79 objects:v113 count:16];
    }

    while (v53);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v57 = self->_txLatencyVOs;
  v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v75 objects:v112 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v76;
    do
    {
      for (mm = 0; mm != v59; ++mm)
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = [*(*(&v75 + 1) + 8 * mm) copyWithZone:a3];
        [v5 addTxLatencyVO:v62];
      }

      v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v75 objects:v112 count:16];
    }

    while (v59);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v63 = self->_txLatencyVIs;
  v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v71 objects:v111 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v72;
    do
    {
      for (nn = 0; nn != v65; ++nn)
      {
        if (*v72 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = [*(*(&v71 + 1) + 8 * nn) copyWithZone:{a3, v71}];
        [v5 addTxLatencyVI:v68];
      }

      v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v71 objects:v111 count:16];
    }

    while (v65);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_afCount;
    *(v5 + 136) |= 1u;
  }

  v69 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  role = self->_role;
  if (role | *(v4 + 11))
  {
    if (![(NSString *)role isEqual:?])
    {
      goto LABEL_54;
    }
  }

  packets = self->_packets;
  if (packets | *(v4 + 8))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_54;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(v4 + 3))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_54;
    }
  }

  npeers = self->_npeers;
  if (npeers | *(v4 + 6))
  {
    if (![(NSMutableArray *)npeers isEqual:?])
    {
      goto LABEL_54;
    }
  }

  nrtpeers = self->_nrtpeers;
  if (nrtpeers | *(v4 + 7))
  {
    if (![(NSMutableArray *)nrtpeers isEqual:?])
    {
      goto LABEL_54;
    }
  }

  awdlStates = self->_awdlStates;
  if (awdlStates | *(v4 + 2))
  {
    if (![(NSMutableArray *)awdlStates isEqual:?])
    {
      goto LABEL_54;
    }
  }

  v11 = *(v4 + 136);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 136) & 0x20) == 0 || self->_rtPeerCount != *(v4 + 24))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 136) & 0x20) != 0)
  {
LABEL_54:
    v17 = 0;
    goto LABEL_55;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 136) & 4) == 0 || self->_peerCount != *(v4 + 18))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 136) & 4) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 136) & 8) == 0 || self->_peersAdded != *(v4 + 19))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 136) & 8) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 136) & 0x10) == 0 || self->_peersRemoved != *(v4 + 20))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 136) & 0x10) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 136) & 2) == 0 || self->_enabled != *(v4 + 10))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 136) & 2) != 0)
  {
    goto LABEL_54;
  }

  enableStates = self->_enableStates;
  if (enableStates | *(v4 + 4) && ![(NSMutableArray *)enableStates isEqual:?])
  {
    goto LABEL_54;
  }

  txLatencyBKs = self->_txLatencyBKs;
  if (txLatencyBKs | *(v4 + 14))
  {
    if (![(NSMutableArray *)txLatencyBKs isEqual:?])
    {
      goto LABEL_54;
    }
  }

  txLatencyBEs = self->_txLatencyBEs;
  if (txLatencyBEs | *(v4 + 13))
  {
    if (![(NSMutableArray *)txLatencyBEs isEqual:?])
    {
      goto LABEL_54;
    }
  }

  txLatencyVOs = self->_txLatencyVOs;
  if (txLatencyVOs | *(v4 + 16))
  {
    if (![(NSMutableArray *)txLatencyVOs isEqual:?])
    {
      goto LABEL_54;
    }
  }

  txLatencyVIs = self->_txLatencyVIs;
  if (txLatencyVIs | *(v4 + 15))
  {
    if (![(NSMutableArray *)txLatencyVIs isEqual:?])
    {
      goto LABEL_54;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 136) & 1) == 0 || self->_afCount != *(v4 + 2))
    {
      goto LABEL_54;
    }

    v17 = 1;
  }

  else
  {
    v17 = (*(v4 + 136) & 1) == 0;
  }

LABEL_55:

  return v17;
}

- (unint64_t)hash
{
  v21 = [(NSString *)self->_role hash];
  v20 = [(NSMutableArray *)self->_packets hash];
  v19 = [(NSMutableArray *)self->_bytes hash];
  v18 = [(NSMutableArray *)self->_npeers hash];
  v17 = [(NSMutableArray *)self->_nrtpeers hash];
  v16 = [(NSMutableArray *)self->_awdlStates hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v15 = 2654435761 * self->_rtPeerCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v13 = 2654435761 * self->_peerCount;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v3 = 2654435761 * self->_peersAdded;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v3 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = 2654435761 * self->_peersRemoved;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_enabled;
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  v6 = [(NSMutableArray *)self->_enableStates hash];
  v7 = [(NSMutableArray *)self->_txLatencyBKs hash];
  v8 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v9 = [(NSMutableArray *)self->_txLatencyVOs hash];
  v10 = [(NSMutableArray *)self->_txLatencyVIs hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_afCount;
  }

  else
  {
    v11 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 11))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self setRole:?];
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v5 = *(v4 + 8);
  v6 = [v5 countByEnumeratingWithState:&v93 objects:v106 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v94;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v94 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addPackets:*(*(&v93 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v93 objects:v106 count:16];
    }

    while (v7);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v89 objects:v105 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v90;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v90 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addBytes:*(*(&v89 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v89 objects:v105 count:16];
    }

    while (v12);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v15 = *(v4 + 6);
  v16 = [v15 countByEnumeratingWithState:&v85 objects:v104 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v86;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v86 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addNpeers:*(*(&v85 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v85 objects:v104 count:16];
    }

    while (v17);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v20 = *(v4 + 7);
  v21 = [v20 countByEnumeratingWithState:&v81 objects:v103 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v82;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v82 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addNrtpeers:*(*(&v81 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v81 objects:v103 count:16];
    }

    while (v22);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v25 = *(v4 + 2);
  v26 = [v25 countByEnumeratingWithState:&v77 objects:v102 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v78;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v78 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addAwdlState:*(*(&v77 + 1) + 8 * n)];
      }

      v27 = [v25 countByEnumeratingWithState:&v77 objects:v102 count:16];
    }

    while (v27);
  }

  v30 = *(v4 + 136);
  if ((v30 & 0x20) != 0)
  {
    self->_rtPeerCount = *(v4 + 24);
    *&self->_has |= 0x20u;
    v30 = *(v4 + 136);
    if ((v30 & 4) == 0)
    {
LABEL_40:
      if ((v30 & 8) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_84;
    }
  }

  else if ((*(v4 + 136) & 4) == 0)
  {
    goto LABEL_40;
  }

  self->_peerCount = *(v4 + 18);
  *&self->_has |= 4u;
  v30 = *(v4 + 136);
  if ((v30 & 8) == 0)
  {
LABEL_41:
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_peersAdded = *(v4 + 19);
  *&self->_has |= 8u;
  v30 = *(v4 + 136);
  if ((v30 & 0x10) == 0)
  {
LABEL_42:
    if ((v30 & 2) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_85:
  self->_peersRemoved = *(v4 + 20);
  *&self->_has |= 0x10u;
  if ((*(v4 + 136) & 2) != 0)
  {
LABEL_43:
    self->_enabled = *(v4 + 10);
    *&self->_has |= 2u;
  }

LABEL_44:
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v31 = *(v4 + 4);
  v32 = [v31 countByEnumeratingWithState:&v73 objects:v101 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v74;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v74 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addEnableState:*(*(&v73 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v73 objects:v101 count:16];
    }

    while (v33);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v36 = *(v4 + 14);
  v37 = [v36 countByEnumeratingWithState:&v69 objects:v100 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v70;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v70 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addTxLatencyBK:*(*(&v69 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v69 objects:v100 count:16];
    }

    while (v38);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v41 = *(v4 + 13);
  v42 = [v41 countByEnumeratingWithState:&v65 objects:v99 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v66;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v66 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addTxLatencyBE:*(*(&v65 + 1) + 8 * kk)];
      }

      v43 = [v41 countByEnumeratingWithState:&v65 objects:v99 count:16];
    }

    while (v43);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v46 = *(v4 + 16);
  v47 = [v46 countByEnumeratingWithState:&v61 objects:v98 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v62;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v62 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addTxLatencyVO:*(*(&v61 + 1) + 8 * mm)];
      }

      v48 = [v46 countByEnumeratingWithState:&v61 objects:v98 count:16];
    }

    while (v48);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = *(v4 + 15);
  v52 = [v51 countByEnumeratingWithState:&v57 objects:v97 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v58;
    do
    {
      for (nn = 0; nn != v53; ++nn)
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStats *)self addTxLatencyVI:*(*(&v57 + 1) + 8 * nn), v57];
      }

      v53 = [v51 countByEnumeratingWithState:&v57 objects:v97 count:16];
    }

    while (v53);
  }

  if (*(v4 + 136))
  {
    self->_afCount = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v56 = *MEMORY[0x1E69E9840];
}

@end