@interface AWDWiFiNWActivityImpedingFunctions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCTLMIndex1:(id)index1;
- (void)addCTLMIndex:(id)index;
- (void)addTxDutyCyclePct1:(id)pct1;
- (void)addTxDutyCyclePct:(id)pct;
- (void)addTxPowerBackoffDB1:(id)b1;
- (void)addTxPowerBackoffDB:(id)b;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasActivechains1:(BOOL)activechains1;
- (void)setHasCtlmid0:(BOOL)ctlmid0;
- (void)setHasCtlmid1:(BOOL)ctlmid1;
- (void)setHasPpm0:(BOOL)ppm0;
- (void)setHasPpm1:(BOOL)ppm1;
- (void)setHasRc1Duration:(BOOL)duration;
- (void)setHasRc1Request:(BOOL)request;
- (void)setHasRc1wlanCrit:(BOOL)crit;
- (void)setHasRc1wlanCritDuration:(BOOL)duration;
- (void)setHasRc2Duration:(BOOL)duration;
- (void)setHasRc2Grant:(BOOL)grant;
- (void)setHasRc2LongGrant:(BOOL)grant;
- (void)setHasRc2Request:(BOOL)request;
- (void)setHasRc2cts2a:(BOOL)rc2cts2a;
- (void)setHasTemp0:(BOOL)temp0;
- (void)setHasTemp1:(BOOL)temp1;
- (void)setHasTvpmindex0:(BOOL)tvpmindex0;
- (void)setHasTvpmindex1:(BOOL)tvpmindex1;
- (void)setHasTxduty0:(BOOL)txduty0;
- (void)setHasTxduty1:(BOOL)txduty1;
- (void)setHasTxpowerbackoff0:(BOOL)txpowerbackoff0;
- (void)setHasTxpowerbackoff1:(BOOL)txpowerbackoff1;
- (void)setHasVoltage0:(BOOL)voltage0;
- (void)setHasVoltage1:(BOOL)voltage1;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityImpedingFunctions

- (void)dealloc
{
  [(AWDWiFiNWActivityImpedingFunctions *)self setCTLMIndexs:0];
  [(AWDWiFiNWActivityImpedingFunctions *)self setTxPowerBackoffDBs:0];
  [(AWDWiFiNWActivityImpedingFunctions *)self setTxDutyCyclePcts:0];
  [(AWDWiFiNWActivityImpedingFunctions *)self setCTLMIndex1s:0];
  [(AWDWiFiNWActivityImpedingFunctions *)self setTxPowerBackoffDB1s:0];
  [(AWDWiFiNWActivityImpedingFunctions *)self setTxDutyCyclePct1s:0];
  [(AWDWiFiNWActivityImpedingFunctions *)self setSdbtdm:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityImpedingFunctions;
  [(AWDWiFiNWActivityImpedingFunctions *)&v3 dealloc];
}

- (void)addCTLMIndex:(id)index
{
  cTLMIndexs = self->_cTLMIndexs;
  if (!cTLMIndexs)
  {
    cTLMIndexs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_cTLMIndexs = cTLMIndexs;
  }

  [(NSMutableArray *)cTLMIndexs addObject:index];
}

- (void)addTxPowerBackoffDB:(id)b
{
  txPowerBackoffDBs = self->_txPowerBackoffDBs;
  if (!txPowerBackoffDBs)
  {
    txPowerBackoffDBs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txPowerBackoffDBs = txPowerBackoffDBs;
  }

  [(NSMutableArray *)txPowerBackoffDBs addObject:b];
}

- (void)addTxDutyCyclePct:(id)pct
{
  txDutyCyclePcts = self->_txDutyCyclePcts;
  if (!txDutyCyclePcts)
  {
    txDutyCyclePcts = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txDutyCyclePcts = txDutyCyclePcts;
  }

  [(NSMutableArray *)txDutyCyclePcts addObject:pct];
}

- (void)addCTLMIndex1:(id)index1
{
  cTLMIndex1s = self->_cTLMIndex1s;
  if (!cTLMIndex1s)
  {
    cTLMIndex1s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_cTLMIndex1s = cTLMIndex1s;
  }

  [(NSMutableArray *)cTLMIndex1s addObject:index1];
}

- (void)addTxPowerBackoffDB1:(id)b1
{
  txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
  if (!txPowerBackoffDB1s)
  {
    txPowerBackoffDB1s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txPowerBackoffDB1s = txPowerBackoffDB1s;
  }

  [(NSMutableArray *)txPowerBackoffDB1s addObject:b1];
}

- (void)addTxDutyCyclePct1:(id)pct1
{
  txDutyCyclePct1s = self->_txDutyCyclePct1s;
  if (!txDutyCyclePct1s)
  {
    txDutyCyclePct1s = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_txDutyCyclePct1s = txDutyCyclePct1s;
  }

  [(NSMutableArray *)txDutyCyclePct1s addObject:pct1];
}

- (void)setHasTxduty0:(BOOL)txduty0
{
  if (txduty0)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasTxduty1:(BOOL)txduty1
{
  if (txduty1)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasTxpowerbackoff0:(BOOL)txpowerbackoff0
{
  if (txpowerbackoff0)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasTxpowerbackoff1:(BOOL)txpowerbackoff1
{
  if (txpowerbackoff1)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasActivechains1:(BOOL)activechains1
{
  if (activechains1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTemp0:(BOOL)temp0
{
  if (temp0)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTemp1:(BOOL)temp1
{
  if (temp1)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasVoltage0:(BOOL)voltage0
{
  if (voltage0)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasVoltage1:(BOOL)voltage1
{
  if (voltage1)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasPpm0:(BOOL)ppm0
{
  if (ppm0)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPpm1:(BOOL)ppm1
{
  if (ppm1)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCtlmid0:(BOOL)ctlmid0
{
  if (ctlmid0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCtlmid1:(BOOL)ctlmid1
{
  if (ctlmid1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTvpmindex0:(BOOL)tvpmindex0
{
  if (tvpmindex0)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasTvpmindex1:(BOOL)tvpmindex1
{
  if (tvpmindex1)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasRc1Request:(BOOL)request
{
  if (request)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRc1Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRc1wlanCrit:(BOOL)crit
{
  if (crit)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasRc1wlanCritDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasRc2Request:(BOOL)request
{
  if (request)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasRc2Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRc2Grant:(BOOL)grant
{
  if (grant)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRc2LongGrant:(BOOL)grant
{
  if (grant)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRc2cts2a:(BOOL)rc2cts2a
{
  if (rc2cts2a)
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
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityImpedingFunctions;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityImpedingFunctions description](&v3, sel_description), -[AWDWiFiNWActivityImpedingFunctions dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v74 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ([(NSMutableArray *)self->_cTLMIndexs count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_cTLMIndexs, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    cTLMIndexs = self->_cTLMIndexs;
    v6 = [(NSMutableArray *)cTLMIndexs countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v65;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v65 != v8)
          {
            objc_enumerationMutation(cTLMIndexs);
          }

          [v4 addObject:{objc_msgSend(*(*(&v64 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)cTLMIndexs countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"CTLMIndex"];
  }

  if ([(NSMutableArray *)self->_txPowerBackoffDBs count])
  {
    v10 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txPowerBackoffDBs, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    txPowerBackoffDBs = self->_txPowerBackoffDBs;
    v12 = [(NSMutableArray *)txPowerBackoffDBs countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v61;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v61 != v14)
          {
            objc_enumerationMutation(txPowerBackoffDBs);
          }

          [v10 addObject:{objc_msgSend(*(*(&v60 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v13 = [(NSMutableArray *)txPowerBackoffDBs countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"TxPowerBackoff_dB"];
  }

  if ([(NSMutableArray *)self->_txDutyCyclePcts count])
  {
    v16 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txDutyCyclePcts, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    txDutyCyclePcts = self->_txDutyCyclePcts;
    v18 = [(NSMutableArray *)txDutyCyclePcts countByEnumeratingWithState:&v56 objects:v71 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v57;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(txDutyCyclePcts);
          }

          [v16 addObject:{objc_msgSend(*(*(&v56 + 1) + 8 * k), "dictionaryRepresentation")}];
        }

        v19 = [(NSMutableArray *)txDutyCyclePcts countByEnumeratingWithState:&v56 objects:v71 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"TxDutyCycle_pct"];
  }

  if ([(NSMutableArray *)self->_cTLMIndex1s count])
  {
    v22 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_cTLMIndex1s, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    cTLMIndex1s = self->_cTLMIndex1s;
    v24 = [(NSMutableArray *)cTLMIndex1s countByEnumeratingWithState:&v52 objects:v70 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      do
      {
        for (m = 0; m != v25; ++m)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(cTLMIndex1s);
          }

          [v22 addObject:{objc_msgSend(*(*(&v52 + 1) + 8 * m), "dictionaryRepresentation")}];
        }

        v25 = [(NSMutableArray *)cTLMIndex1s countByEnumeratingWithState:&v52 objects:v70 count:16];
      }

      while (v25);
    }

    [dictionary setObject:v22 forKey:@"CTLMIndex1"];
  }

  if ([(NSMutableArray *)self->_txPowerBackoffDB1s count])
  {
    v28 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txPowerBackoffDB1s, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
    v30 = [(NSMutableArray *)txPowerBackoffDB1s countByEnumeratingWithState:&v48 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        for (n = 0; n != v31; ++n)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(txPowerBackoffDB1s);
          }

          [v28 addObject:{objc_msgSend(*(*(&v48 + 1) + 8 * n), "dictionaryRepresentation")}];
        }

        v31 = [(NSMutableArray *)txPowerBackoffDB1s countByEnumeratingWithState:&v48 objects:v69 count:16];
      }

      while (v31);
    }

    [dictionary setObject:v28 forKey:@"TxPowerBackoff_dB1"];
  }

  if ([(NSMutableArray *)self->_txDutyCyclePct1s count])
  {
    v34 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_txDutyCyclePct1s, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    txDutyCyclePct1s = self->_txDutyCyclePct1s;
    v36 = [(NSMutableArray *)txDutyCyclePct1s countByEnumeratingWithState:&v44 objects:v68 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v45;
      do
      {
        for (ii = 0; ii != v37; ++ii)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(txDutyCyclePct1s);
          }

          [v34 addObject:{objc_msgSend(*(*(&v44 + 1) + 8 * ii), "dictionaryRepresentation")}];
        }

        v37 = [(NSMutableArray *)txDutyCyclePct1s countByEnumeratingWithState:&v44 objects:v68 count:16];
      }

      while (v37);
    }

    [dictionary setObject:v34 forKey:@"TxDutyCycle_pct1"];
  }

  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txduty0), @"txduty0"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txduty1), @"txduty1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txpowerbackoff0), @"txpowerbackoff0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txpowerbackoff1), @"txpowerbackoff1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_activechains0), @"activechains0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_activechains1), @"activechains1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_temp0), @"temp0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_temp1), @"temp1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_voltage0), @"voltage0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_voltage1), @"voltage1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ppm0), @"ppm0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ppm1), @"ppm1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ctlmid0), @"ctlmid0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ctlmid1), @"ctlmid1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tvpmindex0), @"tvpmindex0"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tvpmindex1), @"tvpmindex1"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc1Request), @"rc1Request"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc1Duration), @"rc1Duration"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc1wlanCrit), @"rc1wlanCrit"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc1wlanCritDuration), @"rc1wlanCritDuration"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc2Request), @"rc2Request"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc2Duration), @"rc2Duration"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc2Grant), @"rc2Grant"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc2LongGrant), @"rc2LongGrant"}];
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_80:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rc2cts2a), @"rc2cts2a"}];
  }

LABEL_81:
  sdbtdm = self->_sdbtdm;
  if (sdbtdm)
  {
    [dictionary setObject:-[AWDWiFiTDM dictionaryRepresentation](sdbtdm forKey:{"dictionaryRepresentation"), @"sdbtdm"}];
  }

  v42 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v97 = *MEMORY[0x29EDCA608];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  cTLMIndexs = self->_cTLMIndexs;
  v5 = [(NSMutableArray *)cTLMIndexs countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v88;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v88 != v7)
        {
          objc_enumerationMutation(cTLMIndexs);
        }

        v9 = *(*(&v87 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)cTLMIndexs countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v6);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  txPowerBackoffDBs = self->_txPowerBackoffDBs;
  v11 = [(NSMutableArray *)txPowerBackoffDBs countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v84;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v84 != v13)
        {
          objc_enumerationMutation(txPowerBackoffDBs);
        }

        v15 = *(*(&v83 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)txPowerBackoffDBs countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v12);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  txDutyCyclePcts = self->_txDutyCyclePcts;
  v17 = [(NSMutableArray *)txDutyCyclePcts countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v80;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v80 != v19)
        {
          objc_enumerationMutation(txDutyCyclePcts);
        }

        v21 = *(*(&v79 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)txDutyCyclePcts countByEnumeratingWithState:&v79 objects:v94 count:16];
    }

    while (v18);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  cTLMIndex1s = self->_cTLMIndex1s;
  v23 = [(NSMutableArray *)cTLMIndex1s countByEnumeratingWithState:&v75 objects:v93 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v76;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v76 != v25)
        {
          objc_enumerationMutation(cTLMIndex1s);
        }

        v27 = *(*(&v75 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v24 = [(NSMutableArray *)cTLMIndex1s countByEnumeratingWithState:&v75 objects:v93 count:16];
    }

    while (v24);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
  v29 = [(NSMutableArray *)txPowerBackoffDB1s countByEnumeratingWithState:&v71 objects:v92 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v72;
    do
    {
      for (n = 0; n != v30; ++n)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(txPowerBackoffDB1s);
        }

        v33 = *(*(&v71 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v30 = [(NSMutableArray *)txPowerBackoffDB1s countByEnumeratingWithState:&v71 objects:v92 count:16];
    }

    while (v30);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  txDutyCyclePct1s = self->_txDutyCyclePct1s;
  v35 = [(NSMutableArray *)txDutyCyclePct1s countByEnumeratingWithState:&v67 objects:v91 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v68;
    do
    {
      for (ii = 0; ii != v36; ++ii)
      {
        if (*v68 != v37)
        {
          objc_enumerationMutation(txDutyCyclePct1s);
        }

        v39 = *(*(&v67 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v36 = [(NSMutableArray *)txDutyCyclePct1s countByEnumeratingWithState:&v67 objects:v91 count:16];
    }

    while (v36);
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

  v42 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if ([(AWDWiFiNWActivityImpedingFunctions *)self cTLMIndexsCount])
  {
    [to clearCTLMIndexs];
    cTLMIndexsCount = [(AWDWiFiNWActivityImpedingFunctions *)self cTLMIndexsCount];
    if (cTLMIndexsCount)
    {
      v6 = cTLMIndexsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addCTLMIndex:{-[AWDWiFiNWActivityImpedingFunctions cTLMIndexAtIndex:](self, "cTLMIndexAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDBsCount])
  {
    [to clearTxPowerBackoffDBs];
    txPowerBackoffDBsCount = [(AWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDBsCount];
    if (txPowerBackoffDBsCount)
    {
      v9 = txPowerBackoffDBsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addTxPowerBackoffDB:{-[AWDWiFiNWActivityImpedingFunctions txPowerBackoffDBAtIndex:](self, "txPowerBackoffDBAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePctsCount])
  {
    [to clearTxDutyCyclePcts];
    txDutyCyclePctsCount = [(AWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePctsCount];
    if (txDutyCyclePctsCount)
    {
      v12 = txDutyCyclePctsCount;
      for (k = 0; k != v12; ++k)
      {
        [to addTxDutyCyclePct:{-[AWDWiFiNWActivityImpedingFunctions txDutyCyclePctAtIndex:](self, "txDutyCyclePctAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityImpedingFunctions *)self cTLMIndex1sCount])
  {
    [to clearCTLMIndex1s];
    cTLMIndex1sCount = [(AWDWiFiNWActivityImpedingFunctions *)self cTLMIndex1sCount];
    if (cTLMIndex1sCount)
    {
      v15 = cTLMIndex1sCount;
      for (m = 0; m != v15; ++m)
      {
        [to addCTLMIndex1:{-[AWDWiFiNWActivityImpedingFunctions cTLMIndex1AtIndex:](self, "cTLMIndex1AtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDB1sCount])
  {
    [to clearTxPowerBackoffDB1s];
    txPowerBackoffDB1sCount = [(AWDWiFiNWActivityImpedingFunctions *)self txPowerBackoffDB1sCount];
    if (txPowerBackoffDB1sCount)
    {
      v18 = txPowerBackoffDB1sCount;
      for (n = 0; n != v18; ++n)
      {
        [to addTxPowerBackoffDB1:{-[AWDWiFiNWActivityImpedingFunctions txPowerBackoffDB1AtIndex:](self, "txPowerBackoffDB1AtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePct1sCount])
  {
    [to clearTxDutyCyclePct1s];
    txDutyCyclePct1sCount = [(AWDWiFiNWActivityImpedingFunctions *)self txDutyCyclePct1sCount];
    if (txDutyCyclePct1sCount)
    {
      v21 = txDutyCyclePct1sCount;
      for (ii = 0; ii != v21; ++ii)
      {
        [to addTxDutyCyclePct1:{-[AWDWiFiNWActivityImpedingFunctions txDutyCyclePct1AtIndex:](self, "txDutyCyclePct1AtIndex:", ii)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    *(to + 36) = self->_txduty0;
    *(to + 42) |= 0x80000u;
    has = self->_has;
    if ((*&has & 0x100000) == 0)
    {
LABEL_27:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_57;
    }
  }

  else if ((*&has & 0x100000) == 0)
  {
    goto LABEL_27;
  }

  *(to + 37) = self->_txduty1;
  *(to + 42) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_28:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 38) = self->_txpowerbackoff0;
  *(to + 42) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_29:
    if ((*&has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(to + 39) = self->_txpowerbackoff1;
  *(to + 42) |= 0x400000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(to + 2) = self->_activechains0;
  *(to + 42) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(to + 3) = self->_activechains1;
  *(to + 42) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(to + 24) = self->_temp0;
  *(to + 42) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_33:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(to + 25) = self->_temp1;
  *(to + 42) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_34:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 40) = self->_voltage0;
  *(to + 42) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 41) = self->_voltage1;
  *(to + 42) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_36:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 10) = self->_ppm0;
  *(to + 42) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_37:
    if ((*&has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 11) = self->_ppm1;
  *(to + 42) |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 8) = self->_ctlmid0;
  *(to + 42) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 9) = self->_ctlmid1;
  *(to + 42) |= 8u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_40:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(to + 26) = self->_tvpmindex0;
  *(to + 42) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_41:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(to + 27) = self->_tvpmindex1;
  *(to + 42) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_42:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(to + 13) = self->_rc1Request;
  *(to + 42) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_43:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(to + 12) = self->_rc1Duration;
  *(to + 42) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_44:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(to + 14) = self->_rc1wlanCrit;
  *(to + 42) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_45:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(to + 15) = self->_rc1wlanCritDuration;
  *(to + 42) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_46:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(to + 19) = self->_rc2Request;
  *(to + 42) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_47:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(to + 16) = self->_rc2Duration;
  *(to + 42) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_48:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(to + 17) = self->_rc2Grant;
  *(to + 42) |= 0x800u;
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

LABEL_78:
  *(to + 18) = self->_rc2LongGrant;
  *(to + 42) |= 0x1000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_50:
    *(to + 20) = self->_rc2cts2a;
    *(to + 42) |= 0x4000u;
  }

LABEL_51:
  if (self->_sdbtdm)
  {

    [to setSdbtdm:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v75 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  cTLMIndexs = self->_cTLMIndexs;
  v7 = [(NSMutableArray *)cTLMIndexs countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(cTLMIndexs);
        }

        v11 = [*(*(&v65 + 1) + 8 * i) copyWithZone:zone];
        [v5 addCTLMIndex:v11];
      }

      v8 = [(NSMutableArray *)cTLMIndexs countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v8);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  txPowerBackoffDBs = self->_txPowerBackoffDBs;
  v13 = [(NSMutableArray *)txPowerBackoffDBs countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v62;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(txPowerBackoffDBs);
        }

        v17 = [*(*(&v61 + 1) + 8 * j) copyWithZone:zone];
        [v5 addTxPowerBackoffDB:v17];
      }

      v14 = [(NSMutableArray *)txPowerBackoffDBs countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v14);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  txDutyCyclePcts = self->_txDutyCyclePcts;
  v19 = [(NSMutableArray *)txDutyCyclePcts countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v58;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(txDutyCyclePcts);
        }

        v23 = [*(*(&v57 + 1) + 8 * k) copyWithZone:zone];
        [v5 addTxDutyCyclePct:v23];
      }

      v20 = [(NSMutableArray *)txDutyCyclePcts countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v20);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  cTLMIndex1s = self->_cTLMIndex1s;
  v25 = [(NSMutableArray *)cTLMIndex1s countByEnumeratingWithState:&v53 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(cTLMIndex1s);
        }

        v29 = [*(*(&v53 + 1) + 8 * m) copyWithZone:zone];
        [v5 addCTLMIndex1:v29];
      }

      v26 = [(NSMutableArray *)cTLMIndex1s countByEnumeratingWithState:&v53 objects:v71 count:16];
    }

    while (v26);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
  v31 = [(NSMutableArray *)txPowerBackoffDB1s countByEnumeratingWithState:&v49 objects:v70 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(txPowerBackoffDB1s);
        }

        v35 = [*(*(&v49 + 1) + 8 * n) copyWithZone:zone];
        [v5 addTxPowerBackoffDB1:v35];
      }

      v32 = [(NSMutableArray *)txPowerBackoffDB1s countByEnumeratingWithState:&v49 objects:v70 count:16];
    }

    while (v32);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  txDutyCyclePct1s = self->_txDutyCyclePct1s;
  v37 = [(NSMutableArray *)txDutyCyclePct1s countByEnumeratingWithState:&v45 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v46;
    do
    {
      for (ii = 0; ii != v38; ++ii)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(txDutyCyclePct1s);
        }

        v41 = [*(*(&v45 + 1) + 8 * ii) copyWithZone:zone];
        [v5 addTxDutyCyclePct1:v41];
      }

      v38 = [(NSMutableArray *)txDutyCyclePct1s countByEnumeratingWithState:&v45 objects:v69 count:16];
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

  *(v5 + 88) = [(AWDWiFiTDM *)self->_sdbtdm copyWithZone:zone];
  v43 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    cTLMIndexs = self->_cTLMIndexs;
    if (!(cTLMIndexs | *(equal + 3)) || (v5 = [(NSMutableArray *)cTLMIndexs isEqual:?]) != 0)
    {
      txPowerBackoffDBs = self->_txPowerBackoffDBs;
      if (!(txPowerBackoffDBs | *(equal + 17)) || (v5 = [(NSMutableArray *)txPowerBackoffDBs isEqual:?]) != 0)
      {
        txDutyCyclePcts = self->_txDutyCyclePcts;
        if (!(txDutyCyclePcts | *(equal + 15)) || (v5 = [(NSMutableArray *)txDutyCyclePcts isEqual:?]) != 0)
        {
          cTLMIndex1s = self->_cTLMIndex1s;
          if (!(cTLMIndex1s | *(equal + 2)) || (v5 = [(NSMutableArray *)cTLMIndex1s isEqual:?]) != 0)
          {
            txPowerBackoffDB1s = self->_txPowerBackoffDB1s;
            if (!(txPowerBackoffDB1s | *(equal + 16)) || (v5 = [(NSMutableArray *)txPowerBackoffDB1s isEqual:?]) != 0)
            {
              txDutyCyclePct1s = self->_txDutyCyclePct1s;
              if (!(txDutyCyclePct1s | *(equal + 14)) || (v5 = [(NSMutableArray *)txDutyCyclePct1s isEqual:?]) != 0)
              {
                has = self->_has;
                v13 = *(equal + 42);
                if ((*&has & 0x80000) != 0)
                {
                  if ((v13 & 0x80000) == 0 || self->_txduty0 != *(equal + 36))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x80000) != 0)
                {
LABEL_141:
                  LOBYTE(v5) = 0;
                  return v5;
                }

                if ((*&has & 0x100000) != 0)
                {
                  if ((v13 & 0x100000) == 0 || self->_txduty1 != *(equal + 37))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x100000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x200000) != 0)
                {
                  if ((v13 & 0x200000) == 0 || self->_txpowerbackoff0 != *(equal + 38))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x200000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x400000) != 0)
                {
                  if ((v13 & 0x400000) == 0 || self->_txpowerbackoff1 != *(equal + 39))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x400000) != 0)
                {
                  goto LABEL_141;
                }

                if (*&has)
                {
                  if ((v13 & 1) == 0 || self->_activechains0 != *(equal + 2))
                  {
                    goto LABEL_141;
                  }
                }

                else if (v13)
                {
                  goto LABEL_141;
                }

                if ((*&has & 2) != 0)
                {
                  if ((v13 & 2) == 0 || self->_activechains1 != *(equal + 3))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 2) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x8000) != 0)
                {
                  if ((v13 & 0x8000) == 0 || self->_temp0 != *(equal + 24))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x8000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x10000) != 0)
                {
                  if ((v13 & 0x10000) == 0 || self->_temp1 != *(equal + 25))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x10000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x800000) != 0)
                {
                  if ((v13 & 0x800000) == 0 || self->_voltage0 != *(equal + 40))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x800000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x1000000) != 0)
                {
                  if ((v13 & 0x1000000) == 0 || self->_voltage1 != *(equal + 41))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x1000000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x10) != 0)
                {
                  if ((v13 & 0x10) == 0 || self->_ppm0 != *(equal + 10))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x10) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x20) != 0)
                {
                  if ((v13 & 0x20) == 0 || self->_ppm1 != *(equal + 11))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x20) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 4) != 0)
                {
                  if ((v13 & 4) == 0 || self->_ctlmid0 != *(equal + 8))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 4) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 8) != 0)
                {
                  if ((v13 & 8) == 0 || self->_ctlmid1 != *(equal + 9))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 8) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x20000) != 0)
                {
                  if ((v13 & 0x20000) == 0 || self->_tvpmindex0 != *(equal + 26))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x20000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x40000) != 0)
                {
                  if ((v13 & 0x40000) == 0 || self->_tvpmindex1 != *(equal + 27))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x40000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x80) != 0)
                {
                  if ((v13 & 0x80) == 0 || self->_rc1Request != *(equal + 13))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x80) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x40) != 0)
                {
                  if ((v13 & 0x40) == 0 || self->_rc1Duration != *(equal + 12))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x40) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x100) != 0)
                {
                  if ((v13 & 0x100) == 0 || self->_rc1wlanCrit != *(equal + 14))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x100) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x200) != 0)
                {
                  if ((v13 & 0x200) == 0 || self->_rc1wlanCritDuration != *(equal + 15))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x200) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x2000) != 0)
                {
                  if ((v13 & 0x2000) == 0 || self->_rc2Request != *(equal + 19))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x2000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x400) != 0)
                {
                  if ((v13 & 0x400) == 0 || self->_rc2Duration != *(equal + 16))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x400) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x800) != 0)
                {
                  if ((v13 & 0x800) == 0 || self->_rc2Grant != *(equal + 17))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x800) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x1000) != 0)
                {
                  if ((v13 & 0x1000) == 0 || self->_rc2LongGrant != *(equal + 18))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x1000) != 0)
                {
                  goto LABEL_141;
                }

                if ((*&has & 0x4000) != 0)
                {
                  if ((v13 & 0x4000) == 0 || self->_rc2cts2a != *(equal + 20))
                  {
                    goto LABEL_141;
                  }
                }

                else if ((v13 & 0x4000) != 0)
                {
                  goto LABEL_141;
                }

                sdbtdm = self->_sdbtdm;
                if (sdbtdm | *(equal + 11))
                {

                  LOBYTE(v5) = [(AWDWiFiTDM *)sdbtdm isEqual:?];
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

  return v5;
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
    return v35 ^ v3 ^ v34 ^ v33 ^ v32 ^ v4 ^ v31 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ [(AWDWiFiTDM *)self->_sdbtdm hash];
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
  return v35 ^ v3 ^ v34 ^ v33 ^ v32 ^ v4 ^ v31 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ [(AWDWiFiTDM *)self->_sdbtdm hash];
}

- (void)mergeFrom:(id)from
{
  v69 = *MEMORY[0x29EDCA608];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = *(from + 3);
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

        [(AWDWiFiNWActivityImpedingFunctions *)self addCTLMIndex:*(*(&v59 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v7);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = *(from + 17);
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

        [(AWDWiFiNWActivityImpedingFunctions *)self addTxPowerBackoffDB:*(*(&v55 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v12);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = *(from + 15);
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

        [(AWDWiFiNWActivityImpedingFunctions *)self addTxDutyCyclePct:*(*(&v51 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v17);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = *(from + 2);
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

        [(AWDWiFiNWActivityImpedingFunctions *)self addCTLMIndex1:*(*(&v47 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v65 count:16];
    }

    while (v22);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = *(from + 16);
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

        [(AWDWiFiNWActivityImpedingFunctions *)self addTxPowerBackoffDB1:*(*(&v43 + 1) + 8 * n)];
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v64 count:16];
    }

    while (v27);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = *(from + 14);
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

        [(AWDWiFiNWActivityImpedingFunctions *)self addTxDutyCyclePct1:*(*(&v39 + 1) + 8 * ii)];
      }

      v32 = [v30 countByEnumeratingWithState:&v39 objects:v63 count:16];
    }

    while (v32);
  }

  v35 = *(from + 42);
  if ((v35 & 0x80000) != 0)
  {
    self->_txduty0 = *(from + 36);
    *&self->_has |= 0x80000u;
    v35 = *(from + 42);
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

  self->_txduty1 = *(from + 37);
  *&self->_has |= 0x100000u;
  v35 = *(from + 42);
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
  self->_txpowerbackoff0 = *(from + 38);
  *&self->_has |= 0x200000u;
  v35 = *(from + 42);
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
  self->_txpowerbackoff1 = *(from + 39);
  *&self->_has |= 0x400000u;
  v35 = *(from + 42);
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
  self->_activechains0 = *(from + 2);
  *&self->_has |= 1u;
  v35 = *(from + 42);
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
  self->_activechains1 = *(from + 3);
  *&self->_has |= 2u;
  v35 = *(from + 42);
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
  self->_temp0 = *(from + 24);
  *&self->_has |= 0x8000u;
  v35 = *(from + 42);
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
  self->_temp1 = *(from + 25);
  *&self->_has |= 0x10000u;
  v35 = *(from + 42);
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
  self->_voltage0 = *(from + 40);
  *&self->_has |= 0x800000u;
  v35 = *(from + 42);
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
  self->_voltage1 = *(from + 41);
  *&self->_has |= 0x1000000u;
  v35 = *(from + 42);
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
  self->_ppm0 = *(from + 10);
  *&self->_has |= 0x10u;
  v35 = *(from + 42);
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
  self->_ppm1 = *(from + 11);
  *&self->_has |= 0x20u;
  v35 = *(from + 42);
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
  self->_ctlmid0 = *(from + 8);
  *&self->_has |= 4u;
  v35 = *(from + 42);
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
  self->_ctlmid1 = *(from + 9);
  *&self->_has |= 8u;
  v35 = *(from + 42);
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
  self->_tvpmindex0 = *(from + 26);
  *&self->_has |= 0x20000u;
  v35 = *(from + 42);
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
  self->_tvpmindex1 = *(from + 27);
  *&self->_has |= 0x40000u;
  v35 = *(from + 42);
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
  self->_rc1Request = *(from + 13);
  *&self->_has |= 0x80u;
  v35 = *(from + 42);
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
  self->_rc1Duration = *(from + 12);
  *&self->_has |= 0x40u;
  v35 = *(from + 42);
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
  self->_rc1wlanCrit = *(from + 14);
  *&self->_has |= 0x100u;
  v35 = *(from + 42);
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
  self->_rc1wlanCritDuration = *(from + 15);
  *&self->_has |= 0x200u;
  v35 = *(from + 42);
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
  self->_rc2Request = *(from + 19);
  *&self->_has |= 0x2000u;
  v35 = *(from + 42);
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
  self->_rc2Duration = *(from + 16);
  *&self->_has |= 0x400u;
  v35 = *(from + 42);
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
  self->_rc2Grant = *(from + 17);
  *&self->_has |= 0x800u;
  v35 = *(from + 42);
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
  self->_rc2LongGrant = *(from + 18);
  *&self->_has |= 0x1000u;
  if ((*(from + 42) & 0x4000) != 0)
  {
LABEL_68:
    self->_rc2cts2a = *(from + 20);
    *&self->_has |= 0x4000u;
  }

LABEL_69:
  sdbtdm = self->_sdbtdm;
  v37 = *(from + 11);
  if (sdbtdm)
  {
    if (v37)
    {
      [(AWDWiFiTDM *)sdbtdm mergeFrom:?];
    }
  }

  else if (v37)
  {
    [(AWDWiFiNWActivityImpedingFunctions *)self setSdbtdm:?];
  }

  v38 = *MEMORY[0x29EDCA608];
}

@end