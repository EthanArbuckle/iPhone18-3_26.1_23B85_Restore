@interface WiFiAnalyticsAWDWiFiNWActivityNANPeerStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRole:(id)role;
- (int)role;
- (unint64_t)hash;
- (void)addAcCompletions:(id)completions;
- (void)addBytes:(id)bytes;
- (void)addPackets:(id)packets;
- (void)addRssi:(id)rssi;
- (void)addTxLatencyBE:(id)e;
- (void)addTxLatencyBK:(id)k;
- (void)addTxLatencyVI:(id)i;
- (void)addTxLatencyVO:(id)o;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRssiValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityNANPeerStats

- (int)role
{
  if (*&self->_has)
  {
    return self->_role;
  }

  else
  {
    return 3;
  }
}

- (int)StringAsRole:(id)role
{
  roleCopy = role;
  if ([roleCopy isEqualToString:@"INFRA"])
  {
    v4 = 0;
  }

  else if ([roleCopy isEqualToString:@"LEGACYAWDL"])
  {
    v4 = 1;
  }

  else if ([roleCopy isEqualToString:@"LLWAWDL"])
  {
    v4 = 2;
  }

  else if ([roleCopy isEqualToString:@"NAN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addRssi:(id)rssi
{
  rssiCopy = rssi;
  rssis = self->_rssis;
  v8 = rssiCopy;
  if (!rssis)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rssis;
    self->_rssis = v6;

    rssiCopy = v8;
    rssis = self->_rssis;
  }

  [(NSMutableArray *)rssis addObject:rssiCopy];
}

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

- (void)addAcCompletions:(id)completions
{
  completionsCopy = completions;
  acCompletions = self->_acCompletions;
  v8 = completionsCopy;
  if (!acCompletions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_acCompletions;
    self->_acCompletions = v6;

    completionsCopy = v8;
    acCompletions = self->_acCompletions;
  }

  [(NSMutableArray *)acCompletions addObject:completionsCopy];
}

- (void)setHasRssiValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityNANPeerStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v108 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    role = self->_role;
    if (role >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v5 = off_1E830E7E0[role];
    }

    [dictionary setObject:v5 forKey:@"role"];
  }

  hashID = self->_hashID;
  if (hashID)
  {
    [dictionary setObject:hashID forKey:@"hashID"];
  }

  if ([(NSMutableArray *)self->_rssis count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rssis, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v8 = self->_rssis;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v96 objects:v107 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v97;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v97 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v96 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v96 objects:v107 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"rssi"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v15 = self->_packets;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v93;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v93 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v92 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v22 = self->_bytes;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v89;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v89 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation3 = [*(*(&v88 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:dictionaryRepresentation3];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v24);
    }

    [dictionary setObject:v21 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v29 = self->_txLatencyBKs;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v84 objects:v104 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v85;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v85 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation4 = [*(*(&v84 + 1) + 8 * m) dictionaryRepresentation];
          [v28 addObject:dictionaryRepresentation4];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v84 objects:v104 count:16];
      }

      while (v31);
    }

    [dictionary setObject:v28 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v36 = self->_txLatencyBEs;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v80 objects:v103 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v81;
      do
      {
        for (n = 0; n != v38; ++n)
        {
          if (*v81 != v39)
          {
            objc_enumerationMutation(v36);
          }

          dictionaryRepresentation5 = [*(*(&v80 + 1) + 8 * n) dictionaryRepresentation];
          [v35 addObject:dictionaryRepresentation5];
        }

        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v80 objects:v103 count:16];
      }

      while (v38);
    }

    [dictionary setObject:v35 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v43 = self->_txLatencyVOs;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v76 objects:v102 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v77;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v43);
          }

          dictionaryRepresentation6 = [*(*(&v76 + 1) + 8 * ii) dictionaryRepresentation];
          [v42 addObject:dictionaryRepresentation6];
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v76 objects:v102 count:16];
      }

      while (v45);
    }

    [dictionary setObject:v42 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v50 = self->_txLatencyVIs;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v72 objects:v101 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v73;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v73 != v53)
          {
            objc_enumerationMutation(v50);
          }

          dictionaryRepresentation7 = [*(*(&v72 + 1) + 8 * jj) dictionaryRepresentation];
          [v49 addObject:dictionaryRepresentation7];
        }

        v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v72 objects:v101 count:16];
      }

      while (v52);
    }

    [dictionary setObject:v49 forKey:@"txLatencyVI"];
  }

  completions = self->_completions;
  if (completions)
  {
    dictionaryRepresentation8 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"completions"];
  }

  if ([(NSMutableArray *)self->_acCompletions count])
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_acCompletions, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v59 = self->_acCompletions;
    v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v68 objects:v100 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v69;
      do
      {
        for (kk = 0; kk != v61; ++kk)
        {
          if (*v69 != v62)
          {
            objc_enumerationMutation(v59);
          }

          dictionaryRepresentation9 = [*(*(&v68 + 1) + 8 * kk) dictionaryRepresentation];
          [v58 addObject:dictionaryRepresentation9];
        }

        v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v68 objects:v100 count:16];
      }

      while (v61);
    }

    [dictionary setObject:v58 forKey:@"acCompletions"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue];
    [dictionary setObject:v65 forKey:@"rssiValue"];
  }

  v66 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v96 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    role = self->_role;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hashID)
  {
    PBDataWriterWriteStringField();
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = self->_rssis;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v84 objects:v95 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v85;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v84 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v8);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v12 = self->_packets;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v80 objects:v94 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v81;
    do
    {
      v16 = 0;
      do
      {
        if (*v81 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v80 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v80 objects:v94 count:16];
    }

    while (v14);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v18 = self->_bytes;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v76 objects:v93 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v77;
    do
    {
      v22 = 0;
      do
      {
        if (*v77 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v76 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v76 objects:v93 count:16];
    }

    while (v20);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v24 = self->_txLatencyBKs;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v72 objects:v92 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v73;
    do
    {
      v28 = 0;
      do
      {
        if (*v73 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v72 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v72 objects:v92 count:16];
    }

    while (v26);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = self->_txLatencyBEs;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v68 objects:v91 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v69;
    do
    {
      v34 = 0;
      do
      {
        if (*v69 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v68 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v68 objects:v91 count:16];
    }

    while (v32);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v36 = self->_txLatencyVOs;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v90 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v65;
    do
    {
      v40 = 0;
      do
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v64 + 1) + 8 * v40);
        PBDataWriterWriteSubmessage();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v90 count:16];
    }

    while (v38);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = self->_txLatencyVIs;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v60 objects:v89 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v61;
    do
    {
      v46 = 0;
      do
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v60 + 1) + 8 * v46);
        PBDataWriterWriteSubmessage();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v60 objects:v89 count:16];
    }

    while (v44);
  }

  if (self->_completions)
  {
    PBDataWriterWriteSubmessage();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = self->_acCompletions;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v56 objects:v88 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v57;
    do
    {
      v52 = 0;
      do
      {
        if (*v57 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v56 + 1) + 8 * v52);
        PBDataWriterWriteSubmessage();
        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v56 objects:v88 count:16];
    }

    while (v50);
  }

  if ((*&self->_has & 2) != 0)
  {
    rssiValue = self->_rssiValue;
    PBDataWriterWriteInt32Field();
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_role;
    *(toCopy + 96) |= 1u;
  }

  v37 = toCopy;
  if (self->_hashID)
  {
    [toCopy setHashID:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self rssisCount])
  {
    [v37 clearRssis];
    rssisCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self rssisCount];
    if (rssisCount)
    {
      v6 = rssisCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self rssiAtIndex:i];
        [v37 addRssi:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self packetsCount])
  {
    [v37 clearPackets];
    packetsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self packetsCount];
    if (packetsCount)
    {
      v10 = packetsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self packetsAtIndex:j];
        [v37 addPackets:v12];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self bytesCount])
  {
    [v37 clearBytes];
    bytesCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self bytesCount];
    if (bytesCount)
    {
      v14 = bytesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self bytesAtIndex:k];
        [v37 addBytes:v16];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBKsCount])
  {
    [v37 clearTxLatencyBKs];
    txLatencyBKsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBKsCount];
    if (txLatencyBKsCount)
    {
      v18 = txLatencyBKsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBKAtIndex:m];
        [v37 addTxLatencyBK:v20];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBEsCount])
  {
    [v37 clearTxLatencyBEs];
    txLatencyBEsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBEsCount];
    if (txLatencyBEsCount)
    {
      v22 = txLatencyBEsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyBEAtIndex:n];
        [v37 addTxLatencyBE:v24];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVOsCount])
  {
    [v37 clearTxLatencyVOs];
    txLatencyVOsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVOsCount];
    if (txLatencyVOsCount)
    {
      v26 = txLatencyVOsCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVOAtIndex:ii];
        [v37 addTxLatencyVO:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVIsCount])
  {
    [v37 clearTxLatencyVIs];
    txLatencyVIsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVIsCount];
    if (txLatencyVIsCount)
    {
      v30 = txLatencyVIsCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self txLatencyVIAtIndex:jj];
        [v37 addTxLatencyVI:v32];
      }
    }
  }

  if (self->_completions)
  {
    [v37 setCompletions:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self acCompletionsCount])
  {
    [v37 clearAcCompletions];
    acCompletionsCount = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self acCompletionsCount];
    if (acCompletionsCount)
    {
      v34 = acCompletionsCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self acCompletionsAtIndex:kk];
        [v37 addAcCompletions:v36];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v37 + 13) = self->_rssiValue;
    *(v37 + 96) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_role;
    *(v5 + 96) |= 1u;
  }

  v7 = [(NSString *)self->_hashID copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v9 = self->_rssis;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v90;
    do
    {
      v13 = 0;
      do
      {
        if (*v90 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v89 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addRssi:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v11);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v15 = self->_packets;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v86;
    do
    {
      v19 = 0;
      do
      {
        if (*v86 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v85 + 1) + 8 * v19) copyWithZone:zone];
        [v6 addPackets:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v85 objects:v99 count:16];
    }

    while (v17);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v21 = self->_bytes;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v81 objects:v98 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v82;
    do
    {
      v25 = 0;
      do
      {
        if (*v82 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v81 + 1) + 8 * v25) copyWithZone:zone];
        [v6 addBytes:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v81 objects:v98 count:16];
    }

    while (v23);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v27 = self->_txLatencyBKs;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v77 objects:v97 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v78;
    do
    {
      v31 = 0;
      do
      {
        if (*v78 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v77 + 1) + 8 * v31) copyWithZone:zone];
        [v6 addTxLatencyBK:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v77 objects:v97 count:16];
    }

    while (v29);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v33 = self->_txLatencyBEs;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v73 objects:v96 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v74;
    do
    {
      v37 = 0;
      do
      {
        if (*v74 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v73 + 1) + 8 * v37) copyWithZone:zone];
        [v6 addTxLatencyBE:v38];

        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v73 objects:v96 count:16];
    }

    while (v35);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v39 = self->_txLatencyVOs;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v69 objects:v95 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v70;
    do
    {
      v43 = 0;
      do
      {
        if (*v70 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v69 + 1) + 8 * v43) copyWithZone:zone];
        [v6 addTxLatencyVO:v44];

        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v69 objects:v95 count:16];
    }

    while (v41);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v45 = self->_txLatencyVIs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v65 objects:v94 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v66;
    do
    {
      v49 = 0;
      do
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v65 + 1) + 8 * v49) copyWithZone:zone];
        [v6 addTxLatencyVI:v50];

        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v65 objects:v94 count:16];
    }

    while (v47);
  }

  v51 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions copyWithZone:zone];
  v52 = *(v6 + 24);
  *(v6 + 24) = v51;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v53 = self->_acCompletions;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v61 objects:v93 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v62;
    do
    {
      v57 = 0;
      do
      {
        if (*v62 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v61 + 1) + 8 * v57) copyWithZone:{zone, v61}];
        [v6 addAcCompletions:v58];

        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v61 objects:v93 count:16];
    }

    while (v55);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 52) = self->_rssiValue;
    *(v6 + 96) |= 2u;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = *(equalCopy + 96);
  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_role != *(equalCopy + 12))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 96))
  {
LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  hashID = self->_hashID;
  if (hashID | *(equalCopy + 4) && ![(NSString *)hashID isEqual:?])
  {
    goto LABEL_31;
  }

  rssis = self->_rssis;
  if (rssis | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)rssis isEqual:?])
    {
      goto LABEL_31;
    }
  }

  packets = self->_packets;
  if (packets | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyBKs = self->_txLatencyBKs;
  if (txLatencyBKs | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)txLatencyBKs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyBEs = self->_txLatencyBEs;
  if (txLatencyBEs | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)txLatencyBEs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyVOs = self->_txLatencyVOs;
  if (txLatencyVOs | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)txLatencyVOs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  txLatencyVIs = self->_txLatencyVIs;
  if (txLatencyVIs | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)txLatencyVIs isEqual:?])
    {
      goto LABEL_31;
    }
  }

  completions = self->_completions;
  if (completions | *(equalCopy + 3))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions isEqual:?])
    {
      goto LABEL_31;
    }
  }

  acCompletions = self->_acCompletions;
  if (acCompletions | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)acCompletions isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v16 = (*(equalCopy + 96) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_rssiValue != *(equalCopy + 13))
    {
      goto LABEL_31;
    }

    v16 = 1;
  }

LABEL_32:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v15 = 2654435761 * self->_role;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(NSString *)self->_hashID hash];
  v3 = [(NSMutableArray *)self->_rssis hash];
  v4 = [(NSMutableArray *)self->_packets hash];
  v5 = [(NSMutableArray *)self->_bytes hash];
  v6 = [(NSMutableArray *)self->_txLatencyBKs hash];
  v7 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v8 = [(NSMutableArray *)self->_txLatencyVOs hash];
  v9 = [(NSMutableArray *)self->_txLatencyVIs hash];
  v10 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions hash];
  v11 = [(NSMutableArray *)self->_acCompletions hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_rssiValue;
  }

  else
  {
    v12 = 0;
  }

  return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v89 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[24])
  {
    self->_role = fromCopy[12];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self setHashID:?];
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = *(v5 + 7);
  v7 = [v6 countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v78;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v78 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addRssi:*(*(&v77 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v8);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v11 = *(v5 + 5);
  v12 = [v11 countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v74;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v74 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addPackets:*(*(&v73 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v73 objects:v87 count:16];
    }

    while (v13);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v16 = *(v5 + 2);
  v17 = [v16 countByEnumeratingWithState:&v69 objects:v86 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addBytes:*(*(&v69 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v69 objects:v86 count:16];
    }

    while (v18);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v21 = *(v5 + 9);
  v22 = [v21 countByEnumeratingWithState:&v65 objects:v85 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v66;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v66 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyBK:*(*(&v65 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v65 objects:v85 count:16];
    }

    while (v23);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v26 = *(v5 + 8);
  v27 = [v26 countByEnumeratingWithState:&v61 objects:v84 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v62;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v62 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyBE:*(*(&v61 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v61 objects:v84 count:16];
    }

    while (v28);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = *(v5 + 11);
  v32 = [v31 countByEnumeratingWithState:&v57 objects:v83 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v58;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v58 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyVO:*(*(&v57 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v57 objects:v83 count:16];
    }

    while (v33);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v36 = *(v5 + 10);
  v37 = [v36 countByEnumeratingWithState:&v53 objects:v82 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v54;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addTxLatencyVI:*(*(&v53 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v53 objects:v82 count:16];
    }

    while (v38);
  }

  completions = self->_completions;
  v42 = *(v5 + 3);
  if (completions)
  {
    if (v42)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions mergeFrom:?];
    }
  }

  else if (v42)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self setCompletions:?];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v43 = *(v5 + 1);
  v44 = [v43 countByEnumeratingWithState:&v49 objects:v81 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v50;
    do
    {
      for (kk = 0; kk != v45; ++kk)
      {
        if (*v50 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityNANPeerStats *)self addAcCompletions:*(*(&v49 + 1) + 8 * kk), v49];
      }

      v45 = [v43 countByEnumeratingWithState:&v49 objects:v81 count:16];
    }

    while (v45);
  }

  if ((*(v5 + 96) & 2) != 0)
  {
    self->_rssiValue = *(v5 + 13);
    *&self->_has |= 2u;
  }

  v48 = *MEMORY[0x1E69E9840];
}

@end