@interface AWDWiFiMetricLinkChangeData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)bcnFrmsHistoryAtIndex:(unint64_t)a3;
- (int)bcnPerHistoryAtIndex:(unint64_t)a3;
- (int)fwTxFrmsHistoryAtIndex:(unint64_t)a3;
- (int)fwTxPerHistoryAtIndex:(unint64_t)a3;
- (int)rssiHistoryAtIndex:(unint64_t)a3;
- (int)txFrmsHistoryAtIndex:(unint64_t)a3;
- (int)txPerHistoryAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAkmSuites:(BOOL)a3;
- (void)setHasCapabilities:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasChannelSwitchDuringHostSleep:(BOOL)a3;
- (void)setHasChannelSwitchDuringHostWake:(BOOL)a3;
- (void)setHasChannelWidth:(BOOL)a3;
- (void)setHasEnhancedSecurityType:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasGatewayARPHistory:(BOOL)a3;
- (void)setHasHtASel:(BOOL)a3;
- (void)setHasHtAmpduParams:(BOOL)a3;
- (void)setHasHtExtended:(BOOL)a3;
- (void)setHasHtInfo:(BOOL)a3;
- (void)setHasHtTxBf:(BOOL)a3;
- (void)setHasIsInVol:(BOOL)a3;
- (void)setHasIsLinkUp:(BOOL)a3;
- (void)setHasMcastCipher:(BOOL)a3;
- (void)setHasPhyMode:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasRxCSAFrames:(BOOL)a3;
- (void)setHasSecurityType:(BOOL)a3;
- (void)setHasSubreason:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasUcastCipher:(BOOL)a3;
- (void)setHasVhtInfo:(BOOL)a3;
- (void)setHasWpaProtocol:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricLinkChangeData

- (void)dealloc
{
  PBRepeatedInt32Clear();
  [(AWDWiFiMetricLinkChangeData *)self setOui:0];
  [(AWDWiFiMetricLinkChangeData *)self setHtSupportedMcsSet:0];
  [(AWDWiFiMetricLinkChangeData *)self setVhtSupportedMcsSet:0];
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  [(AWDWiFiMetricLinkChangeData *)self setLocale:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsResponseType:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsManufacturerElement:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsModelName:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsModelNumber:0];
  [(AWDWiFiMetricLinkChangeData *)self setCountryCode:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsPrimaryDeviceTypeCategory:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsPrimaryDeviceTypeSubCategory:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsDeviceNameElement:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsDeviceNameData:0];
  [(AWDWiFiMetricLinkChangeData *)self setWpsConfigMethods:0];
  [(AWDWiFiMetricLinkChangeData *)self setLocaleSource:0];
  [(AWDWiFiMetricLinkChangeData *)self setPrivateMacType:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricLinkChangeData;
  [(AWDWiFiMetricLinkChangeData *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (int)rssiHistoryAtIndex:(unint64_t)a3
{
  p_rssiHistorys = &self->_rssiHistorys;
  count = self->_rssiHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rssiHistorys->list[a3];
}

- (void)setHasIsLinkUp:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasIsInVol:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasReason:(BOOL)a3
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

- (void)setHasSubreason:(BOOL)a3
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

- (void)setHasChannel:(BOOL)a3
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

- (void)setHasChannelWidth:(BOOL)a3
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

- (void)setHasPhyMode:(BOOL)a3
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

- (void)setHasFlags:(BOOL)a3
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

- (void)setHasSecurityType:(BOOL)a3
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

- (void)setHasWpaProtocol:(BOOL)a3
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

- (void)setHasMcastCipher:(BOOL)a3
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

- (void)setHasUcastCipher:(BOOL)a3
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

- (void)setHasAkmSuites:(BOOL)a3
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

- (void)setHasCapabilities:(BOOL)a3
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

- (void)setHasEnhancedSecurityType:(BOOL)a3
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

- (void)setHasHtInfo:(BOOL)a3
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

- (void)setHasHtExtended:(BOOL)a3
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

- (void)setHasHtTxBf:(BOOL)a3
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

- (void)setHasHtASel:(BOOL)a3
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

- (void)setHasHtAmpduParams:(BOOL)a3
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

- (void)setHasVhtInfo:(BOOL)a3
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

- (int)txPerHistoryAtIndex:(unint64_t)a3
{
  p_txPerHistorys = &self->_txPerHistorys;
  count = self->_txPerHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txPerHistorys->list[a3];
}

- (int)txFrmsHistoryAtIndex:(unint64_t)a3
{
  p_txFrmsHistorys = &self->_txFrmsHistorys;
  count = self->_txFrmsHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txFrmsHistorys->list[a3];
}

- (int)fwTxPerHistoryAtIndex:(unint64_t)a3
{
  p_fwTxPerHistorys = &self->_fwTxPerHistorys;
  count = self->_fwTxPerHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_fwTxPerHistorys->list[a3];
}

- (int)fwTxFrmsHistoryAtIndex:(unint64_t)a3
{
  p_fwTxFrmsHistorys = &self->_fwTxFrmsHistorys;
  count = self->_fwTxFrmsHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_fwTxFrmsHistorys->list[a3];
}

- (int)bcnPerHistoryAtIndex:(unint64_t)a3
{
  p_bcnPerHistorys = &self->_bcnPerHistorys;
  count = self->_bcnPerHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_bcnPerHistorys->list[a3];
}

- (int)bcnFrmsHistoryAtIndex:(unint64_t)a3
{
  p_bcnFrmsHistorys = &self->_bcnFrmsHistorys;
  count = self->_bcnFrmsHistorys.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_bcnFrmsHistorys->list[a3];
}

- (void)setHasGatewayARPHistory:(BOOL)a3
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

- (void)setHasRxCSAFrames:(BOOL)a3
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

- (void)setHasChannelSwitchDuringHostSleep:(BOOL)a3
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

- (void)setHasChannelSwitchDuringHostWake:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricLinkChangeData;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricLinkChangeData description](&v3, sel_description), -[AWDWiFiMetricLinkChangeData dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"rssiHistory"];
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isLinkUp), @"isLinkUp"}];
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x40000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_70;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_5;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isInVol), @"isInVol"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reason), @"reason"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_subreason), @"subreason"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelWidth), @"channelWidth"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_74:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyMode), @"phyMode"}];
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flags), @"flags"}];
  }

LABEL_12:
  oui = self->_oui;
  if (oui)
  {
    [v3 setObject:oui forKey:@"oui"];
  }

  v6 = self->_has;
  if ((*&v6 & 0x100000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
    v6 = self->_has;
    if ((*&v6 & 0x1000000) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x10000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_78;
    }
  }

  else if ((*&v6 & 0x1000000) == 0)
  {
    goto LABEL_16;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wpaProtocol), @"wpaProtocol"}];
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mcastCipher), @"mcastCipher"}];
  v6 = self->_has;
  if ((*&v6 & 0x400000) == 0)
  {
LABEL_18:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ucastCipher), @"ucastCipher"}];
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_19:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_akmSuites), @"akmSuites"}];
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_enhancedSecurityType), @"enhancedSecurityType"}];
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htInfo), @"htInfo"}];
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htExtended), @"htExtended"}];
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htTxBf), @"htTxBf"}];
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_86:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htASel), @"htASel"}];
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_26:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htAmpduParams), @"htAmpduParams"}];
  }

LABEL_27:
  htSupportedMcsSet = self->_htSupportedMcsSet;
  if (htSupportedMcsSet)
  {
    [v3 setObject:htSupportedMcsSet forKey:@"htSupportedMcsSet"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_vhtInfo), @"vhtInfo"}];
  }

  vhtSupportedMcsSet = self->_vhtSupportedMcsSet;
  if (vhtSupportedMcsSet)
  {
    [v3 setObject:vhtSupportedMcsSet forKey:@"vhtSupportedMcsSet"];
  }

  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"txPerHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"txFrmsHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"fwTxPerHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"fwTxFrmsHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"bcnPerHistory"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"bcnFrmsHistory"];
  if ((*(&self->_has + 1) & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayARPHistory), @"gatewayARPHistory"}];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_associationDuration), @"associationDuration"}];
  }

  wpsResponseType = self->_wpsResponseType;
  if (wpsResponseType)
  {
    [v3 setObject:wpsResponseType forKey:@"wpsResponseType"];
  }

  wpsManufacturerElement = self->_wpsManufacturerElement;
  if (wpsManufacturerElement)
  {
    [v3 setObject:wpsManufacturerElement forKey:@"wpsManufacturerElement"];
  }

  wpsModelName = self->_wpsModelName;
  if (wpsModelName)
  {
    [v3 setObject:wpsModelName forKey:@"wpsModelName"];
  }

  wpsModelNumber = self->_wpsModelNumber;
  if (wpsModelNumber)
  {
    [v3 setObject:wpsModelNumber forKey:@"wpsModelNumber"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v3 setObject:countryCode forKey:@"countryCode"];
  }

  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
  if (wpsPrimaryDeviceTypeCategory)
  {
    [v3 setObject:wpsPrimaryDeviceTypeCategory forKey:@"wpsPrimaryDeviceTypeCategory"];
  }

  wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
  if (wpsPrimaryDeviceTypeSubCategory)
  {
    [v3 setObject:wpsPrimaryDeviceTypeSubCategory forKey:@"wpsPrimaryDeviceTypeSubCategory"];
  }

  wpsDeviceNameElement = self->_wpsDeviceNameElement;
  if (wpsDeviceNameElement)
  {
    [v3 setObject:wpsDeviceNameElement forKey:@"wpsDeviceNameElement"];
  }

  wpsDeviceNameData = self->_wpsDeviceNameData;
  if (wpsDeviceNameData)
  {
    [v3 setObject:wpsDeviceNameData forKey:@"wpsDeviceNameData"];
  }

  wpsConfigMethods = self->_wpsConfigMethods;
  if (wpsConfigMethods)
  {
    [v3 setObject:wpsConfigMethods forKey:@"wpsConfigMethods"];
  }

  localeSource = self->_localeSource;
  if (localeSource)
  {
    [v3 setObject:localeSource forKey:@"localeSource"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x80000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxCSAFrames), @"rxCSAFrames"}];
    v21 = self->_has;
    if ((*&v21 & 0x20) == 0)
    {
LABEL_63:
      if ((*&v21 & 0x40) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v21 & 0x20) == 0)
  {
    goto LABEL_63;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelSwitchDuringHostSleep), @"channelSwitchDuringHostSleep"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_64:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelSwitchDuringHostWake), @"channelSwitchDuringHostWake"}];
  }

LABEL_65:
  privateMacType = self->_privateMacType;
  if (privateMacType)
  {
    [v3 setObject:privateMacType forKey:@"privateMacType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
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
  if ((*&has & 0x4000000) != 0)
  {
    isLinkUp = self->_isLinkUp;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_8:
      if ((*&has & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_92;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_8;
  }

  isInVol = self->_isInVol;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_93;
  }

LABEL_92:
  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_94;
  }

LABEL_93:
  subreason = self->_subreason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_95;
  }

LABEL_94:
  channel = self->_channel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_96;
  }

LABEL_95:
  channelWidth = self->_channelWidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_96:
  phyMode = self->_phyMode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
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
  if ((*&v9 & 0x100000) != 0)
  {
    securityType = self->_securityType;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((*&v9 & 0x1000000) == 0)
    {
LABEL_19:
      if ((*&v9 & 0x10000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v9 & 0x1000000) == 0)
  {
    goto LABEL_19;
  }

  wpaProtocol = self->_wpaProtocol;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_101;
  }

LABEL_100:
  mcastCipher = self->_mcastCipher;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_21:
    if ((*&v9 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_101:
  ucastCipher = self->_ucastCipher;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_22:
    if ((*&v9 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  akmSuites = self->_akmSuites;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_104;
  }

LABEL_103:
  capabilities = self->_capabilities;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_105;
  }

LABEL_104:
  enhancedSecurityType = self->_enhancedSecurityType;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_105:
  htInfo = self->_htInfo;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_107;
  }

LABEL_106:
  htExtended = self->_htExtended;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_108;
  }

LABEL_107:
  htTxBf = self->_htTxBf;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_108:
  htASel = self->_htASel;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
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

  if ((*(&self->_has + 2) & 0x80) != 0)
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

  if ((*(&self->_has + 1) & 4) != 0)
  {
    gatewayARPHistory = self->_gatewayARPHistory;
    PBDataWriterWriteUint32Field();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    associationDuration = self->_associationDuration;
    PBDataWriterWriteDoubleField();
  }

  if (self->_wpsResponseType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsManufacturerElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsModelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsModelNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsDeviceNameElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsDeviceNameData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsConfigMethods)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localeSource)
  {
    PBDataWriterWriteStringField();
  }

  v26 = self->_has;
  if ((*&v26 & 0x80000) != 0)
  {
    rxCSAFrames = self->_rxCSAFrames;
    PBDataWriterWriteUint32Field();
    v26 = self->_has;
    if ((*&v26 & 0x20) == 0)
    {
LABEL_84:
      if ((*&v26 & 0x40) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }
  }

  else if ((*&v26 & 0x20) == 0)
  {
    goto LABEL_84;
  }

  channelSwitchDuringHostSleep = self->_channelSwitchDuringHostSleep;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_85:
    channelSwitchDuringHostWake = self->_channelSwitchDuringHostWake;
    PBDataWriterWriteUint32Field();
  }

LABEL_86:
  if (self->_privateMacType)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 23) = self->_timestamp;
    *(a3 + 109) |= 2u;
  }

  if ([(AWDWiFiMetricLinkChangeData *)self rssiHistorysCount])
  {
    [a3 clearRssiHistorys];
    v5 = [(AWDWiFiMetricLinkChangeData *)self rssiHistorysCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addRssiHistory:{-[AWDWiFiMetricLinkChangeData rssiHistoryAtIndex:](self, "rssiHistoryAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    *(a3 + 433) = self->_isLinkUp;
    *(a3 + 109) |= 0x4000000u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_9:
      if ((*&has & 0x40000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_99;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_9;
  }

  *(a3 + 432) = self->_isInVol;
  *(a3 + 109) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a3 + 80) = self->_reason;
  *(a3 + 109) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(a3 + 83) = self->_subreason;
  *(a3 + 109) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(a3 + 50) = self->_channel;
  *(a3 + 109) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(a3 + 53) = self->_channelWidth;
  *(a3 + 109) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_103:
  *(a3 + 76) = self->_phyMode;
  *(a3 + 109) |= 0x20000u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    *(a3 + 57) = self->_flags;
    *(a3 + 109) |= 0x200u;
  }

LABEL_16:
  if (self->_oui)
  {
    [a3 setOui:?];
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    *(a3 + 82) = self->_securityType;
    *(a3 + 109) |= 0x100000u;
    v9 = self->_has;
    if ((*&v9 & 0x1000000) == 0)
    {
LABEL_20:
      if ((*&v9 & 0x10000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_107;
    }
  }

  else if ((*&v9 & 0x1000000) == 0)
  {
    goto LABEL_20;
  }

  *(a3 + 88) = self->_wpaProtocol;
  *(a3 + 109) |= 0x1000000u;
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a3 + 72) = self->_mcastCipher;
  *(a3 + 109) |= 0x10000u;
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_22:
    if ((*&v9 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(a3 + 84) = self->_ucastCipher;
  *(a3 + 109) |= 0x400000u;
  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_23:
    if ((*&v9 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(a3 + 48) = self->_akmSuites;
  *(a3 + 109) |= 4u;
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(a3 + 49) = self->_capabilities;
  *(a3 + 109) |= 8u;
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(a3 + 56) = self->_enhancedSecurityType;
  *(a3 + 109) |= 0x100u;
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(a3 + 62) = self->_htInfo;
  *(a3 + 109) |= 0x4000u;
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(a3 + 61) = self->_htExtended;
  *(a3 + 109) |= 0x2000u;
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(a3 + 66) = self->_htTxBf;
  *(a3 + 109) |= 0x8000u;
  v9 = self->_has;
  if ((*&v9 & 0x800) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x1000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_115:
  *(a3 + 59) = self->_htASel;
  *(a3 + 109) |= 0x800u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_30:
    *(a3 + 60) = self->_htAmpduParams;
    *(a3 + 109) |= 0x1000u;
  }

LABEL_31:
  if (self->_htSupportedMcsSet)
  {
    [a3 setHtSupportedMcsSet:?];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(a3 + 85) = self->_vhtInfo;
    *(a3 + 109) |= 0x800000u;
  }

  if (self->_vhtSupportedMcsSet)
  {
    [a3 setVhtSupportedMcsSet:?];
  }

  if ([(AWDWiFiMetricLinkChangeData *)self txPerHistorysCount])
  {
    [a3 clearTxPerHistorys];
    v10 = [(AWDWiFiMetricLinkChangeData *)self txPerHistorysCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addTxPerHistory:{-[AWDWiFiMetricLinkChangeData txPerHistoryAtIndex:](self, "txPerHistoryAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self txFrmsHistorysCount])
  {
    [a3 clearTxFrmsHistorys];
    v13 = [(AWDWiFiMetricLinkChangeData *)self txFrmsHistorysCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        [a3 addTxFrmsHistory:{-[AWDWiFiMetricLinkChangeData txFrmsHistoryAtIndex:](self, "txFrmsHistoryAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self fwTxPerHistorysCount])
  {
    [a3 clearFwTxPerHistorys];
    v16 = [(AWDWiFiMetricLinkChangeData *)self fwTxPerHistorysCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        [a3 addFwTxPerHistory:{-[AWDWiFiMetricLinkChangeData fwTxPerHistoryAtIndex:](self, "fwTxPerHistoryAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self fwTxFrmsHistorysCount])
  {
    [a3 clearFwTxFrmsHistorys];
    v19 = [(AWDWiFiMetricLinkChangeData *)self fwTxFrmsHistorysCount];
    if (v19)
    {
      v20 = v19;
      for (n = 0; n != v20; ++n)
      {
        [a3 addFwTxFrmsHistory:{-[AWDWiFiMetricLinkChangeData fwTxFrmsHistoryAtIndex:](self, "fwTxFrmsHistoryAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self bcnPerHistorysCount])
  {
    [a3 clearBcnPerHistorys];
    v22 = [(AWDWiFiMetricLinkChangeData *)self bcnPerHistorysCount];
    if (v22)
    {
      v23 = v22;
      for (ii = 0; ii != v23; ++ii)
      {
        [a3 addBcnPerHistory:{-[AWDWiFiMetricLinkChangeData bcnPerHistoryAtIndex:](self, "bcnPerHistoryAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self bcnFrmsHistorysCount])
  {
    [a3 clearBcnFrmsHistorys];
    v25 = [(AWDWiFiMetricLinkChangeData *)self bcnFrmsHistorysCount];
    if (v25)
    {
      v26 = v25;
      for (jj = 0; jj != v26; ++jj)
      {
        [a3 addBcnFrmsHistory:{-[AWDWiFiMetricLinkChangeData bcnFrmsHistoryAtIndex:](self, "bcnFrmsHistoryAtIndex:", jj)}];
      }
    }
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(a3 + 58) = self->_gatewayARPHistory;
    *(a3 + 109) |= 0x400u;
  }

  if (self->_locale)
  {
    [a3 setLocale:?];
  }

  if (*&self->_has)
  {
    *(a3 + 22) = *&self->_associationDuration;
    *(a3 + 109) |= 1u;
  }

  if (self->_wpsResponseType)
  {
    [a3 setWpsResponseType:?];
  }

  if (self->_wpsManufacturerElement)
  {
    [a3 setWpsManufacturerElement:?];
  }

  if (self->_wpsModelName)
  {
    [a3 setWpsModelName:?];
  }

  if (self->_wpsModelNumber)
  {
    [a3 setWpsModelNumber:?];
  }

  if (self->_countryCode)
  {
    [a3 setCountryCode:?];
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    [a3 setWpsPrimaryDeviceTypeCategory:?];
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    [a3 setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (self->_wpsDeviceNameElement)
  {
    [a3 setWpsDeviceNameElement:?];
  }

  if (self->_wpsDeviceNameData)
  {
    [a3 setWpsDeviceNameData:?];
  }

  if (self->_wpsConfigMethods)
  {
    [a3 setWpsConfigMethods:?];
  }

  if (self->_localeSource)
  {
    [a3 setLocaleSource:?];
  }

  v28 = self->_has;
  if ((*&v28 & 0x80000) != 0)
  {
    *(a3 + 81) = self->_rxCSAFrames;
    *(a3 + 109) |= 0x80000u;
    v28 = self->_has;
    if ((*&v28 & 0x20) == 0)
    {
LABEL_91:
      if ((*&v28 & 0x40) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((*&v28 & 0x20) == 0)
  {
    goto LABEL_91;
  }

  *(a3 + 51) = self->_channelSwitchDuringHostSleep;
  *(a3 + 109) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_92:
    *(a3 + 52) = self->_channelSwitchDuringHostWake;
    *(a3 + 109) |= 0x40u;
  }

LABEL_93:
  if (self->_privateMacType)
  {

    [a3 setPrivateMacType:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 184) = self->_timestamp;
    *(v5 + 436) |= 2u;
  }

  PBRepeatedInt32Copy();
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    *(v6 + 433) = self->_isLinkUp;
    *(v6 + 436) |= 0x4000000u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x40000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 432) = self->_isInVol;
  *(v6 + 436) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 320) = self->_reason;
  *(v6 + 436) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 332) = self->_subreason;
  *(v6 + 436) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 200) = self->_channel;
  *(v6 + 436) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 212) = self->_channelWidth;
  *(v6 + 436) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_42:
  *(v6 + 304) = self->_phyMode;
  *(v6 + 436) |= 0x20000u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    *(v6 + 228) = self->_flags;
    *(v6 + 436) |= 0x200u;
  }

LABEL_12:

  *(v6 + 296) = [(NSData *)self->_oui copyWithZone:a3];
  v8 = self->_has;
  if ((*&v8 & 0x100000) != 0)
  {
    *(v6 + 328) = self->_securityType;
    *(v6 + 436) |= 0x100000u;
    v8 = self->_has;
    if ((*&v8 & 0x1000000) == 0)
    {
LABEL_14:
      if ((*&v8 & 0x10000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v8 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 352) = self->_wpaProtocol;
  *(v6 + 436) |= 0x1000000u;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 288) = self->_mcastCipher;
  *(v6 + 436) |= 0x10000u;
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_16:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 336) = self->_ucastCipher;
  *(v6 + 436) |= 0x400000u;
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_17:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 192) = self->_akmSuites;
  *(v6 + 436) |= 4u;
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 196) = self->_capabilities;
  *(v6 + 436) |= 8u;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 224) = self->_enhancedSecurityType;
  *(v6 + 436) |= 0x100u;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 248) = self->_htInfo;
  *(v6 + 436) |= 0x4000u;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 244) = self->_htExtended;
  *(v6 + 436) |= 0x2000u;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 264) = self->_htTxBf;
  *(v6 + 436) |= 0x8000u;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_54:
  *(v6 + 236) = self->_htASel;
  *(v6 + 436) |= 0x800u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_24:
    *(v6 + 240) = self->_htAmpduParams;
    *(v6 + 436) |= 0x1000u;
  }

LABEL_25:

  *(v6 + 256) = [(NSData *)self->_htSupportedMcsSet copyWithZone:a3];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v6 + 340) = self->_vhtInfo;
    *(v6 + 436) |= 0x800000u;
  }

  *(v6 + 344) = [(NSData *)self->_vhtSupportedMcsSet copyWithZone:a3];
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v6 + 232) = self->_gatewayARPHistory;
    *(v6 + 436) |= 0x400u;
  }

  *(v6 + 272) = [(NSString *)self->_locale copyWithZone:a3];
  if (*&self->_has)
  {
    *(v6 + 176) = self->_associationDuration;
    *(v6 + 436) |= 1u;
  }

  *(v6 + 424) = [(NSString *)self->_wpsResponseType copyWithZone:a3];
  *(v6 + 384) = [(NSString *)self->_wpsManufacturerElement copyWithZone:a3];

  *(v6 + 392) = [(NSString *)self->_wpsModelName copyWithZone:a3];
  *(v6 + 400) = [(NSString *)self->_wpsModelNumber copyWithZone:a3];

  *(v6 + 216) = [(NSString *)self->_countryCode copyWithZone:a3];
  *(v6 + 408) = [(NSString *)self->_wpsPrimaryDeviceTypeCategory copyWithZone:a3];

  *(v6 + 416) = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory copyWithZone:a3];
  *(v6 + 376) = [(NSString *)self->_wpsDeviceNameElement copyWithZone:a3];

  *(v6 + 368) = [(NSString *)self->_wpsDeviceNameData copyWithZone:a3];
  *(v6 + 360) = [(NSString *)self->_wpsConfigMethods copyWithZone:a3];

  *(v6 + 280) = [(NSString *)self->_localeSource copyWithZone:a3];
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_57:
    *(v6 + 204) = self->_channelSwitchDuringHostSleep;
    *(v6 + 436) |= 0x20u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  *(v6 + 324) = self->_rxCSAFrames;
  *(v6 + 436) |= 0x80000u;
  v9 = self->_has;
  if ((*&v9 & 0x20) != 0)
  {
    goto LABEL_57;
  }

LABEL_33:
  if ((*&v9 & 0x40) != 0)
  {
LABEL_34:
    *(v6 + 208) = self->_channelSwitchDuringHostWake;
    *(v6 + 436) |= 0x40u;
  }

LABEL_35:

  *(v6 + 312) = [(NSString *)self->_privateMacType copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (!IsEqual)
  {
    return IsEqual;
  }

  v6 = *(a3 + 109);
  if ((*&self->_has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(a3 + 23))
    {
      goto LABEL_185;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_185;
  }

  IsEqual = PBRepeatedInt32IsEqual();
  if (!IsEqual)
  {
    return IsEqual;
  }

  has = self->_has;
  v8 = *(a3 + 109);
  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_185;
    }

    v9 = *(a3 + 433);
    if (self->_isLinkUp)
    {
      if ((*(a3 + 433) & 1) == 0)
      {
        goto LABEL_185;
      }
    }

    else if (*(a3 + 433))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x4000000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v8 & 0x2000000) != 0)
    {
      v10 = *(a3 + 432);
      if (self->_isInVol)
      {
        if ((*(a3 + 432) & 1) == 0)
        {
          goto LABEL_185;
        }
      }

      else if (*(a3 + 432))
      {
        goto LABEL_185;
      }

      goto LABEL_12;
    }

LABEL_185:
    LOBYTE(IsEqual) = 0;
    return IsEqual;
  }

  if ((v8 & 0x2000000) != 0)
  {
    goto LABEL_185;
  }

LABEL_12:
  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0 || self->_reason != *(a3 + 80))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0 || self->_subreason != *(a3 + 83))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_channel != *(a3 + 50))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_channelWidth != *(a3 + 53))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0 || self->_phyMode != *(a3 + 76))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0 || self->_flags != *(a3 + 57))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_185;
  }

  oui = self->_oui;
  if (oui | *(a3 + 37))
  {
    IsEqual = [(NSData *)oui isEqual:?];
    if (!IsEqual)
    {
      return IsEqual;
    }

    has = self->_has;
  }

  v12 = *(a3 + 109);
  if ((*&has & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_securityType != *(a3 + 82))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0 || self->_wpaProtocol != *(a3 + 88))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_mcastCipher != *(a3 + 72))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0 || self->_ucastCipher != *(a3 + 84))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_akmSuites != *(a3 + 48))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_capabilities != *(a3 + 49))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_enhancedSecurityType != *(a3 + 56))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_htInfo != *(a3 + 62))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_htExtended != *(a3 + 61))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_htTxBf != *(a3 + 66))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_htASel != *(a3 + 59))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_185;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_htAmpduParams != *(a3 + 60))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_185;
  }

  htSupportedMcsSet = self->_htSupportedMcsSet;
  if (htSupportedMcsSet | *(a3 + 32))
  {
    IsEqual = [(NSData *)htSupportedMcsSet isEqual:?];
    if (!IsEqual)
    {
      return IsEqual;
    }

    has = self->_has;
  }

  v14 = *(a3 + 109);
  if ((*&has & 0x800000) != 0)
  {
    if ((v14 & 0x800000) == 0 || self->_vhtInfo != *(a3 + 85))
    {
      goto LABEL_185;
    }
  }

  else if ((v14 & 0x800000) != 0)
  {
    goto LABEL_185;
  }

  vhtSupportedMcsSet = self->_vhtSupportedMcsSet;
  if (!(vhtSupportedMcsSet | *(a3 + 43)) || (IsEqual = [(NSData *)vhtSupportedMcsSet isEqual:?]) != 0)
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
                v16 = self->_has;
                v17 = *(a3 + 109);
                if ((*&v16 & 0x400) != 0)
                {
                  if ((v17 & 0x400) == 0 || self->_gatewayARPHistory != *(a3 + 58))
                  {
                    goto LABEL_185;
                  }
                }

                else if ((v17 & 0x400) != 0)
                {
                  goto LABEL_185;
                }

                locale = self->_locale;
                if (locale | *(a3 + 34))
                {
                  IsEqual = [(NSString *)locale isEqual:?];
                  if (!IsEqual)
                  {
                    return IsEqual;
                  }

                  v16 = self->_has;
                }

                v19 = *(a3 + 109);
                if (*&v16)
                {
                  if ((v19 & 1) == 0 || self->_associationDuration != *(a3 + 22))
                  {
                    goto LABEL_185;
                  }
                }

                else if (v19)
                {
                  goto LABEL_185;
                }

                wpsResponseType = self->_wpsResponseType;
                if (!(wpsResponseType | *(a3 + 53)) || (IsEqual = [(NSString *)wpsResponseType isEqual:?]) != 0)
                {
                  wpsManufacturerElement = self->_wpsManufacturerElement;
                  if (!(wpsManufacturerElement | *(a3 + 48)) || (IsEqual = [(NSString *)wpsManufacturerElement isEqual:?]) != 0)
                  {
                    wpsModelName = self->_wpsModelName;
                    if (!(wpsModelName | *(a3 + 49)) || (IsEqual = [(NSString *)wpsModelName isEqual:?]) != 0)
                    {
                      wpsModelNumber = self->_wpsModelNumber;
                      if (!(wpsModelNumber | *(a3 + 50)) || (IsEqual = [(NSString *)wpsModelNumber isEqual:?]) != 0)
                      {
                        countryCode = self->_countryCode;
                        if (!(countryCode | *(a3 + 27)) || (IsEqual = [(NSString *)countryCode isEqual:?]) != 0)
                        {
                          wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
                          if (!(wpsPrimaryDeviceTypeCategory | *(a3 + 51)) || (IsEqual = [(NSString *)wpsPrimaryDeviceTypeCategory isEqual:?]) != 0)
                          {
                            wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
                            if (!(wpsPrimaryDeviceTypeSubCategory | *(a3 + 52)) || (IsEqual = [(NSString *)wpsPrimaryDeviceTypeSubCategory isEqual:?]) != 0)
                            {
                              wpsDeviceNameElement = self->_wpsDeviceNameElement;
                              if (!(wpsDeviceNameElement | *(a3 + 47)) || (IsEqual = [(NSString *)wpsDeviceNameElement isEqual:?]) != 0)
                              {
                                wpsDeviceNameData = self->_wpsDeviceNameData;
                                if (!(wpsDeviceNameData | *(a3 + 46)) || (IsEqual = [(NSString *)wpsDeviceNameData isEqual:?]) != 0)
                                {
                                  wpsConfigMethods = self->_wpsConfigMethods;
                                  if (!(wpsConfigMethods | *(a3 + 45)) || (IsEqual = [(NSString *)wpsConfigMethods isEqual:?]) != 0)
                                  {
                                    localeSource = self->_localeSource;
                                    if (!(localeSource | *(a3 + 35)) || (IsEqual = [(NSString *)localeSource isEqual:?]) != 0)
                                    {
                                      v31 = self->_has;
                                      v32 = *(a3 + 109);
                                      if ((*&v31 & 0x80000) != 0)
                                      {
                                        if ((v32 & 0x80000) == 0 || self->_rxCSAFrames != *(a3 + 81))
                                        {
                                          goto LABEL_185;
                                        }
                                      }

                                      else if ((v32 & 0x80000) != 0)
                                      {
                                        goto LABEL_185;
                                      }

                                      if ((*&v31 & 0x20) != 0)
                                      {
                                        if ((v32 & 0x20) == 0 || self->_channelSwitchDuringHostSleep != *(a3 + 51))
                                        {
                                          goto LABEL_185;
                                        }
                                      }

                                      else if ((v32 & 0x20) != 0)
                                      {
                                        goto LABEL_185;
                                      }

                                      if ((*&v31 & 0x40) != 0)
                                      {
                                        if ((v32 & 0x40) == 0 || self->_channelSwitchDuringHostWake != *(a3 + 52))
                                        {
                                          goto LABEL_185;
                                        }
                                      }

                                      else if ((v32 & 0x40) != 0)
                                      {
                                        goto LABEL_185;
                                      }

                                      privateMacType = self->_privateMacType;
                                      if (privateMacType | *(a3 + 39))
                                      {

                                        LOBYTE(IsEqual) = [(NSString *)privateMacType isEqual:?];
                                      }

                                      else
                                      {
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
  if ((*&self->_has & 2) != 0)
  {
    v60 = 2654435761u * self->_timestamp;
  }

  else
  {
    v60 = 0;
  }

  v59 = PBRepeatedInt32Hash();
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    v58 = 2654435761 * self->_isLinkUp;
    if ((*&has & 0x2000000) != 0)
    {
LABEL_6:
      v57 = 2654435761 * self->_isInVol;
      if ((*&has & 0x40000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v58 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_6;
    }
  }

  v57 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_7:
    v56 = 2654435761 * self->_reason;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v56 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_8:
    v55 = 2654435761 * self->_subreason;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v55 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_9:
    v54 = 2654435761 * self->_channel;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v54 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_10:
    v53 = 2654435761 * self->_channelWidth;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v52 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v53 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v52 = 2654435761 * self->_phyMode;
  if ((*&has & 0x200) != 0)
  {
LABEL_12:
    v51 = 2654435761 * self->_flags;
    goto LABEL_21;
  }

LABEL_20:
  v51 = 0;
LABEL_21:
  v50 = [(NSData *)self->_oui hash];
  v4 = self->_has;
  if ((*&v4 & 0x100000) != 0)
  {
    v49 = 2654435761 * self->_securityType;
    if ((*&v4 & 0x1000000) != 0)
    {
LABEL_23:
      v48 = 2654435761 * self->_wpaProtocol;
      if ((*&v4 & 0x10000) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v49 = 0;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_23;
    }
  }

  v48 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_24:
    v47 = 2654435761 * self->_mcastCipher;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  v47 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_25:
    v46 = 2654435761 * self->_ucastCipher;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  v46 = 0;
  if ((*&v4 & 4) != 0)
  {
LABEL_26:
    v45 = 2654435761 * self->_akmSuites;
    if ((*&v4 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  v45 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_27:
    v44 = 2654435761 * self->_capabilities;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_39:
  v44 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_28:
    v43 = 2654435761 * self->_enhancedSecurityType;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  v43 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_29:
    v42 = 2654435761 * self->_htInfo;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  v42 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_30:
    v41 = 2654435761 * self->_htExtended;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  v41 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_31:
    v40 = 2654435761 * self->_htTxBf;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_32;
    }

LABEL_44:
    v39 = 0;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_43:
  v40 = 0;
  if ((*&v4 & 0x800) == 0)
  {
    goto LABEL_44;
  }

LABEL_32:
  v39 = 2654435761 * self->_htASel;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_33:
    v38 = 2654435761 * self->_htAmpduParams;
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v37 = [(NSData *)self->_htSupportedMcsSet hash];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v36 = 2654435761 * self->_vhtInfo;
  }

  else
  {
    v36 = 0;
  }

  v35 = [(NSData *)self->_vhtSupportedMcsSet hash];
  v34 = PBRepeatedInt32Hash();
  v33 = PBRepeatedInt32Hash();
  v32 = PBRepeatedInt32Hash();
  v31 = PBRepeatedInt32Hash();
  v30 = PBRepeatedInt32Hash();
  v29 = PBRepeatedInt32Hash();
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v28 = 2654435761 * self->_gatewayARPHistory;
  }

  else
  {
    v28 = 0;
  }

  v27 = [(NSString *)self->_locale hash];
  if (*&self->_has)
  {
    associationDuration = self->_associationDuration;
    if (associationDuration < 0.0)
    {
      associationDuration = -associationDuration;
    }

    *v5.i64 = floor(associationDuration + 0.5);
    v9 = (associationDuration - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v26 = [(NSString *)self->_wpsResponseType hash];
  v25 = [(NSString *)self->_wpsManufacturerElement hash];
  v24 = [(NSString *)self->_wpsModelName hash];
  v23 = [(NSString *)self->_wpsModelNumber hash];
  v11 = [(NSString *)self->_countryCode hash];
  v12 = [(NSString *)self->_wpsPrimaryDeviceTypeCategory hash];
  v13 = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory hash];
  v14 = [(NSString *)self->_wpsDeviceNameElement hash];
  v15 = [(NSString *)self->_wpsDeviceNameData hash];
  v16 = [(NSString *)self->_wpsConfigMethods hash];
  v17 = [(NSString *)self->_localeSource hash];
  v18 = self->_has;
  if ((*&v18 & 0x80000) == 0)
  {
    v19 = 0;
    if ((*&v18 & 0x20) != 0)
    {
      goto LABEL_62;
    }

LABEL_65:
    v20 = 0;
    if ((*&v18 & 0x40) != 0)
    {
      goto LABEL_63;
    }

LABEL_66:
    v21 = 0;
    return v59 ^ v60 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v49 ^ v48 ^ v50 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v7 ^ v26 ^ v25 ^ v24 ^ v23 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ [(NSString *)self->_privateMacType hash];
  }

  v19 = 2654435761 * self->_rxCSAFrames;
  if ((*&v18 & 0x20) == 0)
  {
    goto LABEL_65;
  }

LABEL_62:
  v20 = 2654435761 * self->_channelSwitchDuringHostSleep;
  if ((*&v18 & 0x40) == 0)
  {
    goto LABEL_66;
  }

LABEL_63:
  v21 = 2654435761 * self->_channelSwitchDuringHostWake;
  return v59 ^ v60 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v49 ^ v48 ^ v50 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v7 ^ v26 ^ v25 ^ v24 ^ v23 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20 ^ v21 ^ [(NSString *)self->_privateMacType hash];
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 436) & 2) != 0)
  {
    self->_timestamp = *(a3 + 23);
    *&self->_has |= 2u;
  }

  v5 = [a3 rssiHistorysCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricLinkChangeData addRssiHistory:](self, "addRssiHistory:", [a3 rssiHistoryAtIndex:i]);
    }
  }

  v8 = *(a3 + 109);
  if ((v8 & 0x4000000) != 0)
  {
    self->_isLinkUp = *(a3 + 433);
    *&self->_has |= 0x4000000u;
    v8 = *(a3 + 109);
    if ((v8 & 0x2000000) == 0)
    {
LABEL_8:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_92;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_8;
  }

  self->_isInVol = *(a3 + 432);
  *&self->_has |= 0x2000000u;
  v8 = *(a3 + 109);
  if ((v8 & 0x40000) == 0)
  {
LABEL_9:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_reason = *(a3 + 80);
  *&self->_has |= 0x40000u;
  v8 = *(a3 + 109);
  if ((v8 & 0x200000) == 0)
  {
LABEL_10:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_subreason = *(a3 + 83);
  *&self->_has |= 0x200000u;
  v8 = *(a3 + 109);
  if ((v8 & 0x10) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_channel = *(a3 + 50);
  *&self->_has |= 0x10u;
  v8 = *(a3 + 109);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_channelWidth = *(a3 + 53);
  *&self->_has |= 0x80u;
  v8 = *(a3 + 109);
  if ((v8 & 0x20000) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_96:
  self->_phyMode = *(a3 + 76);
  *&self->_has |= 0x20000u;
  if ((*(a3 + 109) & 0x200) != 0)
  {
LABEL_14:
    self->_flags = *(a3 + 57);
    *&self->_has |= 0x200u;
  }

LABEL_15:
  if (*(a3 + 37))
  {
    [(AWDWiFiMetricLinkChangeData *)self setOui:?];
  }

  v9 = *(a3 + 109);
  if ((v9 & 0x100000) != 0)
  {
    self->_securityType = *(a3 + 82);
    *&self->_has |= 0x100000u;
    v9 = *(a3 + 109);
    if ((v9 & 0x1000000) == 0)
    {
LABEL_19:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_100;
    }
  }

  else if ((v9 & 0x1000000) == 0)
  {
    goto LABEL_19;
  }

  self->_wpaProtocol = *(a3 + 88);
  *&self->_has |= 0x1000000u;
  v9 = *(a3 + 109);
  if ((v9 & 0x10000) == 0)
  {
LABEL_20:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_mcastCipher = *(a3 + 72);
  *&self->_has |= 0x10000u;
  v9 = *(a3 + 109);
  if ((v9 & 0x400000) == 0)
  {
LABEL_21:
    if ((v9 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_ucastCipher = *(a3 + 84);
  *&self->_has |= 0x400000u;
  v9 = *(a3 + 109);
  if ((v9 & 4) == 0)
  {
LABEL_22:
    if ((v9 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_akmSuites = *(a3 + 48);
  *&self->_has |= 4u;
  v9 = *(a3 + 109);
  if ((v9 & 8) == 0)
  {
LABEL_23:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_capabilities = *(a3 + 49);
  *&self->_has |= 8u;
  v9 = *(a3 + 109);
  if ((v9 & 0x100) == 0)
  {
LABEL_24:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_enhancedSecurityType = *(a3 + 56);
  *&self->_has |= 0x100u;
  v9 = *(a3 + 109);
  if ((v9 & 0x4000) == 0)
  {
LABEL_25:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_htInfo = *(a3 + 62);
  *&self->_has |= 0x4000u;
  v9 = *(a3 + 109);
  if ((v9 & 0x2000) == 0)
  {
LABEL_26:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_htExtended = *(a3 + 61);
  *&self->_has |= 0x2000u;
  v9 = *(a3 + 109);
  if ((v9 & 0x8000) == 0)
  {
LABEL_27:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_htTxBf = *(a3 + 66);
  *&self->_has |= 0x8000u;
  v9 = *(a3 + 109);
  if ((v9 & 0x800) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_108:
  self->_htASel = *(a3 + 59);
  *&self->_has |= 0x800u;
  if ((*(a3 + 109) & 0x1000) != 0)
  {
LABEL_29:
    self->_htAmpduParams = *(a3 + 60);
    *&self->_has |= 0x1000u;
  }

LABEL_30:
  if (*(a3 + 32))
  {
    [(AWDWiFiMetricLinkChangeData *)self setHtSupportedMcsSet:?];
  }

  if ((*(a3 + 438) & 0x80) != 0)
  {
    self->_vhtInfo = *(a3 + 85);
    *&self->_has |= 0x800000u;
  }

  if (*(a3 + 43))
  {
    [(AWDWiFiMetricLinkChangeData *)self setVhtSupportedMcsSet:?];
  }

  v10 = [a3 txPerHistorysCount];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      -[AWDWiFiMetricLinkChangeData addTxPerHistory:](self, "addTxPerHistory:", [a3 txPerHistoryAtIndex:j]);
    }
  }

  v13 = [a3 txFrmsHistorysCount];
  if (v13)
  {
    v14 = v13;
    for (k = 0; k != v14; ++k)
    {
      -[AWDWiFiMetricLinkChangeData addTxFrmsHistory:](self, "addTxFrmsHistory:", [a3 txFrmsHistoryAtIndex:k]);
    }
  }

  v16 = [a3 fwTxPerHistorysCount];
  if (v16)
  {
    v17 = v16;
    for (m = 0; m != v17; ++m)
    {
      -[AWDWiFiMetricLinkChangeData addFwTxPerHistory:](self, "addFwTxPerHistory:", [a3 fwTxPerHistoryAtIndex:m]);
    }
  }

  v19 = [a3 fwTxFrmsHistorysCount];
  if (v19)
  {
    v20 = v19;
    for (n = 0; n != v20; ++n)
    {
      -[AWDWiFiMetricLinkChangeData addFwTxFrmsHistory:](self, "addFwTxFrmsHistory:", [a3 fwTxFrmsHistoryAtIndex:n]);
    }
  }

  v22 = [a3 bcnPerHistorysCount];
  if (v22)
  {
    v23 = v22;
    for (ii = 0; ii != v23; ++ii)
    {
      -[AWDWiFiMetricLinkChangeData addBcnPerHistory:](self, "addBcnPerHistory:", [a3 bcnPerHistoryAtIndex:ii]);
    }
  }

  v25 = [a3 bcnFrmsHistorysCount];
  if (v25)
  {
    v26 = v25;
    for (jj = 0; jj != v26; ++jj)
    {
      -[AWDWiFiMetricLinkChangeData addBcnFrmsHistory:](self, "addBcnFrmsHistory:", [a3 bcnFrmsHistoryAtIndex:jj]);
    }
  }

  if ((*(a3 + 437) & 4) != 0)
  {
    self->_gatewayARPHistory = *(a3 + 58);
    *&self->_has |= 0x400u;
  }

  if (*(a3 + 34))
  {
    [(AWDWiFiMetricLinkChangeData *)self setLocale:?];
  }

  if (*(a3 + 436))
  {
    self->_associationDuration = *(a3 + 22);
    *&self->_has |= 1u;
  }

  if (*(a3 + 53))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsResponseType:?];
  }

  if (*(a3 + 48))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsManufacturerElement:?];
  }

  if (*(a3 + 49))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsModelName:?];
  }

  if (*(a3 + 50))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsModelNumber:?];
  }

  if (*(a3 + 27))
  {
    [(AWDWiFiMetricLinkChangeData *)self setCountryCode:?];
  }

  if (*(a3 + 51))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsPrimaryDeviceTypeCategory:?];
  }

  if (*(a3 + 52))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (*(a3 + 47))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsDeviceNameElement:?];
  }

  if (*(a3 + 46))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsDeviceNameData:?];
  }

  if (*(a3 + 45))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsConfigMethods:?];
  }

  if (*(a3 + 35))
  {
    [(AWDWiFiMetricLinkChangeData *)self setLocaleSource:?];
  }

  v28 = *(a3 + 109);
  if ((v28 & 0x80000) != 0)
  {
    self->_rxCSAFrames = *(a3 + 81);
    *&self->_has |= 0x80000u;
    v28 = *(a3 + 109);
    if ((v28 & 0x20) == 0)
    {
LABEL_84:
      if ((v28 & 0x40) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_85;
    }
  }

  else if ((v28 & 0x20) == 0)
  {
    goto LABEL_84;
  }

  self->_channelSwitchDuringHostSleep = *(a3 + 51);
  *&self->_has |= 0x20u;
  if ((*(a3 + 109) & 0x40) != 0)
  {
LABEL_85:
    self->_channelSwitchDuringHostWake = *(a3 + 52);
    *&self->_has |= 0x40u;
  }

LABEL_86:
  if (*(a3 + 39))
  {

    [(AWDWiFiMetricLinkChangeData *)self setPrivateMacType:?];
  }
}

@end