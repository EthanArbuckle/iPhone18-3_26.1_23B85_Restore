@interface AWDHEStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxheruAtIndex:(unint64_t)index;
- (unsigned)txheruAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDlMumimoPad:(BOOL)pad;
- (void)setHasHeColormissCnt:(BOOL)cnt;
- (void)setHasHeMyAIDCnt:(BOOL)cnt;
- (void)setHasHeNullZeroAgg:(BOOL)agg;
- (void)setHasHeRxhemuppduCnt:(BOOL)cnt;
- (void)setHasHeRxhesuppduCnt:(BOOL)cnt;
- (void)setHasHeRxtrigBasic:(BOOL)basic;
- (void)setHasHeRxtrigBfmCnt:(BOOL)cnt;
- (void)setHasHeRxtrigBsrp:(BOOL)bsrp;
- (void)setHasHeRxtrigMubar:(BOOL)mubar;
- (void)setHasHeRxtrigMurts:(BOOL)murts;
- (void)setHasHeRxtrigMyaid:(BOOL)myaid;
- (void)setHasHeTbppduDur:(BOOL)dur;
- (void)setHasHeTbppduNdlimCnt:(BOOL)cnt;
- (void)setHasHeTxhesuppduCnt:(BOOL)cnt;
- (void)setHasHeTxtbppdu:(BOOL)txtbppdu;
- (void)setHasUlAvgTxpwr:(BOOL)txpwr;
- (void)writeTo:(id)to;
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

- (void)setHasHeRxtrigMyaid:(BOOL)myaid
{
  if (myaid)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasHeRxtrigBasic:(BOOL)basic
{
  if (basic)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasHeRxtrigMurts:(BOOL)murts
{
  if (murts)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasHeRxtrigBsrp:(BOOL)bsrp
{
  if (bsrp)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasHeRxtrigBfmCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasHeRxtrigMubar:(BOOL)mubar
{
  if (mubar)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasHeRxhemuppduCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasHeTxtbppdu:(BOOL)txtbppdu
{
  if (txtbppdu)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasHeRxhesuppduCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasHeNullZeroAgg:(BOOL)agg
{
  if (agg)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasHeMyAIDCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (unsigned)rxheruAtIndex:(unint64_t)index
{
  p_rxherus = &self->_rxherus;
  count = self->_rxherus.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rxherus->list[index];
}

- (unsigned)txheruAtIndex:(unint64_t)index
{
  p_txherus = &self->_txherus;
  count = self->_txherus.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txherus->list[index];
}

- (void)setHasHeTbppduNdlimCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasHeTbppduDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasDlMumimoPad:(BOOL)pad
{
  if (pad)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasUlAvgTxpwr:(BOOL)txpwr
{
  if (txpwr)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasHeColormissCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasHeTxhesuppduCnt:(BOOL)cnt
{
  if (cnt)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigMyaid), @"he_rxtrig_myaid"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigBasic), @"he_rxtrig_basic"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigMurts), @"he_rxtrig_murts"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigBsrp), @"he_rxtrig_bsrp"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigBfmCnt), @"he_rxtrig_bfm_cnt"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxtrigMubar), @"he_rxtrig_mubar"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxhemuppduCnt), @"he_rxhemuppdu_cnt"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTxtbppdu), @"he_txtbppdu"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxhesuppduCnt), @"he_rxhesuppdu_cnt"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heNullZeroAgg), @"he_null_zero_agg"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heMyAIDCnt), @"he_myAID_cnt"}];
  }

LABEL_13:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"rxheru"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"txheru"];
  v5 = self->_has;
  if ((*&v5 & 0x4000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTbppduNdlimCnt), @"he_tbppdu_ndlim_cnt"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTbppduDur), @"he_tbppdu_dur"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dlMumimoPad), @"dl_mumimo_pad"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dlMumimoDur), @"dl_mumimo_dur"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_ulAvgTxpwr), @"ul_avg_txpwr"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heColormissCnt), @"he_colormiss_cnt"}];
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_20:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heTxhesuppduCnt), @"he_txhesuppdu_cnt"}];
  }

LABEL_21:
  omicntrs = self->_omicntrs;
  if (omicntrs)
  {
    [dictionary setObject:-[AWDOMICntrs dictionaryRepresentation](omicntrs forKey:{"dictionaryRepresentation"), @"omicntrs"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    *(to + 26) = self->_heRxtrigMyaid;
    *(to + 35) |= 0x1000u;
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

  *(to + 21) = self->_heRxtrigBasic;
  *(to + 35) |= 0x80u;
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
  *(to + 25) = self->_heRxtrigMurts;
  *(to + 35) |= 0x800u;
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
  *(to + 23) = self->_heRxtrigBsrp;
  *(to + 35) |= 0x200u;
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
  *(to + 22) = self->_heRxtrigBfmCnt;
  *(to + 35) |= 0x100u;
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
  *(to + 24) = self->_heRxtrigMubar;
  *(to + 35) |= 0x400u;
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
  *(to + 19) = self->_heRxhemuppduCnt;
  *(to + 35) |= 0x20u;
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
  *(to + 30) = self->_heTxtbppdu;
  *(to + 35) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_42:
    *(to + 18) = self->_heNullZeroAgg;
    *(to + 35) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_41:
  *(to + 20) = self->_heRxhesuppduCnt;
  *(to + 35) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    goto LABEL_42;
  }

LABEL_11:
  if ((*&has & 8) != 0)
  {
LABEL_12:
    *(to + 17) = self->_heMyAIDCnt;
    *(to + 35) |= 8u;
  }

LABEL_13:
  if ([(AWDHEStats *)self rxherusCount])
  {
    [to clearRxherus];
    rxherusCount = [(AWDHEStats *)self rxherusCount];
    if (rxherusCount)
    {
      v7 = rxherusCount;
      for (i = 0; i != v7; ++i)
      {
        [to addRxheru:{-[AWDHEStats rxheruAtIndex:](self, "rxheruAtIndex:", i)}];
      }
    }
  }

  if ([(AWDHEStats *)self txherusCount])
  {
    [to clearTxherus];
    txherusCount = [(AWDHEStats *)self txherusCount];
    if (txherusCount)
    {
      v10 = txherusCount;
      for (j = 0; j != v10; ++j)
      {
        [to addTxheru:{-[AWDHEStats txheruAtIndex:](self, "txheruAtIndex:", j)}];
      }
    }
  }

  v12 = self->_has;
  if ((*&v12 & 0x4000) != 0)
  {
    *(to + 28) = self->_heTbppduNdlimCnt;
    *(to + 35) |= 0x4000u;
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

  *(to + 27) = self->_heTbppduDur;
  *(to + 35) |= 0x2000u;
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
  *(to + 15) = self->_dlMumimoPad;
  *(to + 35) |= 2u;
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
  *(to + 14) = self->_dlMumimoDur;
  *(to + 35) |= 1u;
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
  *(to + 34) = self->_ulAvgTxpwr;
  *(to + 35) |= 0x20000u;
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
  *(to + 16) = self->_heColormissCnt;
  *(to + 35) |= 4u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_28:
    *(to + 29) = self->_heTxhesuppduCnt;
    *(to + 35) |= 0x8000u;
  }

LABEL_29:
  if (self->_omicntrs)
  {

    [to setOmicntrs:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v6[16] = [(AWDOMICntrs *)self->_omicntrs copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(equal + 35);
    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_heRxtrigMyaid != *(equal + 26))
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
      if ((v7 & 0x80) == 0 || self->_heRxtrigBasic != *(equal + 21))
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
      if ((v7 & 0x800) == 0 || self->_heRxtrigMurts != *(equal + 25))
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
      if ((v7 & 0x200) == 0 || self->_heRxtrigBsrp != *(equal + 23))
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
      if ((v7 & 0x100) == 0 || self->_heRxtrigBfmCnt != *(equal + 22))
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
      if ((v7 & 0x400) == 0 || self->_heRxtrigMubar != *(equal + 24))
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
      if ((v7 & 0x20) == 0 || self->_heRxhemuppduCnt != *(equal + 19))
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
      if ((v7 & 0x10000) == 0 || self->_heTxtbppdu != *(equal + 30))
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
      if ((v7 & 0x40) == 0 || self->_heRxhesuppduCnt != *(equal + 20))
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
      if ((v7 & 0x10) == 0 || self->_heNullZeroAgg != *(equal + 18))
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
      if ((v7 & 8) == 0 || self->_heMyAIDCnt != *(equal + 17))
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
        v9 = *(equal + 35);
        if ((*&v8 & 0x4000) != 0)
        {
          if ((v9 & 0x4000) == 0 || self->_heTbppduNdlimCnt != *(equal + 28))
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
          if ((v9 & 0x2000) == 0 || self->_heTbppduDur != *(equal + 27))
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
          if ((v9 & 2) == 0 || self->_dlMumimoPad != *(equal + 15))
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
          if ((v9 & 1) == 0 || self->_dlMumimoDur != *(equal + 14))
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
          if ((v9 & 0x20000) == 0 || self->_ulAvgTxpwr != *(equal + 34))
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
          if ((v9 & 4) == 0 || self->_heColormissCnt != *(equal + 16))
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
          if ((v9 & 0x8000) == 0 || self->_heTxhesuppduCnt != *(equal + 29))
          {
            goto LABEL_96;
          }
        }

        else if ((v9 & 0x8000) != 0)
        {
          goto LABEL_96;
        }

        omicntrs = self->_omicntrs;
        if (omicntrs | *(equal + 16))
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 35);
  if ((v5 & 0x1000) != 0)
  {
    self->_heRxtrigMyaid = *(from + 26);
    *&self->_has |= 0x1000u;
    v5 = *(from + 35);
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

  self->_heRxtrigBasic = *(from + 21);
  *&self->_has |= 0x80u;
  v5 = *(from + 35);
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
  self->_heRxtrigMurts = *(from + 25);
  *&self->_has |= 0x800u;
  v5 = *(from + 35);
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
  self->_heRxtrigBsrp = *(from + 23);
  *&self->_has |= 0x200u;
  v5 = *(from + 35);
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
  self->_heRxtrigBfmCnt = *(from + 22);
  *&self->_has |= 0x100u;
  v5 = *(from + 35);
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
  self->_heRxtrigMubar = *(from + 24);
  *&self->_has |= 0x400u;
  v5 = *(from + 35);
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
  self->_heRxhemuppduCnt = *(from + 19);
  *&self->_has |= 0x20u;
  v5 = *(from + 35);
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
  self->_heTxtbppdu = *(from + 30);
  *&self->_has |= 0x10000u;
  v5 = *(from + 35);
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
  self->_heRxhesuppduCnt = *(from + 20);
  *&self->_has |= 0x40u;
  v5 = *(from + 35);
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
  self->_heNullZeroAgg = *(from + 18);
  *&self->_has |= 0x10u;
  if ((*(from + 35) & 8) != 0)
  {
LABEL_12:
    self->_heMyAIDCnt = *(from + 17);
    *&self->_has |= 8u;
  }

LABEL_13:
  rxherusCount = [from rxherusCount];
  if (rxherusCount)
  {
    v7 = rxherusCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDHEStats addRxheru:](self, "addRxheru:", [from rxheruAtIndex:i]);
    }
  }

  txherusCount = [from txherusCount];
  if (txherusCount)
  {
    v10 = txherusCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDHEStats addTxheru:](self, "addTxheru:", [from txheruAtIndex:j]);
    }
  }

  v12 = *(from + 35);
  if ((v12 & 0x4000) != 0)
  {
    self->_heTbppduNdlimCnt = *(from + 28);
    *&self->_has |= 0x4000u;
    v12 = *(from + 35);
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

  self->_heTbppduDur = *(from + 27);
  *&self->_has |= 0x2000u;
  v12 = *(from + 35);
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
  self->_dlMumimoPad = *(from + 15);
  *&self->_has |= 2u;
  v12 = *(from + 35);
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
  self->_dlMumimoDur = *(from + 14);
  *&self->_has |= 1u;
  v12 = *(from + 35);
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
  self->_ulAvgTxpwr = *(from + 34);
  *&self->_has |= 0x20000u;
  v12 = *(from + 35);
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
  self->_heColormissCnt = *(from + 16);
  *&self->_has |= 4u;
  if ((*(from + 35) & 0x8000) != 0)
  {
LABEL_26:
    self->_heTxhesuppduCnt = *(from + 29);
    *&self->_has |= 0x8000u;
  }

LABEL_27:
  omicntrs = self->_omicntrs;
  v14 = *(from + 16);
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