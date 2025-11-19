@interface KCellularLteComponentCarrierInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPccBandwidth:(id)a3;
- (int)StringAsScc0Bandwidth:(id)a3;
- (int)StringAsScc1Bandwidth:(id)a3;
- (int)pccBandwidth;
- (int)scc0Bandwidth;
- (int)scc1Bandwidth;
- (unint64_t)hash;
- (void)addCarrierInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPccBandwidth:(BOOL)a3;
- (void)setHasPccEarfcn:(BOOL)a3;
- (void)setHasPccRfBand:(BOOL)a3;
- (void)setHasScc0Bandwidth:(BOOL)a3;
- (void)setHasScc0Earfcn:(BOOL)a3;
- (void)setHasScc0RfBand:(BOOL)a3;
- (void)setHasScc1Bandwidth:(BOOL)a3;
- (void)setHasScc1Earfcn:(BOOL)a3;
- (void)setHasScc1RfBand:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteComponentCarrierInfo

- (void)setHasPccEarfcn:(BOOL)a3
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

- (void)setHasScc0Earfcn:(BOOL)a3
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

- (void)setHasScc1Earfcn:(BOOL)a3
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

- (int)pccBandwidth
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_pccBandwidth;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPccBandwidth:(BOOL)a3
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

- (int)StringAsPccBandwidth:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N6"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N15"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N25"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N50"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N75"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N100"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_COUNT"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)scc0Bandwidth
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_scc0Bandwidth;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScc0Bandwidth:(BOOL)a3
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

- (int)StringAsScc0Bandwidth:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N6"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N15"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N25"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N50"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N75"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N100"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_COUNT"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)scc1Bandwidth
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_scc1Bandwidth;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScc1Bandwidth:(BOOL)a3
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

- (int)StringAsScc1Bandwidth:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N6"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N15"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N25"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N50"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N75"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_N100"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"KLTE_TX_BW_CONFIG_COUNT"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPccRfBand:(BOOL)a3
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

- (void)setHasScc0RfBand:(BOOL)a3
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

- (void)setHasScc1RfBand:(BOOL)a3
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

- (void)addCarrierInfo:(id)a3
{
  v4 = a3;
  carrierInfos = self->_carrierInfos;
  v8 = v4;
  if (!carrierInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_carrierInfos;
    self->_carrierInfos = v6;

    v4 = v8;
    carrierInfos = self->_carrierInfos;
  }

  [(NSMutableArray *)carrierInfos addObject:v4];
}

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularLteComponentCarrierInfo;
  v4 = [(KCellularLteComponentCarrierInfo *)&v8 description];
  v5 = [(KCellularLteComponentCarrierInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v16 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_pccEarfcn];
  [v3 setObject:v17 forKey:@"pcc_earfcn"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scc0Earfcn];
  [v3 setObject:v18 forKey:@"scc0_earfcn"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scc1Earfcn];
  [v3 setObject:v19 forKey:@"scc1_earfcn"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_30:
  pccBandwidth = self->_pccBandwidth;
  if (pccBandwidth >= 7)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_pccBandwidth];
  }

  else
  {
    v21 = off_27825EB60[pccBandwidth];
  }

  [v3 setObject:v21 forKey:@"pcc_bandwidth"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_34:
  scc0Bandwidth = self->_scc0Bandwidth;
  if (scc0Bandwidth >= 7)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scc0Bandwidth];
  }

  else
  {
    v23 = off_27825EB60[scc0Bandwidth];
  }

  [v3 setObject:v23 forKey:@"scc0_bandwidth"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_38:
  scc1Bandwidth = self->_scc1Bandwidth;
  if (scc1Bandwidth >= 7)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_scc1Bandwidth];
  }

  else
  {
    v25 = off_27825EB60[scc1Bandwidth];
  }

  [v3 setObject:v25 forKey:@"scc1_bandwidth"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_pccRfBand];
  [v3 setObject:v26 forKey:@"pcc_rf_band"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_43:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scc0RfBand];
  [v3 setObject:v27 forKey:@"scc0_rf_band"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_scc1RfBand];
    [v3 setObject:v5 forKey:@"scc1_rf_band"];
  }

LABEL_12:
  if ([(NSMutableArray *)self->_carrierInfos count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_carrierInfos, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = self->_carrierInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"carrier_info"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v13 forKey:@"subs_id"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  pccEarfcn = self->_pccEarfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  scc0Earfcn = self->_scc0Earfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  scc1Earfcn = self->_scc1Earfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  pccBandwidth = self->_pccBandwidth;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  scc0Bandwidth = self->_scc0Bandwidth;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  scc1Bandwidth = self->_scc1Bandwidth;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  pccRfBand = self->_pccRfBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  scc0RfBand = self->_scc0RfBand;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    scc1RfBand = self->_scc1RfBand;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_carrierInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 0x400) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 7) = self->_pccEarfcn;
  *(v4 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 10) = self->_scc0Earfcn;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 13) = self->_scc1Earfcn;
  *(v4 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 6) = self->_pccBandwidth;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 9) = self->_scc0Bandwidth;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 12) = self->_scc1Bandwidth;
  *(v4 + 32) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    *(v4 + 11) = self->_scc0RfBand;
    *(v4 + 32) |= 0x40u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_28:
  *(v4 + 8) = self->_pccRfBand;
  *(v4 + 32) |= 8u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((has & 0x200) != 0)
  {
LABEL_11:
    *(v4 + 14) = self->_scc1RfBand;
    *(v4 + 32) |= 0x200u;
  }

LABEL_12:
  v10 = v4;
  if ([(KCellularLteComponentCarrierInfo *)self carrierInfosCount])
  {
    [v10 clearCarrierInfos];
    v6 = [(KCellularLteComponentCarrierInfo *)self carrierInfosCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularLteComponentCarrierInfo *)self carrierInfoAtIndex:i];
        [v10 addCarrierInfo:v9];
      }
    }
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v10 + 15) = self->_subsId;
    *(v10 + 32) |= 0x400u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_pccEarfcn;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 40) = self->_scc0Earfcn;
  *(v5 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 52) = self->_scc1Earfcn;
  *(v5 + 64) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 24) = self->_pccBandwidth;
  *(v5 + 64) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 36) = self->_scc0Bandwidth;
  *(v5 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 48) = self->_scc1Bandwidth;
  *(v5 + 64) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 32) = self->_pccRfBand;
  *(v5 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  *(v5 + 44) = self->_scc0RfBand;
  *(v5 + 64) |= 0x40u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    *(v5 + 56) = self->_scc1RfBand;
    *(v5 + 64) |= 0x200u;
  }

LABEL_12:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_carrierInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
        [v6 addCarrierInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v6 + 60) = self->_subsId;
    *(v6 + 64) |= 0x400u;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_60;
    }
  }

  else if (v6)
  {
    goto LABEL_60;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_pccEarfcn != *(v4 + 7))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_scc0Earfcn != *(v4 + 10))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 32) & 0x100) == 0 || self->_scc1Earfcn != *(v4 + 13))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 32) & 0x100) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_pccBandwidth != *(v4 + 6))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_scc0Bandwidth != *(v4 + 9))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_scc1Bandwidth != *(v4 + 12))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_pccRfBand != *(v4 + 8))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_scc0RfBand != *(v4 + 11))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 32) & 0x200) == 0 || self->_scc1RfBand != *(v4 + 14))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 32) & 0x200) != 0)
  {
    goto LABEL_60;
  }

  carrierInfos = self->_carrierInfos;
  if (carrierInfos | *(v4 + 2))
  {
    if (![(NSMutableArray *)carrierInfos isEqual:?])
    {
LABEL_60:
      v8 = 0;
      goto LABEL_61;
    }

    has = self->_has;
    v6 = *(v4 + 32);
  }

  if ((has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_subsId != *(v4 + 15))
    {
      goto LABEL_60;
    }

    v8 = 1;
  }

  else
  {
    v8 = (v6 & 0x400) == 0;
  }

LABEL_61:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v16 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_pccEarfcn;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_4:
    v14 = 2654435761 * self->_scc0Earfcn;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_scc1Earfcn;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_pccBandwidth;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_scc0Bandwidth;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_scc1Bandwidth;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_pccRfBand;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v9 = 2654435761 * self->_scc0RfBand;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_scc1RfBand;
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  v11 = [(NSMutableArray *)self->_carrierInfos hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v12 = 2654435761 * self->_subsId;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 32);
  if (v6)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 32);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_pccEarfcn = *(v4 + 7);
  *&self->_has |= 4u;
  v6 = *(v4 + 32);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_scc0Earfcn = *(v4 + 10);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 32);
  if ((v6 & 0x100) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_scc1Earfcn = *(v4 + 13);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 32);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_pccBandwidth = *(v4 + 6);
  *&self->_has |= 2u;
  v6 = *(v4 + 32);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_scc0Bandwidth = *(v4 + 9);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 32);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_scc1Bandwidth = *(v4 + 12);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 32);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_pccRfBand = *(v4 + 8);
  *&self->_has |= 8u;
  v6 = *(v4 + 32);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  self->_scc0RfBand = *(v4 + 11);
  *&self->_has |= 0x40u;
  if ((*(v4 + 32) & 0x200) != 0)
  {
LABEL_11:
    self->_scc1RfBand = *(v4 + 14);
    *&self->_has |= 0x200u;
  }

LABEL_12:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(KCellularLteComponentCarrierInfo *)self addCarrierInfo:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if ((v5[16] & 0x400) != 0)
  {
    self->_subsId = v5[15];
    *&self->_has |= 0x400u;
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end