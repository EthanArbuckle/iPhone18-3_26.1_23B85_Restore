@interface AWDWiFiNWActivityPeerStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRole:(id)a3;
- (int)role;
- (unint64_t)hash;
- (void)addAcCompletions:(id)a3;
- (void)addBytes:(id)a3;
- (void)addCca:(id)a3;
- (void)addPackets:(id)a3;
- (void)addRssi:(id)a3;
- (void)addRxLatencyTID0:(id)a3;
- (void)addRxLatencyTID1:(id)a3;
- (void)addRxLatencyTID2:(id)a3;
- (void)addRxLatencyTID3:(id)a3;
- (void)addRxLatencyTID4:(id)a3;
- (void)addRxLatencyTID5:(id)a3;
- (void)addRxLatencyTID6:(id)a3;
- (void)addRxLatencyTID7:(id)a3;
- (void)addSnr:(id)a3;
- (void)addTxLatencyBE:(id)a3;
- (void)addTxLatencyBK:(id)a3;
- (void)addTxLatencyVI:(id)a3;
- (void)addTxLatencyVO:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIbssCCA:(BOOL)a3;
- (void)setHasInterferenceCCA:(BOOL)a3;
- (void)setHasNfValue:(BOOL)a3;
- (void)setHasObssCCA:(BOOL)a3;
- (void)setHasOfdmDesense:(BOOL)a3;
- (void)setHasQbssCCA:(BOOL)a3;
- (void)setHasQbssSTACount:(BOOL)a3;
- (void)setHasRole:(BOOL)a3;
- (void)setHasRssiValue:(BOOL)a3;
- (void)setHasSnrValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiNWActivityPeerStats

- (void)dealloc
{
  [(AWDWiFiNWActivityPeerStats *)self setHashID:0];
  [(AWDWiFiNWActivityPeerStats *)self setRssis:0];
  [(AWDWiFiNWActivityPeerStats *)self setCcas:0];
  [(AWDWiFiNWActivityPeerStats *)self setSnrs:0];
  [(AWDWiFiNWActivityPeerStats *)self setPackets:0];
  [(AWDWiFiNWActivityPeerStats *)self setBytes:0];
  [(AWDWiFiNWActivityPeerStats *)self setTxLatencyBKs:0];
  [(AWDWiFiNWActivityPeerStats *)self setTxLatencyBEs:0];
  [(AWDWiFiNWActivityPeerStats *)self setTxLatencyVOs:0];
  [(AWDWiFiNWActivityPeerStats *)self setTxLatencyVIs:0];
  [(AWDWiFiNWActivityPeerStats *)self setCompletions:0];
  [(AWDWiFiNWActivityPeerStats *)self setAcCompletions:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID0s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID1s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID2s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID3s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID4s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID5s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID6s:0];
  [(AWDWiFiNWActivityPeerStats *)self setRxLatencyTID7s:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityPeerStats;
  [(AWDWiFiNWActivityPeerStats *)&v3 dealloc];
}

- (int)role
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_role;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRole:(BOOL)a3
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

- (int)StringAsRole:(id)a3
{
  if ([a3 isEqualToString:@"INFRA"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"LEGACYAWDL"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"LLWAWDL"])
  {
    return 2;
  }

  return 0;
}

- (void)addRssi:(id)a3
{
  rssis = self->_rssis;
  if (!rssis)
  {
    rssis = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rssis = rssis;
  }

  [(NSMutableArray *)rssis addObject:a3];
}

- (void)addCca:(id)a3
{
  ccas = self->_ccas;
  if (!ccas)
  {
    ccas = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_ccas = ccas;
  }

  [(NSMutableArray *)ccas addObject:a3];
}

- (void)addSnr:(id)a3
{
  snrs = self->_snrs;
  if (!snrs)
  {
    snrs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_snrs = snrs;
  }

  [(NSMutableArray *)snrs addObject:a3];
}

- (void)addPackets:(id)a3
{
  packets = self->_packets;
  if (!packets)
  {
    packets = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_packets = packets;
  }

  [(NSMutableArray *)packets addObject:a3];
}

- (void)addBytes:(id)a3
{
  bytes = self->_bytes;
  if (!bytes)
  {
    bytes = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_bytes = bytes;
  }

  [(NSMutableArray *)bytes addObject:a3];
}

- (void)addTxLatencyBK:(id)a3
{
  txLatencyBKs = self->_txLatencyBKs;
  if (!txLatencyBKs)
  {
    txLatencyBKs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txLatencyBKs = txLatencyBKs;
  }

  [(NSMutableArray *)txLatencyBKs addObject:a3];
}

- (void)addTxLatencyBE:(id)a3
{
  txLatencyBEs = self->_txLatencyBEs;
  if (!txLatencyBEs)
  {
    txLatencyBEs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txLatencyBEs = txLatencyBEs;
  }

  [(NSMutableArray *)txLatencyBEs addObject:a3];
}

- (void)addTxLatencyVO:(id)a3
{
  txLatencyVOs = self->_txLatencyVOs;
  if (!txLatencyVOs)
  {
    txLatencyVOs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txLatencyVOs = txLatencyVOs;
  }

  [(NSMutableArray *)txLatencyVOs addObject:a3];
}

- (void)addTxLatencyVI:(id)a3
{
  txLatencyVIs = self->_txLatencyVIs;
  if (!txLatencyVIs)
  {
    txLatencyVIs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txLatencyVIs = txLatencyVIs;
  }

  [(NSMutableArray *)txLatencyVIs addObject:a3];
}

- (void)addAcCompletions:(id)a3
{
  acCompletions = self->_acCompletions;
  if (!acCompletions)
  {
    acCompletions = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_acCompletions = acCompletions;
  }

  [(NSMutableArray *)acCompletions addObject:a3];
}

- (void)setHasRssiValue:(BOOL)a3
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

- (void)setHasSnrValue:(BOOL)a3
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

- (void)setHasNfValue:(BOOL)a3
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

- (void)setHasOfdmDesense:(BOOL)a3
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

- (void)setHasIbssCCA:(BOOL)a3
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

- (void)setHasObssCCA:(BOOL)a3
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

- (void)setHasInterferenceCCA:(BOOL)a3
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

- (void)setHasQbssCCA:(BOOL)a3
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

- (void)setHasQbssSTACount:(BOOL)a3
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

- (void)addRxLatencyTID0:(id)a3
{
  rxLatencyTID0s = self->_rxLatencyTID0s;
  if (!rxLatencyTID0s)
  {
    rxLatencyTID0s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID0s = rxLatencyTID0s;
  }

  [(NSMutableArray *)rxLatencyTID0s addObject:a3];
}

- (void)addRxLatencyTID1:(id)a3
{
  rxLatencyTID1s = self->_rxLatencyTID1s;
  if (!rxLatencyTID1s)
  {
    rxLatencyTID1s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID1s = rxLatencyTID1s;
  }

  [(NSMutableArray *)rxLatencyTID1s addObject:a3];
}

- (void)addRxLatencyTID2:(id)a3
{
  rxLatencyTID2s = self->_rxLatencyTID2s;
  if (!rxLatencyTID2s)
  {
    rxLatencyTID2s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID2s = rxLatencyTID2s;
  }

  [(NSMutableArray *)rxLatencyTID2s addObject:a3];
}

- (void)addRxLatencyTID3:(id)a3
{
  rxLatencyTID3s = self->_rxLatencyTID3s;
  if (!rxLatencyTID3s)
  {
    rxLatencyTID3s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID3s = rxLatencyTID3s;
  }

  [(NSMutableArray *)rxLatencyTID3s addObject:a3];
}

- (void)addRxLatencyTID4:(id)a3
{
  rxLatencyTID4s = self->_rxLatencyTID4s;
  if (!rxLatencyTID4s)
  {
    rxLatencyTID4s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID4s = rxLatencyTID4s;
  }

  [(NSMutableArray *)rxLatencyTID4s addObject:a3];
}

- (void)addRxLatencyTID5:(id)a3
{
  rxLatencyTID5s = self->_rxLatencyTID5s;
  if (!rxLatencyTID5s)
  {
    rxLatencyTID5s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID5s = rxLatencyTID5s;
  }

  [(NSMutableArray *)rxLatencyTID5s addObject:a3];
}

- (void)addRxLatencyTID6:(id)a3
{
  rxLatencyTID6s = self->_rxLatencyTID6s;
  if (!rxLatencyTID6s)
  {
    rxLatencyTID6s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID6s = rxLatencyTID6s;
  }

  [(NSMutableArray *)rxLatencyTID6s addObject:a3];
}

- (void)addRxLatencyTID7:(id)a3
{
  rxLatencyTID7s = self->_rxLatencyTID7s;
  if (!rxLatencyTID7s)
  {
    rxLatencyTID7s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rxLatencyTID7s = rxLatencyTID7s;
  }

  [(NSMutableArray *)rxLatencyTID7s addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityPeerStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityPeerStats description](&v3, sel_description), -[AWDWiFiNWActivityPeerStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v209 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x100) != 0)
  {
    role = self->_role;
    if (role >= 3)
    {
      v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v5 = off_29EE332C8[role];
    }

    [v3 setObject:v5 forKey:@"role"];
  }

  hashID = self->_hashID;
  if (hashID)
  {
    [v3 setObject:hashID forKey:@"hashID"];
  }

  if ([(NSMutableArray *)self->_rssis count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rssis, "count")}];
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    rssis = self->_rssis;
    v9 = [(NSMutableArray *)rssis countByEnumeratingWithState:&v187 objects:v208 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v188;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v188 != v11)
          {
            objc_enumerationMutation(rssis);
          }

          [v7 addObject:{objc_msgSend(*(*(&v187 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)rssis countByEnumeratingWithState:&v187 objects:v208 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"rssi"];
  }

  if ([(NSMutableArray *)self->_ccas count])
  {
    v13 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_ccas, "count")}];
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    ccas = self->_ccas;
    v15 = [(NSMutableArray *)ccas countByEnumeratingWithState:&v183 objects:v207 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v184;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v184 != v17)
          {
            objc_enumerationMutation(ccas);
          }

          [v13 addObject:{objc_msgSend(*(*(&v183 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v16 = [(NSMutableArray *)ccas countByEnumeratingWithState:&v183 objects:v207 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"cca"];
  }

  if ([(NSMutableArray *)self->_snrs count])
  {
    v19 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_snrs, "count")}];
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    snrs = self->_snrs;
    v21 = [(NSMutableArray *)snrs countByEnumeratingWithState:&v179 objects:v206 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v180;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v180 != v23)
          {
            objc_enumerationMutation(snrs);
          }

          [v19 addObject:{objc_msgSend(*(*(&v179 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v22 = [(NSMutableArray *)snrs countByEnumeratingWithState:&v179 objects:v206 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"snr"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v25 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    packets = self->_packets;
    v27 = [(NSMutableArray *)packets countByEnumeratingWithState:&v175 objects:v205 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v176;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v176 != v29)
          {
            objc_enumerationMutation(packets);
          }

          [v25 addObject:{objc_msgSend(*(*(&v175 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v28 = [(NSMutableArray *)packets countByEnumeratingWithState:&v175 objects:v205 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v31 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    bytes = self->_bytes;
    v33 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v171 objects:v204 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v172;
      do
      {
        for (n = 0; n != v34; ++n)
        {
          if (*v172 != v35)
          {
            objc_enumerationMutation(bytes);
          }

          [v31 addObject:{objc_msgSend(*(*(&v171 + 1) + 8 * n), "dictionaryRepresentation")}];
        }

        v34 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v171 objects:v204 count:16];
      }

      while (v34);
    }

    [v3 setObject:v31 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v37 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    txLatencyBKs = self->_txLatencyBKs;
    v39 = [(NSMutableArray *)txLatencyBKs countByEnumeratingWithState:&v167 objects:v203 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v168;
      do
      {
        for (ii = 0; ii != v40; ++ii)
        {
          if (*v168 != v41)
          {
            objc_enumerationMutation(txLatencyBKs);
          }

          [v37 addObject:{objc_msgSend(*(*(&v167 + 1) + 8 * ii), "dictionaryRepresentation")}];
        }

        v40 = [(NSMutableArray *)txLatencyBKs countByEnumeratingWithState:&v167 objects:v203 count:16];
      }

      while (v40);
    }

    [v3 setObject:v37 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v43 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    txLatencyBEs = self->_txLatencyBEs;
    v45 = [(NSMutableArray *)txLatencyBEs countByEnumeratingWithState:&v163 objects:v202 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v164;
      do
      {
        for (jj = 0; jj != v46; ++jj)
        {
          if (*v164 != v47)
          {
            objc_enumerationMutation(txLatencyBEs);
          }

          [v43 addObject:{objc_msgSend(*(*(&v163 + 1) + 8 * jj), "dictionaryRepresentation")}];
        }

        v46 = [(NSMutableArray *)txLatencyBEs countByEnumeratingWithState:&v163 objects:v202 count:16];
      }

      while (v46);
    }

    [v3 setObject:v43 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v49 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    txLatencyVOs = self->_txLatencyVOs;
    v51 = [(NSMutableArray *)txLatencyVOs countByEnumeratingWithState:&v159 objects:v201 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v160;
      do
      {
        for (kk = 0; kk != v52; ++kk)
        {
          if (*v160 != v53)
          {
            objc_enumerationMutation(txLatencyVOs);
          }

          [v49 addObject:{objc_msgSend(*(*(&v159 + 1) + 8 * kk), "dictionaryRepresentation")}];
        }

        v52 = [(NSMutableArray *)txLatencyVOs countByEnumeratingWithState:&v159 objects:v201 count:16];
      }

      while (v52);
    }

    [v3 setObject:v49 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v55 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    txLatencyVIs = self->_txLatencyVIs;
    v57 = [(NSMutableArray *)txLatencyVIs countByEnumeratingWithState:&v155 objects:v200 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v156;
      do
      {
        for (mm = 0; mm != v58; ++mm)
        {
          if (*v156 != v59)
          {
            objc_enumerationMutation(txLatencyVIs);
          }

          [v55 addObject:{objc_msgSend(*(*(&v155 + 1) + 8 * mm), "dictionaryRepresentation")}];
        }

        v58 = [(NSMutableArray *)txLatencyVIs countByEnumeratingWithState:&v155 objects:v200 count:16];
      }

      while (v58);
    }

    [v3 setObject:v55 forKey:@"txLatencyVI"];
  }

  completions = self->_completions;
  if (completions)
  {
    [v3 setObject:-[AWDWiFiNWActivityTxCompletions dictionaryRepresentation](completions forKey:{"dictionaryRepresentation"), @"completions"}];
  }

  if ([(NSMutableArray *)self->_acCompletions count])
  {
    v62 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_acCompletions, "count")}];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    acCompletions = self->_acCompletions;
    v64 = [(NSMutableArray *)acCompletions countByEnumeratingWithState:&v151 objects:v199 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v152;
      do
      {
        for (nn = 0; nn != v65; ++nn)
        {
          if (*v152 != v66)
          {
            objc_enumerationMutation(acCompletions);
          }

          [v62 addObject:{objc_msgSend(*(*(&v151 + 1) + 8 * nn), "dictionaryRepresentation")}];
        }

        v65 = [(NSMutableArray *)acCompletions countByEnumeratingWithState:&v151 objects:v199 count:16];
      }

      while (v65);
    }

    [v3 setObject:v62 forKey:@"acCompletions"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_rssiValue), @"rssiValue"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_102:
      if ((has & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_186;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_102;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_snrValue), @"snrValue"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_103:
    if ((has & 8) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_187;
  }

LABEL_186:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaValue), @"ccaValue"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_104:
    if ((has & 0x20) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_188;
  }

LABEL_187:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_nfValue), @"nfValue"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_105:
    if ((has & 2) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_189;
  }

LABEL_188:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ofdmDesense), @"ofdmDesense"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_106:
    if ((has & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_190;
  }

LABEL_189:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ibssCCA), @"ibssCCA"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_107:
    if ((has & 4) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_191;
  }

LABEL_190:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_obssCCA), @"obssCCA"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_108:
    if ((has & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_192;
  }

LABEL_191:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_interferenceCCA), @"interferenceCCA"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_109:
    if ((has & 0x80) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

LABEL_192:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_qbssCCA), @"qbssCCA"}];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_110:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_qbssSTACount), @"qbssSTACount"}];
  }

LABEL_111:
  if ([(NSMutableArray *)self->_rxLatencyTID0s count])
  {
    v69 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID0s, "count")}];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    rxLatencyTID0s = self->_rxLatencyTID0s;
    v71 = [(NSMutableArray *)rxLatencyTID0s countByEnumeratingWithState:&v147 objects:v198 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v148;
      do
      {
        for (i1 = 0; i1 != v72; ++i1)
        {
          if (*v148 != v73)
          {
            objc_enumerationMutation(rxLatencyTID0s);
          }

          [v69 addObject:{objc_msgSend(*(*(&v147 + 1) + 8 * i1), "dictionaryRepresentation")}];
        }

        v72 = [(NSMutableArray *)rxLatencyTID0s countByEnumeratingWithState:&v147 objects:v198 count:16];
      }

      while (v72);
    }

    [v3 setObject:v69 forKey:@"rxLatencyTID0"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID1s count])
  {
    v75 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID1s, "count")}];
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    rxLatencyTID1s = self->_rxLatencyTID1s;
    v77 = [(NSMutableArray *)rxLatencyTID1s countByEnumeratingWithState:&v143 objects:v197 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v144;
      do
      {
        for (i2 = 0; i2 != v78; ++i2)
        {
          if (*v144 != v79)
          {
            objc_enumerationMutation(rxLatencyTID1s);
          }

          [v75 addObject:{objc_msgSend(*(*(&v143 + 1) + 8 * i2), "dictionaryRepresentation")}];
        }

        v78 = [(NSMutableArray *)rxLatencyTID1s countByEnumeratingWithState:&v143 objects:v197 count:16];
      }

      while (v78);
    }

    [v3 setObject:v75 forKey:@"rxLatencyTID1"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID2s count])
  {
    v81 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID2s, "count")}];
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    rxLatencyTID2s = self->_rxLatencyTID2s;
    v83 = [(NSMutableArray *)rxLatencyTID2s countByEnumeratingWithState:&v139 objects:v196 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v140;
      do
      {
        for (i3 = 0; i3 != v84; ++i3)
        {
          if (*v140 != v85)
          {
            objc_enumerationMutation(rxLatencyTID2s);
          }

          [v81 addObject:{objc_msgSend(*(*(&v139 + 1) + 8 * i3), "dictionaryRepresentation")}];
        }

        v84 = [(NSMutableArray *)rxLatencyTID2s countByEnumeratingWithState:&v139 objects:v196 count:16];
      }

      while (v84);
    }

    [v3 setObject:v81 forKey:@"rxLatencyTID2"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID3s count])
  {
    v87 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID3s, "count")}];
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    rxLatencyTID3s = self->_rxLatencyTID3s;
    v89 = [(NSMutableArray *)rxLatencyTID3s countByEnumeratingWithState:&v135 objects:v195 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v136;
      do
      {
        for (i4 = 0; i4 != v90; ++i4)
        {
          if (*v136 != v91)
          {
            objc_enumerationMutation(rxLatencyTID3s);
          }

          [v87 addObject:{objc_msgSend(*(*(&v135 + 1) + 8 * i4), "dictionaryRepresentation")}];
        }

        v90 = [(NSMutableArray *)rxLatencyTID3s countByEnumeratingWithState:&v135 objects:v195 count:16];
      }

      while (v90);
    }

    [v3 setObject:v87 forKey:@"rxLatencyTID3"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID4s count])
  {
    v93 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID4s, "count")}];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    rxLatencyTID4s = self->_rxLatencyTID4s;
    v95 = [(NSMutableArray *)rxLatencyTID4s countByEnumeratingWithState:&v131 objects:v194 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v132;
      do
      {
        for (i5 = 0; i5 != v96; ++i5)
        {
          if (*v132 != v97)
          {
            objc_enumerationMutation(rxLatencyTID4s);
          }

          [v93 addObject:{objc_msgSend(*(*(&v131 + 1) + 8 * i5), "dictionaryRepresentation")}];
        }

        v96 = [(NSMutableArray *)rxLatencyTID4s countByEnumeratingWithState:&v131 objects:v194 count:16];
      }

      while (v96);
    }

    [v3 setObject:v93 forKey:@"rxLatencyTID4"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID5s count])
  {
    v99 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID5s, "count")}];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    rxLatencyTID5s = self->_rxLatencyTID5s;
    v101 = [(NSMutableArray *)rxLatencyTID5s countByEnumeratingWithState:&v127 objects:v193 count:16];
    if (v101)
    {
      v102 = v101;
      v103 = *v128;
      do
      {
        for (i6 = 0; i6 != v102; ++i6)
        {
          if (*v128 != v103)
          {
            objc_enumerationMutation(rxLatencyTID5s);
          }

          [v99 addObject:{objc_msgSend(*(*(&v127 + 1) + 8 * i6), "dictionaryRepresentation")}];
        }

        v102 = [(NSMutableArray *)rxLatencyTID5s countByEnumeratingWithState:&v127 objects:v193 count:16];
      }

      while (v102);
    }

    [v3 setObject:v99 forKey:@"rxLatencyTID5"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID6s count])
  {
    v105 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID6s, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    rxLatencyTID6s = self->_rxLatencyTID6s;
    v107 = [(NSMutableArray *)rxLatencyTID6s countByEnumeratingWithState:&v123 objects:v192 count:16];
    if (v107)
    {
      v108 = v107;
      v109 = *v124;
      do
      {
        for (i7 = 0; i7 != v108; ++i7)
        {
          if (*v124 != v109)
          {
            objc_enumerationMutation(rxLatencyTID6s);
          }

          [v105 addObject:{objc_msgSend(*(*(&v123 + 1) + 8 * i7), "dictionaryRepresentation")}];
        }

        v108 = [(NSMutableArray *)rxLatencyTID6s countByEnumeratingWithState:&v123 objects:v192 count:16];
      }

      while (v108);
    }

    [v3 setObject:v105 forKey:@"rxLatencyTID6"];
  }

  if ([(NSMutableArray *)self->_rxLatencyTID7s count])
  {
    v111 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rxLatencyTID7s, "count")}];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    rxLatencyTID7s = self->_rxLatencyTID7s;
    v113 = [(NSMutableArray *)rxLatencyTID7s countByEnumeratingWithState:&v119 objects:v191 count:16];
    if (v113)
    {
      v114 = v113;
      v115 = *v120;
      do
      {
        for (i8 = 0; i8 != v114; ++i8)
        {
          if (*v120 != v115)
          {
            objc_enumerationMutation(rxLatencyTID7s);
          }

          [v111 addObject:{objc_msgSend(*(*(&v119 + 1) + 8 * i8), "dictionaryRepresentation")}];
        }

        v114 = [(NSMutableArray *)rxLatencyTID7s countByEnumeratingWithState:&v119 objects:v191 count:16];
      }

      while (v114);
    }

    [v3 setObject:v111 forKey:@"rxLatencyTID7"];
  }

  v117 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v215 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 0x100) != 0)
  {
    role = self->_role;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hashID)
  {
    PBDataWriterWriteStringField();
  }

  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  rssis = self->_rssis;
  v6 = [(NSMutableArray *)rssis countByEnumeratingWithState:&v193 objects:v214 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v194;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v194 != v8)
        {
          objc_enumerationMutation(rssis);
        }

        v10 = *(*(&v193 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)rssis countByEnumeratingWithState:&v193 objects:v214 count:16];
    }

    while (v7);
  }

  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  ccas = self->_ccas;
  v12 = [(NSMutableArray *)ccas countByEnumeratingWithState:&v189 objects:v213 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v190;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v190 != v14)
        {
          objc_enumerationMutation(ccas);
        }

        v16 = *(*(&v189 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)ccas countByEnumeratingWithState:&v189 objects:v213 count:16];
    }

    while (v13);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  snrs = self->_snrs;
  v18 = [(NSMutableArray *)snrs countByEnumeratingWithState:&v185 objects:v212 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v186;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v186 != v20)
        {
          objc_enumerationMutation(snrs);
        }

        v22 = *(*(&v185 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)snrs countByEnumeratingWithState:&v185 objects:v212 count:16];
    }

    while (v19);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  packets = self->_packets;
  v24 = [(NSMutableArray *)packets countByEnumeratingWithState:&v181 objects:v211 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v182;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v182 != v26)
        {
          objc_enumerationMutation(packets);
        }

        v28 = *(*(&v181 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)packets countByEnumeratingWithState:&v181 objects:v211 count:16];
    }

    while (v25);
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  bytes = self->_bytes;
  v30 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v177 objects:v210 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v178;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v178 != v32)
        {
          objc_enumerationMutation(bytes);
        }

        v34 = *(*(&v177 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v177 objects:v210 count:16];
    }

    while (v31);
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  txLatencyBKs = self->_txLatencyBKs;
  v36 = [(NSMutableArray *)txLatencyBKs countByEnumeratingWithState:&v173 objects:v209 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v174;
    do
    {
      for (ii = 0; ii != v37; ++ii)
      {
        if (*v174 != v38)
        {
          objc_enumerationMutation(txLatencyBKs);
        }

        v40 = *(*(&v173 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)txLatencyBKs countByEnumeratingWithState:&v173 objects:v209 count:16];
    }

    while (v37);
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  txLatencyBEs = self->_txLatencyBEs;
  v42 = [(NSMutableArray *)txLatencyBEs countByEnumeratingWithState:&v169 objects:v208 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v170;
    do
    {
      for (jj = 0; jj != v43; ++jj)
      {
        if (*v170 != v44)
        {
          objc_enumerationMutation(txLatencyBEs);
        }

        v46 = *(*(&v169 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v43 = [(NSMutableArray *)txLatencyBEs countByEnumeratingWithState:&v169 objects:v208 count:16];
    }

    while (v43);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  txLatencyVOs = self->_txLatencyVOs;
  v48 = [(NSMutableArray *)txLatencyVOs countByEnumeratingWithState:&v165 objects:v207 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v166;
    do
    {
      for (kk = 0; kk != v49; ++kk)
      {
        if (*v166 != v50)
        {
          objc_enumerationMutation(txLatencyVOs);
        }

        v52 = *(*(&v165 + 1) + 8 * kk);
        PBDataWriterWriteSubmessage();
      }

      v49 = [(NSMutableArray *)txLatencyVOs countByEnumeratingWithState:&v165 objects:v207 count:16];
    }

    while (v49);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  txLatencyVIs = self->_txLatencyVIs;
  v54 = [(NSMutableArray *)txLatencyVIs countByEnumeratingWithState:&v161 objects:v206 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v162;
    do
    {
      for (mm = 0; mm != v55; ++mm)
      {
        if (*v162 != v56)
        {
          objc_enumerationMutation(txLatencyVIs);
        }

        v58 = *(*(&v161 + 1) + 8 * mm);
        PBDataWriterWriteSubmessage();
      }

      v55 = [(NSMutableArray *)txLatencyVIs countByEnumeratingWithState:&v161 objects:v206 count:16];
    }

    while (v55);
  }

  if (self->_completions)
  {
    PBDataWriterWriteSubmessage();
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  acCompletions = self->_acCompletions;
  v60 = [(NSMutableArray *)acCompletions countByEnumeratingWithState:&v157 objects:v205 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v158;
    do
    {
      for (nn = 0; nn != v61; ++nn)
      {
        if (*v158 != v62)
        {
          objc_enumerationMutation(acCompletions);
        }

        v64 = *(*(&v157 + 1) + 8 * nn);
        PBDataWriterWriteSubmessage();
      }

      v61 = [(NSMutableArray *)acCompletions countByEnumeratingWithState:&v157 objects:v205 count:16];
    }

    while (v61);
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    rssiValue = self->_rssiValue;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_79:
      if ((has & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_147;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_79;
  }

  snrValue = self->_snrValue;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_80:
    if ((has & 8) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_148;
  }

LABEL_147:
  ccaValue = self->_ccaValue;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_81:
    if ((has & 0x20) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_149;
  }

LABEL_148:
  nfValue = self->_nfValue;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_82:
    if ((has & 2) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_150;
  }

LABEL_149:
  ofdmDesense = self->_ofdmDesense;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_83:
    if ((has & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_151;
  }

LABEL_150:
  ibssCCA = self->_ibssCCA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_84:
    if ((has & 4) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_152;
  }

LABEL_151:
  obssCCA = self->_obssCCA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_85:
    if ((has & 0x40) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_153;
  }

LABEL_152:
  interferenceCCA = self->_interferenceCCA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_86:
    if ((has & 0x80) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_153:
  qbssCCA = self->_qbssCCA;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_87:
    qbssSTACount = self->_qbssSTACount;
    PBDataWriterWriteUint32Field();
  }

LABEL_88:
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  rxLatencyTID0s = self->_rxLatencyTID0s;
  v68 = [(NSMutableArray *)rxLatencyTID0s countByEnumeratingWithState:&v153 objects:v204 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v154;
    do
    {
      for (i1 = 0; i1 != v69; ++i1)
      {
        if (*v154 != v70)
        {
          objc_enumerationMutation(rxLatencyTID0s);
        }

        v72 = *(*(&v153 + 1) + 8 * i1);
        PBDataWriterWriteSubmessage();
      }

      v69 = [(NSMutableArray *)rxLatencyTID0s countByEnumeratingWithState:&v153 objects:v204 count:16];
    }

    while (v69);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  rxLatencyTID1s = self->_rxLatencyTID1s;
  v74 = [(NSMutableArray *)rxLatencyTID1s countByEnumeratingWithState:&v149 objects:v203 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v150;
    do
    {
      for (i2 = 0; i2 != v75; ++i2)
      {
        if (*v150 != v76)
        {
          objc_enumerationMutation(rxLatencyTID1s);
        }

        v78 = *(*(&v149 + 1) + 8 * i2);
        PBDataWriterWriteSubmessage();
      }

      v75 = [(NSMutableArray *)rxLatencyTID1s countByEnumeratingWithState:&v149 objects:v203 count:16];
    }

    while (v75);
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  rxLatencyTID2s = self->_rxLatencyTID2s;
  v80 = [(NSMutableArray *)rxLatencyTID2s countByEnumeratingWithState:&v145 objects:v202 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v146;
    do
    {
      for (i3 = 0; i3 != v81; ++i3)
      {
        if (*v146 != v82)
        {
          objc_enumerationMutation(rxLatencyTID2s);
        }

        v84 = *(*(&v145 + 1) + 8 * i3);
        PBDataWriterWriteSubmessage();
      }

      v81 = [(NSMutableArray *)rxLatencyTID2s countByEnumeratingWithState:&v145 objects:v202 count:16];
    }

    while (v81);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  rxLatencyTID3s = self->_rxLatencyTID3s;
  v86 = [(NSMutableArray *)rxLatencyTID3s countByEnumeratingWithState:&v141 objects:v201 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v142;
    do
    {
      for (i4 = 0; i4 != v87; ++i4)
      {
        if (*v142 != v88)
        {
          objc_enumerationMutation(rxLatencyTID3s);
        }

        v90 = *(*(&v141 + 1) + 8 * i4);
        PBDataWriterWriteSubmessage();
      }

      v87 = [(NSMutableArray *)rxLatencyTID3s countByEnumeratingWithState:&v141 objects:v201 count:16];
    }

    while (v87);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  rxLatencyTID4s = self->_rxLatencyTID4s;
  v92 = [(NSMutableArray *)rxLatencyTID4s countByEnumeratingWithState:&v137 objects:v200 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v138;
    do
    {
      for (i5 = 0; i5 != v93; ++i5)
      {
        if (*v138 != v94)
        {
          objc_enumerationMutation(rxLatencyTID4s);
        }

        v96 = *(*(&v137 + 1) + 8 * i5);
        PBDataWriterWriteSubmessage();
      }

      v93 = [(NSMutableArray *)rxLatencyTID4s countByEnumeratingWithState:&v137 objects:v200 count:16];
    }

    while (v93);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  rxLatencyTID5s = self->_rxLatencyTID5s;
  v98 = [(NSMutableArray *)rxLatencyTID5s countByEnumeratingWithState:&v133 objects:v199 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v134;
    do
    {
      for (i6 = 0; i6 != v99; ++i6)
      {
        if (*v134 != v100)
        {
          objc_enumerationMutation(rxLatencyTID5s);
        }

        v102 = *(*(&v133 + 1) + 8 * i6);
        PBDataWriterWriteSubmessage();
      }

      v99 = [(NSMutableArray *)rxLatencyTID5s countByEnumeratingWithState:&v133 objects:v199 count:16];
    }

    while (v99);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  rxLatencyTID6s = self->_rxLatencyTID6s;
  v104 = [(NSMutableArray *)rxLatencyTID6s countByEnumeratingWithState:&v129 objects:v198 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v130;
    do
    {
      for (i7 = 0; i7 != v105; ++i7)
      {
        if (*v130 != v106)
        {
          objc_enumerationMutation(rxLatencyTID6s);
        }

        v108 = *(*(&v129 + 1) + 8 * i7);
        PBDataWriterWriteSubmessage();
      }

      v105 = [(NSMutableArray *)rxLatencyTID6s countByEnumeratingWithState:&v129 objects:v198 count:16];
    }

    while (v105);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  rxLatencyTID7s = self->_rxLatencyTID7s;
  v110 = [(NSMutableArray *)rxLatencyTID7s countByEnumeratingWithState:&v125 objects:v197 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v126;
    do
    {
      for (i8 = 0; i8 != v111; ++i8)
      {
        if (*v126 != v112)
        {
          objc_enumerationMutation(rxLatencyTID7s);
        }

        v114 = *(*(&v125 + 1) + 8 * i8);
        PBDataWriterWriteSubmessage();
      }

      v111 = [(NSMutableArray *)rxLatencyTID7s countByEnumeratingWithState:&v125 objects:v197 count:16];
    }

    while (v111);
  }

  v115 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x100) != 0)
  {
    *(a3 + 24) = self->_role;
    *(a3 + 112) |= 0x100u;
  }

  if (self->_hashID)
  {
    [a3 setHashID:?];
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rssisCount])
  {
    [a3 clearRssis];
    v5 = [(AWDWiFiNWActivityPeerStats *)self rssisCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addRssi:{-[AWDWiFiNWActivityPeerStats rssiAtIndex:](self, "rssiAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self ccasCount])
  {
    [a3 clearCcas];
    v8 = [(AWDWiFiNWActivityPeerStats *)self ccasCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addCca:{-[AWDWiFiNWActivityPeerStats ccaAtIndex:](self, "ccaAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self snrsCount])
  {
    [a3 clearSnrs];
    v11 = [(AWDWiFiNWActivityPeerStats *)self snrsCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [a3 addSnr:{-[AWDWiFiNWActivityPeerStats snrAtIndex:](self, "snrAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self packetsCount])
  {
    [a3 clearPackets];
    v14 = [(AWDWiFiNWActivityPeerStats *)self packetsCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [a3 addPackets:{-[AWDWiFiNWActivityPeerStats packetsAtIndex:](self, "packetsAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self bytesCount])
  {
    [a3 clearBytes];
    v17 = [(AWDWiFiNWActivityPeerStats *)self bytesCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [a3 addBytes:{-[AWDWiFiNWActivityPeerStats bytesAtIndex:](self, "bytesAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self txLatencyBKsCount])
  {
    [a3 clearTxLatencyBKs];
    v20 = [(AWDWiFiNWActivityPeerStats *)self txLatencyBKsCount];
    if (v20)
    {
      v21 = v20;
      for (ii = 0; ii != v21; ++ii)
      {
        [a3 addTxLatencyBK:{-[AWDWiFiNWActivityPeerStats txLatencyBKAtIndex:](self, "txLatencyBKAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self txLatencyBEsCount])
  {
    [a3 clearTxLatencyBEs];
    v23 = [(AWDWiFiNWActivityPeerStats *)self txLatencyBEsCount];
    if (v23)
    {
      v24 = v23;
      for (jj = 0; jj != v24; ++jj)
      {
        [a3 addTxLatencyBE:{-[AWDWiFiNWActivityPeerStats txLatencyBEAtIndex:](self, "txLatencyBEAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self txLatencyVOsCount])
  {
    [a3 clearTxLatencyVOs];
    v26 = [(AWDWiFiNWActivityPeerStats *)self txLatencyVOsCount];
    if (v26)
    {
      v27 = v26;
      for (kk = 0; kk != v27; ++kk)
      {
        [a3 addTxLatencyVO:{-[AWDWiFiNWActivityPeerStats txLatencyVOAtIndex:](self, "txLatencyVOAtIndex:", kk)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self txLatencyVIsCount])
  {
    [a3 clearTxLatencyVIs];
    v29 = [(AWDWiFiNWActivityPeerStats *)self txLatencyVIsCount];
    if (v29)
    {
      v30 = v29;
      for (mm = 0; mm != v30; ++mm)
      {
        [a3 addTxLatencyVI:{-[AWDWiFiNWActivityPeerStats txLatencyVIAtIndex:](self, "txLatencyVIAtIndex:", mm)}];
      }
    }
  }

  if (self->_completions)
  {
    [a3 setCompletions:?];
  }

  if ([(AWDWiFiNWActivityPeerStats *)self acCompletionsCount])
  {
    [a3 clearAcCompletions];
    v32 = [(AWDWiFiNWActivityPeerStats *)self acCompletionsCount];
    if (v32)
    {
      v33 = v32;
      for (nn = 0; nn != v33; ++nn)
      {
        [a3 addAcCompletions:{-[AWDWiFiNWActivityPeerStats acCompletionsAtIndex:](self, "acCompletionsAtIndex:", nn)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(a3 + 25) = self->_rssiValue;
    *(a3 + 112) |= 0x200u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_49:
      if ((has & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_93;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_49;
  }

  *(a3 + 44) = self->_snrValue;
  *(a3 + 112) |= 0x400u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_50:
    if ((has & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(a3 + 6) = self->_ccaValue;
  *(a3 + 112) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_51:
    if ((has & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(a3 + 16) = self->_nfValue;
  *(a3 + 112) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_52:
    if ((has & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a3 + 18) = self->_ofdmDesense;
  *(a3 + 112) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_53:
    if ((has & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a3 + 14) = self->_ibssCCA;
  *(a3 + 112) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_54:
    if ((has & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a3 + 17) = self->_obssCCA;
  *(a3 + 112) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_55:
    if ((has & 0x40) == 0)
    {
      goto LABEL_56;
    }

LABEL_99:
    *(a3 + 22) = self->_qbssCCA;
    *(a3 + 112) |= 0x40u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_98:
  *(a3 + 15) = self->_interferenceCCA;
  *(a3 + 112) |= 4u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_99;
  }

LABEL_56:
  if ((has & 0x80) != 0)
  {
LABEL_57:
    *(a3 + 23) = self->_qbssSTACount;
    *(a3 + 112) |= 0x80u;
  }

LABEL_58:
  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID0sCount])
  {
    [a3 clearRxLatencyTID0s];
    v36 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID0sCount];
    if (v36)
    {
      v37 = v36;
      for (i1 = 0; i1 != v37; ++i1)
      {
        [a3 addRxLatencyTID0:{-[AWDWiFiNWActivityPeerStats rxLatencyTID0AtIndex:](self, "rxLatencyTID0AtIndex:", i1)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID1sCount])
  {
    [a3 clearRxLatencyTID1s];
    v39 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID1sCount];
    if (v39)
    {
      v40 = v39;
      for (i2 = 0; i2 != v40; ++i2)
      {
        [a3 addRxLatencyTID1:{-[AWDWiFiNWActivityPeerStats rxLatencyTID1AtIndex:](self, "rxLatencyTID1AtIndex:", i2)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID2sCount])
  {
    [a3 clearRxLatencyTID2s];
    v42 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID2sCount];
    if (v42)
    {
      v43 = v42;
      for (i3 = 0; i3 != v43; ++i3)
      {
        [a3 addRxLatencyTID2:{-[AWDWiFiNWActivityPeerStats rxLatencyTID2AtIndex:](self, "rxLatencyTID2AtIndex:", i3)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID3sCount])
  {
    [a3 clearRxLatencyTID3s];
    v45 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID3sCount];
    if (v45)
    {
      v46 = v45;
      for (i4 = 0; i4 != v46; ++i4)
      {
        [a3 addRxLatencyTID3:{-[AWDWiFiNWActivityPeerStats rxLatencyTID3AtIndex:](self, "rxLatencyTID3AtIndex:", i4)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID4sCount])
  {
    [a3 clearRxLatencyTID4s];
    v48 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID4sCount];
    if (v48)
    {
      v49 = v48;
      for (i5 = 0; i5 != v49; ++i5)
      {
        [a3 addRxLatencyTID4:{-[AWDWiFiNWActivityPeerStats rxLatencyTID4AtIndex:](self, "rxLatencyTID4AtIndex:", i5)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID5sCount])
  {
    [a3 clearRxLatencyTID5s];
    v51 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID5sCount];
    if (v51)
    {
      v52 = v51;
      for (i6 = 0; i6 != v52; ++i6)
      {
        [a3 addRxLatencyTID5:{-[AWDWiFiNWActivityPeerStats rxLatencyTID5AtIndex:](self, "rxLatencyTID5AtIndex:", i6)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID6sCount])
  {
    [a3 clearRxLatencyTID6s];
    v54 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID6sCount];
    if (v54)
    {
      v55 = v54;
      for (i7 = 0; i7 != v55; ++i7)
      {
        [a3 addRxLatencyTID6:{-[AWDWiFiNWActivityPeerStats rxLatencyTID6AtIndex:](self, "rxLatencyTID6AtIndex:", i7)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityPeerStats *)self rxLatencyTID7sCount])
  {
    [a3 clearRxLatencyTID7s];
    v57 = [(AWDWiFiNWActivityPeerStats *)self rxLatencyTID7sCount];
    if (v57)
    {
      v58 = v57;
      for (i8 = 0; i8 != v58; ++i8)
      {
        [a3 addRxLatencyTID7:{-[AWDWiFiNWActivityPeerStats rxLatencyTID7AtIndex:](self, "rxLatencyTID7AtIndex:", i8)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v208 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 96) = self->_role;
    *(v5 + 224) |= 0x100u;
  }

  *(v6 + 48) = [(NSString *)self->_hashID copyWithZone:a3];
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  rssis = self->_rssis;
  v8 = [(NSMutableArray *)rssis countByEnumeratingWithState:&v186 objects:v207 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v187;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v187 != v10)
        {
          objc_enumerationMutation(rssis);
        }

        v12 = [*(*(&v186 + 1) + 8 * i) copyWithZone:a3];
        [v6 addRssi:v12];
      }

      v9 = [(NSMutableArray *)rssis countByEnumeratingWithState:&v186 objects:v207 count:16];
    }

    while (v9);
  }

  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  ccas = self->_ccas;
  v14 = [(NSMutableArray *)ccas countByEnumeratingWithState:&v182 objects:v206 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v183;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v183 != v16)
        {
          objc_enumerationMutation(ccas);
        }

        v18 = [*(*(&v182 + 1) + 8 * j) copyWithZone:a3];
        [v6 addCca:v18];
      }

      v15 = [(NSMutableArray *)ccas countByEnumeratingWithState:&v182 objects:v206 count:16];
    }

    while (v15);
  }

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  snrs = self->_snrs;
  v20 = [(NSMutableArray *)snrs countByEnumeratingWithState:&v178 objects:v205 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v179;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v179 != v22)
        {
          objc_enumerationMutation(snrs);
        }

        v24 = [*(*(&v178 + 1) + 8 * k) copyWithZone:a3];
        [v6 addSnr:v24];
      }

      v21 = [(NSMutableArray *)snrs countByEnumeratingWithState:&v178 objects:v205 count:16];
    }

    while (v21);
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  packets = self->_packets;
  v26 = [(NSMutableArray *)packets countByEnumeratingWithState:&v174 objects:v204 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v175;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v175 != v28)
        {
          objc_enumerationMutation(packets);
        }

        v30 = [*(*(&v174 + 1) + 8 * m) copyWithZone:a3];
        [v6 addPackets:v30];
      }

      v27 = [(NSMutableArray *)packets countByEnumeratingWithState:&v174 objects:v204 count:16];
    }

    while (v27);
  }

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  bytes = self->_bytes;
  v32 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v170 objects:v203 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v171;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v171 != v34)
        {
          objc_enumerationMutation(bytes);
        }

        v36 = [*(*(&v170 + 1) + 8 * n) copyWithZone:a3];
        [v6 addBytes:v36];
      }

      v33 = [(NSMutableArray *)bytes countByEnumeratingWithState:&v170 objects:v203 count:16];
    }

    while (v33);
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  txLatencyBKs = self->_txLatencyBKs;
  v38 = [(NSMutableArray *)txLatencyBKs countByEnumeratingWithState:&v166 objects:v202 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v167;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v167 != v40)
        {
          objc_enumerationMutation(txLatencyBKs);
        }

        v42 = [*(*(&v166 + 1) + 8 * ii) copyWithZone:a3];
        [v6 addTxLatencyBK:v42];
      }

      v39 = [(NSMutableArray *)txLatencyBKs countByEnumeratingWithState:&v166 objects:v202 count:16];
    }

    while (v39);
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  txLatencyBEs = self->_txLatencyBEs;
  v44 = [(NSMutableArray *)txLatencyBEs countByEnumeratingWithState:&v162 objects:v201 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v163;
    do
    {
      for (jj = 0; jj != v45; ++jj)
      {
        if (*v163 != v46)
        {
          objc_enumerationMutation(txLatencyBEs);
        }

        v48 = [*(*(&v162 + 1) + 8 * jj) copyWithZone:a3];
        [v6 addTxLatencyBE:v48];
      }

      v45 = [(NSMutableArray *)txLatencyBEs countByEnumeratingWithState:&v162 objects:v201 count:16];
    }

    while (v45);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  txLatencyVOs = self->_txLatencyVOs;
  v50 = [(NSMutableArray *)txLatencyVOs countByEnumeratingWithState:&v158 objects:v200 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v159;
    do
    {
      for (kk = 0; kk != v51; ++kk)
      {
        if (*v159 != v52)
        {
          objc_enumerationMutation(txLatencyVOs);
        }

        v54 = [*(*(&v158 + 1) + 8 * kk) copyWithZone:a3];
        [v6 addTxLatencyVO:v54];
      }

      v51 = [(NSMutableArray *)txLatencyVOs countByEnumeratingWithState:&v158 objects:v200 count:16];
    }

    while (v51);
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  txLatencyVIs = self->_txLatencyVIs;
  v56 = [(NSMutableArray *)txLatencyVIs countByEnumeratingWithState:&v154 objects:v199 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v155;
    do
    {
      for (mm = 0; mm != v57; ++mm)
      {
        if (*v155 != v58)
        {
          objc_enumerationMutation(txLatencyVIs);
        }

        v60 = [*(*(&v154 + 1) + 8 * mm) copyWithZone:a3];
        [v6 addTxLatencyVI:v60];
      }

      v57 = [(NSMutableArray *)txLatencyVIs countByEnumeratingWithState:&v154 objects:v199 count:16];
    }

    while (v57);
  }

  *(v6 + 40) = [(AWDWiFiNWActivityTxCompletions *)self->_completions copyWithZone:a3];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  acCompletions = self->_acCompletions;
  v62 = [(NSMutableArray *)acCompletions countByEnumeratingWithState:&v150 objects:v198 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v151;
    do
    {
      for (nn = 0; nn != v63; ++nn)
      {
        if (*v151 != v64)
        {
          objc_enumerationMutation(acCompletions);
        }

        v66 = [*(*(&v150 + 1) + 8 * nn) copyWithZone:a3];
        [v6 addAcCompletions:v66];
      }

      v63 = [(NSMutableArray *)acCompletions countByEnumeratingWithState:&v150 objects:v198 count:16];
    }

    while (v63);
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v6 + 100) = self->_rssiValue;
    *(v6 + 224) |= 0x200u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_75:
      if ((has & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_143;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_75;
  }

  *(v6 + 176) = self->_snrValue;
  *(v6 + 224) |= 0x400u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_76:
    if ((has & 8) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v6 + 24) = self->_ccaValue;
  *(v6 + 224) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_77:
    if ((has & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v6 + 64) = self->_nfValue;
  *(v6 + 224) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_78:
    if ((has & 2) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v6 + 72) = self->_ofdmDesense;
  *(v6 + 224) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_79:
    if ((has & 0x10) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v6 + 56) = self->_ibssCCA;
  *(v6 + 224) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_80:
    if ((has & 4) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v6 + 68) = self->_obssCCA;
  *(v6 + 224) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_81:
    if ((has & 0x40) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v6 + 60) = self->_interferenceCCA;
  *(v6 + 224) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_82:
    if ((has & 0x80) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_149:
  *(v6 + 88) = self->_qbssCCA;
  *(v6 + 224) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_83:
    *(v6 + 92) = self->_qbssSTACount;
    *(v6 + 224) |= 0x80u;
  }

LABEL_84:
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  rxLatencyTID0s = self->_rxLatencyTID0s;
  v69 = [(NSMutableArray *)rxLatencyTID0s countByEnumeratingWithState:&v146 objects:v197 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v147;
    do
    {
      for (i1 = 0; i1 != v70; ++i1)
      {
        if (*v147 != v71)
        {
          objc_enumerationMutation(rxLatencyTID0s);
        }

        v73 = [*(*(&v146 + 1) + 8 * i1) copyWithZone:a3];
        [v6 addRxLatencyTID0:v73];
      }

      v70 = [(NSMutableArray *)rxLatencyTID0s countByEnumeratingWithState:&v146 objects:v197 count:16];
    }

    while (v70);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  rxLatencyTID1s = self->_rxLatencyTID1s;
  v75 = [(NSMutableArray *)rxLatencyTID1s countByEnumeratingWithState:&v142 objects:v196 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v143;
    do
    {
      for (i2 = 0; i2 != v76; ++i2)
      {
        if (*v143 != v77)
        {
          objc_enumerationMutation(rxLatencyTID1s);
        }

        v79 = [*(*(&v142 + 1) + 8 * i2) copyWithZone:a3];
        [v6 addRxLatencyTID1:v79];
      }

      v76 = [(NSMutableArray *)rxLatencyTID1s countByEnumeratingWithState:&v142 objects:v196 count:16];
    }

    while (v76);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  rxLatencyTID2s = self->_rxLatencyTID2s;
  v81 = [(NSMutableArray *)rxLatencyTID2s countByEnumeratingWithState:&v138 objects:v195 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v139;
    do
    {
      for (i3 = 0; i3 != v82; ++i3)
      {
        if (*v139 != v83)
        {
          objc_enumerationMutation(rxLatencyTID2s);
        }

        v85 = [*(*(&v138 + 1) + 8 * i3) copyWithZone:a3];
        [v6 addRxLatencyTID2:v85];
      }

      v82 = [(NSMutableArray *)rxLatencyTID2s countByEnumeratingWithState:&v138 objects:v195 count:16];
    }

    while (v82);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  rxLatencyTID3s = self->_rxLatencyTID3s;
  v87 = [(NSMutableArray *)rxLatencyTID3s countByEnumeratingWithState:&v134 objects:v194 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v135;
    do
    {
      for (i4 = 0; i4 != v88; ++i4)
      {
        if (*v135 != v89)
        {
          objc_enumerationMutation(rxLatencyTID3s);
        }

        v91 = [*(*(&v134 + 1) + 8 * i4) copyWithZone:a3];
        [v6 addRxLatencyTID3:v91];
      }

      v88 = [(NSMutableArray *)rxLatencyTID3s countByEnumeratingWithState:&v134 objects:v194 count:16];
    }

    while (v88);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  rxLatencyTID4s = self->_rxLatencyTID4s;
  v93 = [(NSMutableArray *)rxLatencyTID4s countByEnumeratingWithState:&v130 objects:v193 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v131;
    do
    {
      for (i5 = 0; i5 != v94; ++i5)
      {
        if (*v131 != v95)
        {
          objc_enumerationMutation(rxLatencyTID4s);
        }

        v97 = [*(*(&v130 + 1) + 8 * i5) copyWithZone:a3];
        [v6 addRxLatencyTID4:v97];
      }

      v94 = [(NSMutableArray *)rxLatencyTID4s countByEnumeratingWithState:&v130 objects:v193 count:16];
    }

    while (v94);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  rxLatencyTID5s = self->_rxLatencyTID5s;
  v99 = [(NSMutableArray *)rxLatencyTID5s countByEnumeratingWithState:&v126 objects:v192 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v127;
    do
    {
      for (i6 = 0; i6 != v100; ++i6)
      {
        if (*v127 != v101)
        {
          objc_enumerationMutation(rxLatencyTID5s);
        }

        v103 = [*(*(&v126 + 1) + 8 * i6) copyWithZone:a3];
        [v6 addRxLatencyTID5:v103];
      }

      v100 = [(NSMutableArray *)rxLatencyTID5s countByEnumeratingWithState:&v126 objects:v192 count:16];
    }

    while (v100);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  rxLatencyTID6s = self->_rxLatencyTID6s;
  v105 = [(NSMutableArray *)rxLatencyTID6s countByEnumeratingWithState:&v122 objects:v191 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v123;
    do
    {
      for (i7 = 0; i7 != v106; ++i7)
      {
        if (*v123 != v107)
        {
          objc_enumerationMutation(rxLatencyTID6s);
        }

        v109 = [*(*(&v122 + 1) + 8 * i7) copyWithZone:a3];
        [v6 addRxLatencyTID6:v109];
      }

      v106 = [(NSMutableArray *)rxLatencyTID6s countByEnumeratingWithState:&v122 objects:v191 count:16];
    }

    while (v106);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  rxLatencyTID7s = self->_rxLatencyTID7s;
  v111 = [(NSMutableArray *)rxLatencyTID7s countByEnumeratingWithState:&v118 objects:v190 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v119;
    do
    {
      for (i8 = 0; i8 != v112; ++i8)
      {
        if (*v119 != v113)
        {
          objc_enumerationMutation(rxLatencyTID7s);
        }

        v115 = [*(*(&v118 + 1) + 8 * i8) copyWithZone:a3];
        [v6 addRxLatencyTID7:v115];
      }

      v112 = [(NSMutableArray *)rxLatencyTID7s countByEnumeratingWithState:&v118 objects:v190 count:16];
    }

    while (v112);
  }

  v116 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 112);
    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 112) & 0x100) == 0 || self->_role != *(a3 + 24))
      {
        goto LABEL_97;
      }
    }

    else if ((*(a3 + 112) & 0x100) != 0)
    {
LABEL_97:
      LOBYTE(v5) = 0;
      return v5;
    }

    hashID = self->_hashID;
    if (!(hashID | *(a3 + 6)) || (v5 = [(NSString *)hashID isEqual:?]) != 0)
    {
      rssis = self->_rssis;
      if (!(rssis | *(a3 + 13)) || (v5 = [(NSMutableArray *)rssis isEqual:?]) != 0)
      {
        ccas = self->_ccas;
        if (!(ccas | *(a3 + 4)) || (v5 = [(NSMutableArray *)ccas isEqual:?]) != 0)
        {
          snrs = self->_snrs;
          if (!(snrs | *(a3 + 23)) || (v5 = [(NSMutableArray *)snrs isEqual:?]) != 0)
          {
            packets = self->_packets;
            if (!(packets | *(a3 + 10)) || (v5 = [(NSMutableArray *)packets isEqual:?]) != 0)
            {
              bytes = self->_bytes;
              if (!(bytes | *(a3 + 2)) || (v5 = [(NSMutableArray *)bytes isEqual:?]) != 0)
              {
                txLatencyBKs = self->_txLatencyBKs;
                if (!(txLatencyBKs | *(a3 + 25)) || (v5 = [(NSMutableArray *)txLatencyBKs isEqual:?]) != 0)
                {
                  txLatencyBEs = self->_txLatencyBEs;
                  if (!(txLatencyBEs | *(a3 + 24)) || (v5 = [(NSMutableArray *)txLatencyBEs isEqual:?]) != 0)
                  {
                    txLatencyVOs = self->_txLatencyVOs;
                    if (!(txLatencyVOs | *(a3 + 27)) || (v5 = [(NSMutableArray *)txLatencyVOs isEqual:?]) != 0)
                    {
                      txLatencyVIs = self->_txLatencyVIs;
                      if (!(txLatencyVIs | *(a3 + 26)) || (v5 = [(NSMutableArray *)txLatencyVIs isEqual:?]) != 0)
                      {
                        completions = self->_completions;
                        if (!(completions | *(a3 + 5)) || (v5 = [(AWDWiFiNWActivityTxCompletions *)completions isEqual:?]) != 0)
                        {
                          acCompletions = self->_acCompletions;
                          if (!(acCompletions | *(a3 + 1)) || (v5 = [(NSMutableArray *)acCompletions isEqual:?]) != 0)
                          {
                            has = self->_has;
                            v20 = *(a3 + 112);
                            if ((has & 0x200) != 0)
                            {
                              if ((*(a3 + 112) & 0x200) == 0 || self->_rssiValue != *(a3 + 25))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((*(a3 + 112) & 0x200) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((*&self->_has & 0x400) != 0)
                            {
                              if ((*(a3 + 112) & 0x400) == 0 || self->_snrValue != *(a3 + 44))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((*(a3 + 112) & 0x400) != 0)
                            {
                              goto LABEL_97;
                            }

                            if (has)
                            {
                              if ((v20 & 1) == 0 || self->_ccaValue != *(a3 + 6))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if (v20)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 8) != 0)
                            {
                              if ((v20 & 8) == 0 || self->_nfValue != *(a3 + 16))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 8) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 0x20) != 0)
                            {
                              if ((v20 & 0x20) == 0 || self->_ofdmDesense != *(a3 + 18))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 0x20) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 2) != 0)
                            {
                              if ((v20 & 2) == 0 || self->_ibssCCA != *(a3 + 14))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 2) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 0x10) != 0)
                            {
                              if ((v20 & 0x10) == 0 || self->_obssCCA != *(a3 + 17))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 0x10) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 4) != 0)
                            {
                              if ((v20 & 4) == 0 || self->_interferenceCCA != *(a3 + 15))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 4) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 0x40) != 0)
                            {
                              if ((v20 & 0x40) == 0 || self->_qbssCCA != *(a3 + 22))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 0x40) != 0)
                            {
                              goto LABEL_97;
                            }

                            if ((has & 0x80) != 0)
                            {
                              if ((v20 & 0x80) == 0 || self->_qbssSTACount != *(a3 + 23))
                              {
                                goto LABEL_97;
                              }
                            }

                            else if ((v20 & 0x80) != 0)
                            {
                              goto LABEL_97;
                            }

                            rxLatencyTID0s = self->_rxLatencyTID0s;
                            if (!(rxLatencyTID0s | *(a3 + 14)) || (v5 = [(NSMutableArray *)rxLatencyTID0s isEqual:?]) != 0)
                            {
                              rxLatencyTID1s = self->_rxLatencyTID1s;
                              if (!(rxLatencyTID1s | *(a3 + 15)) || (v5 = [(NSMutableArray *)rxLatencyTID1s isEqual:?]) != 0)
                              {
                                rxLatencyTID2s = self->_rxLatencyTID2s;
                                if (!(rxLatencyTID2s | *(a3 + 16)) || (v5 = [(NSMutableArray *)rxLatencyTID2s isEqual:?]) != 0)
                                {
                                  rxLatencyTID3s = self->_rxLatencyTID3s;
                                  if (!(rxLatencyTID3s | *(a3 + 17)) || (v5 = [(NSMutableArray *)rxLatencyTID3s isEqual:?]) != 0)
                                  {
                                    rxLatencyTID4s = self->_rxLatencyTID4s;
                                    if (!(rxLatencyTID4s | *(a3 + 18)) || (v5 = [(NSMutableArray *)rxLatencyTID4s isEqual:?]) != 0)
                                    {
                                      rxLatencyTID5s = self->_rxLatencyTID5s;
                                      if (!(rxLatencyTID5s | *(a3 + 19)) || (v5 = [(NSMutableArray *)rxLatencyTID5s isEqual:?]) != 0)
                                      {
                                        rxLatencyTID6s = self->_rxLatencyTID6s;
                                        if (!(rxLatencyTID6s | *(a3 + 20)) || (v5 = [(NSMutableArray *)rxLatencyTID6s isEqual:?]) != 0)
                                        {
                                          rxLatencyTID7s = self->_rxLatencyTID7s;
                                          if (rxLatencyTID7s | *(a3 + 21))
                                          {

                                            LOBYTE(v5) = [(NSMutableArray *)rxLatencyTID7s isEqual:?];
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
  if ((*&self->_has & 0x100) != 0)
  {
    v35 = 2654435761 * self->_role;
  }

  else
  {
    v35 = 0;
  }

  v34 = [(NSString *)self->_hashID hash];
  v33 = [(NSMutableArray *)self->_rssis hash];
  v32 = [(NSMutableArray *)self->_ccas hash];
  v31 = [(NSMutableArray *)self->_snrs hash];
  v3 = [(NSMutableArray *)self->_packets hash];
  v4 = [(NSMutableArray *)self->_bytes hash];
  v5 = [(NSMutableArray *)self->_txLatencyBKs hash];
  v6 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v7 = [(NSMutableArray *)self->_txLatencyVOs hash];
  v8 = [(NSMutableArray *)self->_txLatencyVIs hash];
  v9 = [(AWDWiFiNWActivityTxCompletions *)self->_completions hash];
  v10 = [(NSMutableArray *)self->_acCompletions hash];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v12 = 2654435761 * self->_rssiValue;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_6:
      v13 = 2654435761 * self->_snrValue;
      if (has)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
  if (has)
  {
LABEL_7:
    v14 = 2654435761 * self->_ccaValue;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v15 = 2654435761 * self->_nfValue;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_ofdmDesense;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v16 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v17 = 2654435761 * self->_ibssCCA;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_obssCCA;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
  if ((has & 4) != 0)
  {
LABEL_12:
    v19 = 2654435761 * self->_interferenceCCA;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v20 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

LABEL_22:
  v19 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v20 = 2654435761 * self->_qbssCCA;
  if ((has & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  v21 = 2654435761 * self->_qbssSTACount;
LABEL_25:
  v22 = v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14;
  v23 = v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSMutableArray *)self->_rxLatencyTID0s hash];
  v24 = v23 ^ [(NSMutableArray *)self->_rxLatencyTID1s hash];
  v25 = v24 ^ [(NSMutableArray *)self->_rxLatencyTID2s hash];
  v26 = v25 ^ [(NSMutableArray *)self->_rxLatencyTID3s hash];
  v27 = v22 ^ v26 ^ [(NSMutableArray *)self->_rxLatencyTID4s hash];
  v28 = [(NSMutableArray *)self->_rxLatencyTID5s hash];
  v29 = v28 ^ [(NSMutableArray *)self->_rxLatencyTID6s hash];
  return v27 ^ v29 ^ [(NSMutableArray *)self->_rxLatencyTID7s hash];
}

- (void)mergeFrom:(id)a3
{
  v189 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 112) & 0x100) != 0)
  {
    self->_role = *(a3 + 24);
    *&self->_has |= 0x100u;
  }

  if (*(a3 + 6))
  {
    [(AWDWiFiNWActivityPeerStats *)self setHashID:?];
  }

  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v5 = *(a3 + 13);
  v6 = [v5 countByEnumeratingWithState:&v167 objects:v188 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v168;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v168 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRssi:*(*(&v167 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v167 objects:v188 count:16];
    }

    while (v7);
  }

  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v10 = *(a3 + 4);
  v11 = [v10 countByEnumeratingWithState:&v163 objects:v187 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v164;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v164 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDWiFiNWActivityPeerStats *)self addCca:*(*(&v163 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v163 objects:v187 count:16];
    }

    while (v12);
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v15 = *(a3 + 23);
  v16 = [v15 countByEnumeratingWithState:&v159 objects:v186 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v160;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v160 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDWiFiNWActivityPeerStats *)self addSnr:*(*(&v159 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v159 objects:v186 count:16];
    }

    while (v17);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v20 = *(a3 + 10);
  v21 = [v20 countByEnumeratingWithState:&v155 objects:v185 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v156;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v156 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDWiFiNWActivityPeerStats *)self addPackets:*(*(&v155 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v155 objects:v185 count:16];
    }

    while (v22);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v25 = *(a3 + 2);
  v26 = [v25 countByEnumeratingWithState:&v151 objects:v184 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v152;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v152 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(AWDWiFiNWActivityPeerStats *)self addBytes:*(*(&v151 + 1) + 8 * n)];
      }

      v27 = [v25 countByEnumeratingWithState:&v151 objects:v184 count:16];
    }

    while (v27);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v30 = *(a3 + 25);
  v31 = [v30 countByEnumeratingWithState:&v147 objects:v183 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v148;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v148 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(AWDWiFiNWActivityPeerStats *)self addTxLatencyBK:*(*(&v147 + 1) + 8 * ii)];
      }

      v32 = [v30 countByEnumeratingWithState:&v147 objects:v183 count:16];
    }

    while (v32);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v35 = *(a3 + 24);
  v36 = [v35 countByEnumeratingWithState:&v143 objects:v182 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v144;
    do
    {
      for (jj = 0; jj != v37; ++jj)
      {
        if (*v144 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [(AWDWiFiNWActivityPeerStats *)self addTxLatencyBE:*(*(&v143 + 1) + 8 * jj)];
      }

      v37 = [v35 countByEnumeratingWithState:&v143 objects:v182 count:16];
    }

    while (v37);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v40 = *(a3 + 27);
  v41 = [v40 countByEnumeratingWithState:&v139 objects:v181 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v140;
    do
    {
      for (kk = 0; kk != v42; ++kk)
      {
        if (*v140 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(AWDWiFiNWActivityPeerStats *)self addTxLatencyVO:*(*(&v139 + 1) + 8 * kk)];
      }

      v42 = [v40 countByEnumeratingWithState:&v139 objects:v181 count:16];
    }

    while (v42);
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v45 = *(a3 + 26);
  v46 = [v45 countByEnumeratingWithState:&v135 objects:v180 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v136;
    do
    {
      for (mm = 0; mm != v47; ++mm)
      {
        if (*v136 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(AWDWiFiNWActivityPeerStats *)self addTxLatencyVI:*(*(&v135 + 1) + 8 * mm)];
      }

      v47 = [v45 countByEnumeratingWithState:&v135 objects:v180 count:16];
    }

    while (v47);
  }

  completions = self->_completions;
  v51 = *(a3 + 5);
  if (completions)
  {
    if (v51)
    {
      [(AWDWiFiNWActivityTxCompletions *)completions mergeFrom:?];
    }
  }

  else if (v51)
  {
    [(AWDWiFiNWActivityPeerStats *)self setCompletions:?];
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v52 = *(a3 + 1);
  v53 = [v52 countByEnumeratingWithState:&v131 objects:v179 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v132;
    do
    {
      for (nn = 0; nn != v54; ++nn)
      {
        if (*v132 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [(AWDWiFiNWActivityPeerStats *)self addAcCompletions:*(*(&v131 + 1) + 8 * nn)];
      }

      v54 = [v52 countByEnumeratingWithState:&v131 objects:v179 count:16];
    }

    while (v54);
  }

  v57 = *(a3 + 112);
  if ((v57 & 0x200) != 0)
  {
    self->_rssiValue = *(a3 + 25);
    *&self->_has |= 0x200u;
    v57 = *(a3 + 112);
    if ((v57 & 0x400) == 0)
    {
LABEL_82:
      if ((v57 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_150;
    }
  }

  else if ((*(a3 + 112) & 0x400) == 0)
  {
    goto LABEL_82;
  }

  self->_snrValue = *(a3 + 44);
  *&self->_has |= 0x400u;
  v57 = *(a3 + 112);
  if ((v57 & 1) == 0)
  {
LABEL_83:
    if ((v57 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_ccaValue = *(a3 + 6);
  *&self->_has |= 1u;
  v57 = *(a3 + 112);
  if ((v57 & 8) == 0)
  {
LABEL_84:
    if ((v57 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_nfValue = *(a3 + 16);
  *&self->_has |= 8u;
  v57 = *(a3 + 112);
  if ((v57 & 0x20) == 0)
  {
LABEL_85:
    if ((v57 & 2) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_153;
  }

LABEL_152:
  self->_ofdmDesense = *(a3 + 18);
  *&self->_has |= 0x20u;
  v57 = *(a3 + 112);
  if ((v57 & 2) == 0)
  {
LABEL_86:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_ibssCCA = *(a3 + 14);
  *&self->_has |= 2u;
  v57 = *(a3 + 112);
  if ((v57 & 0x10) == 0)
  {
LABEL_87:
    if ((v57 & 4) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_155;
  }

LABEL_154:
  self->_obssCCA = *(a3 + 17);
  *&self->_has |= 0x10u;
  v57 = *(a3 + 112);
  if ((v57 & 4) == 0)
  {
LABEL_88:
    if ((v57 & 0x40) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_156;
  }

LABEL_155:
  self->_interferenceCCA = *(a3 + 15);
  *&self->_has |= 4u;
  v57 = *(a3 + 112);
  if ((v57 & 0x40) == 0)
  {
LABEL_89:
    if ((v57 & 0x80) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_156:
  self->_qbssCCA = *(a3 + 22);
  *&self->_has |= 0x40u;
  if ((*(a3 + 112) & 0x80) != 0)
  {
LABEL_90:
    self->_qbssSTACount = *(a3 + 23);
    *&self->_has |= 0x80u;
  }

LABEL_91:
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v58 = *(a3 + 14);
  v59 = [v58 countByEnumeratingWithState:&v127 objects:v178 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v128;
    do
    {
      for (i1 = 0; i1 != v60; ++i1)
      {
        if (*v128 != v61)
        {
          objc_enumerationMutation(v58);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID0:*(*(&v127 + 1) + 8 * i1)];
      }

      v60 = [v58 countByEnumeratingWithState:&v127 objects:v178 count:16];
    }

    while (v60);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v63 = *(a3 + 15);
  v64 = [v63 countByEnumeratingWithState:&v123 objects:v177 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v124;
    do
    {
      for (i2 = 0; i2 != v65; ++i2)
      {
        if (*v124 != v66)
        {
          objc_enumerationMutation(v63);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID1:*(*(&v123 + 1) + 8 * i2)];
      }

      v65 = [v63 countByEnumeratingWithState:&v123 objects:v177 count:16];
    }

    while (v65);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v68 = *(a3 + 16);
  v69 = [v68 countByEnumeratingWithState:&v119 objects:v176 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v120;
    do
    {
      for (i3 = 0; i3 != v70; ++i3)
      {
        if (*v120 != v71)
        {
          objc_enumerationMutation(v68);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID2:*(*(&v119 + 1) + 8 * i3)];
      }

      v70 = [v68 countByEnumeratingWithState:&v119 objects:v176 count:16];
    }

    while (v70);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v73 = *(a3 + 17);
  v74 = [v73 countByEnumeratingWithState:&v115 objects:v175 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v116;
    do
    {
      for (i4 = 0; i4 != v75; ++i4)
      {
        if (*v116 != v76)
        {
          objc_enumerationMutation(v73);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID3:*(*(&v115 + 1) + 8 * i4)];
      }

      v75 = [v73 countByEnumeratingWithState:&v115 objects:v175 count:16];
    }

    while (v75);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v78 = *(a3 + 18);
  v79 = [v78 countByEnumeratingWithState:&v111 objects:v174 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v112;
    do
    {
      for (i5 = 0; i5 != v80; ++i5)
      {
        if (*v112 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID4:*(*(&v111 + 1) + 8 * i5)];
      }

      v80 = [v78 countByEnumeratingWithState:&v111 objects:v174 count:16];
    }

    while (v80);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v83 = *(a3 + 19);
  v84 = [v83 countByEnumeratingWithState:&v107 objects:v173 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v108;
    do
    {
      for (i6 = 0; i6 != v85; ++i6)
      {
        if (*v108 != v86)
        {
          objc_enumerationMutation(v83);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID5:*(*(&v107 + 1) + 8 * i6)];
      }

      v85 = [v83 countByEnumeratingWithState:&v107 objects:v173 count:16];
    }

    while (v85);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v88 = *(a3 + 20);
  v89 = [v88 countByEnumeratingWithState:&v103 objects:v172 count:16];
  if (v89)
  {
    v90 = v89;
    v91 = *v104;
    do
    {
      for (i7 = 0; i7 != v90; ++i7)
      {
        if (*v104 != v91)
        {
          objc_enumerationMutation(v88);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID6:*(*(&v103 + 1) + 8 * i7)];
      }

      v90 = [v88 countByEnumeratingWithState:&v103 objects:v172 count:16];
    }

    while (v90);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v93 = *(a3 + 21);
  v94 = [v93 countByEnumeratingWithState:&v99 objects:v171 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v100;
    do
    {
      for (i8 = 0; i8 != v95; ++i8)
      {
        if (*v100 != v96)
        {
          objc_enumerationMutation(v93);
        }

        [(AWDWiFiNWActivityPeerStats *)self addRxLatencyTID7:*(*(&v99 + 1) + 8 * i8)];
      }

      v95 = [v93 countByEnumeratingWithState:&v99 objects:v171 count:16];
    }

    while (v95);
  }

  v98 = *MEMORY[0x29EDCA608];
}

@end