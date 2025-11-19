@interface AWDHEStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxheruAtIndex:(unint64_t)a3;
- (unsigned)txheruAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDlMumimoPad:(BOOL)a3;
- (void)setHasHeColormissCnt:(BOOL)a3;
- (void)setHasHeMyAIDCnt:(BOOL)a3;
- (void)setHasHeNullZeroAgg:(BOOL)a3;
- (void)setHasHeRxhemuppduCnt:(BOOL)a3;
- (void)setHasHeRxhesuppduCnt:(BOOL)a3;
- (void)setHasHeRxtrigBasic:(BOOL)a3;
- (void)setHasHeRxtrigBfmCnt:(BOOL)a3;
- (void)setHasHeRxtrigBsrp:(BOOL)a3;
- (void)setHasHeRxtrigMubar:(BOOL)a3;
- (void)setHasHeRxtrigMurts:(BOOL)a3;
- (void)setHasHeRxtrigMyaid:(BOOL)a3;
- (void)setHasHeTbppduDur:(BOOL)a3;
- (void)setHasHeTbppduNdlimCnt:(BOOL)a3;
- (void)setHasHeTxhesuppduCnt:(BOOL)a3;
- (void)setHasHeTxtbppdu:(BOOL)a3;
- (void)setHasUlAvgTxpwr:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDHEStats

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  [(AWDHEStats *)self setOmicntrs:0];
  v3.receiver = self;
  v3.super_class = AWDHEStats;
  [(AWDHEStats *)&v3 dealloc];
}

- (void)setHasHeRxtrigMyaid:(BOOL)a3
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

- (void)setHasHeRxtrigBasic:(BOOL)a3
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

- (void)setHasHeRxtrigMurts:(BOOL)a3
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

- (void)setHasHeRxtrigBsrp:(BOOL)a3
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

- (void)setHasHeRxtrigBfmCnt:(BOOL)a3
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

- (void)setHasHeRxtrigMubar:(BOOL)a3
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

- (void)setHasHeRxhemuppduCnt:(BOOL)a3
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

- (void)setHasHeTxtbppdu:(BOOL)a3
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

- (void)setHasHeRxhesuppduCnt:(BOOL)a3
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

- (void)setHasHeNullZeroAgg:(BOOL)a3
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

- (void)setHasHeMyAIDCnt:(BOOL)a3
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

- (unsigned)rxheruAtIndex:(unint64_t)a3
{
  p_rxherus = &self->_rxherus;
  count = self->_rxherus.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rxherus->list[a3];
}

- (unsigned)txheruAtIndex:(unint64_t)a3
{
  p_txherus = &self->_txherus;
  count = self->_txherus.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txherus->list[a3];
}

- (void)setHasHeTbppduNdlimCnt:(BOOL)a3
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

- (void)setHasHeTbppduDur:(BOOL)a3
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

- (void)setHasDlMumimoPad:(BOOL)a3
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

- (void)setHasUlAvgTxpwr:(BOOL)a3
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

- (void)setHasHeColormissCnt:(BOOL)a3
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

- (void)setHasHeTxhesuppduCnt:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDHEStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDHEStats description](&v3, sel_description), -[AWDHEStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigMyaid), @"he_rxtrig_myaid"}];
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigBasic), @"he_rxtrig_basic"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigMurts), @"he_rxtrig_murts"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigBsrp), @"he_rxtrig_bsrp"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigBfmCnt), @"he_rxtrig_bfm_cnt"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigMubar), @"he_rxtrig_mubar"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxhemuppduCnt), @"he_rxhemuppdu_cnt"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTxtbppdu), @"he_txtbppdu"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxhesuppduCnt), @"he_rxhesuppdu_cnt"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heNullZeroAgg), @"he_null_zero_agg"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heMyAIDCnt), @"he_myAID_cnt"}];
  }

LABEL_13:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"rxheru"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"txheru"];
  v5 = self->_has;
  if ((*&v5 & 0x4000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTbppduNdlimCnt), @"he_tbppdu_ndlim_cnt"}];
    v5 = self->_has;
    if ((*&v5 & 0x2000) == 0)
    {
LABEL_15:
      if ((*&v5 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v5 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTbppduDur), @"he_tbppdu_dur"}];
  v5 = self->_has;
  if ((*&v5 & 2) == 0)
  {
LABEL_16:
    if ((*&v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dlMumimoPad), @"dl_mumimo_pad"}];
  v5 = self->_has;
  if ((*&v5 & 1) == 0)
  {
LABEL_17:
    if ((*&v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dlMumimoDur), @"dl_mumimo_dur"}];
  v5 = self->_has;
  if ((*&v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((*&v5 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_ulAvgTxpwr), @"ul_avg_txpwr"}];
  v5 = self->_has;
  if ((*&v5 & 4) == 0)
  {
LABEL_19:
    if ((*&v5 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heColormissCnt), @"he_colormiss_cnt"}];
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTxhesuppduCnt), @"he_txhesuppdu_cnt"}];
  }

LABEL_21:
  omicntrs = self->_omicntrs;
  if (omicntrs)
  {
    [v3 setObject:-[AWDOMICntrs dictionaryRepresentation](omicntrs forKey:{"dictionaryRepresentation"), @"omicntrs"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    heRxtrigMyaid = self->_heRxtrigMyaid;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  heRxtrigBasic = self->_heRxtrigBasic;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  heRxtrigMurts = self->_heRxtrigMurts;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  heRxtrigBsrp = self->_heRxtrigBsrp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  heRxtrigBfmCnt = self->_heRxtrigBfmCnt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  heRxtrigMubar = self->_heRxtrigMubar;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  heRxhemuppduCnt = self->_heRxhemuppduCnt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  heTxtbppdu = self->_heTxtbppdu;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  heRxhesuppduCnt = self->_heRxhesuppduCnt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_40:
  heNullZeroAgg = self->_heNullZeroAgg;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    heMyAIDCnt = self->_heMyAIDCnt;
    PBDataWriterWriteUint32Field();
  }

LABEL_13:
  if (self->_rxherus.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_rxherus.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_rxherus.count);
  }

  if (self->_txherus.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_txherus.list[v8];
      PBDataWriterWriteUint32Field();
      ++v8;
    }

    while (v8 < self->_txherus.count);
  }

  v10 = self->_has;
  if ((*&v10 & 0x4000) != 0)
  {
    heTbppduNdlimCnt = self->_heTbppduNdlimCnt;
    PBDataWriterWriteUint32Field();
    v10 = self->_has;
    if ((*&v10 & 0x2000) == 0)
    {
LABEL_21:
      if ((*&v10 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v10 & 0x2000) == 0)
  {
    goto LABEL_21;
  }

  heTbppduDur = self->_heTbppduDur;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 2) == 0)
  {
LABEL_22:
    if ((*&v10 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  dlMumimoPad = self->_dlMumimoPad;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 1) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  dlMumimoDur = self->_dlMumimoDur;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 0x20000) == 0)
  {
LABEL_24:
    if ((*&v10 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  ulAvgTxpwr = self->_ulAvgTxpwr;
  PBDataWriterWriteInt32Field();
  v10 = self->_has;
  if ((*&v10 & 4) == 0)
  {
LABEL_25:
    if ((*&v10 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_47:
  heColormissCnt = self->_heColormissCnt;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_26:
    heTxhesuppduCnt = self->_heTxhesuppduCnt;
    PBDataWriterWriteUint32Field();
  }

LABEL_27:
  if (self->_omicntrs)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    *(a3 + 26) = self->_heRxtrigMyaid;
    *(a3 + 35) |= 0x1000u;
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 21) = self->_heRxtrigBasic;
  *(a3 + 35) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 25) = self->_heRxtrigMurts;
  *(a3 + 35) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 23) = self->_heRxtrigBsrp;
  *(a3 + 35) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 22) = self->_heRxtrigBfmCnt;
  *(a3 + 35) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 24) = self->_heRxtrigMubar;
  *(a3 + 35) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 19) = self->_heRxhemuppduCnt;
  *(a3 + 35) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 30) = self->_heTxtbppdu;
  *(a3 + 35) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_42:
    *(a3 + 18) = self->_heNullZeroAgg;
    *(a3 + 35) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_41:
  *(a3 + 20) = self->_heRxhesuppduCnt;
  *(a3 + 35) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    goto LABEL_42;
  }

LABEL_11:
  if ((*&has & 8) != 0)
  {
LABEL_12:
    *(a3 + 17) = self->_heMyAIDCnt;
    *(a3 + 35) |= 8u;
  }

LABEL_13:
  if ([(AWDHEStats *)self rxherusCount])
  {
    [a3 clearRxherus];
    v6 = [(AWDHEStats *)self rxherusCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addRxheru:{-[AWDHEStats rxheruAtIndex:](self, "rxheruAtIndex:", i)}];
      }
    }
  }

  if ([(AWDHEStats *)self txherusCount])
  {
    [a3 clearTxherus];
    v9 = [(AWDHEStats *)self txherusCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addTxheru:{-[AWDHEStats txheruAtIndex:](self, "txheruAtIndex:", j)}];
      }
    }
  }

  v12 = self->_has;
  if ((*&v12 & 0x4000) != 0)
  {
    *(a3 + 28) = self->_heTbppduNdlimCnt;
    *(a3 + 35) |= 0x4000u;
    v12 = self->_has;
    if ((*&v12 & 0x2000) == 0)
    {
LABEL_23:
      if ((*&v12 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v12 & 0x2000) == 0)
  {
    goto LABEL_23;
  }

  *(a3 + 27) = self->_heTbppduDur;
  *(a3 + 35) |= 0x2000u;
  v12 = self->_has;
  if ((*&v12 & 2) == 0)
  {
LABEL_24:
    if ((*&v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 15) = self->_dlMumimoPad;
  *(a3 + 35) |= 2u;
  v12 = self->_has;
  if ((*&v12 & 1) == 0)
  {
LABEL_25:
    if ((*&v12 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 14) = self->_dlMumimoDur;
  *(a3 + 35) |= 1u;
  v12 = self->_has;
  if ((*&v12 & 0x20000) == 0)
  {
LABEL_26:
    if ((*&v12 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 34) = self->_ulAvgTxpwr;
  *(a3 + 35) |= 0x20000u;
  v12 = self->_has;
  if ((*&v12 & 4) == 0)
  {
LABEL_27:
    if ((*&v12 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_49:
  *(a3 + 16) = self->_heColormissCnt;
  *(a3 + 35) |= 4u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_28:
    *(a3 + 29) = self->_heTxhesuppduCnt;
    *(a3 + 35) |= 0x8000u;
  }

LABEL_29:
  if (self->_omicntrs)
  {

    [a3 setOmicntrs:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    *(v5 + 26) = self->_heRxtrigMyaid;
    *(v5 + 35) |= 0x1000u;
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 21) = self->_heRxtrigBasic;
  *(v5 + 35) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 25) = self->_heRxtrigMurts;
  *(v5 + 35) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 23) = self->_heRxtrigBsrp;
  *(v5 + 35) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 22) = self->_heRxtrigBfmCnt;
  *(v5 + 35) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 24) = self->_heRxtrigMubar;
  *(v5 + 35) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 19) = self->_heRxhemuppduCnt;
  *(v5 + 35) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 30) = self->_heTxtbppdu;
  *(v5 + 35) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 20) = self->_heRxhesuppduCnt;
  *(v5 + 35) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  *(v5 + 18) = self->_heNullZeroAgg;
  *(v5 + 35) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    *(v5 + 17) = self->_heMyAIDCnt;
    *(v5 + 35) |= 8u;
  }

LABEL_13:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v8 = self->_has;
  if ((*&v8 & 0x4000) != 0)
  {
    *(v6 + 28) = self->_heTbppduNdlimCnt;
    *(v6 + 35) |= 0x4000u;
    v8 = self->_has;
    if ((*&v8 & 0x2000) == 0)
    {
LABEL_15:
      if ((*&v8 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((*&v8 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  *(v6 + 27) = self->_heTbppduDur;
  *(v6 + 35) |= 0x2000u;
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_16:
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 15) = self->_dlMumimoPad;
  *(v6 + 35) |= 2u;
  v8 = self->_has;
  if ((*&v8 & 1) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 14) = self->_dlMumimoDur;
  *(v6 + 35) |= 1u;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_18:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    *(v6 + 16) = self->_heColormissCnt;
    *(v6 + 35) |= 4u;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_37:
  *(v6 + 34) = self->_ulAvgTxpwr;
  *(v6 + 35) |= 0x20000u;
  v8 = self->_has;
  if ((*&v8 & 4) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((*&v8 & 0x8000) != 0)
  {
LABEL_20:
    *(v6 + 29) = self->_heTxhesuppduCnt;
    *(v6 + 35) |= 0x8000u;
  }

LABEL_21:

  v6[16] = [(AWDOMICntrs *)self->_omicntrs copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(a3 + 35);
    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_heRxtrigMyaid != *(a3 + 26))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
LABEL_96:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_heRxtrigBasic != *(a3 + 21))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_heRxtrigMurts != *(a3 + 25))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_heRxtrigBsrp != *(a3 + 23))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_heRxtrigBfmCnt != *(a3 + 22))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_heRxtrigMubar != *(a3 + 24))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_heRxhemuppduCnt != *(a3 + 19))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_heTxtbppdu != *(a3 + 30))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_heRxhesuppduCnt != *(a3 + 20))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_heNullZeroAgg != *(a3 + 18))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_heMyAIDCnt != *(a3 + 17))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_96;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        v8 = self->_has;
        v9 = *(a3 + 35);
        if ((*&v8 & 0x4000) != 0)
        {
          if ((v9 & 0x4000) == 0 || self->_heTbppduNdlimCnt != *(a3 + 28))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 0x4000) != 0)
        {
          goto LABEL_96;
        }

        if ((*&v8 & 0x2000) != 0)
        {
          if ((v9 & 0x2000) == 0 || self->_heTbppduDur != *(a3 + 27))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 0x2000) != 0)
        {
          goto LABEL_96;
        }

        if ((*&v8 & 2) != 0)
        {
          if ((v9 & 2) == 0 || self->_dlMumimoPad != *(a3 + 15))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 2) != 0)
        {
          goto LABEL_96;
        }

        if (*&v8)
        {
          if ((v9 & 1) == 0 || self->_dlMumimoDur != *(a3 + 14))
          {
            goto LABEL_96;
          }
        }

        else if (v9)
        {
          goto LABEL_96;
        }

        if ((*&v8 & 0x20000) != 0)
        {
          if ((v9 & 0x20000) == 0 || self->_ulAvgTxpwr != *(a3 + 34))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 0x20000) != 0)
        {
          goto LABEL_96;
        }

        if ((*&v8 & 4) != 0)
        {
          if ((v9 & 4) == 0 || self->_heColormissCnt != *(a3 + 16))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 4) != 0)
        {
          goto LABEL_96;
        }

        if ((*&v8 & 0x8000) != 0)
        {
          if ((v9 & 0x8000) == 0 || self->_heTxhesuppduCnt != *(a3 + 29))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 0x8000) != 0)
        {
          goto LABEL_96;
        }

        omicntrs = self->_omicntrs;
        if (omicntrs | *(a3 + 16))
        {

          LOBYTE(IsEqual) = [(AWDOMICntrs *)omicntrs isEqual:?];
        }

        else
        {
          LOBYTE(IsEqual) = 1;
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    v25 = 2654435761 * self->_heRxtrigMyaid;
    if ((*&has & 0x80) != 0)
    {
LABEL_3:
      v24 = 2654435761 * self->_heRxtrigBasic;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v25 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_4:
    v23 = 2654435761 * self->_heRxtrigMurts;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v23 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_5:
    v22 = 2654435761 * self->_heRxtrigBsrp;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v22 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_6:
    v21 = 2654435761 * self->_heRxtrigBfmCnt;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v21 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_heRxtrigMubar;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_heRxhemuppduCnt;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_heTxtbppdu;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_heRxhesuppduCnt;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v8 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v8 = 2654435761 * self->_heNullZeroAgg;
  if ((*&has & 8) != 0)
  {
LABEL_12:
    v9 = 2654435761 * self->_heMyAIDCnt;
    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
LABEL_24:
  v10 = PBRepeatedUInt32Hash();
  v11 = PBRepeatedUInt32Hash();
  v12 = self->_has;
  if ((*&v12 & 0x4000) != 0)
  {
    v13 = 2654435761 * self->_heTbppduNdlimCnt;
    if ((*&v12 & 0x2000) != 0)
    {
LABEL_26:
      v14 = 2654435761 * self->_heTbppduDur;
      if ((*&v12 & 2) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_26;
    }
  }

  v14 = 0;
  if ((*&v12 & 2) != 0)
  {
LABEL_27:
    v15 = 2654435761 * self->_dlMumimoPad;
    if (*&v12)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = 0;
  if (*&v12)
  {
LABEL_28:
    v16 = 2654435761 * self->_dlMumimoDur;
    if ((*&v12 & 0x20000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = 0;
  if ((*&v12 & 0x20000) != 0)
  {
LABEL_29:
    v17 = 2654435761 * self->_ulAvgTxpwr;
    if ((*&v12 & 4) != 0)
    {
      goto LABEL_30;
    }

LABEL_37:
    v18 = 0;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    v19 = 0;
    return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ [(AWDOMICntrs *)self->_omicntrs hash];
  }

LABEL_36:
  v17 = 0;
  if ((*&v12 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  v18 = 2654435761 * self->_heColormissCnt;
  if ((*&v12 & 0x8000) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v19 = 2654435761 * self->_heTxhesuppduCnt;
  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ [(AWDOMICntrs *)self->_omicntrs hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 35);
  if ((v5 & 0x1000) != 0)
  {
    self->_heRxtrigMyaid = *(a3 + 26);
    *&self->_has |= 0x1000u;
    v5 = *(a3 + 35);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_heRxtrigBasic = *(a3 + 21);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 35);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_heRxtrigMurts = *(a3 + 25);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 35);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_heRxtrigBsrp = *(a3 + 23);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 35);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_heRxtrigBfmCnt = *(a3 + 22);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 35);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_heRxtrigMubar = *(a3 + 24);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 35);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_heRxhemuppduCnt = *(a3 + 19);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 35);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_heTxtbppdu = *(a3 + 30);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 35);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_heRxhesuppduCnt = *(a3 + 20);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 35);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_41:
  self->_heNullZeroAgg = *(a3 + 18);
  *&self->_has |= 0x10u;
  if ((*(a3 + 35) & 8) != 0)
  {
LABEL_12:
    self->_heMyAIDCnt = *(a3 + 17);
    *&self->_has |= 8u;
  }

LABEL_13:
  v6 = [a3 rxherusCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDHEStats addRxheru:](self, "addRxheru:", [a3 rxheruAtIndex:i]);
    }
  }

  v9 = [a3 txherusCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDHEStats addTxheru:](self, "addTxheru:", [a3 txheruAtIndex:j]);
    }
  }

  v12 = *(a3 + 35);
  if ((v12 & 0x4000) != 0)
  {
    self->_heTbppduNdlimCnt = *(a3 + 28);
    *&self->_has |= 0x4000u;
    v12 = *(a3 + 35);
    if ((v12 & 0x2000) == 0)
    {
LABEL_21:
      if ((v12 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_45;
    }
  }

  else if ((v12 & 0x2000) == 0)
  {
    goto LABEL_21;
  }

  self->_heTbppduDur = *(a3 + 27);
  *&self->_has |= 0x2000u;
  v12 = *(a3 + 35);
  if ((v12 & 2) == 0)
  {
LABEL_22:
    if ((v12 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_dlMumimoPad = *(a3 + 15);
  *&self->_has |= 2u;
  v12 = *(a3 + 35);
  if ((v12 & 1) == 0)
  {
LABEL_23:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_dlMumimoDur = *(a3 + 14);
  *&self->_has |= 1u;
  v12 = *(a3 + 35);
  if ((v12 & 0x20000) == 0)
  {
LABEL_24:
    if ((v12 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_ulAvgTxpwr = *(a3 + 34);
  *&self->_has |= 0x20000u;
  v12 = *(a3 + 35);
  if ((v12 & 4) == 0)
  {
LABEL_25:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_48:
  self->_heColormissCnt = *(a3 + 16);
  *&self->_has |= 4u;
  if ((*(a3 + 35) & 0x8000) != 0)
  {
LABEL_26:
    self->_heTxhesuppduCnt = *(a3 + 29);
    *&self->_has |= 0x8000u;
  }

LABEL_27:
  omicntrs = self->_omicntrs;
  v14 = *(a3 + 16);
  if (omicntrs)
  {
    if (v14)
    {

      [(AWDOMICntrs *)omicntrs mergeFrom:?];
    }
  }

  else if (v14)
  {

    [(AWDHEStats *)self setOmicntrs:?];
  }
}

@end