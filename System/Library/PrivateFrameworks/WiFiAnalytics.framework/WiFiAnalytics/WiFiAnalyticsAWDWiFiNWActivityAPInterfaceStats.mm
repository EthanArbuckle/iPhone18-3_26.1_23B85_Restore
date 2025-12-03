@interface WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBytes:(id)bytes;
- (void)addEnableState:(id)state;
- (void)addNpeers:(id)npeers;
- (void)addPackets:(id)packets;
- (void)addTxLatencyBE:(id)e;
- (void)addTxLatencyBK:(id)k;
- (void)addTxLatencyVI:(id)i;
- (void)addTxLatencyVO:(id)o;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPeerCount:(BOOL)count;
- (void)setHasPeersAdded:(BOOL)added;
- (void)setHasPeersRemoved:(BOOL)removed;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats

- (void)addPackets:(id)packets
{
  packetsCopy = packets;
  packets = self->_packets;
  v8 = packetsCopy;
  if (!packets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_packets;
    self->_packets = v6;

    packetsCopy = v8;
    packets = self->_packets;
  }

  [(NSMutableArray *)packets addObject:packetsCopy];
}

- (void)addBytes:(id)bytes
{
  bytesCopy = bytes;
  bytes = self->_bytes;
  v8 = bytesCopy;
  if (!bytes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bytes;
    self->_bytes = v6;

    bytesCopy = v8;
    bytes = self->_bytes;
  }

  [(NSMutableArray *)bytes addObject:bytesCopy];
}

- (void)addNpeers:(id)npeers
{
  npeersCopy = npeers;
  npeers = self->_npeers;
  v8 = npeersCopy;
  if (!npeers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_npeers;
    self->_npeers = v6;

    npeersCopy = v8;
    npeers = self->_npeers;
  }

  [(NSMutableArray *)npeers addObject:npeersCopy];
}

- (void)setHasPeerCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPeersAdded:(BOOL)added
{
  if (added)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPeersRemoved:(BOOL)removed
{
  if (removed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addEnableState:(id)state
{
  stateCopy = state;
  enableStates = self->_enableStates;
  v8 = stateCopy;
  if (!enableStates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_enableStates;
    self->_enableStates = v6;

    stateCopy = v8;
    enableStates = self->_enableStates;
  }

  [(NSMutableArray *)enableStates addObject:stateCopy];
}

- (void)addTxLatencyBK:(id)k
{
  kCopy = k;
  txLatencyBKs = self->_txLatencyBKs;
  v8 = kCopy;
  if (!txLatencyBKs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyBKs;
    self->_txLatencyBKs = v6;

    kCopy = v8;
    txLatencyBKs = self->_txLatencyBKs;
  }

  [(NSMutableArray *)txLatencyBKs addObject:kCopy];
}

- (void)addTxLatencyBE:(id)e
{
  eCopy = e;
  txLatencyBEs = self->_txLatencyBEs;
  v8 = eCopy;
  if (!txLatencyBEs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyBEs;
    self->_txLatencyBEs = v6;

    eCopy = v8;
    txLatencyBEs = self->_txLatencyBEs;
  }

  [(NSMutableArray *)txLatencyBEs addObject:eCopy];
}

- (void)addTxLatencyVO:(id)o
{
  oCopy = o;
  txLatencyVOs = self->_txLatencyVOs;
  v8 = oCopy;
  if (!txLatencyVOs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyVOs;
    self->_txLatencyVOs = v6;

    oCopy = v8;
    txLatencyVOs = self->_txLatencyVOs;
  }

  [(NSMutableArray *)txLatencyVOs addObject:oCopy];
}

- (void)addTxLatencyVI:(id)i
{
  iCopy = i;
  txLatencyVIs = self->_txLatencyVIs;
  v8 = iCopy;
  if (!txLatencyVIs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txLatencyVIs;
    self->_txLatencyVIs = v6;

    iCopy = v8;
    txLatencyVIs = self->_txLatencyVIs;
  }

  [(NSMutableArray *)txLatencyVIs addObject:iCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v109 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  role = self->_role;
  if (role)
  {
    [dictionary setObject:role forKey:@"role"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v7 = self->_packets;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v98;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v98 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v97 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v97 objects:v108 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v14 = self->_bytes;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v93 objects:v107 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v94;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v94 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v93 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v93 objects:v107 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_npeers count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_npeers, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v21 = self->_npeers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v89 objects:v106 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v90;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v90 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v89 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v89 objects:v106 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"npeers"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peerCount];
    [v4 setObject:v66 forKey:@"peerCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_32:
      if ((has & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_85;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_32;
  }

  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peersAdded];
  [v4 setObject:v67 forKey:@"peersAdded"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_33:
    if ((has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_85:
  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_peersRemoved];
  [v4 setObject:v68 forKey:@"peersRemoved"];

  if (*&self->_has)
  {
LABEL_34:
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_enabled];
    [v4 setObject:v28 forKey:@"enabled"];
  }

LABEL_35:
  if ([(NSMutableArray *)self->_enableStates count])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_enableStates, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v30 = self->_enableStates;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v85 objects:v105 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v86;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v86 != v33)
          {
            objc_enumerationMutation(v30);
          }

          dictionaryRepresentation4 = [*(*(&v85 + 1) + 8 * m) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation4];
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v85 objects:v105 count:16];
      }

      while (v32);
    }

    [v4 setObject:v29 forKey:@"enableState"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v37 = self->_txLatencyBKs;
    v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v81 objects:v104 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v82;
      do
      {
        for (n = 0; n != v39; ++n)
        {
          if (*v82 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation5 = [*(*(&v81 + 1) + 8 * n) dictionaryRepresentation];
          [v36 addObject:dictionaryRepresentation5];
        }

        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v81 objects:v104 count:16];
      }

      while (v39);
    }

    [v4 setObject:v36 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v44 = self->_txLatencyBEs;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v77 objects:v103 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v78;
      do
      {
        for (ii = 0; ii != v46; ++ii)
        {
          if (*v78 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation6 = [*(*(&v77 + 1) + 8 * ii) dictionaryRepresentation];
          [v43 addObject:dictionaryRepresentation6];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v77 objects:v103 count:16];
      }

      while (v46);
    }

    [v4 setObject:v43 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v51 = self->_txLatencyVOs;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v73 objects:v102 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v74;
      do
      {
        for (jj = 0; jj != v53; ++jj)
        {
          if (*v74 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation7 = [*(*(&v73 + 1) + 8 * jj) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation7];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v73 objects:v102 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v58 = self->_txLatencyVIs;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v69 objects:v101 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v70;
      do
      {
        for (kk = 0; kk != v60; ++kk)
        {
          if (*v70 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation8 = [*(*(&v69 + 1) + 8 * kk) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation8];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v69 objects:v101 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"txLatencyVI"];
  }

  v64 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v99 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_role)
  {
    PBDataWriterWriteStringField();
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v5 = self->_packets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v88;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v88 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v87 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v87 objects:v98 count:16];
    }

    while (v7);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v11 = self->_bytes;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v83 objects:v97 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v84;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v84 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v83 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v83 objects:v97 count:16];
    }

    while (v13);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v17 = self->_npeers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v79 objects:v96 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v80;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v80 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v79 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v79 objects:v96 count:16];
    }

    while (v19);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    peerCount = self->_peerCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_26:
      if ((has & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_67;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_26;
  }

  peersAdded = self->_peersAdded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_27:
    if ((has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_67:
  peersRemoved = self->_peersRemoved;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_28:
    enabled = self->_enabled;
    PBDataWriterWriteUint32Field();
  }

LABEL_29:
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v25 = self->_enableStates;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v75 objects:v95 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v76;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v76 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v75 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v75 objects:v95 count:16];
    }

    while (v27);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v31 = self->_txLatencyBKs;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v71 objects:v94 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v72;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v72 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v71 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v71 objects:v94 count:16];
    }

    while (v33);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v37 = self->_txLatencyBEs;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v67 objects:v93 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v68;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v68 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v67 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v67 objects:v93 count:16];
    }

    while (v39);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v43 = self->_txLatencyVOs;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v63 objects:v92 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v64;
    do
    {
      for (jj = 0; jj != v45; ++jj)
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v63 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v63 objects:v92 count:16];
    }

    while (v45);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v49 = self->_txLatencyVIs;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v59 objects:v91 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v60;
    do
    {
      for (kk = 0; kk != v51; ++kk)
      {
        if (*v60 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v59 + 1) + 8 * kk);
        PBDataWriterWriteSubmessage();
      }

      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v59 objects:v91 count:16];
    }

    while (v51);
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_role)
  {
    [toCopy setRole:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self packetsCount])
  {
    [toCopy clearPackets];
    packetsCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self packetsCount];
    if (packetsCount)
    {
      v5 = packetsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self packetsAtIndex:i];
        [toCopy addPackets:v7];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self bytesCount])
  {
    [toCopy clearBytes];
    bytesCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self bytesCount];
    if (bytesCount)
    {
      v9 = bytesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self bytesAtIndex:j];
        [toCopy addBytes:v11];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self npeersCount])
  {
    [toCopy clearNpeers];
    npeersCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self npeersCount];
    if (npeersCount)
    {
      v13 = npeersCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self npeersAtIndex:k];
        [toCopy addNpeers:v15];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 12) = self->_peerCount;
    *(toCopy + 104) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_45:
      *(toCopy + 14) = self->_peersRemoved;
      *(toCopy + 104) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 13) = self->_peersAdded;
  *(toCopy + 104) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_45;
  }

LABEL_18:
  if (has)
  {
LABEL_19:
    *(toCopy + 6) = self->_enabled;
    *(toCopy + 104) |= 1u;
  }

LABEL_20:
  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self enableStatesCount])
  {
    [toCopy clearEnableStates];
    enableStatesCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self enableStatesCount];
    if (enableStatesCount)
    {
      v18 = enableStatesCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self enableStateAtIndex:m];
        [toCopy addEnableState:v20];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyBKsCount])
  {
    [toCopy clearTxLatencyBKs];
    txLatencyBKsCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyBKsCount];
    if (txLatencyBKsCount)
    {
      v22 = txLatencyBKsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyBKAtIndex:n];
        [toCopy addTxLatencyBK:v24];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyBEsCount])
  {
    [toCopy clearTxLatencyBEs];
    txLatencyBEsCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyBEsCount];
    if (txLatencyBEsCount)
    {
      v26 = txLatencyBEsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyBEAtIndex:ii];
        [toCopy addTxLatencyBE:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyVOsCount])
  {
    [toCopy clearTxLatencyVOs];
    txLatencyVOsCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyVOsCount];
    if (txLatencyVOsCount)
    {
      v30 = txLatencyVOsCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyVOAtIndex:jj];
        [toCopy addTxLatencyVO:v32];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyVIsCount])
  {
    [toCopy clearTxLatencyVIs];
    txLatencyVIsCount = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyVIsCount];
    if (txLatencyVIsCount)
    {
      v34 = txLatencyVIsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self txLatencyVIAtIndex:kk];
        [toCopy addTxLatencyVI:v36];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_role copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v8 = self->_packets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v88;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v87 + 1) + 8 * i) copyWithZone:zone];
        [v5 addPackets:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v87 objects:v98 count:16];
    }

    while (v10);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v14 = self->_bytes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v83 objects:v97 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v84;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v84 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v83 + 1) + 8 * j) copyWithZone:zone];
        [v5 addBytes:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v83 objects:v97 count:16];
    }

    while (v16);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v20 = self->_npeers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v79 objects:v96 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v80;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v80 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v79 + 1) + 8 * k) copyWithZone:zone];
        [v5 addNpeers:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v79 objects:v96 count:16];
    }

    while (v22);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_peerCount;
    *(v5 + 104) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_24:
      if ((has & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_65;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_24;
  }

  *(v5 + 52) = self->_peersAdded;
  *(v5 + 104) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_25:
    if ((has & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_65:
  *(v5 + 56) = self->_peersRemoved;
  *(v5 + 104) |= 8u;
  if (*&self->_has)
  {
LABEL_26:
    *(v5 + 24) = self->_enabled;
    *(v5 + 104) |= 1u;
  }

LABEL_27:
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v27 = self->_enableStates;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v75 objects:v95 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v76;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v76 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v75 + 1) + 8 * m) copyWithZone:zone];
        [v5 addEnableState:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v75 objects:v95 count:16];
    }

    while (v29);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v33 = self->_txLatencyBKs;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v71 objects:v94 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v72;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v72 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v71 + 1) + 8 * n) copyWithZone:zone];
        [v5 addTxLatencyBK:v38];
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v71 objects:v94 count:16];
    }

    while (v35);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v39 = self->_txLatencyBEs;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v67 objects:v93 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v68;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v68 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v67 + 1) + 8 * ii) copyWithZone:zone];
        [v5 addTxLatencyBE:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v67 objects:v93 count:16];
    }

    while (v41);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v45 = self->_txLatencyVOs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v63 objects:v92 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v64;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v63 + 1) + 8 * jj) copyWithZone:zone];
        [v5 addTxLatencyVO:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v63 objects:v92 count:16];
    }

    while (v47);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v51 = self->_txLatencyVIs;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v59 objects:v91 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v60;
    do
    {
      for (kk = 0; kk != v53; ++kk)
      {
        if (*v60 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v59 + 1) + 8 * kk) copyWithZone:{zone, v59}];
        [v5 addTxLatencyVI:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v59 objects:v91 count:16];
    }

    while (v53);
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  role = self->_role;
  if (role | *(equalCopy + 8))
  {
    if (![(NSString *)role isEqual:?])
    {
      goto LABEL_40;
    }
  }

  packets = self->_packets;
  if (packets | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_40;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_40;
    }
  }

  npeers = self->_npeers;
  if (npeers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)npeers isEqual:?])
    {
      goto LABEL_40;
    }
  }

  v9 = *(equalCopy + 104);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 104) & 2) == 0 || self->_peerCount != *(equalCopy + 12))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 104) & 2) != 0)
  {
LABEL_40:
    v15 = 0;
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 104) & 4) == 0 || self->_peersAdded != *(equalCopy + 13))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 104) & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 104) & 8) == 0 || self->_peersRemoved != *(equalCopy + 14))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 104) & 8) != 0)
  {
    goto LABEL_40;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_enabled != *(equalCopy + 6))
    {
      goto LABEL_40;
    }
  }

  else if (*(equalCopy + 104))
  {
    goto LABEL_40;
  }

  enableStates = self->_enableStates;
  if (enableStates | *(equalCopy + 2) && ![(NSMutableArray *)enableStates isEqual:?])
  {
    goto LABEL_40;
  }

  txLatencyBKs = self->_txLatencyBKs;
  if (txLatencyBKs | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)txLatencyBKs isEqual:?])
    {
      goto LABEL_40;
    }
  }

  txLatencyBEs = self->_txLatencyBEs;
  if (txLatencyBEs | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)txLatencyBEs isEqual:?])
    {
      goto LABEL_40;
    }
  }

  txLatencyVOs = self->_txLatencyVOs;
  if (txLatencyVOs | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)txLatencyVOs isEqual:?])
    {
      goto LABEL_40;
    }
  }

  txLatencyVIs = self->_txLatencyVIs;
  if (txLatencyVIs | *(equalCopy + 11))
  {
    v15 = [(NSMutableArray *)txLatencyVIs isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_41:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_role hash];
  v4 = [(NSMutableArray *)self->_packets hash];
  v5 = [(NSMutableArray *)self->_bytes hash];
  v6 = [(NSMutableArray *)self->_npeers hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_peerCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_peersAdded;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 2654435761 * self->_peersRemoved;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = 2654435761 * self->_enabled;
LABEL_10:
  v11 = v4 ^ v3 ^ v5 ^ v6;
  v12 = v7 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_enableStates hash];
  v13 = v11 ^ v12 ^ [(NSMutableArray *)self->_txLatencyBKs hash];
  v14 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v15 = v14 ^ [(NSMutableArray *)self->_txLatencyVOs hash];
  return v13 ^ v15 ^ [(NSMutableArray *)self->_txLatencyVIs hash];
}

- (void)mergeFrom:(id)from
{
  v87 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self setRole:?];
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v76;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v76 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addPackets:*(*(&v75 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v7);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v10 = *(fromCopy + 1);
  v11 = [v10 countByEnumeratingWithState:&v71 objects:v85 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v72;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addBytes:*(*(&v71 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v71 objects:v85 count:16];
    }

    while (v12);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v15 = *(fromCopy + 4);
  v16 = [v15 countByEnumeratingWithState:&v67 objects:v84 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v68;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addNpeers:*(*(&v67 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v67 objects:v84 count:16];
    }

    while (v17);
  }

  v20 = *(fromCopy + 104);
  if ((v20 & 2) != 0)
  {
    self->_peerCount = *(fromCopy + 12);
    *&self->_has |= 2u;
    v20 = *(fromCopy + 104);
    if ((v20 & 4) == 0)
    {
LABEL_26:
      if ((v20 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_67;
    }
  }

  else if ((*(fromCopy + 104) & 4) == 0)
  {
    goto LABEL_26;
  }

  self->_peersAdded = *(fromCopy + 13);
  *&self->_has |= 4u;
  v20 = *(fromCopy + 104);
  if ((v20 & 8) == 0)
  {
LABEL_27:
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_67:
  self->_peersRemoved = *(fromCopy + 14);
  *&self->_has |= 8u;
  if (*(fromCopy + 104))
  {
LABEL_28:
    self->_enabled = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

LABEL_29:
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v21 = *(fromCopy + 2);
  v22 = [v21 countByEnumeratingWithState:&v63 objects:v83 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v64;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v64 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addEnableState:*(*(&v63 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v63 objects:v83 count:16];
    }

    while (v23);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v26 = *(fromCopy + 10);
  v27 = [v26 countByEnumeratingWithState:&v59 objects:v82 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v60;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addTxLatencyBK:*(*(&v59 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v59 objects:v82 count:16];
    }

    while (v28);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = *(fromCopy + 9);
  v32 = [v31 countByEnumeratingWithState:&v55 objects:v81 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v56;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addTxLatencyBE:*(*(&v55 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v55 objects:v81 count:16];
    }

    while (v33);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = *(fromCopy + 12);
  v37 = [v36 countByEnumeratingWithState:&v51 objects:v80 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v52;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addTxLatencyVO:*(*(&v51 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v51 objects:v80 count:16];
    }

    while (v38);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v41 = *(fromCopy + 11);
  v42 = [v41 countByEnumeratingWithState:&v47 objects:v79 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v48;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityAPInterfaceStats *)self addTxLatencyVI:*(*(&v47 + 1) + 8 * kk), v47];
      }

      v43 = [v41 countByEnumeratingWithState:&v47 objects:v79 count:16];
    }

    while (v43);
  }

  v46 = *MEMORY[0x1E69E9840];
}

@end