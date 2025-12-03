@interface AWDWiFiMetric11axLinkChangeData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)bcnFrmsHistoryAtIndex:(unint64_t)index;
- (int)bcnPerHistoryAtIndex:(unint64_t)index;
- (int)fwTxFrmsHistoryAtIndex:(unint64_t)index;
- (int)fwTxPerHistoryAtIndex:(unint64_t)index;
- (int)rssiHistoryAtIndex:(unint64_t)index;
- (int)txFrmsHistoryAtIndex:(unint64_t)index;
- (int)txPerHistoryAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAkmSuites:(BOOL)suites;
- (void)setHasCapabilities:(BOOL)capabilities;
- (void)setHasChannel:(BOOL)channel;
- (void)setHasChannelWidth:(BOOL)width;
- (void)setHasEnhancedSecurityType:(BOOL)type;
- (void)setHasFlags:(BOOL)flags;
- (void)setHasGatewayARPHistory:(BOOL)history;
- (void)setHasHeBEParamRecord:(BOOL)record;
- (void)setHasHeBKParamRecord:(BOOL)record;
- (void)setHasHeBssMcsNss:(BOOL)nss;
- (void)setHasHeMacCapSubfields:(BOOL)subfields;
- (void)setHasHeOpsParams:(BOOL)params;
- (void)setHasHePhyCapSubfields:(BOOL)subfields;
- (void)setHasHeRxTxMcsMap:(BOOL)map;
- (void)setHasHeStaCnt:(BOOL)cnt;
- (void)setHasHeUtilization:(BOOL)utilization;
- (void)setHasHeVIParamRecord:(BOOL)record;
- (void)setHasHeVOParamRecord:(BOOL)record;
- (void)setHasHtASel:(BOOL)sel;
- (void)setHasHtAmpduParams:(BOOL)params;
- (void)setHasHtExtended:(BOOL)extended;
- (void)setHasHtInfo:(BOOL)info;
- (void)setHasHtTxBf:(BOOL)bf;
- (void)setHasIsInVol:(BOOL)vol;
- (void)setHasIsLinkUp:(BOOL)up;
- (void)setHasMcastCipher:(BOOL)cipher;
- (void)setHasPhyMode:(BOOL)mode;
- (void)setHasReason:(BOOL)reason;
- (void)setHasSecurityType:(BOOL)type;
- (void)setHasSubreason:(BOOL)subreason;
- (void)setHasUcastCipher:(BOOL)cipher;
- (void)setHasVhtInfo:(BOOL)info;
- (void)setHasWpaProtocol:(BOOL)protocol;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetric11axLinkChangeData

- (void)dealloc
{
  PBRepeatedInt32Clear();
  [(AWDWiFiMetric11axLinkChangeData *)self setOui:0];
  [(AWDWiFiMetric11axLinkChangeData *)self setHtSupportedMcsSet:0];
  [(AWDWiFiMetric11axLinkChangeData *)self setVhtSupportedMcsSet:0];
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  [(AWDWiFiMetric11axLinkChangeData *)self setHeCapabilitiesIE:0];
  [(AWDWiFiMetric11axLinkChangeData *)self setHeOperationIE:0];
  [(AWDWiFiMetric11axLinkChangeData *)self setHeBSSLoadIE:0];
  [(AWDWiFiMetric11axLinkChangeData *)self setMuEDCAParametersIE:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetric11axLinkChangeData;
  [(AWDWiFiMetric11axLinkChangeData *)&v3 dealloc];
}

- (int)rssiHistoryAtIndex:(unint64_t)index
{
  p_rssiHistorys = &self->_rssiHistorys;
  count = self->_rssiHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rssiHistorys->list[index];
}

- (void)setHasIsLinkUp:(BOOL)up
{
  v3 = 0x200000000;
  if (!up)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasIsInVol:(BOOL)vol
{
  v3 = 0x100000000;
  if (!vol)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasReason:(BOOL)reason
{
  v3 = 0x4000000;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSubreason:(BOOL)subreason
{
  v3 = 0x10000000;
  if (!subreason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasChannel:(BOOL)channel
{
  v3 = 8;
  if (!channel)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasChannelWidth:(BOOL)width
{
  v3 = 16;
  if (!width)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasPhyMode:(BOOL)mode
{
  v3 = 0x2000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasFlags:(BOOL)flags
{
  v3 = 64;
  if (!flags)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasSecurityType:(BOOL)type
{
  v3 = 0x8000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasWpaProtocol:(BOOL)protocol
{
  v3 = 0x80000000;
  if (!protocol)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasMcastCipher:(BOOL)cipher
{
  v3 = 0x1000000;
  if (!cipher)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasUcastCipher:(BOOL)cipher
{
  v3 = 0x20000000;
  if (!cipher)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasAkmSuites:(BOOL)suites
{
  v3 = 2;
  if (!suites)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasCapabilities:(BOOL)capabilities
{
  v3 = 4;
  if (!capabilities)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasEnhancedSecurityType:(BOOL)type
{
  v3 = 32;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasHtInfo:(BOOL)info
{
  v3 = 0x400000;
  if (!info)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasHtExtended:(BOOL)extended
{
  v3 = 0x200000;
  if (!extended)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasHtTxBf:(BOOL)bf
{
  v3 = 0x800000;
  if (!bf)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasHtASel:(BOOL)sel
{
  v3 = 0x80000;
  if (!sel)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasHtAmpduParams:(BOOL)params
{
  v3 = 0x100000;
  if (!params)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasVhtInfo:(BOOL)info
{
  v3 = 0x40000000;
  if (!info)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (int)txPerHistoryAtIndex:(unint64_t)index
{
  p_txPerHistorys = &self->_txPerHistorys;
  count = self->_txPerHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txPerHistorys->list[index];
}

- (int)txFrmsHistoryAtIndex:(unint64_t)index
{
  p_txFrmsHistorys = &self->_txFrmsHistorys;
  count = self->_txFrmsHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txFrmsHistorys->list[index];
}

- (int)fwTxPerHistoryAtIndex:(unint64_t)index
{
  p_fwTxPerHistorys = &self->_fwTxPerHistorys;
  count = self->_fwTxPerHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_fwTxPerHistorys->list[index];
}

- (int)fwTxFrmsHistoryAtIndex:(unint64_t)index
{
  p_fwTxFrmsHistorys = &self->_fwTxFrmsHistorys;
  count = self->_fwTxFrmsHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_fwTxFrmsHistorys->list[index];
}

- (int)bcnPerHistoryAtIndex:(unint64_t)index
{
  p_bcnPerHistorys = &self->_bcnPerHistorys;
  count = self->_bcnPerHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_bcnPerHistorys->list[index];
}

- (int)bcnFrmsHistoryAtIndex:(unint64_t)index
{
  p_bcnFrmsHistorys = &self->_bcnFrmsHistorys;
  count = self->_bcnFrmsHistorys.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_bcnFrmsHistorys->list[index];
}

- (void)setHasGatewayARPHistory:(BOOL)history
{
  v3 = 128;
  if (!history)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasHeMacCapSubfields:(BOOL)subfields
{
  v3 = 2048;
  if (!subfields)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasHePhyCapSubfields:(BOOL)subfields
{
  v3 = 0x2000;
  if (!subfields)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasHeRxTxMcsMap:(BOOL)map
{
  v3 = 0x4000;
  if (!map)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasHeOpsParams:(BOOL)params
{
  v3 = 4096;
  if (!params)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasHeBssMcsNss:(BOOL)nss
{
  v3 = 1024;
  if (!nss)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasHeStaCnt:(BOOL)cnt
{
  v3 = 0x8000;
  if (!cnt)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasHeUtilization:(BOOL)utilization
{
  v3 = 0x10000;
  if (!utilization)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasHeBEParamRecord:(BOOL)record
{
  v3 = 256;
  if (!record)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasHeBKParamRecord:(BOOL)record
{
  v3 = 512;
  if (!record)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasHeVIParamRecord:(BOOL)record
{
  v3 = 0x20000;
  if (!record)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasHeVOParamRecord:(BOOL)record
{
  v3 = 0x40000;
  if (!record)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetric11axLinkChangeData;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetric11axLinkChangeData description](&v3, sel_description), -[AWDWiFiMetric11axLinkChangeData dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"rssiHistory"];
  has = self->_has;
  if ((*&has & 0x200000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isLinkUp), @"isLinkUp"}];
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isInVol), @"isInVol"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reason), @"reason"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_subreason), @"subreason"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelWidth), @"channelWidth"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyMode), @"phyMode"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flags), @"flags"}];
  }

LABEL_12:
  oui = self->_oui;
  if (oui)
  {
    [dictionary setObject:oui forKey:@"oui"];
  }

  v6 = self->_has;
  if ((*&v6 & 0x8000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
    v6 = self->_has;
    if ((*&v6 & 0x80000000) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x1000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v6 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wpaProtocol), @"wpaProtocol"}];
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mcastCipher), @"mcastCipher"}];
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_18:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ucastCipher), @"ucastCipher"}];
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_19:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_akmSuites), @"akmSuites"}];
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_enhancedSecurityType), @"enhancedSecurityType"}];
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htInfo), @"htInfo"}];
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htExtended), @"htExtended"}];
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htTxBf), @"htTxBf"}];
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htASel), @"htASel"}];
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_26:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htAmpduParams), @"htAmpduParams"}];
  }

LABEL_27:
  htSupportedMcsSet = self->_htSupportedMcsSet;
  if (htSupportedMcsSet)
  {
    [dictionary setObject:htSupportedMcsSet forKey:@"htSupportedMcsSet"];
  }

  if ((*(&self->_has + 3) & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_vhtInfo), @"vhtInfo"}];
  }

  vhtSupportedMcsSet = self->_vhtSupportedMcsSet;
  if (vhtSupportedMcsSet)
  {
    [dictionary setObject:vhtSupportedMcsSet forKey:@"vhtSupportedMcsSet"];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"txPerHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"txFrmsHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"fwTxPerHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"fwTxFrmsHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"bcnPerHistory"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"bcnFrmsHistory"];
  if ((*&self->_has & 0x80) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayARPHistory), @"gatewayARPHistory"}];
  }

  heCapabilitiesIE = self->_heCapabilitiesIE;
  if (heCapabilitiesIE)
  {
    [dictionary setObject:heCapabilitiesIE forKey:@"heCapabilitiesIE"];
  }

  heOperationIE = self->_heOperationIE;
  if (heOperationIE)
  {
    [dictionary setObject:heOperationIE forKey:@"heOperationIE"];
  }

  heBSSLoadIE = self->_heBSSLoadIE;
  if (heBSSLoadIE)
  {
    [dictionary setObject:heBSSLoadIE forKey:@"heBSSLoadIE"];
  }

  muEDCAParametersIE = self->_muEDCAParametersIE;
  if (muEDCAParametersIE)
  {
    [dictionary setObject:muEDCAParametersIE forKey:@"muEDCAParametersIE"];
  }

  v13 = self->_has;
  if ((*&v13 & 0x800) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heMacCapSubfields), @"heMacCapSubfields"}];
    v13 = self->_has;
    if ((*&v13 & 0x2000) == 0)
    {
LABEL_45:
      if ((*&v13 & 0x4000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_78;
    }
  }

  else if ((*&v13 & 0x2000) == 0)
  {
    goto LABEL_45;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hePhyCapSubfields), @"hePhyCapSubfields"}];
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_46:
    if ((*&v13 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_78:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heRxTxMcsMap), @"heRxTxMcsMap"}];
  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_47:
    if ((*&v13 & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_80;
  }

LABEL_79:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOpsParams), @"heOpsParams"}];
  v13 = self->_has;
  if ((*&v13 & 0x400) == 0)
  {
LABEL_48:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_81;
  }

LABEL_80:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heBssMcsNss), @"heBssMcsNss"}];
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_49:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_82;
  }

LABEL_81:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heStaCnt), @"heStaCnt"}];
  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_50:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_83;
  }

LABEL_82:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heUtilization), @"heUtilization"}];
  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_51:
    if ((*&v13 & 0x200) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_84;
  }

LABEL_83:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heBEParamRecord), @"heBEParamRecord"}];
  v13 = self->_has;
  if ((*&v13 & 0x200) == 0)
  {
LABEL_52:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_53;
    }

LABEL_85:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heVIParamRecord), @"heVIParamRecord"}];
    if ((*&self->_has & 0x40000) == 0)
    {
      return dictionary;
    }

    goto LABEL_54;
  }

LABEL_84:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heBKParamRecord), @"heBKParamRecord"}];
  v13 = self->_has;
  if ((*&v13 & 0x20000) != 0)
  {
    goto LABEL_85;
  }

LABEL_53:
  if ((*&v13 & 0x40000) != 0)
  {
LABEL_54:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heVOParamRecord), @"heVOParamRecord"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_rssiHistorys.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_rssiHistorys.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_rssiHistorys.count);
  }

  has = self->_has;
  if ((*&has & 0x200000000) != 0)
  {
    isLinkUp = self->_isLinkUp;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_8:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_78;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

  isInVol = self->_isInVol;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_79;
  }

LABEL_78:
  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_80;
  }

LABEL_79:
  subreason = self->_subreason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

LABEL_80:
  channel = self->_channel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_82;
  }

LABEL_81:
  channelWidth = self->_channelWidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_82:
  phyMode = self->_phyMode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_14:
    flags = self->_flags;
    PBDataWriterWriteUint32Field();
  }

LABEL_15:
  if (self->_oui)
  {
    PBDataWriterWriteDataField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000000) != 0)
  {
    securityType = self->_securityType;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((*&v9 & 0x80000000) == 0)
    {
LABEL_19:
      if ((*&v9 & 0x1000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v9 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  wpaProtocol = self->_wpaProtocol;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x20000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_87;
  }

LABEL_86:
  mcastCipher = self->_mcastCipher;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x20000000) == 0)
  {
LABEL_21:
    if ((*&v9 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_87:
  ucastCipher = self->_ucastCipher;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 2) == 0)
  {
LABEL_22:
    if ((*&v9 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_89;
  }

LABEL_88:
  akmSuites = self->_akmSuites;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_90;
  }

LABEL_89:
  capabilities = self->_capabilities;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_91;
  }

LABEL_90:
  enhancedSecurityType = self->_enhancedSecurityType;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_92;
  }

LABEL_91:
  htInfo = self->_htInfo;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_93;
  }

LABEL_92:
  htExtended = self->_htExtended;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_94;
  }

LABEL_93:
  htTxBf = self->_htTxBf;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_94:
  htASel = self->_htASel;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_29:
    htAmpduParams = self->_htAmpduParams;
    PBDataWriterWriteUint32Field();
  }

LABEL_30:
  if (self->_htSupportedMcsSet)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 3) & 0x40) != 0)
  {
    vhtInfo = self->_vhtInfo;
    PBDataWriterWriteUint32Field();
  }

  if (self->_vhtSupportedMcsSet)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_txPerHistorys.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_txPerHistorys.list[v12];
      PBDataWriterWriteInt32Field();
      ++v12;
    }

    while (v12 < self->_txPerHistorys.count);
  }

  if (self->_txFrmsHistorys.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_txFrmsHistorys.list[v14];
      PBDataWriterWriteInt32Field();
      ++v14;
    }

    while (v14 < self->_txFrmsHistorys.count);
  }

  if (self->_fwTxPerHistorys.count)
  {
    v16 = 0;
    do
    {
      v17 = self->_fwTxPerHistorys.list[v16];
      PBDataWriterWriteInt32Field();
      ++v16;
    }

    while (v16 < self->_fwTxPerHistorys.count);
  }

  if (self->_fwTxFrmsHistorys.count)
  {
    v18 = 0;
    do
    {
      v19 = self->_fwTxFrmsHistorys.list[v18];
      PBDataWriterWriteInt32Field();
      ++v18;
    }

    while (v18 < self->_fwTxFrmsHistorys.count);
  }

  if (self->_bcnPerHistorys.count)
  {
    v20 = 0;
    do
    {
      v21 = self->_bcnPerHistorys.list[v20];
      PBDataWriterWriteInt32Field();
      ++v20;
    }

    while (v20 < self->_bcnPerHistorys.count);
  }

  if (self->_bcnFrmsHistorys.count)
  {
    v22 = 0;
    do
    {
      v23 = self->_bcnFrmsHistorys.list[v22];
      PBDataWriterWriteInt32Field();
      ++v22;
    }

    while (v22 < self->_bcnFrmsHistorys.count);
  }

  if ((*&self->_has & 0x80) != 0)
  {
    gatewayARPHistory = self->_gatewayARPHistory;
    PBDataWriterWriteUint32Field();
  }

  if (self->_heCapabilitiesIE)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_heOperationIE)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_heBSSLoadIE)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_muEDCAParametersIE)
  {
    PBDataWriterWriteDataField();
  }

  v25 = self->_has;
  if ((*&v25 & 0x800) != 0)
  {
    heMacCapSubfields = self->_heMacCapSubfields;
    PBDataWriterWriteUint32Field();
    v25 = self->_has;
    if ((*&v25 & 0x2000) == 0)
    {
LABEL_66:
      if ((*&v25 & 0x4000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_98;
    }
  }

  else if ((*&v25 & 0x2000) == 0)
  {
    goto LABEL_66;
  }

  hePhyCapSubfields = self->_hePhyCapSubfields;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x4000) == 0)
  {
LABEL_67:
    if ((*&v25 & 0x1000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_99;
  }

LABEL_98:
  heRxTxMcsMap = self->_heRxTxMcsMap;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x1000) == 0)
  {
LABEL_68:
    if ((*&v25 & 0x400) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_100;
  }

LABEL_99:
  heOpsParams = self->_heOpsParams;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x400) == 0)
  {
LABEL_69:
    if ((*&v25 & 0x8000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_101;
  }

LABEL_100:
  heBssMcsNss = self->_heBssMcsNss;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x8000) == 0)
  {
LABEL_70:
    if ((*&v25 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_102;
  }

LABEL_101:
  heStaCnt = self->_heStaCnt;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x10000) == 0)
  {
LABEL_71:
    if ((*&v25 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_103;
  }

LABEL_102:
  heUtilization = self->_heUtilization;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x100) == 0)
  {
LABEL_72:
    if ((*&v25 & 0x200) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_104;
  }

LABEL_103:
  heBEParamRecord = self->_heBEParamRecord;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x200) == 0)
  {
LABEL_73:
    if ((*&v25 & 0x20000) == 0)
    {
      goto LABEL_74;
    }

LABEL_105:
    heVIParamRecord = self->_heVIParamRecord;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x40000) == 0)
    {
      return;
    }

    goto LABEL_106;
  }

LABEL_104:
  heBKParamRecord = self->_heBKParamRecord;
  PBDataWriterWriteUint32Field();
  v25 = self->_has;
  if ((*&v25 & 0x20000) != 0)
  {
    goto LABEL_105;
  }

LABEL_74:
  if ((*&v25 & 0x40000) == 0)
  {
    return;
  }

LABEL_106:
  heVOParamRecord = self->_heVOParamRecord;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 22) = self->_timestamp;
    *(to + 48) |= 1uLL;
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self rssiHistorysCount])
  {
    [to clearRssiHistorys];
    rssiHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self rssiHistorysCount];
    if (rssiHistorysCount)
    {
      v6 = rssiHistorysCount;
      for (i = 0; i != v6; ++i)
      {
        [to addRssiHistory:{-[AWDWiFiMetric11axLinkChangeData rssiHistoryAtIndex:](self, "rssiHistoryAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x200000000) != 0)
  {
    *(to + 381) = self->_isLinkUp;
    *(to + 48) |= 0x200000000uLL;
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_9:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_86;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

  *(to + 380) = self->_isInVol;
  *(to + 48) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(to + 87) = self->_reason;
  *(to + 48) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(to + 89) = self->_subreason;
  *(to + 48) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(to + 48) = self->_channel;
  *(to + 48) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(to + 49) = self->_channelWidth;
  *(to + 48) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_90:
  *(to + 86) = self->_phyMode;
  *(to + 48) |= 0x2000000uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_15:
    *(to + 51) = self->_flags;
    *(to + 48) |= 0x40uLL;
  }

LABEL_16:
  if (self->_oui)
  {
    [to setOui:?];
  }

  v9 = self->_has;
  if ((*&v9 & 0x8000000) != 0)
  {
    *(to + 88) = self->_securityType;
    *(to + 48) |= 0x8000000uLL;
    v9 = self->_has;
    if ((*&v9 & 0x80000000) == 0)
    {
LABEL_20:
      if ((*&v9 & 0x1000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_94;
    }
  }

  else if ((*&v9 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  *(to + 94) = self->_wpaProtocol;
  *(to + 48) |= 0x80000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x20000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(to + 81) = self->_mcastCipher;
  *(to + 48) |= 0x1000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20000000) == 0)
  {
LABEL_22:
    if ((*&v9 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(to + 90) = self->_ucastCipher;
  *(to + 48) |= 0x20000000uLL;
  v9 = self->_has;
  if ((*&v9 & 2) == 0)
  {
LABEL_23:
    if ((*&v9 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(to + 46) = self->_akmSuites;
  *(to + 48) |= 2uLL;
  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(to + 47) = self->_capabilities;
  *(to + 48) |= 4uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(to + 50) = self->_enhancedSecurityType;
  *(to + 48) |= 0x20uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(to + 76) = self->_htInfo;
  *(to + 48) |= 0x400000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(to + 75) = self->_htExtended;
  *(to + 48) |= 0x200000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(to + 80) = self->_htTxBf;
  *(to + 48) |= 0x800000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_102:
  *(to + 73) = self->_htASel;
  *(to + 48) |= 0x80000uLL;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_30:
    *(to + 74) = self->_htAmpduParams;
    *(to + 48) |= 0x100000uLL;
  }

LABEL_31:
  if (self->_htSupportedMcsSet)
  {
    [to setHtSupportedMcsSet:?];
  }

  if ((*(&self->_has + 3) & 0x40) != 0)
  {
    *(to + 91) = self->_vhtInfo;
    *(to + 48) |= 0x40000000uLL;
  }

  if (self->_vhtSupportedMcsSet)
  {
    [to setVhtSupportedMcsSet:?];
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self txPerHistorysCount])
  {
    [to clearTxPerHistorys];
    txPerHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self txPerHistorysCount];
    if (txPerHistorysCount)
    {
      v11 = txPerHistorysCount;
      for (j = 0; j != v11; ++j)
      {
        [to addTxPerHistory:{-[AWDWiFiMetric11axLinkChangeData txPerHistoryAtIndex:](self, "txPerHistoryAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self txFrmsHistorysCount])
  {
    [to clearTxFrmsHistorys];
    txFrmsHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self txFrmsHistorysCount];
    if (txFrmsHistorysCount)
    {
      v14 = txFrmsHistorysCount;
      for (k = 0; k != v14; ++k)
      {
        [to addTxFrmsHistory:{-[AWDWiFiMetric11axLinkChangeData txFrmsHistoryAtIndex:](self, "txFrmsHistoryAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self fwTxPerHistorysCount])
  {
    [to clearFwTxPerHistorys];
    fwTxPerHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self fwTxPerHistorysCount];
    if (fwTxPerHistorysCount)
    {
      v17 = fwTxPerHistorysCount;
      for (m = 0; m != v17; ++m)
      {
        [to addFwTxPerHistory:{-[AWDWiFiMetric11axLinkChangeData fwTxPerHistoryAtIndex:](self, "fwTxPerHistoryAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self fwTxFrmsHistorysCount])
  {
    [to clearFwTxFrmsHistorys];
    fwTxFrmsHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self fwTxFrmsHistorysCount];
    if (fwTxFrmsHistorysCount)
    {
      v20 = fwTxFrmsHistorysCount;
      for (n = 0; n != v20; ++n)
      {
        [to addFwTxFrmsHistory:{-[AWDWiFiMetric11axLinkChangeData fwTxFrmsHistoryAtIndex:](self, "fwTxFrmsHistoryAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self bcnPerHistorysCount])
  {
    [to clearBcnPerHistorys];
    bcnPerHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self bcnPerHistorysCount];
    if (bcnPerHistorysCount)
    {
      v23 = bcnPerHistorysCount;
      for (ii = 0; ii != v23; ++ii)
      {
        [to addBcnPerHistory:{-[AWDWiFiMetric11axLinkChangeData bcnPerHistoryAtIndex:](self, "bcnPerHistoryAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetric11axLinkChangeData *)self bcnFrmsHistorysCount])
  {
    [to clearBcnFrmsHistorys];
    bcnFrmsHistorysCount = [(AWDWiFiMetric11axLinkChangeData *)self bcnFrmsHistorysCount];
    if (bcnFrmsHistorysCount)
    {
      v26 = bcnFrmsHistorysCount;
      for (jj = 0; jj != v26; ++jj)
      {
        [to addBcnFrmsHistory:{-[AWDWiFiMetric11axLinkChangeData bcnFrmsHistoryAtIndex:](self, "bcnFrmsHistoryAtIndex:", jj)}];
      }
    }
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(to + 52) = self->_gatewayARPHistory;
    *(to + 48) |= 0x80uLL;
  }

  if (self->_heCapabilitiesIE)
  {
    [to setHeCapabilitiesIE:?];
  }

  if (self->_heOperationIE)
  {
    [to setHeOperationIE:?];
  }

  if (self->_heBSSLoadIE)
  {
    [to setHeBSSLoadIE:?];
  }

  if (self->_muEDCAParametersIE)
  {
    [to setMuEDCAParametersIE:?];
  }

  v28 = self->_has;
  if ((*&v28 & 0x800) != 0)
  {
    *(to + 62) = self->_heMacCapSubfields;
    *(to + 48) |= 0x800uLL;
    v28 = self->_has;
    if ((*&v28 & 0x2000) == 0)
    {
LABEL_73:
      if ((*&v28 & 0x4000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_106;
    }
  }

  else if ((*&v28 & 0x2000) == 0)
  {
    goto LABEL_73;
  }

  *(to + 67) = self->_hePhyCapSubfields;
  *(to + 48) |= 0x2000uLL;
  v28 = self->_has;
  if ((*&v28 & 0x4000) == 0)
  {
LABEL_74:
    if ((*&v28 & 0x1000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(to + 68) = self->_heRxTxMcsMap;
  *(to + 48) |= 0x4000uLL;
  v28 = self->_has;
  if ((*&v28 & 0x1000) == 0)
  {
LABEL_75:
    if ((*&v28 & 0x400) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(to + 66) = self->_heOpsParams;
  *(to + 48) |= 0x1000uLL;
  v28 = self->_has;
  if ((*&v28 & 0x400) == 0)
  {
LABEL_76:
    if ((*&v28 & 0x8000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(to + 58) = self->_heBssMcsNss;
  *(to + 48) |= 0x400uLL;
  v28 = self->_has;
  if ((*&v28 & 0x8000) == 0)
  {
LABEL_77:
    if ((*&v28 & 0x10000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(to + 69) = self->_heStaCnt;
  *(to + 48) |= 0x8000uLL;
  v28 = self->_has;
  if ((*&v28 & 0x10000) == 0)
  {
LABEL_78:
    if ((*&v28 & 0x100) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(to + 70) = self->_heUtilization;
  *(to + 48) |= 0x10000uLL;
  v28 = self->_has;
  if ((*&v28 & 0x100) == 0)
  {
LABEL_79:
    if ((*&v28 & 0x200) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(to + 53) = self->_heBEParamRecord;
  *(to + 48) |= 0x100uLL;
  v28 = self->_has;
  if ((*&v28 & 0x200) == 0)
  {
LABEL_80:
    if ((*&v28 & 0x20000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(to + 54) = self->_heBKParamRecord;
  *(to + 48) |= 0x200uLL;
  v28 = self->_has;
  if ((*&v28 & 0x20000) == 0)
  {
LABEL_81:
    if ((*&v28 & 0x40000) == 0)
    {
      return;
    }

    goto LABEL_82;
  }

LABEL_113:
  *(to + 71) = self->_heVIParamRecord;
  *(to + 48) |= 0x20000uLL;
  if ((*&self->_has & 0x40000) == 0)
  {
    return;
  }

LABEL_82:
  *(to + 72) = self->_heVOParamRecord;
  *(to + 48) |= 0x40000uLL;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 176) = self->_timestamp;
    *(v5 + 384) |= 1uLL;
  }

  PBRepeatedInt32Copy();
  has = self->_has;
  if ((*&has & 0x200000000) != 0)
  {
    *(v6 + 381) = self->_isLinkUp;
    *(v6 + 384) |= 0x200000000uLL;
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x4000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 380) = self->_isInVol;
  *(v6 + 384) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 348) = self->_reason;
  *(v6 + 384) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 356) = self->_subreason;
  *(v6 + 384) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 192) = self->_channel;
  *(v6 + 384) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 196) = self->_channelWidth;
  *(v6 + 384) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_48:
  *(v6 + 344) = self->_phyMode;
  *(v6 + 384) |= 0x2000000uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    *(v6 + 204) = self->_flags;
    *(v6 + 384) |= 0x40uLL;
  }

LABEL_12:

  *(v6 + 336) = [(NSData *)self->_oui copyWithZone:zone];
  v8 = self->_has;
  if ((*&v8 & 0x8000000) != 0)
  {
    *(v6 + 352) = self->_securityType;
    *(v6 + 384) |= 0x8000000uLL;
    v8 = self->_has;
    if ((*&v8 & 0x80000000) == 0)
    {
LABEL_14:
      if ((*&v8 & 0x1000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v8 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 376) = self->_wpaProtocol;
  *(v6 + 384) |= 0x80000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 324) = self->_mcastCipher;
  *(v6 + 384) |= 0x1000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 360) = self->_ucastCipher;
  *(v6 + 384) |= 0x20000000uLL;
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_17:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 184) = self->_akmSuites;
  *(v6 + 384) |= 2uLL;
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 188) = self->_capabilities;
  *(v6 + 384) |= 4uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 200) = self->_enhancedSecurityType;
  *(v6 + 384) |= 0x20uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 304) = self->_htInfo;
  *(v6 + 384) |= 0x400000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 300) = self->_htExtended;
  *(v6 + 384) |= 0x200000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 320) = self->_htTxBf;
  *(v6 + 384) |= 0x800000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_60:
  *(v6 + 292) = self->_htASel;
  *(v6 + 384) |= 0x80000uLL;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_24:
    *(v6 + 296) = self->_htAmpduParams;
    *(v6 + 384) |= 0x100000uLL;
  }

LABEL_25:

  *(v6 + 312) = [(NSData *)self->_htSupportedMcsSet copyWithZone:zone];
  if ((*(&self->_has + 3) & 0x40) != 0)
  {
    *(v6 + 364) = self->_vhtInfo;
    *(v6 + 384) |= 0x40000000uLL;
  }

  *(v6 + 368) = [(NSData *)self->_vhtSupportedMcsSet copyWithZone:zone];
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 208) = self->_gatewayARPHistory;
    *(v6 + 384) |= 0x80uLL;
  }

  *(v6 + 240) = [(NSData *)self->_heCapabilitiesIE copyWithZone:zone];
  *(v6 + 256) = [(NSData *)self->_heOperationIE copyWithZone:zone];

  *(v6 + 224) = [(NSData *)self->_heBSSLoadIE copyWithZone:zone];
  *(v6 + 328) = [(NSData *)self->_muEDCAParametersIE copyWithZone:zone];
  v9 = self->_has;
  if ((*&v9 & 0x800) != 0)
  {
    *(v6 + 248) = self->_heMacCapSubfields;
    *(v6 + 384) |= 0x800uLL;
    v9 = self->_has;
    if ((*&v9 & 0x2000) == 0)
    {
LABEL_31:
      if ((*&v9 & 0x4000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v9 & 0x2000) == 0)
  {
    goto LABEL_31;
  }

  *(v6 + 268) = self->_hePhyCapSubfields;
  *(v6 + 384) |= 0x2000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 272) = self->_heRxTxMcsMap;
  *(v6 + 384) |= 0x4000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 264) = self->_heOpsParams;
  *(v6 + 384) |= 0x1000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 232) = self->_heBssMcsNss;
  *(v6 + 384) |= 0x400uLL;
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 276) = self->_heStaCnt;
  *(v6 + 384) |= 0x8000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 280) = self->_heUtilization;
  *(v6 + 384) |= 0x10000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_37:
    if ((*&v9 & 0x200) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v6 + 212) = self->_heBEParamRecord;
  *(v6 + 384) |= 0x100uLL;
  v9 = self->_has;
  if ((*&v9 & 0x200) == 0)
  {
LABEL_38:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_39;
    }

LABEL_71:
    *(v6 + 284) = self->_heVIParamRecord;
    *(v6 + 384) |= 0x20000uLL;
    if ((*&self->_has & 0x40000) == 0)
    {
      return v6;
    }

    goto LABEL_40;
  }

LABEL_70:
  *(v6 + 216) = self->_heBKParamRecord;
  *(v6 + 384) |= 0x200uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20000) != 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  if ((*&v9 & 0x40000) != 0)
  {
LABEL_40:
    *(v6 + 288) = self->_heVOParamRecord;
    *(v6 + 384) |= 0x40000uLL;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (!IsEqual)
  {
    return IsEqual;
  }

  v6 = *(equal + 48);
  if (*&self->_has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equal + 22))
    {
      goto LABEL_200;
    }
  }

  else if (v6)
  {
    goto LABEL_200;
  }

  IsEqual = PBRepeatedInt32IsEqual();
  if (!IsEqual)
  {
    return IsEqual;
  }

  has = self->_has;
  v8 = *(equal + 48);
  if ((*&has & 0x200000000) != 0)
  {
    if ((v8 & 0x200000000) == 0)
    {
      goto LABEL_200;
    }

    v9 = *(equal + 381);
    if (self->_isLinkUp)
    {
      if ((*(equal + 381) & 1) == 0)
      {
        goto LABEL_200;
      }
    }

    else if (*(equal + 381))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 0x200000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      v10 = *(equal + 380);
      if (self->_isInVol)
      {
        if ((*(equal + 380) & 1) == 0)
        {
          goto LABEL_200;
        }
      }

      else if (*(equal + 380))
      {
        goto LABEL_200;
      }

      goto LABEL_12;
    }

LABEL_200:
    LOBYTE(IsEqual) = 0;
    return IsEqual;
  }

  if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_200;
  }

LABEL_12:
  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0 || self->_reason != *(equal + 87))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v8 & 0x10000000) == 0 || self->_subreason != *(equal + 89))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 0x10000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_channel != *(equal + 48))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_channelWidth != *(equal + 49))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) == 0 || self->_phyMode != *(equal + 86))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_flags != *(equal + 51))
    {
      goto LABEL_200;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_200;
  }

  oui = self->_oui;
  if (oui | *(equal + 42))
  {
    IsEqual = [(NSData *)oui isEqual:?];
    if (!IsEqual)
    {
      return IsEqual;
    }

    has = self->_has;
  }

  v12 = *(equal + 48);
  if ((*&has & 0x8000000) != 0)
  {
    if ((v12 & 0x8000000) == 0 || self->_securityType != *(equal + 88))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x8000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v12 & 0x80000000) == 0 || self->_wpaProtocol != *(equal + 94))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0 || self->_mcastCipher != *(equal + 81))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v12 & 0x20000000) == 0 || self->_ucastCipher != *(equal + 90))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x20000000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_akmSuites != *(equal + 46))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_capabilities != *(equal + 47))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_enhancedSecurityType != *(equal + 50))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0 || self->_htInfo != *(equal + 76))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0 || self->_htExtended != *(equal + 75))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0 || self->_htTxBf != *(equal + 80))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v12 & 0x80000) == 0 || self->_htASel != *(equal + 73))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x80000) != 0)
  {
    goto LABEL_200;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_htAmpduParams != *(equal + 74))
    {
      goto LABEL_200;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_200;
  }

  htSupportedMcsSet = self->_htSupportedMcsSet;
  if (htSupportedMcsSet | *(equal + 39))
  {
    IsEqual = [(NSData *)htSupportedMcsSet isEqual:?];
    if (!IsEqual)
    {
      return IsEqual;
    }

    has = self->_has;
  }

  v14 = *(equal + 48);
  if ((*&has & 0x40000000) != 0)
  {
    if ((v14 & 0x40000000) == 0 || self->_vhtInfo != *(equal + 91))
    {
      goto LABEL_200;
    }
  }

  else if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_200;
  }

  vhtSupportedMcsSet = self->_vhtSupportedMcsSet;
  if (!(vhtSupportedMcsSet | *(equal + 46)) || (IsEqual = [(NSData *)vhtSupportedMcsSet isEqual:?]) != 0)
  {
    IsEqual = PBRepeatedInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedInt32IsEqual();
      if (IsEqual)
      {
        IsEqual = PBRepeatedInt32IsEqual();
        if (IsEqual)
        {
          IsEqual = PBRepeatedInt32IsEqual();
          if (IsEqual)
          {
            IsEqual = PBRepeatedInt32IsEqual();
            if (IsEqual)
            {
              IsEqual = PBRepeatedInt32IsEqual();
              if (IsEqual)
              {
                v16 = *(equal + 48);
                if ((*&self->_has & 0x80) != 0)
                {
                  if ((v16 & 0x80) == 0 || self->_gatewayARPHistory != *(equal + 52))
                  {
                    goto LABEL_200;
                  }
                }

                else if ((v16 & 0x80) != 0)
                {
                  goto LABEL_200;
                }

                heCapabilitiesIE = self->_heCapabilitiesIE;
                if (!(heCapabilitiesIE | *(equal + 30)) || (IsEqual = [(NSData *)heCapabilitiesIE isEqual:?]) != 0)
                {
                  heOperationIE = self->_heOperationIE;
                  if (!(heOperationIE | *(equal + 32)) || (IsEqual = [(NSData *)heOperationIE isEqual:?]) != 0)
                  {
                    heBSSLoadIE = self->_heBSSLoadIE;
                    if (!(heBSSLoadIE | *(equal + 28)) || (IsEqual = [(NSData *)heBSSLoadIE isEqual:?]) != 0)
                    {
                      muEDCAParametersIE = self->_muEDCAParametersIE;
                      if (!(muEDCAParametersIE | *(equal + 41)) || (IsEqual = [(NSData *)muEDCAParametersIE isEqual:?]) != 0)
                      {
                        v21 = self->_has;
                        v22 = *(equal + 48);
                        if ((*&v21 & 0x800) != 0)
                        {
                          if ((v22 & 0x800) == 0 || self->_heMacCapSubfields != *(equal + 62))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x800) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x2000) != 0)
                        {
                          if ((v22 & 0x2000) == 0 || self->_hePhyCapSubfields != *(equal + 67))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x2000) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x4000) != 0)
                        {
                          if ((v22 & 0x4000) == 0 || self->_heRxTxMcsMap != *(equal + 68))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x4000) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x1000) != 0)
                        {
                          if ((v22 & 0x1000) == 0 || self->_heOpsParams != *(equal + 66))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x1000) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x400) != 0)
                        {
                          if ((v22 & 0x400) == 0 || self->_heBssMcsNss != *(equal + 58))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x400) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x8000) != 0)
                        {
                          if ((v22 & 0x8000) == 0 || self->_heStaCnt != *(equal + 69))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x8000) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x10000) != 0)
                        {
                          if ((v22 & 0x10000) == 0 || self->_heUtilization != *(equal + 70))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x10000) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x100) != 0)
                        {
                          if ((v22 & 0x100) == 0 || self->_heBEParamRecord != *(equal + 53))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x100) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x200) != 0)
                        {
                          if ((v22 & 0x200) == 0 || self->_heBKParamRecord != *(equal + 54))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x200) != 0)
                        {
                          goto LABEL_200;
                        }

                        if ((*&v21 & 0x20000) != 0)
                        {
                          if ((v22 & 0x20000) == 0 || self->_heVIParamRecord != *(equal + 71))
                          {
                            goto LABEL_200;
                          }
                        }

                        else if ((v22 & 0x20000) != 0)
                        {
                          goto LABEL_200;
                        }

                        LOBYTE(IsEqual) = (v22 & 0x40000) == 0;
                        if ((*&v21 & 0x40000) != 0)
                        {
                          if ((v22 & 0x40000) == 0 || self->_heVOParamRecord != *(equal + 72))
                          {
                            goto LABEL_200;
                          }

                          LOBYTE(IsEqual) = 1;
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

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v55 = 2654435761u * self->_timestamp;
  }

  else
  {
    v55 = 0;
  }

  v54 = PBRepeatedInt32Hash();
  has = self->_has;
  if ((*&has & 0x200000000) != 0)
  {
    v53 = 2654435761 * self->_isLinkUp;
    if ((*&has & 0x100000000) != 0)
    {
LABEL_6:
      v52 = 2654435761 * self->_isInVol;
      if ((*&has & 0x4000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v53 = 0;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_6;
    }
  }

  v52 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_7:
    v51 = 2654435761 * self->_reason;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v51 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_8:
    v50 = 2654435761 * self->_subreason;
    if ((*&has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v50 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_9:
    v49 = 2654435761 * self->_channel;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v49 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_10:
    v48 = 2654435761 * self->_channelWidth;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v47 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v48 = 0;
  if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v47 = 2654435761 * self->_phyMode;
  if ((*&has & 0x40) != 0)
  {
LABEL_12:
    v46 = 2654435761 * self->_flags;
    goto LABEL_21;
  }

LABEL_20:
  v46 = 0;
LABEL_21:
  v45 = [(NSData *)self->_oui hash];
  v4 = self->_has;
  if ((*&v4 & 0x8000000) != 0)
  {
    v44 = 2654435761 * self->_securityType;
    if ((*&v4 & 0x80000000) != 0)
    {
LABEL_23:
      v43 = 2654435761 * self->_wpaProtocol;
      if ((*&v4 & 0x1000000) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v44 = 0;
    if ((*&v4 & 0x80000000) != 0)
    {
      goto LABEL_23;
    }
  }

  v43 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_24:
    v42 = 2654435761 * self->_mcastCipher;
    if ((*&v4 & 0x20000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  v42 = 0;
  if ((*&v4 & 0x20000000) != 0)
  {
LABEL_25:
    v41 = 2654435761 * self->_ucastCipher;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  v41 = 0;
  if ((*&v4 & 2) != 0)
  {
LABEL_26:
    v40 = 2654435761 * self->_akmSuites;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_27:
    v39 = 2654435761 * self->_capabilities;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_39:
  v39 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_28:
    v38 = 2654435761 * self->_enhancedSecurityType;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  v38 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_29:
    v37 = 2654435761 * self->_htInfo;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  v37 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_30:
    v36 = 2654435761 * self->_htExtended;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  v36 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_31:
    v35 = 2654435761 * self->_htTxBf;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_32;
    }

LABEL_44:
    v34 = 0;
    if ((*&v4 & 0x100000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_43:
  v35 = 0;
  if ((*&v4 & 0x80000) == 0)
  {
    goto LABEL_44;
  }

LABEL_32:
  v34 = 2654435761 * self->_htASel;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_33:
    v33 = 2654435761 * self->_htAmpduParams;
    goto LABEL_46;
  }

LABEL_45:
  v33 = 0;
LABEL_46:
  v32 = [(NSData *)self->_htSupportedMcsSet hash];
  if ((*(&self->_has + 3) & 0x40) != 0)
  {
    v31 = 2654435761 * self->_vhtInfo;
  }

  else
  {
    v31 = 0;
  }

  v30 = [(NSData *)self->_vhtSupportedMcsSet hash];
  v29 = PBRepeatedInt32Hash();
  v28 = PBRepeatedInt32Hash();
  v26 = PBRepeatedInt32Hash();
  v5 = PBRepeatedInt32Hash();
  v6 = PBRepeatedInt32Hash();
  v7 = PBRepeatedInt32Hash();
  if ((*&self->_has & 0x80) != 0)
  {
    v8 = 2654435761 * self->_gatewayARPHistory;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSData *)self->_heCapabilitiesIE hash];
  v10 = [(NSData *)self->_heOperationIE hash];
  v11 = [(NSData *)self->_heBSSLoadIE hash];
  v12 = [(NSData *)self->_muEDCAParametersIE hash];
  v13 = self->_has;
  if ((*&v13 & 0x800) != 0)
  {
    v14 = 2654435761 * self->_heMacCapSubfields;
    if ((*&v13 & 0x2000) != 0)
    {
LABEL_54:
      v15 = 2654435761 * self->_hePhyCapSubfields;
      if ((*&v13 & 0x4000) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x2000) != 0)
    {
      goto LABEL_54;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x4000) != 0)
  {
LABEL_55:
    v16 = 2654435761 * self->_heRxTxMcsMap;
    if ((*&v13 & 0x1000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

LABEL_66:
  v16 = 0;
  if ((*&v13 & 0x1000) != 0)
  {
LABEL_56:
    v17 = 2654435761 * self->_heOpsParams;
    if ((*&v13 & 0x400) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_68;
  }

LABEL_67:
  v17 = 0;
  if ((*&v13 & 0x400) != 0)
  {
LABEL_57:
    v18 = 2654435761 * self->_heBssMcsNss;
    if ((*&v13 & 0x8000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_69;
  }

LABEL_68:
  v18 = 0;
  if ((*&v13 & 0x8000) != 0)
  {
LABEL_58:
    v19 = 2654435761 * self->_heStaCnt;
    if ((*&v13 & 0x10000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_70;
  }

LABEL_69:
  v19 = 0;
  if ((*&v13 & 0x10000) != 0)
  {
LABEL_59:
    v20 = 2654435761 * self->_heUtilization;
    if ((*&v13 & 0x100) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_71;
  }

LABEL_70:
  v20 = 0;
  if ((*&v13 & 0x100) != 0)
  {
LABEL_60:
    v21 = 2654435761 * self->_heBEParamRecord;
    if ((*&v13 & 0x200) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_72;
  }

LABEL_71:
  v21 = 0;
  if ((*&v13 & 0x200) != 0)
  {
LABEL_61:
    v22 = 2654435761 * self->_heBKParamRecord;
    if ((*&v13 & 0x20000) != 0)
    {
      goto LABEL_62;
    }

LABEL_73:
    v23 = 0;
    if ((*&v13 & 0x40000) != 0)
    {
      goto LABEL_63;
    }

LABEL_74:
    v24 = 0;
    return v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v44 ^ v43 ^ v45 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
  }

LABEL_72:
  v22 = 0;
  if ((*&v13 & 0x20000) == 0)
  {
    goto LABEL_73;
  }

LABEL_62:
  v23 = 2654435761 * self->_heVIParamRecord;
  if ((*&v13 & 0x40000) == 0)
  {
    goto LABEL_74;
  }

LABEL_63:
  v24 = 2654435761 * self->_heVOParamRecord;
  return v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v44 ^ v43 ^ v45 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 384))
  {
    self->_timestamp = *(from + 22);
    *&self->_has |= 1uLL;
  }

  rssiHistorysCount = [from rssiHistorysCount];
  if (rssiHistorysCount)
  {
    v6 = rssiHistorysCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetric11axLinkChangeData addRssiHistory:](self, "addRssiHistory:", [from rssiHistoryAtIndex:i]);
    }
  }

  v8 = *(from + 48);
  if ((v8 & 0x200000000) != 0)
  {
    self->_isLinkUp = *(from + 381);
    *&self->_has |= 0x200000000uLL;
    v8 = *(from + 48);
    if ((v8 & 0x100000000) == 0)
    {
LABEL_8:
      if ((v8 & 0x4000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_79;
    }
  }

  else if ((v8 & 0x100000000) == 0)
  {
    goto LABEL_8;
  }

  self->_isInVol = *(from + 380);
  *&self->_has |= 0x100000000uLL;
  v8 = *(from + 48);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_9:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_reason = *(from + 87);
  *&self->_has |= 0x4000000uLL;
  v8 = *(from + 48);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_subreason = *(from + 89);
  *&self->_has |= 0x10000000uLL;
  v8 = *(from + 48);
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_channel = *(from + 48);
  *&self->_has |= 8uLL;
  v8 = *(from + 48);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_channelWidth = *(from + 49);
  *&self->_has |= 0x10uLL;
  v8 = *(from + 48);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_13:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_83:
  self->_phyMode = *(from + 86);
  *&self->_has |= 0x2000000uLL;
  if ((*(from + 48) & 0x40) != 0)
  {
LABEL_14:
    self->_flags = *(from + 51);
    *&self->_has |= 0x40uLL;
  }

LABEL_15:
  if (*(from + 42))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setOui:?];
  }

  v9 = *(from + 48);
  if ((v9 & 0x8000000) != 0)
  {
    self->_securityType = *(from + 88);
    *&self->_has |= 0x8000000uLL;
    v9 = *(from + 48);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_19:
      if ((v9 & 0x1000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_87;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  self->_wpaProtocol = *(from + 94);
  *&self->_has |= 0x80000000uLL;
  v9 = *(from + 48);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_mcastCipher = *(from + 81);
  *&self->_has |= 0x1000000uLL;
  v9 = *(from + 48);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_21:
    if ((v9 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_ucastCipher = *(from + 90);
  *&self->_has |= 0x20000000uLL;
  v9 = *(from + 48);
  if ((v9 & 2) == 0)
  {
LABEL_22:
    if ((v9 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_akmSuites = *(from + 46);
  *&self->_has |= 2uLL;
  v9 = *(from + 48);
  if ((v9 & 4) == 0)
  {
LABEL_23:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_capabilities = *(from + 47);
  *&self->_has |= 4uLL;
  v9 = *(from + 48);
  if ((v9 & 0x20) == 0)
  {
LABEL_24:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_enhancedSecurityType = *(from + 50);
  *&self->_has |= 0x20uLL;
  v9 = *(from + 48);
  if ((v9 & 0x400000) == 0)
  {
LABEL_25:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_htInfo = *(from + 76);
  *&self->_has |= 0x400000uLL;
  v9 = *(from + 48);
  if ((v9 & 0x200000) == 0)
  {
LABEL_26:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_htExtended = *(from + 75);
  *&self->_has |= 0x200000uLL;
  v9 = *(from + 48);
  if ((v9 & 0x800000) == 0)
  {
LABEL_27:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_htTxBf = *(from + 80);
  *&self->_has |= 0x800000uLL;
  v9 = *(from + 48);
  if ((v9 & 0x80000) == 0)
  {
LABEL_28:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_95:
  self->_htASel = *(from + 73);
  *&self->_has |= 0x80000uLL;
  if ((*(from + 48) & 0x100000) != 0)
  {
LABEL_29:
    self->_htAmpduParams = *(from + 74);
    *&self->_has |= 0x100000uLL;
  }

LABEL_30:
  if (*(from + 39))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setHtSupportedMcsSet:?];
  }

  if ((*(from + 387) & 0x40) != 0)
  {
    self->_vhtInfo = *(from + 91);
    *&self->_has |= 0x40000000uLL;
  }

  if (*(from + 46))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setVhtSupportedMcsSet:?];
  }

  txPerHistorysCount = [from txPerHistorysCount];
  if (txPerHistorysCount)
  {
    v11 = txPerHistorysCount;
    for (j = 0; j != v11; ++j)
    {
      -[AWDWiFiMetric11axLinkChangeData addTxPerHistory:](self, "addTxPerHistory:", [from txPerHistoryAtIndex:j]);
    }
  }

  txFrmsHistorysCount = [from txFrmsHistorysCount];
  if (txFrmsHistorysCount)
  {
    v14 = txFrmsHistorysCount;
    for (k = 0; k != v14; ++k)
    {
      -[AWDWiFiMetric11axLinkChangeData addTxFrmsHistory:](self, "addTxFrmsHistory:", [from txFrmsHistoryAtIndex:k]);
    }
  }

  fwTxPerHistorysCount = [from fwTxPerHistorysCount];
  if (fwTxPerHistorysCount)
  {
    v17 = fwTxPerHistorysCount;
    for (m = 0; m != v17; ++m)
    {
      -[AWDWiFiMetric11axLinkChangeData addFwTxPerHistory:](self, "addFwTxPerHistory:", [from fwTxPerHistoryAtIndex:m]);
    }
  }

  fwTxFrmsHistorysCount = [from fwTxFrmsHistorysCount];
  if (fwTxFrmsHistorysCount)
  {
    v20 = fwTxFrmsHistorysCount;
    for (n = 0; n != v20; ++n)
    {
      -[AWDWiFiMetric11axLinkChangeData addFwTxFrmsHistory:](self, "addFwTxFrmsHistory:", [from fwTxFrmsHistoryAtIndex:n]);
    }
  }

  bcnPerHistorysCount = [from bcnPerHistorysCount];
  if (bcnPerHistorysCount)
  {
    v23 = bcnPerHistorysCount;
    for (ii = 0; ii != v23; ++ii)
    {
      -[AWDWiFiMetric11axLinkChangeData addBcnPerHistory:](self, "addBcnPerHistory:", [from bcnPerHistoryAtIndex:ii]);
    }
  }

  bcnFrmsHistorysCount = [from bcnFrmsHistorysCount];
  if (bcnFrmsHistorysCount)
  {
    v26 = bcnFrmsHistorysCount;
    for (jj = 0; jj != v26; ++jj)
    {
      -[AWDWiFiMetric11axLinkChangeData addBcnFrmsHistory:](self, "addBcnFrmsHistory:", [from bcnFrmsHistoryAtIndex:jj]);
    }
  }

  if ((*(from + 384) & 0x80) != 0)
  {
    self->_gatewayARPHistory = *(from + 52);
    *&self->_has |= 0x80uLL;
  }

  if (*(from + 30))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setHeCapabilitiesIE:?];
  }

  if (*(from + 32))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setHeOperationIE:?];
  }

  if (*(from + 28))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setHeBSSLoadIE:?];
  }

  if (*(from + 41))
  {
    [(AWDWiFiMetric11axLinkChangeData *)self setMuEDCAParametersIE:?];
  }

  v28 = *(from + 48);
  if ((v28 & 0x800) != 0)
  {
    self->_heMacCapSubfields = *(from + 62);
    *&self->_has |= 0x800uLL;
    v28 = *(from + 48);
    if ((v28 & 0x2000) == 0)
    {
LABEL_66:
      if ((v28 & 0x4000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_99;
    }
  }

  else if ((v28 & 0x2000) == 0)
  {
    goto LABEL_66;
  }

  self->_hePhyCapSubfields = *(from + 67);
  *&self->_has |= 0x2000uLL;
  v28 = *(from + 48);
  if ((v28 & 0x4000) == 0)
  {
LABEL_67:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_heRxTxMcsMap = *(from + 68);
  *&self->_has |= 0x4000uLL;
  v28 = *(from + 48);
  if ((v28 & 0x1000) == 0)
  {
LABEL_68:
    if ((v28 & 0x400) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_heOpsParams = *(from + 66);
  *&self->_has |= 0x1000uLL;
  v28 = *(from + 48);
  if ((v28 & 0x400) == 0)
  {
LABEL_69:
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_heBssMcsNss = *(from + 58);
  *&self->_has |= 0x400uLL;
  v28 = *(from + 48);
  if ((v28 & 0x8000) == 0)
  {
LABEL_70:
    if ((v28 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_heStaCnt = *(from + 69);
  *&self->_has |= 0x8000uLL;
  v28 = *(from + 48);
  if ((v28 & 0x10000) == 0)
  {
LABEL_71:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_heUtilization = *(from + 70);
  *&self->_has |= 0x10000uLL;
  v28 = *(from + 48);
  if ((v28 & 0x100) == 0)
  {
LABEL_72:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_heBEParamRecord = *(from + 53);
  *&self->_has |= 0x100uLL;
  v28 = *(from + 48);
  if ((v28 & 0x200) == 0)
  {
LABEL_73:
    if ((v28 & 0x20000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_heBKParamRecord = *(from + 54);
  *&self->_has |= 0x200uLL;
  v28 = *(from + 48);
  if ((v28 & 0x20000) == 0)
  {
LABEL_74:
    if ((v28 & 0x40000) == 0)
    {
      return;
    }

    goto LABEL_75;
  }

LABEL_106:
  self->_heVIParamRecord = *(from + 71);
  *&self->_has |= 0x20000uLL;
  if ((*(from + 48) & 0x40000) == 0)
  {
    return;
  }

LABEL_75:
  self->_heVOParamRecord = *(from + 72);
  *&self->_has |= 0x40000uLL;
}

@end