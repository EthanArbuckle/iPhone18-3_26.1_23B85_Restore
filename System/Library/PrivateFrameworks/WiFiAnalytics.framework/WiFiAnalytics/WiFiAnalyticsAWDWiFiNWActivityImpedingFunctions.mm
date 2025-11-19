@interface WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCTLMIndex1:(id)a3;
- (void)addCTLMIndex:(id)a3;
- (void)addTxDutyCyclePct1:(id)a3;
- (void)addTxDutyCyclePct:(id)a3;
- (void)addTxPowerBackoffDB1:(id)a3;
- (void)addTxPowerBackoffDB:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasActivechains1:(BOOL)a3;
- (void)setHasCtlmid0:(BOOL)a3;
- (void)setHasCtlmid1:(BOOL)a3;
- (void)setHasPpm0:(BOOL)a3;
- (void)setHasPpm1:(BOOL)a3;
- (void)setHasRc1Duration:(BOOL)a3;
- (void)setHasRc1Request:(BOOL)a3;
- (void)setHasRc1wlanCrit:(BOOL)a3;
- (void)setHasRc1wlanCritDuration:(BOOL)a3;
- (void)setHasRc2Duration:(BOOL)a3;
- (void)setHasRc2Grant:(BOOL)a3;
- (void)setHasRc2LongGrant:(BOOL)a3;
- (void)setHasRc2Request:(BOOL)a3;
- (void)setHasRc2cts2a:(BOOL)a3;
- (void)setHasTemp0:(BOOL)a3;
- (void)setHasTemp1:(BOOL)a3;
- (void)setHasTvpmindex0:(BOOL)a3;
- (void)setHasTvpmindex1:(BOOL)a3;
- (void)setHasTxduty0:(BOOL)a3;
- (void)setHasTxduty1:(BOOL)a3;
- (void)setHasTxpowerbackoff0:(BOOL)a3;
- (void)setHasTxpowerbackoff1:(BOOL)a3;
- (void)setHasVoltage0:(BOOL)a3;
- (void)setHasVoltage1:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions

- (void)addCTLMIndex:(id)a3
{
  v4 = a3;
  cTLMIndexs = self->_cTLMIndexs;
  v8 = v4;
  if (!cTLMIndexs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_cTLMIndexs;
    self->_cTLMIndexs = v6;

    v4 = v8;
    cTLMIndexs = self->_cTLMIndexs;
  }

  [(NSMutableArray *)cTLMIndexs addObject:v4];
}

- (void)addTxPowerBackoffDB:(id)a3
{
  v4 = a3;
  txPowerBackoffDBs = self->_txPowerBackoffDBs;
  v8 = v4;
  if (!txPowerBackoffDBs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txPowerBackoffDBs;
    self->_txPowerBackoffDBs = v6;

    v4 = v8;
    txPowerBackoffDBs = self->_txPowerBackoffDBs;
  }

  [(NSMutableArray *)txPowerBackoffDBs addObject:v4];
}

- (void)addTxDutyCyclePct:(id)a3
{
  v4 = a3;
  txDutyCyclePcts = self->_txDutyCyclePcts;
  v8 = v4;
  if (!txDutyCyclePcts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txDutyCyclePcts;
    self->_txDutyCyclePcts = v6;

    v4 = v8;
    txDutyCyclePcts = self->_txDutyCyclePcts;
  }

  [(NSMutableArray *)txDutyCyclePcts addObject:v4];
}

- (void)addCTLMIndex1:(id)a3
{
  v4 = a3;
  cTLMIndex1s = self->_cTLMIndex1s;
  v8 = v4;
  if (!cTLMIndex1s)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_cTLMIndex1s;
    self->_cTLMIndex1s = v6;

    v4 = v8;
    cTLMIndex1s = self->_cTLMIndex1s;
  }

  [(NSMutableArray *)cTLMIndex1s addObject:v4];
}

- (void)addTxPowerBackoffDB1:(id)a3
{
  v4 = a3;
  txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
  v8 = v4;
  if (!txPowerBackoffDB1s)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txPowerBackoffDB1s;
    self->_txPowerBackoffDB1s = v6;

    v4 = v8;
    txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
  }

  [(NSMutableArray *)txPowerBackoffDB1s addObject:v4];
}

- (void)addTxDutyCyclePct1:(id)a3
{
  v4 = a3;
  txDutyCyclePct1s = self->_txDutyCyclePct1s;
  v8 = v4;
  if (!txDutyCyclePct1s)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_txDutyCyclePct1s;
    self->_txDutyCyclePct1s = v6;

    v4 = v8;
    txDutyCyclePct1s = self->_txDutyCyclePct1s;
  }

  [(NSMutableArray *)txDutyCyclePct1s addObject:v4];
}

- (void)setHasTxduty0:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasTxduty1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasTxpowerbackoff0:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasTxpowerbackoff1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasActivechains1:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTemp0:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTemp1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasVoltage0:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasVoltage1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasPpm0:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPpm1:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCtlmid0:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCtlmid1:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTvpmindex0:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasTvpmindex1:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasRc1Request:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRc1Duration:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRc1wlanCrit:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasRc1wlanCritDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasRc2Request:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasRc2Duration:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRc2Grant:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRc2LongGrant:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRc2cts2a:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_cTLMIndexs count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cTLMIndexs, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v5 = self->_cTLMIndexs;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v97 objects:v106 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v98;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v98 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v97 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v97 objects:v106 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"CTLMIndex"];
  }

  if ([(NSMutableArray *)self->_txPowerBackoffDBs count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txPowerBackoffDBs, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v12 = self->_txPowerBackoffDBs;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v94;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v94 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v93 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v93 objects:v105 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"TxPowerBackoff_dB"];
  }

  if ([(NSMutableArray *)self->_txDutyCyclePcts count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txDutyCyclePcts, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v19 = self->_txDutyCyclePcts;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v89 objects:v104 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v90;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v90 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v89 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:v24];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v89 objects:v104 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"TxDutyCycle_pct"];
  }

  if ([(NSMutableArray *)self->_cTLMIndex1s count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cTLMIndex1s, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v26 = self->_cTLMIndex1s;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v85 objects:v103 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v86;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v86 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v85 + 1) + 8 * m) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v85 objects:v103 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"CTLMIndex1"];
  }

  if ([(NSMutableArray *)self->_txPowerBackoffDB1s count])
  {
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txPowerBackoffDB1s, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v33 = self->_txPowerBackoffDB1s;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v81 objects:v102 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v82;
      do
      {
        for (n = 0; n != v35; ++n)
        {
          if (*v82 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v81 + 1) + 8 * n) dictionaryRepresentation];
          [v32 addObject:v38];
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v81 objects:v102 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKey:@"TxPowerBackoff_dB1"];
  }

  if ([(NSMutableArray *)self->_txDutyCyclePct1s count])
  {
    v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_txDutyCyclePct1s, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v40 = self->_txDutyCyclePct1s;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v77 objects:v101 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v78;
      do
      {
        for (ii = 0; ii != v42; ++ii)
        {
          if (*v78 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v77 + 1) + 8 * ii) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v77 objects:v101 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKey:@"TxDutyCycle_pct1"];
  }

  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txduty0];
    [v3 setObject:v53 forKey:@"txduty0"];

    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_57:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_86;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_57;
  }

  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_txduty1, v77}];
  [v3 setObject:v54 forKey:@"txduty1"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_58:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_87;
  }

LABEL_86:
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_txpowerbackoff0, v77}];
  [v3 setObject:v55 forKey:@"txpowerbackoff0"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_59:
    if ((*&has & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_87:
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_txpowerbackoff1, v77}];
  [v3 setObject:v56 forKey:@"txpowerbackoff1"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_60:
    if ((*&has & 2) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_89;
  }

LABEL_88:
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_activechains0, v77}];
  [v3 setObject:v57 forKey:@"activechains0"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_61:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_90;
  }

LABEL_89:
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_activechains1, v77}];
  [v3 setObject:v58 forKey:@"activechains1"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_62:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_90:
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_temp0, v77}];
  [v3 setObject:v59 forKey:@"temp0"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_63:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_92;
  }

LABEL_91:
  v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_temp1, v77}];
  [v3 setObject:v60 forKey:@"temp1"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_64:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_93;
  }

LABEL_92:
  v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_voltage0, v77}];
  [v3 setObject:v61 forKey:@"voltage0"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_65:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_94;
  }

LABEL_93:
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_voltage1, v77}];
  [v3 setObject:v62 forKey:@"voltage1"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_66:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_94:
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_ppm0, v77}];
  [v3 setObject:v63 forKey:@"ppm0"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_67:
    if ((*&has & 4) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_96;
  }

LABEL_95:
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_ppm1, v77}];
  [v3 setObject:v64 forKey:@"ppm1"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_68:
    if ((*&has & 8) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_97;
  }

LABEL_96:
  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_ctlmid0, v77}];
  [v3 setObject:v65 forKey:@"ctlmid0"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_69:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_98;
  }

LABEL_97:
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_ctlmid1, v77}];
  [v3 setObject:v66 forKey:@"ctlmid1"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_70:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_99;
  }

LABEL_98:
  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_tvpmindex0, v77}];
  [v3 setObject:v67 forKey:@"tvpmindex0"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_71:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_100;
  }

LABEL_99:
  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_tvpmindex1, v77}];
  [v3 setObject:v68 forKey:@"tvpmindex1"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_72:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_101;
  }

LABEL_100:
  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc1Request, v77}];
  [v3 setObject:v69 forKey:@"rc1Request"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_73:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_102;
  }

LABEL_101:
  v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc1Duration, v77}];
  [v3 setObject:v70 forKey:@"rc1Duration"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_74:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_103;
  }

LABEL_102:
  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc1wlanCrit, v77}];
  [v3 setObject:v71 forKey:@"rc1wlanCrit"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_75:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_104;
  }

LABEL_103:
  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc1wlanCritDuration, v77}];
  [v3 setObject:v72 forKey:@"rc1wlanCritDuration"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_76:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_105;
  }

LABEL_104:
  v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc2Request, v77}];
  [v3 setObject:v73 forKey:@"rc2Request"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_77:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_106;
  }

LABEL_105:
  v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc2Duration, v77}];
  [v3 setObject:v74 forKey:@"rc2Duration"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_78:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_107;
  }

LABEL_106:
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc2Grant, v77}];
  [v3 setObject:v75 forKey:@"rc2Grant"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_79:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_107:
  v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc2LongGrant, v77}];
  [v3 setObject:v76 forKey:@"rc2LongGrant"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_80:
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{self->_rc2cts2a, v77}];
    [v3 setObject:v47 forKey:@"rc2cts2a"];
  }

LABEL_81:
  sdbtdm = self->_sdbtdm;
  if (sdbtdm)
  {
    v49 = [(WiFiAnalyticsAWDWiFiTDM *)sdbtdm dictionaryRepresentation];
    [v3 setObject:v49 forKey:@"sdbtdm"];
  }

  v50 = v3;

  v51 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)writeTo:(id)a3
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v5 = self->_cTLMIndexs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v89;
    do
    {
      v9 = 0;
      do
      {
        if (*v89 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v88 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v7);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v11 = self->_txPowerBackoffDBs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v85;
    do
    {
      v15 = 0;
      do
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v84 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v13);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v17 = self->_txDutyCyclePcts;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v81;
    do
    {
      v21 = 0;
      do
      {
        if (*v81 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v80 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v80 objects:v95 count:16];
    }

    while (v19);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v23 = self->_cTLMIndex1s;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v77;
    do
    {
      v27 = 0;
      do
      {
        if (*v77 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v76 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v25);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v29 = self->_txPowerBackoffDB1s;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v72 objects:v93 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v73;
    do
    {
      v33 = 0;
      do
      {
        if (*v73 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v72 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v72 objects:v93 count:16];
    }

    while (v31);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v35 = self->_txDutyCyclePct1s;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v68 objects:v92 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v69;
    do
    {
      v39 = 0;
      do
      {
        if (*v69 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v68 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v68 objects:v92 count:16];
    }

    while (v37);
  }

  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    txduty0 = self->_txduty0;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_45:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_45;
  }

  txduty1 = self->_txduty1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_46:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

LABEL_74:
  txpowerbackoff0 = self->_txpowerbackoff0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_47:
    if ((*&has & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_76;
  }

LABEL_75:
  txpowerbackoff1 = self->_txpowerbackoff1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_48:
    if ((*&has & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

LABEL_76:
  activechains0 = self->_activechains0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_49:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_78;
  }

LABEL_77:
  activechains1 = self->_activechains1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_50:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  temp0 = self->_temp0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_51:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_79:
  temp1 = self->_temp1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_52:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_80:
  voltage0 = self->_voltage0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_82;
  }

LABEL_81:
  voltage1 = self->_voltage1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_54:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_83;
  }

LABEL_82:
  ppm0 = self->_ppm0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_55:
    if ((*&has & 4) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_84;
  }

LABEL_83:
  ppm1 = self->_ppm1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_56:
    if ((*&has & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

LABEL_84:
  ctlmid0 = self->_ctlmid0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_57:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_86;
  }

LABEL_85:
  ctlmid1 = self->_ctlmid1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_58:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_87;
  }

LABEL_86:
  tvpmindex0 = self->_tvpmindex0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_59:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_87:
  tvpmindex1 = self->_tvpmindex1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_60:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_89;
  }

LABEL_88:
  rc1Request = self->_rc1Request;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_61:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_90;
  }

LABEL_89:
  rc1Duration = self->_rc1Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_62:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_90:
  rc1wlanCrit = self->_rc1wlanCrit;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_63:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_92;
  }

LABEL_91:
  rc1wlanCritDuration = self->_rc1wlanCritDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_64:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_93;
  }

LABEL_92:
  rc2Request = self->_rc2Request;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_65:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_94;
  }

LABEL_93:
  rc2Duration = self->_rc2Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_66:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_94:
  rc2Grant = self->_rc2Grant;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_67:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_95:
  rc2LongGrant = self->_rc2LongGrant;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_68:
    rc2cts2a = self->_rc2cts2a;
    PBDataWriterWriteUint32Field();
  }

LABEL_69:
  if (self->_sdbtdm)
  {
    PBDataWriterWriteSubmessage();
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v30 = a3;
  if ([(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self cTLMIndexsCount])
  {
    [v30 clearCTLMIndexs];
    v4 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self cTLMIndexsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self cTLMIndexAtIndex:i];
        [v30 addCTLMIndex:v7];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDBsCount])
  {
    [v30 clearTxPowerBackoffDBs];
    v8 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDBsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDBAtIndex:j];
        [v30 addTxPowerBackoffDB:v11];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePctsCount])
  {
    [v30 clearTxDutyCyclePcts];
    v12 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePctsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePctAtIndex:k];
        [v30 addTxDutyCyclePct:v15];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self cTLMIndex1sCount])
  {
    [v30 clearCTLMIndex1s];
    v16 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self cTLMIndex1sCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self cTLMIndex1AtIndex:m];
        [v30 addCTLMIndex1:v19];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDB1sCount])
  {
    [v30 clearTxPowerBackoffDB1s];
    v20 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDB1sCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDB1AtIndex:n];
        [v30 addTxPowerBackoffDB1:v23];
      }
    }
  }

  if ([(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePct1sCount])
  {
    [v30 clearTxDutyCyclePct1s];
    v24 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePct1sCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePct1AtIndex:ii];
        [v30 addTxDutyCyclePct1:v27];
      }
    }
  }

  has = self->_has;
  v29 = v30;
  if ((*&has & 0x80000) != 0)
  {
    v30[36] = self->_txduty0;
    v30[42] |= 0x80000u;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_27:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_27;
  }

  v30[37] = self->_txduty1;
  v30[42] |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_28:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v30[38] = self->_txpowerbackoff0;
  v30[42] |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_29:
    if ((*&has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v30[39] = self->_txpowerbackoff1;
  v30[42] |= 0x400000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  v30[2] = self->_activechains0;
  v30[42] |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30[3] = self->_activechains1;
  v30[42] |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  v30[24] = self->_temp0;
  v30[42] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_33:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v30[25] = self->_temp1;
  v30[42] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_34:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v30[40] = self->_voltage0;
  v30[42] |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  v30[41] = self->_voltage1;
  v30[42] |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_36:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  v30[10] = self->_ppm0;
  v30[42] |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_37:
    if ((*&has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_68;
  }

LABEL_67:
  v30[11] = self->_ppm1;
  v30[42] |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_69;
  }

LABEL_68:
  v30[8] = self->_ctlmid0;
  v30[42] |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30[9] = self->_ctlmid1;
  v30[42] |= 8u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_40:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_70:
  v30[26] = self->_tvpmindex0;
  v30[42] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_41:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_72;
  }

LABEL_71:
  v30[27] = self->_tvpmindex1;
  v30[42] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_42:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_73;
  }

LABEL_72:
  v30[13] = self->_rc1Request;
  v30[42] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_43:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_74;
  }

LABEL_73:
  v30[12] = self->_rc1Duration;
  v30[42] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_44:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_75;
  }

LABEL_74:
  v30[14] = self->_rc1wlanCrit;
  v30[42] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_45:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_76;
  }

LABEL_75:
  v30[15] = self->_rc1wlanCritDuration;
  v30[42] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_46:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_77;
  }

LABEL_76:
  v30[19] = self->_rc2Request;
  v30[42] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_47:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_78;
  }

LABEL_77:
  v30[16] = self->_rc2Duration;
  v30[42] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_48:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_79;
  }

LABEL_78:
  v30[17] = self->_rc2Grant;
  v30[42] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_49:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_79:
  v30[18] = self->_rc2LongGrant;
  v30[42] |= 0x1000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_50:
    v30[20] = self->_rc2cts2a;
    v30[42] |= 0x4000u;
  }

LABEL_51:
  if (self->_sdbtdm)
  {
    [v30 setSdbtdm:?];
    v29 = v30;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = self->_cTLMIndexs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v69;
    do
    {
      v10 = 0;
      do
      {
        if (*v69 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v68 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addCTLMIndex:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v8);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v12 = self->_txPowerBackoffDBs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v65;
    do
    {
      v16 = 0;
      do
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v64 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addTxPowerBackoffDB:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v14);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v18 = self->_txDutyCyclePcts;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v60 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v61;
    do
    {
      v22 = 0;
      do
      {
        if (*v61 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v60 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addTxDutyCyclePct:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v60 objects:v75 count:16];
    }

    while (v20);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = self->_cTLMIndex1s;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v57;
    do
    {
      v28 = 0;
      do
      {
        if (*v57 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v56 + 1) + 8 * v28) copyWithZone:a3];
        [v5 addCTLMIndex1:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v26);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v30 = self->_txPowerBackoffDB1s;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v52 objects:v73 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v53;
    do
    {
      v34 = 0;
      do
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v52 + 1) + 8 * v34) copyWithZone:a3];
        [v5 addTxPowerBackoffDB1:v35];

        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v52 objects:v73 count:16];
    }

    while (v32);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v36 = self->_txDutyCyclePct1s;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v48 objects:v72 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v49;
    do
    {
      v40 = 0;
      do
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v48 + 1) + 8 * v40) copyWithZone:{a3, v48}];
        [v5 addTxDutyCyclePct1:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v48 objects:v72 count:16];
    }

    while (v38);
  }

  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    *(v5 + 144) = self->_txduty0;
    *(v5 + 168) |= 0x80000u;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_45:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_72;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_45;
  }

  *(v5 + 148) = self->_txduty1;
  *(v5 + 168) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_46:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 152) = self->_txpowerbackoff0;
  *(v5 + 168) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_47:
    if ((*&has & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 156) = self->_txpowerbackoff1;
  *(v5 + 168) |= 0x400000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_48:
    if ((*&has & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 8) = self->_activechains0;
  *(v5 + 168) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_49:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 12) = self->_activechains1;
  *(v5 + 168) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_50:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 96) = self->_temp0;
  *(v5 + 168) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_51:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 100) = self->_temp1;
  *(v5 + 168) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_52:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 160) = self->_voltage0;
  *(v5 + 168) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 164) = self->_voltage1;
  *(v5 + 168) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_54:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 40) = self->_ppm0;
  *(v5 + 168) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_55:
    if ((*&has & 4) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 44) = self->_ppm1;
  *(v5 + 168) |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_56:
    if ((*&has & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 32) = self->_ctlmid0;
  *(v5 + 168) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_57:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 36) = self->_ctlmid1;
  *(v5 + 168) |= 8u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_58:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 104) = self->_tvpmindex0;
  *(v5 + 168) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_59:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 108) = self->_tvpmindex1;
  *(v5 + 168) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_60:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 52) = self->_rc1Request;
  *(v5 + 168) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_61:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v5 + 48) = self->_rc1Duration;
  *(v5 + 168) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_62:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v5 + 56) = self->_rc1wlanCrit;
  *(v5 + 168) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_63:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v5 + 60) = self->_rc1wlanCritDuration;
  *(v5 + 168) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_64:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v5 + 76) = self->_rc2Request;
  *(v5 + 168) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_65:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v5 + 64) = self->_rc2Duration;
  *(v5 + 168) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_66:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_67;
    }

LABEL_93:
    *(v5 + 72) = self->_rc2LongGrant;
    *(v5 + 168) |= 0x1000u;
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_92:
  *(v5 + 68) = self->_rc2Grant;
  *(v5 + 168) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    goto LABEL_93;
  }

LABEL_67:
  if ((*&has & 0x4000) != 0)
  {
LABEL_68:
    *(v5 + 80) = self->_rc2cts2a;
    *(v5 + 168) |= 0x4000u;
  }

LABEL_69:
  v43 = [(WiFiAnalyticsAWDWiFiTDM *)self->_sdbtdm copyWithZone:a3, v48];
  v44 = *(v5 + 88);
  *(v5 + 88) = v43;

  v45 = v5;
  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_141;
  }

  cTLMIndexs = self->_cTLMIndexs;
  if (cTLMIndexs | *(v4 + 3))
  {
    if (![(NSMutableArray *)cTLMIndexs isEqual:?])
    {
      goto LABEL_141;
    }
  }

  txPowerBackoffDBs = self->_txPowerBackoffDBs;
  if (txPowerBackoffDBs | *(v4 + 17))
  {
    if (![(NSMutableArray *)txPowerBackoffDBs isEqual:?])
    {
      goto LABEL_141;
    }
  }

  txDutyCyclePcts = self->_txDutyCyclePcts;
  if (txDutyCyclePcts | *(v4 + 15))
  {
    if (![(NSMutableArray *)txDutyCyclePcts isEqual:?])
    {
      goto LABEL_141;
    }
  }

  cTLMIndex1s = self->_cTLMIndex1s;
  if (cTLMIndex1s | *(v4 + 2))
  {
    if (![(NSMutableArray *)cTLMIndex1s isEqual:?])
    {
      goto LABEL_141;
    }
  }

  txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
  if (txPowerBackoffDB1s | *(v4 + 16))
  {
    if (![(NSMutableArray *)txPowerBackoffDB1s isEqual:?])
    {
      goto LABEL_141;
    }
  }

  txDutyCyclePct1s = self->_txDutyCyclePct1s;
  if (txDutyCyclePct1s | *(v4 + 14))
  {
    if (![(NSMutableArray *)txDutyCyclePct1s isEqual:?])
    {
      goto LABEL_141;
    }
  }

  has = self->_has;
  v12 = *(v4 + 42);
  if ((*&has & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_txduty0 != *(v4 + 36))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
LABEL_141:
    v14 = 0;
    goto LABEL_142;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_txduty1 != *(v4 + 37))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_txpowerbackoff0 != *(v4 + 38))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0 || self->_txpowerbackoff1 != *(v4 + 39))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_141;
  }

  if (*&has)
  {
    if ((v12 & 1) == 0 || self->_activechains0 != *(v4 + 2))
    {
      goto LABEL_141;
    }
  }

  else if (v12)
  {
    goto LABEL_141;
  }

  if ((*&has & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_activechains1 != *(v4 + 3))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_temp0 != *(v4 + 24))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_temp1 != *(v4 + 25))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0 || self->_voltage0 != *(v4 + 40))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0 || self->_voltage1 != *(v4 + 41))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v12 & 0x10) == 0 || self->_ppm0 != *(v4 + 10))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x10) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_ppm1 != *(v4 + 11))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_ctlmid0 != *(v4 + 8))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_ctlmid1 != *(v4 + 9))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v12 & 0x20000) == 0 || self->_tvpmindex0 != *(v4 + 26))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x20000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_tvpmindex1 != *(v4 + 27))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_rc1Request != *(v4 + 13))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_rc1Duration != *(v4 + 12))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_rc1wlanCrit != *(v4 + 14))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_rc1wlanCritDuration != *(v4 + 15))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_rc2Request != *(v4 + 19))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_rc2Duration != *(v4 + 16))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_rc2Grant != *(v4 + 17))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_rc2LongGrant != *(v4 + 18))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_141;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_rc2cts2a != *(v4 + 20))
    {
      goto LABEL_141;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_141;
  }

  sdbtdm = self->_sdbtdm;
  if (sdbtdm | *(v4 + 11))
  {
    v14 = [(WiFiAnalyticsAWDWiFiTDM *)sdbtdm isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_142:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_cTLMIndexs hash];
  v35 = [(NSMutableArray *)self->_txPowerBackoffDBs hash];
  v34 = [(NSMutableArray *)self->_txDutyCyclePcts hash];
  v33 = [(NSMutableArray *)self->_cTLMIndex1s hash];
  v32 = [(NSMutableArray *)self->_txPowerBackoffDB1s hash];
  v4 = [(NSMutableArray *)self->_txDutyCyclePct1s hash];
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    v31 = 2654435761 * self->_txduty0;
    if ((*&has & 0x100000) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_txduty1;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v31 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_txpowerbackoff0;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_txpowerbackoff1;
    if (*&has)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = 0;
  if (*&has)
  {
LABEL_6:
    v9 = 2654435761 * self->_activechains0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_activechains1;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_temp0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_temp1;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_voltage0;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_11:
    v14 = 2654435761 * self->_voltage1;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_12:
    v15 = 2654435761 * self->_ppm0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_13:
    v16 = 2654435761 * self->_ppm1;
    if ((*&has & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_14:
    v17 = 2654435761 * self->_ctlmid0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_15:
    v18 = 2654435761 * self->_ctlmid1;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_16:
    v19 = 2654435761 * self->_tvpmindex0;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_17:
    v20 = 2654435761 * self->_tvpmindex1;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_18:
    v21 = 2654435761 * self->_rc1Request;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_19:
    v22 = 2654435761 * self->_rc1Duration;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_20:
    v23 = 2654435761 * self->_rc1wlanCrit;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_21:
    v24 = 2654435761 * self->_rc1wlanCritDuration;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_22:
    v25 = 2654435761 * self->_rc2Request;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_23:
    v26 = 2654435761 * self->_rc2Duration;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  v26 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_24:
    v27 = 2654435761 * self->_rc2Grant;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_25;
    }

LABEL_50:
    v28 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_26;
    }

LABEL_51:
    v29 = 0;
    return v35 ^ v3 ^ v34 ^ v33 ^ v32 ^ v4 ^ v31 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ [(WiFiAnalyticsAWDWiFiTDM *)self->_sdbtdm hash];
  }

LABEL_49:
  v27 = 0;
  if ((*&has & 0x1000) == 0)
  {
    goto LABEL_50;
  }

LABEL_25:
  v28 = 2654435761 * self->_rc2LongGrant;
  if ((*&has & 0x4000) == 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  v29 = 2654435761 * self->_rc2cts2a;
  return v35 ^ v3 ^ v34 ^ v33 ^ v32 ^ v4 ^ v31 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ [(WiFiAnalyticsAWDWiFiTDM *)self->_sdbtdm hash];
}

- (void)mergeFrom:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v60;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self addCTLMIndex:*(*(&v59 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v7);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = *(v4 + 17);
  v11 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self addTxPowerBackoffDB:*(*(&v55 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v12);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = *(v4 + 15);
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self addTxDutyCyclePct:*(*(&v51 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v17);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = *(v4 + 2);
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v65 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self addCTLMIndex1:*(*(&v47 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v65 count:16];
    }

    while (v22);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = *(v4 + 16);
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self addTxPowerBackoffDB1:*(*(&v43 + 1) + 8 * n)];
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v64 count:16];
    }

    while (v27);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = *(v4 + 14);
  v31 = [v30 countByEnumeratingWithState:&v39 objects:v63 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v40;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self addTxDutyCyclePct1:*(*(&v39 + 1) + 8 * ii), v39];
      }

      v32 = [v30 countByEnumeratingWithState:&v39 objects:v63 count:16];
    }

    while (v32);
  }

  v35 = *(v4 + 42);
  if ((v35 & 0x80000) != 0)
  {
    self->_txduty0 = *(v4 + 36);
    *&self->_has |= 0x80000u;
    v35 = *(v4 + 42);
    if ((v35 & 0x100000) == 0)
    {
LABEL_45:
      if ((v35 & 0x200000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    }
  }

  else if ((v35 & 0x100000) == 0)
  {
    goto LABEL_45;
  }

  self->_txduty1 = *(v4 + 37);
  *&self->_has |= 0x100000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x200000) == 0)
  {
LABEL_46:
    if ((v35 & 0x400000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_txpowerbackoff0 = *(v4 + 38);
  *&self->_has |= 0x200000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x400000) == 0)
  {
LABEL_47:
    if ((v35 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_txpowerbackoff1 = *(v4 + 39);
  *&self->_has |= 0x400000u;
  v35 = *(v4 + 42);
  if ((v35 & 1) == 0)
  {
LABEL_48:
    if ((v35 & 2) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_activechains0 = *(v4 + 2);
  *&self->_has |= 1u;
  v35 = *(v4 + 42);
  if ((v35 & 2) == 0)
  {
LABEL_49:
    if ((v35 & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_activechains1 = *(v4 + 3);
  *&self->_has |= 2u;
  v35 = *(v4 + 42);
  if ((v35 & 0x8000) == 0)
  {
LABEL_50:
    if ((v35 & 0x10000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_temp0 = *(v4 + 24);
  *&self->_has |= 0x8000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x10000) == 0)
  {
LABEL_51:
    if ((v35 & 0x800000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_temp1 = *(v4 + 25);
  *&self->_has |= 0x10000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x800000) == 0)
  {
LABEL_52:
    if ((v35 & 0x1000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_voltage0 = *(v4 + 40);
  *&self->_has |= 0x800000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x1000000) == 0)
  {
LABEL_53:
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_voltage1 = *(v4 + 41);
  *&self->_has |= 0x1000000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x10) == 0)
  {
LABEL_54:
    if ((v35 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_ppm0 = *(v4 + 10);
  *&self->_has |= 0x10u;
  v35 = *(v4 + 42);
  if ((v35 & 0x20) == 0)
  {
LABEL_55:
    if ((v35 & 4) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_ppm1 = *(v4 + 11);
  *&self->_has |= 0x20u;
  v35 = *(v4 + 42);
  if ((v35 & 4) == 0)
  {
LABEL_56:
    if ((v35 & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_ctlmid0 = *(v4 + 8);
  *&self->_has |= 4u;
  v35 = *(v4 + 42);
  if ((v35 & 8) == 0)
  {
LABEL_57:
    if ((v35 & 0x20000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_ctlmid1 = *(v4 + 9);
  *&self->_has |= 8u;
  v35 = *(v4 + 42);
  if ((v35 & 0x20000) == 0)
  {
LABEL_58:
    if ((v35 & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_tvpmindex0 = *(v4 + 26);
  *&self->_has |= 0x20000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x40000) == 0)
  {
LABEL_59:
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_tvpmindex1 = *(v4 + 27);
  *&self->_has |= 0x40000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x80) == 0)
  {
LABEL_60:
    if ((v35 & 0x40) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_rc1Request = *(v4 + 13);
  *&self->_has |= 0x80u;
  v35 = *(v4 + 42);
  if ((v35 & 0x40) == 0)
  {
LABEL_61:
    if ((v35 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_rc1Duration = *(v4 + 12);
  *&self->_has |= 0x40u;
  v35 = *(v4 + 42);
  if ((v35 & 0x100) == 0)
  {
LABEL_62:
    if ((v35 & 0x200) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_rc1wlanCrit = *(v4 + 14);
  *&self->_has |= 0x100u;
  v35 = *(v4 + 42);
  if ((v35 & 0x200) == 0)
  {
LABEL_63:
    if ((v35 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_rc1wlanCritDuration = *(v4 + 15);
  *&self->_has |= 0x200u;
  v35 = *(v4 + 42);
  if ((v35 & 0x2000) == 0)
  {
LABEL_64:
    if ((v35 & 0x400) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_rc2Request = *(v4 + 19);
  *&self->_has |= 0x2000u;
  v35 = *(v4 + 42);
  if ((v35 & 0x400) == 0)
  {
LABEL_65:
    if ((v35 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_rc2Duration = *(v4 + 16);
  *&self->_has |= 0x400u;
  v35 = *(v4 + 42);
  if ((v35 & 0x800) == 0)
  {
LABEL_66:
    if ((v35 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_rc2Grant = *(v4 + 17);
  *&self->_has |= 0x800u;
  v35 = *(v4 + 42);
  if ((v35 & 0x1000) == 0)
  {
LABEL_67:
    if ((v35 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

LABEL_95:
  self->_rc2LongGrant = *(v4 + 18);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 42) & 0x4000) != 0)
  {
LABEL_68:
    self->_rc2cts2a = *(v4 + 20);
    *&self->_has |= 0x4000u;
  }

LABEL_69:
  sdbtdm = self->_sdbtdm;
  v37 = *(v4 + 11);
  if (sdbtdm)
  {
    if (v37)
    {
      [(WiFiAnalyticsAWDWiFiTDM *)sdbtdm mergeFrom:?];
    }
  }

  else if (v37)
  {
    [(WiFiAnalyticsAWDWiFiNWActivityImpedingFunctions *)self setSdbtdm:?];
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end