@interface WiFiAnalyticsAWDWiFiNWActivityPeerStats
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
- (void)addSnr:(id)a3;
- (void)addTxLatencyBE:(id)a3;
- (void)addTxLatencyBK:(id)a3;
- (void)addTxLatencyVI:(id)a3;
- (void)addTxLatencyVO:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIbssCCA:(BOOL)a3;
- (void)setHasInterferenceCCA:(BOOL)a3;
- (void)setHasNfValue:(BOOL)a3;
- (void)setHasObssCCA:(BOOL)a3;
- (void)setHasOfdmDesense:(BOOL)a3;
- (void)setHasQbssCCA:(BOOL)a3;
- (void)setHasQbssSTACount:(BOOL)a3;
- (void)setHasRole:(BOOL)a3;
- (void)setHasRssiValue0:(BOOL)a3;
- (void)setHasRssiValue1:(BOOL)a3;
- (void)setHasRssiValue:(BOOL)a3;
- (void)setHasSnrValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityPeerStats

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
  v3 = a3;
  if ([v3 isEqualToString:@"INFRA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LEGACYAWDL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LLWAWDL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NAN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addRssi:(id)a3
{
  v4 = a3;
  rssis = self->_rssis;
  v8 = v4;
  if (!rssis)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rssis;
    self->_rssis = v6;

    v4 = v8;
    rssis = self->_rssis;
  }

  [(NSMutableArray *)rssis addObject:v4];
}

- (void)addCca:(id)a3
{
  v4 = a3;
  ccas = self->_ccas;
  v8 = v4;
  if (!ccas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ccas;
    self->_ccas = v6;

    v4 = v8;
    ccas = self->_ccas;
  }

  [(NSMutableArray *)ccas addObject:v4];
}

- (void)addSnr:(id)a3
{
  v4 = a3;
  snrs = self->_snrs;
  v8 = v4;
  if (!snrs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_snrs;
    self->_snrs = v6;

    v4 = v8;
    snrs = self->_snrs;
  }

  [(NSMutableArray *)snrs addObject:v4];
}

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

- (void)addAcCompletions:(id)a3
{
  v4 = a3;
  acCompletions = self->_acCompletions;
  v8 = v4;
  if (!acCompletions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_acCompletions;
    self->_acCompletions = v6;

    v4 = v8;
    acCompletions = self->_acCompletions;
  }

  [(NSMutableArray *)acCompletions addObject:v4];
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
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
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

- (void)setHasRssiValue0:(BOOL)a3
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

- (void)setHasRssiValue1:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityPeerStats;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v145 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x100) != 0)
  {
    role = self->_role;
    if (role >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_role];
    }

    else
    {
      v5 = off_1E830EFB0[role];
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
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rssis, "count")}];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v8 = self->_rssis;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v131 objects:v144 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v132;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v132 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v131 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v131 objects:v144 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"rssi"];
  }

  if ([(NSMutableArray *)self->_ccas count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_ccas, "count")}];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v15 = self->_ccas;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v127 objects:v143 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v128;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v128 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v127 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v127 objects:v143 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"cca"];
  }

  if ([(NSMutableArray *)self->_snrs count])
  {
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_snrs, "count")}];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v22 = self->_snrs;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v123 objects:v142 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v124;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v124 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v123 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v123 objects:v142 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"snr"];
  }

  if ([(NSMutableArray *)self->_packets count])
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_packets, "count")}];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v29 = self->_packets;
    v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v119 objects:v141 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v120;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v120 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v119 + 1) + 8 * m) dictionaryRepresentation];
          [v28 addObject:v34];
        }

        v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v119 objects:v141 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKey:@"packets"];
  }

  if ([(NSMutableArray *)self->_bytes count])
  {
    v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bytes, "count")}];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v36 = self->_bytes;
    v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v115 objects:v140 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v116;
      do
      {
        for (n = 0; n != v38; ++n)
        {
          if (*v116 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v115 + 1) + 8 * n) dictionaryRepresentation];
          [v35 addObject:v41];
        }

        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v115 objects:v140 count:16];
      }

      while (v38);
    }

    [v3 setObject:v35 forKey:@"bytes"];
  }

  if ([(NSMutableArray *)self->_txLatencyBKs count])
  {
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBKs, "count")}];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v43 = self->_txLatencyBKs;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v111 objects:v139 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v112;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v112 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [*(*(&v111 + 1) + 8 * ii) dictionaryRepresentation];
          [v42 addObject:v48];
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v111 objects:v139 count:16];
      }

      while (v45);
    }

    [v3 setObject:v42 forKey:@"txLatencyBK"];
  }

  if ([(NSMutableArray *)self->_txLatencyBEs count])
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyBEs, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v50 = self->_txLatencyBEs;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v107 objects:v138 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v108;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v108 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = [*(*(&v107 + 1) + 8 * jj) dictionaryRepresentation];
          [v49 addObject:v55];
        }

        v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v107 objects:v138 count:16];
      }

      while (v52);
    }

    [v3 setObject:v49 forKey:@"txLatencyBE"];
  }

  if ([(NSMutableArray *)self->_txLatencyVOs count])
  {
    v56 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVOs, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v57 = self->_txLatencyVOs;
    v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v103 objects:v137 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v104;
      do
      {
        for (kk = 0; kk != v59; ++kk)
        {
          if (*v104 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = [*(*(&v103 + 1) + 8 * kk) dictionaryRepresentation];
          [v56 addObject:v62];
        }

        v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v103 objects:v137 count:16];
      }

      while (v59);
    }

    [v3 setObject:v56 forKey:@"txLatencyVO"];
  }

  if ([(NSMutableArray *)self->_txLatencyVIs count])
  {
    v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txLatencyVIs, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v64 = self->_txLatencyVIs;
    v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v99 objects:v136 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v100;
      do
      {
        for (mm = 0; mm != v66; ++mm)
        {
          if (*v100 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = [*(*(&v99 + 1) + 8 * mm) dictionaryRepresentation];
          [v63 addObject:v69];
        }

        v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v99 objects:v136 count:16];
      }

      while (v66);
    }

    [v3 setObject:v63 forKey:@"txLatencyVI"];
  }

  completions = self->_completions;
  if (completions)
  {
    v71 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions dictionaryRepresentation];
    [v3 setObject:v71 forKey:@"completions"];
  }

  if ([(NSMutableArray *)self->_acCompletions count])
  {
    v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_acCompletions, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v73 = self->_acCompletions;
    v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v95 objects:v135 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v96;
      do
      {
        for (nn = 0; nn != v75; ++nn)
        {
          if (*v96 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = [*(*(&v95 + 1) + 8 * nn) dictionaryRepresentation];
          [v72 addObject:v78];
        }

        v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v95 objects:v135 count:16];
      }

      while (v75);
    }

    [v3 setObject:v72 forKey:@"acCompletions"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v84 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue];
    [v3 setObject:v84 forKey:@"rssiValue"];

    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_102:
      if ((has & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_116;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_102;
  }

  v85 = [MEMORY[0x1E696AD98] numberWithInt:self->_snrValue];
  [v3 setObject:v85 forKey:@"snrValue"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_103:
    if ((has & 8) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_117;
  }

LABEL_116:
  v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ccaValue];
  [v3 setObject:v86 forKey:@"ccaValue"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_104:
    if ((has & 0x20) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_118;
  }

LABEL_117:
  v87 = [MEMORY[0x1E696AD98] numberWithInt:self->_nfValue];
  [v3 setObject:v87 forKey:@"nfValue"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_105:
    if ((has & 2) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_119;
  }

LABEL_118:
  v88 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ofdmDesense];
  [v3 setObject:v88 forKey:@"ofdmDesense"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_106:
    if ((has & 0x10) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_120;
  }

LABEL_119:
  v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ibssCCA];
  [v3 setObject:v89 forKey:@"ibssCCA"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_107:
    if ((has & 4) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_121;
  }

LABEL_120:
  v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_obssCCA];
  [v3 setObject:v90 forKey:@"obssCCA"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_108:
    if ((has & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_122;
  }

LABEL_121:
  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_interferenceCCA];
  [v3 setObject:v91 forKey:@"interferenceCCA"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_109:
    if ((has & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_123;
  }

LABEL_122:
  v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qbssCCA];
  [v3 setObject:v92 forKey:@"qbssCCA"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_110:
    if ((has & 0x400) == 0)
    {
      goto LABEL_111;
    }

LABEL_124:
    v94 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue0];
    [v3 setObject:v94 forKey:@"rssiValue0"];

    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_123:
  v93 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qbssSTACount];
  [v3 setObject:v93 forKey:@"qbssSTACount"];

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_124;
  }

LABEL_111:
  if ((has & 0x800) != 0)
  {
LABEL_112:
    v80 = [MEMORY[0x1E696AD98] numberWithInt:self->_rssiValue1];
    [v3 setObject:v80 forKey:@"rssiValue1"];
  }

LABEL_113:
  v81 = v3;

  v82 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)writeTo:(id)a3
{
  v130 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_has & 0x100) != 0)
  {
    role = self->_role;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hashID)
  {
    PBDataWriterWriteStringField();
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v6 = self->_rssis;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v116 objects:v129 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v117;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v117 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v116 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v116 objects:v129 count:16];
    }

    while (v8);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v12 = self->_ccas;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v112 objects:v128 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v113;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v113 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v112 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v112 objects:v128 count:16];
    }

    while (v14);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v18 = self->_snrs;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v108 objects:v127 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v109;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v109 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v108 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v108 objects:v127 count:16];
    }

    while (v20);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v24 = self->_packets;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v104 objects:v126 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v105;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v105 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v104 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v104 objects:v126 count:16];
    }

    while (v26);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v30 = self->_bytes;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v100 objects:v125 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v101;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v101 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v100 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v100 objects:v125 count:16];
    }

    while (v32);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v36 = self->_txLatencyBKs;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v96 objects:v124 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v97;
    do
    {
      for (ii = 0; ii != v38; ++ii)
      {
        if (*v97 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v96 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v96 objects:v124 count:16];
    }

    while (v38);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v42 = self->_txLatencyBEs;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v92 objects:v123 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v93;
    do
    {
      for (jj = 0; jj != v44; ++jj)
      {
        if (*v93 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v92 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v92 objects:v123 count:16];
    }

    while (v44);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v48 = self->_txLatencyVOs;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v88 objects:v122 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v89;
    do
    {
      for (kk = 0; kk != v50; ++kk)
      {
        if (*v89 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v88 + 1) + 8 * kk);
        PBDataWriterWriteSubmessage();
      }

      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v88 objects:v122 count:16];
    }

    while (v50);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v54 = self->_txLatencyVIs;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v84 objects:v121 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v85;
    do
    {
      for (mm = 0; mm != v56; ++mm)
      {
        if (*v85 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v84 + 1) + 8 * mm);
        PBDataWriterWriteSubmessage();
      }

      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v84 objects:v121 count:16];
    }

    while (v56);
  }

  if (self->_completions)
  {
    PBDataWriterWriteSubmessage();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v60 = self->_acCompletions;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v80 objects:v120 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v81;
    do
    {
      for (nn = 0; nn != v62; ++nn)
      {
        if (*v81 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v80 + 1) + 8 * nn);
        PBDataWriterWriteSubmessage();
      }

      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v80 objects:v120 count:16];
    }

    while (v62);
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    rssiValue = self->_rssiValue;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_79:
      if ((has & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_93;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
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

    goto LABEL_94;
  }

LABEL_93:
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

    goto LABEL_95;
  }

LABEL_94:
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

    goto LABEL_96;
  }

LABEL_95:
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

    goto LABEL_97;
  }

LABEL_96:
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

    goto LABEL_98;
  }

LABEL_97:
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

    goto LABEL_99;
  }

LABEL_98:
  interferenceCCA = self->_interferenceCCA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_86:
    if ((has & 0x80) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_100;
  }

LABEL_99:
  qbssCCA = self->_qbssCCA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_87:
    if ((has & 0x400) == 0)
    {
      goto LABEL_88;
    }

LABEL_101:
    rssiValue0 = self->_rssiValue0;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_100:
  qbssSTACount = self->_qbssSTACount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_101;
  }

LABEL_88:
  if ((has & 0x800) != 0)
  {
LABEL_89:
    rssiValue1 = self->_rssiValue1;
    PBDataWriterWriteInt32Field();
  }

LABEL_90:

  v68 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x100) != 0)
  {
    v4[24] = self->_role;
    *(v4 + 84) |= 0x100u;
  }

  v46 = v4;
  if (self->_hashID)
  {
    [v4 setHashID:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self rssisCount])
  {
    [v46 clearRssis];
    v5 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self rssisCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self rssiAtIndex:i];
        [v46 addRssi:v8];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self ccasCount])
  {
    [v46 clearCcas];
    v9 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self ccasCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self ccaAtIndex:j];
        [v46 addCca:v12];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self snrsCount])
  {
    [v46 clearSnrs];
    v13 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self snrsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self snrAtIndex:k];
        [v46 addSnr:v16];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self packetsCount])
  {
    [v46 clearPackets];
    v17 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self packetsCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self packetsAtIndex:m];
        [v46 addPackets:v20];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self bytesCount])
  {
    [v46 clearBytes];
    v21 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self bytesCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self bytesAtIndex:n];
        [v46 addBytes:v24];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBKsCount])
  {
    [v46 clearTxLatencyBKs];
    v25 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBKsCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBKAtIndex:ii];
        [v46 addTxLatencyBK:v28];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBEsCount])
  {
    [v46 clearTxLatencyBEs];
    v29 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBEsCount];
    if (v29)
    {
      v30 = v29;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyBEAtIndex:jj];
        [v46 addTxLatencyBE:v32];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVOsCount])
  {
    [v46 clearTxLatencyVOs];
    v33 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVOsCount];
    if (v33)
    {
      v34 = v33;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVOAtIndex:kk];
        [v46 addTxLatencyVO:v36];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVIsCount])
  {
    [v46 clearTxLatencyVIs];
    v37 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVIsCount];
    if (v37)
    {
      v38 = v37;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self txLatencyVIAtIndex:mm];
        [v46 addTxLatencyVI:v40];
      }
    }
  }

  if (self->_completions)
  {
    [v46 setCompletions:?];
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self acCompletionsCount])
  {
    [v46 clearAcCompletions];
    v41 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self acCompletionsCount];
    if (v41)
    {
      v42 = v41;
      for (nn = 0; nn != v42; ++nn)
      {
        v44 = [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self acCompletionsAtIndex:nn];
        [v46 addAcCompletions:v44];
      }
    }
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v46 + 25) = self->_rssiValue;
    *(v46 + 84) |= 0x200u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_49:
      if ((has & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_65;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_49;
  }

  *(v46 + 30) = self->_snrValue;
  *(v46 + 84) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_50:
    if ((has & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v46 + 6) = self->_ccaValue;
  *(v46 + 84) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_51:
    if ((has & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v46 + 16) = self->_nfValue;
  *(v46 + 84) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_52:
    if ((has & 2) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v46 + 18) = self->_ofdmDesense;
  *(v46 + 84) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_53:
    if ((has & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v46 + 14) = self->_ibssCCA;
  *(v46 + 84) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_54:
    if ((has & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v46 + 17) = self->_obssCCA;
  *(v46 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_55:
    if ((has & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v46 + 15) = self->_interferenceCCA;
  *(v46 + 84) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_56:
    if ((has & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v46 + 22) = self->_qbssCCA;
  *(v46 + 84) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_57:
    if ((has & 0x400) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v46 + 23) = self->_qbssSTACount;
  *(v46 + 84) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_58:
    if ((has & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_73:
  *(v46 + 26) = self->_rssiValue0;
  *(v46 + 84) |= 0x400u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_59:
    *(v46 + 27) = self->_rssiValue1;
    *(v46 + 84) |= 0x800u;
  }

LABEL_60:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v124 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 96) = self->_role;
    *(v5 + 168) |= 0x100u;
  }

  v7 = [(NSString *)self->_hashID copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v9 = self->_rssis;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v111;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v111 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v110 + 1) + 8 * i) copyWithZone:a3];
        [v6 addRssi:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v11);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v15 = self->_ccas;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v106 objects:v122 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v107;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v107 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v106 + 1) + 8 * j) copyWithZone:a3];
        [v6 addCca:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v106 objects:v122 count:16];
    }

    while (v17);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v21 = self->_snrs;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v102 objects:v121 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v103;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v103 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v102 + 1) + 8 * k) copyWithZone:a3];
        [v6 addSnr:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v102 objects:v121 count:16];
    }

    while (v23);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v27 = self->_packets;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v98 objects:v120 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v99;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v99 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v98 + 1) + 8 * m) copyWithZone:a3];
        [v6 addPackets:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v98 objects:v120 count:16];
    }

    while (v29);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v33 = self->_bytes;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v94 objects:v119 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v95;
    do
    {
      for (n = 0; n != v35; ++n)
      {
        if (*v95 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v94 + 1) + 8 * n) copyWithZone:a3];
        [v6 addBytes:v38];
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v94 objects:v119 count:16];
    }

    while (v35);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v39 = self->_txLatencyBKs;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v90 objects:v118 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v91;
    do
    {
      for (ii = 0; ii != v41; ++ii)
      {
        if (*v91 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v90 + 1) + 8 * ii) copyWithZone:a3];
        [v6 addTxLatencyBK:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v90 objects:v118 count:16];
    }

    while (v41);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v45 = self->_txLatencyBEs;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v86 objects:v117 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v87;
    do
    {
      for (jj = 0; jj != v47; ++jj)
      {
        if (*v87 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v86 + 1) + 8 * jj) copyWithZone:a3];
        [v6 addTxLatencyBE:v50];
      }

      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v86 objects:v117 count:16];
    }

    while (v47);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v51 = self->_txLatencyVOs;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v82 objects:v116 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v83;
    do
    {
      for (kk = 0; kk != v53; ++kk)
      {
        if (*v83 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v82 + 1) + 8 * kk) copyWithZone:a3];
        [v6 addTxLatencyVO:v56];
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v82 objects:v116 count:16];
    }

    while (v53);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v57 = self->_txLatencyVIs;
  v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v78 objects:v115 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v79;
    do
    {
      for (mm = 0; mm != v59; ++mm)
      {
        if (*v79 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = [*(*(&v78 + 1) + 8 * mm) copyWithZone:a3];
        [v6 addTxLatencyVI:v62];
      }

      v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v78 objects:v115 count:16];
    }

    while (v59);
  }

  v63 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions copyWithZone:a3];
  v64 = *(v6 + 40);
  *(v6 + 40) = v63;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v65 = self->_acCompletions;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v74 objects:v114 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v75;
    do
    {
      for (nn = 0; nn != v67; ++nn)
      {
        if (*v75 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [*(*(&v74 + 1) + 8 * nn) copyWithZone:{a3, v74}];
        [v6 addAcCompletions:v70];
      }

      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v74 objects:v114 count:16];
    }

    while (v67);
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v6 + 100) = self->_rssiValue;
    *(v6 + 168) |= 0x200u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_75:
      if ((has & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_89;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_75;
  }

  *(v6 + 120) = self->_snrValue;
  *(v6 + 168) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_76:
    if ((has & 8) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 24) = self->_ccaValue;
  *(v6 + 168) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_77:
    if ((has & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 64) = self->_nfValue;
  *(v6 + 168) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_78:
    if ((has & 2) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 72) = self->_ofdmDesense;
  *(v6 + 168) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_79:
    if ((has & 0x10) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 56) = self->_ibssCCA;
  *(v6 + 168) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_80:
    if ((has & 4) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 68) = self->_obssCCA;
  *(v6 + 168) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_81:
    if ((has & 0x40) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 60) = self->_interferenceCCA;
  *(v6 + 168) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_82:
    if ((has & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 88) = self->_qbssCCA;
  *(v6 + 168) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_83:
    if ((has & 0x400) == 0)
    {
      goto LABEL_84;
    }

LABEL_97:
    *(v6 + 104) = self->_rssiValue0;
    *(v6 + 168) |= 0x400u;
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_96:
  *(v6 + 92) = self->_qbssSTACount;
  *(v6 + 168) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_97;
  }

LABEL_84:
  if ((has & 0x800) != 0)
  {
LABEL_85:
    *(v6 + 108) = self->_rssiValue1;
    *(v6 + 168) |= 0x800u;
  }

LABEL_86:
  v72 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_91;
  }

  v5 = *(v4 + 84);
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 84) & 0x100) == 0 || self->_role != *(v4 + 24))
    {
      goto LABEL_91;
    }
  }

  else if ((*(v4 + 84) & 0x100) != 0)
  {
LABEL_91:
    v20 = 0;
    goto LABEL_92;
  }

  hashID = self->_hashID;
  if (hashID | *(v4 + 6) && ![(NSString *)hashID isEqual:?])
  {
    goto LABEL_91;
  }

  rssis = self->_rssis;
  if (rssis | *(v4 + 14))
  {
    if (![(NSMutableArray *)rssis isEqual:?])
    {
      goto LABEL_91;
    }
  }

  ccas = self->_ccas;
  if (ccas | *(v4 + 4))
  {
    if (![(NSMutableArray *)ccas isEqual:?])
    {
      goto LABEL_91;
    }
  }

  snrs = self->_snrs;
  if (snrs | *(v4 + 16))
  {
    if (![(NSMutableArray *)snrs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  packets = self->_packets;
  if (packets | *(v4 + 10))
  {
    if (![(NSMutableArray *)packets isEqual:?])
    {
      goto LABEL_91;
    }
  }

  bytes = self->_bytes;
  if (bytes | *(v4 + 2))
  {
    if (![(NSMutableArray *)bytes isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyBKs = self->_txLatencyBKs;
  if (txLatencyBKs | *(v4 + 18))
  {
    if (![(NSMutableArray *)txLatencyBKs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyBEs = self->_txLatencyBEs;
  if (txLatencyBEs | *(v4 + 17))
  {
    if (![(NSMutableArray *)txLatencyBEs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyVOs = self->_txLatencyVOs;
  if (txLatencyVOs | *(v4 + 20))
  {
    if (![(NSMutableArray *)txLatencyVOs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  txLatencyVIs = self->_txLatencyVIs;
  if (txLatencyVIs | *(v4 + 19))
  {
    if (![(NSMutableArray *)txLatencyVIs isEqual:?])
    {
      goto LABEL_91;
    }
  }

  completions = self->_completions;
  if (completions | *(v4 + 5))
  {
    if (![(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions isEqual:?])
    {
      goto LABEL_91;
    }
  }

  acCompletions = self->_acCompletions;
  if (acCompletions | *(v4 + 1))
  {
    if (![(NSMutableArray *)acCompletions isEqual:?])
    {
      goto LABEL_91;
    }
  }

  has = self->_has;
  v19 = *(v4 + 84);
  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 84) & 0x200) == 0 || self->_rssiValue != *(v4 + 25))
    {
      goto LABEL_91;
    }
  }

  else if ((*(v4 + 84) & 0x200) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 84) & 0x1000) == 0 || self->_snrValue != *(v4 + 30))
    {
      goto LABEL_91;
    }
  }

  else if ((*(v4 + 84) & 0x1000) != 0)
  {
    goto LABEL_91;
  }

  if (has)
  {
    if ((v19 & 1) == 0 || self->_ccaValue != *(v4 + 6))
    {
      goto LABEL_91;
    }
  }

  else if (v19)
  {
    goto LABEL_91;
  }

  if ((has & 8) != 0)
  {
    if ((v19 & 8) == 0 || self->_nfValue != *(v4 + 16))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 8) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x20) != 0)
  {
    if ((v19 & 0x20) == 0 || self->_ofdmDesense != *(v4 + 18))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 0x20) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 2) != 0)
  {
    if ((v19 & 2) == 0 || self->_ibssCCA != *(v4 + 14))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 2) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x10) != 0)
  {
    if ((v19 & 0x10) == 0 || self->_obssCCA != *(v4 + 17))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 0x10) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 4) != 0)
  {
    if ((v19 & 4) == 0 || self->_interferenceCCA != *(v4 + 15))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 4) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x40) != 0)
  {
    if ((v19 & 0x40) == 0 || self->_qbssCCA != *(v4 + 22))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 0x40) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x80) != 0)
  {
    if ((v19 & 0x80) == 0 || self->_qbssSTACount != *(v4 + 23))
    {
      goto LABEL_91;
    }
  }

  else if ((v19 & 0x80) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 84) & 0x400) == 0 || self->_rssiValue0 != *(v4 + 26))
    {
      goto LABEL_91;
    }
  }

  else if ((*(v4 + 84) & 0x400) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 84) & 0x800) == 0 || self->_rssiValue1 != *(v4 + 27))
    {
      goto LABEL_91;
    }

    v20 = 1;
  }

  else
  {
    v20 = (v19 & 0x800) == 0;
  }

LABEL_92:

  return v20;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x100) != 0)
  {
    v29 = 2654435761 * self->_role;
  }

  else
  {
    v29 = 0;
  }

  v28 = [(NSString *)self->_hashID hash];
  v27 = [(NSMutableArray *)self->_rssis hash];
  v26 = [(NSMutableArray *)self->_ccas hash];
  v25 = [(NSMutableArray *)self->_snrs hash];
  v3 = [(NSMutableArray *)self->_packets hash];
  v4 = [(NSMutableArray *)self->_bytes hash];
  v5 = [(NSMutableArray *)self->_txLatencyBKs hash];
  v6 = [(NSMutableArray *)self->_txLatencyBEs hash];
  v7 = [(NSMutableArray *)self->_txLatencyVOs hash];
  v8 = [(NSMutableArray *)self->_txLatencyVIs hash];
  v9 = [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)self->_completions hash];
  v10 = [(NSMutableArray *)self->_acCompletions hash];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v12 = 2654435761 * self->_rssiValue;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_6:
      v13 = 2654435761 * self->_snrValue;
      if (has)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
    if ((*&self->_has & 0x1000) != 0)
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

    goto LABEL_20;
  }

LABEL_19:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v15 = 2654435761 * self->_nfValue;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_ofdmDesense;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v17 = 2654435761 * self->_ibssCCA;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_obssCCA;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v18 = 0;
  if ((has & 4) != 0)
  {
LABEL_12:
    v19 = 2654435761 * self->_interferenceCCA;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v19 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v20 = 2654435761 * self->_qbssCCA;
    if ((has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v20 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_14:
    v21 = 2654435761 * self->_qbssSTACount;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    v22 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    v23 = 0;
    return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
  }

LABEL_26:
  v21 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  v22 = 2654435761 * self->_rssiValue0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  v23 = 2654435761 * self->_rssiValue1;
  return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

- (void)mergeFrom:(id)a3
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((v4[42] & 0x100) != 0)
  {
    self->_role = v4[24];
    *&self->_has |= 0x100u;
  }

  if (*(v4 + 6))
  {
    [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self setHashID:?];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v6 = *(v5 + 14);
  v7 = [v6 countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v97;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v97 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addRssi:*(*(&v96 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v96 objects:v109 count:16];
    }

    while (v8);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v11 = *(v5 + 4);
  v12 = [v11 countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v93;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v93 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addCca:*(*(&v92 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v92 objects:v108 count:16];
    }

    while (v13);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v16 = *(v5 + 16);
  v17 = [v16 countByEnumeratingWithState:&v88 objects:v107 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v89;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v89 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addSnr:*(*(&v88 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v88 objects:v107 count:16];
    }

    while (v18);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v21 = *(v5 + 10);
  v22 = [v21 countByEnumeratingWithState:&v84 objects:v106 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v85;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v85 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addPackets:*(*(&v84 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v84 objects:v106 count:16];
    }

    while (v23);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v26 = *(v5 + 2);
  v27 = [v26 countByEnumeratingWithState:&v80 objects:v105 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v81;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v81 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addBytes:*(*(&v80 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v80 objects:v105 count:16];
    }

    while (v28);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v31 = *(v5 + 18);
  v32 = [v31 countByEnumeratingWithState:&v76 objects:v104 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v77;
    do
    {
      for (ii = 0; ii != v33; ++ii)
      {
        if (*v77 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyBK:*(*(&v76 + 1) + 8 * ii)];
      }

      v33 = [v31 countByEnumeratingWithState:&v76 objects:v104 count:16];
    }

    while (v33);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v36 = *(v5 + 17);
  v37 = [v36 countByEnumeratingWithState:&v72 objects:v103 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v73;
    do
    {
      for (jj = 0; jj != v38; ++jj)
      {
        if (*v73 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyBE:*(*(&v72 + 1) + 8 * jj)];
      }

      v38 = [v36 countByEnumeratingWithState:&v72 objects:v103 count:16];
    }

    while (v38);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v41 = *(v5 + 20);
  v42 = [v41 countByEnumeratingWithState:&v68 objects:v102 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v69;
    do
    {
      for (kk = 0; kk != v43; ++kk)
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyVO:*(*(&v68 + 1) + 8 * kk)];
      }

      v43 = [v41 countByEnumeratingWithState:&v68 objects:v102 count:16];
    }

    while (v43);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v46 = *(v5 + 19);
  v47 = [v46 countByEnumeratingWithState:&v64 objects:v101 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v65;
    do
    {
      for (mm = 0; mm != v48; ++mm)
      {
        if (*v65 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addTxLatencyVI:*(*(&v64 + 1) + 8 * mm)];
      }

      v48 = [v46 countByEnumeratingWithState:&v64 objects:v101 count:16];
    }

    while (v48);
  }

  completions = self->_completions;
  v52 = *(v5 + 5);
  if (completions)
  {
    if (v52)
    {
      [(WiFiAnalyticsAWDWiFiNWActivityTxCompletions *)completions mergeFrom:?];
    }
  }

  else if (v52)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self setCompletions:?];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = *(v5 + 1);
  v54 = [v53 countByEnumeratingWithState:&v60 objects:v100 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v61;
    do
    {
      for (nn = 0; nn != v55; ++nn)
      {
        if (*v61 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityPeerStats *)self addAcCompletions:*(*(&v60 + 1) + 8 * nn), v60];
      }

      v55 = [v53 countByEnumeratingWithState:&v60 objects:v100 count:16];
    }

    while (v55);
  }

  v58 = *(v5 + 84);
  if ((v58 & 0x200) != 0)
  {
    self->_rssiValue = *(v5 + 25);
    *&self->_has |= 0x200u;
    v58 = *(v5 + 84);
    if ((v58 & 0x1000) == 0)
    {
LABEL_82:
      if ((v58 & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_96;
    }
  }

  else if ((*(v5 + 84) & 0x1000) == 0)
  {
    goto LABEL_82;
  }

  self->_snrValue = *(v5 + 30);
  *&self->_has |= 0x1000u;
  v58 = *(v5 + 84);
  if ((v58 & 1) == 0)
  {
LABEL_83:
    if ((v58 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_ccaValue = *(v5 + 6);
  *&self->_has |= 1u;
  v58 = *(v5 + 84);
  if ((v58 & 8) == 0)
  {
LABEL_84:
    if ((v58 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_nfValue = *(v5 + 16);
  *&self->_has |= 8u;
  v58 = *(v5 + 84);
  if ((v58 & 0x20) == 0)
  {
LABEL_85:
    if ((v58 & 2) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_ofdmDesense = *(v5 + 18);
  *&self->_has |= 0x20u;
  v58 = *(v5 + 84);
  if ((v58 & 2) == 0)
  {
LABEL_86:
    if ((v58 & 0x10) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_ibssCCA = *(v5 + 14);
  *&self->_has |= 2u;
  v58 = *(v5 + 84);
  if ((v58 & 0x10) == 0)
  {
LABEL_87:
    if ((v58 & 4) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_obssCCA = *(v5 + 17);
  *&self->_has |= 0x10u;
  v58 = *(v5 + 84);
  if ((v58 & 4) == 0)
  {
LABEL_88:
    if ((v58 & 0x40) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_interferenceCCA = *(v5 + 15);
  *&self->_has |= 4u;
  v58 = *(v5 + 84);
  if ((v58 & 0x40) == 0)
  {
LABEL_89:
    if ((v58 & 0x80) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_qbssCCA = *(v5 + 22);
  *&self->_has |= 0x40u;
  v58 = *(v5 + 84);
  if ((v58 & 0x80) == 0)
  {
LABEL_90:
    if ((v58 & 0x400) == 0)
    {
      goto LABEL_91;
    }

LABEL_104:
    self->_rssiValue0 = *(v5 + 26);
    *&self->_has |= 0x400u;
    if ((*(v5 + 84) & 0x800) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_103:
  self->_qbssSTACount = *(v5 + 23);
  *&self->_has |= 0x80u;
  v58 = *(v5 + 84);
  if ((v58 & 0x400) != 0)
  {
    goto LABEL_104;
  }

LABEL_91:
  if ((v58 & 0x800) != 0)
  {
LABEL_92:
    self->_rssiValue1 = *(v5 + 27);
    *&self->_has |= 0x800u;
  }

LABEL_93:

  v59 = *MEMORY[0x1E69E9840];
}

@end