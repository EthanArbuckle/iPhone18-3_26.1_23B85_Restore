@interface AWDWiFiMetricLinkChangeData
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
- (void)setHasChannelSwitchDuringHostSleep:(BOOL)sleep;
- (void)setHasChannelSwitchDuringHostWake:(BOOL)wake;
- (void)setHasChannelWidth:(BOOL)width;
- (void)setHasEnhancedSecurityType:(BOOL)type;
- (void)setHasFlags:(BOOL)flags;
- (void)setHasGatewayARPHistory:(BOOL)history;
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
- (void)setHasRxCSAFrames:(BOOL)frames;
- (void)setHasSecurityType:(BOOL)type;
- (void)setHasSubreason:(BOOL)subreason;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUcastCipher:(BOOL)cipher;
- (void)setHasVhtInfo:(BOOL)info;
- (void)setHasWpaProtocol:(BOOL)protocol;
- (void)writeTo:(id)to;
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

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
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
  if (up)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasIsInVol:(BOOL)vol
{
  if (vol)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSubreason:(BOOL)subreason
{
  if (subreason)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasChannelWidth:(BOOL)width
{
  if (width)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasPhyMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasSecurityType:(BOOL)type
{
  if (type)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasWpaProtocol:(BOOL)protocol
{
  if (protocol)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasMcastCipher:(BOOL)cipher
{
  if (cipher)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasUcastCipher:(BOOL)cipher
{
  if (cipher)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasAkmSuites:(BOOL)suites
{
  if (suites)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCapabilities:(BOOL)capabilities
{
  if (capabilities)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasEnhancedSecurityType:(BOOL)type
{
  if (type)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasHtInfo:(BOOL)info
{
  if (info)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasHtExtended:(BOOL)extended
{
  if (extended)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasHtTxBf:(BOOL)bf
{
  if (bf)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasHtASel:(BOOL)sel
{
  if (sel)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasHtAmpduParams:(BOOL)params
{
  if (params)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasVhtInfo:(BOOL)info
{
  if (info)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
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
  if (history)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRxCSAFrames:(BOOL)frames
{
  if (frames)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasChannelSwitchDuringHostSleep:(BOOL)sleep
{
  if (sleep)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasChannelSwitchDuringHostWake:(BOOL)wake
{
  if (wake)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"rssiHistory"];
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isLinkUp), @"isLinkUp"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isInVol), @"isInVol"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reason), @"reason"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_subreason), @"subreason"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelWidth), @"channelWidth"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyMode), @"phyMode"}];
  if ((*&self->_has & 0x200) != 0)
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
  if ((*&v6 & 0x100000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wpaProtocol), @"wpaProtocol"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mcastCipher), @"mcastCipher"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ucastCipher), @"ucastCipher"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_akmSuites), @"akmSuites"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_capabilities), @"capabilities"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_enhancedSecurityType), @"enhancedSecurityType"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htInfo), @"htInfo"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htExtended), @"htExtended"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htTxBf), @"htTxBf"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_htASel), @"htASel"}];
  if ((*&self->_has & 0x1000) != 0)
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

  if ((*(&self->_has + 2) & 0x80) != 0)
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
  if ((*(&self->_has + 1) & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayARPHistory), @"gatewayARPHistory"}];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_associationDuration), @"associationDuration"}];
  }

  wpsResponseType = self->_wpsResponseType;
  if (wpsResponseType)
  {
    [dictionary setObject:wpsResponseType forKey:@"wpsResponseType"];
  }

  wpsManufacturerElement = self->_wpsManufacturerElement;
  if (wpsManufacturerElement)
  {
    [dictionary setObject:wpsManufacturerElement forKey:@"wpsManufacturerElement"];
  }

  wpsModelName = self->_wpsModelName;
  if (wpsModelName)
  {
    [dictionary setObject:wpsModelName forKey:@"wpsModelName"];
  }

  wpsModelNumber = self->_wpsModelNumber;
  if (wpsModelNumber)
  {
    [dictionary setObject:wpsModelNumber forKey:@"wpsModelNumber"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [dictionary setObject:countryCode forKey:@"countryCode"];
  }

  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
  if (wpsPrimaryDeviceTypeCategory)
  {
    [dictionary setObject:wpsPrimaryDeviceTypeCategory forKey:@"wpsPrimaryDeviceTypeCategory"];
  }

  wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
  if (wpsPrimaryDeviceTypeSubCategory)
  {
    [dictionary setObject:wpsPrimaryDeviceTypeSubCategory forKey:@"wpsPrimaryDeviceTypeSubCategory"];
  }

  wpsDeviceNameElement = self->_wpsDeviceNameElement;
  if (wpsDeviceNameElement)
  {
    [dictionary setObject:wpsDeviceNameElement forKey:@"wpsDeviceNameElement"];
  }

  wpsDeviceNameData = self->_wpsDeviceNameData;
  if (wpsDeviceNameData)
  {
    [dictionary setObject:wpsDeviceNameData forKey:@"wpsDeviceNameData"];
  }

  wpsConfigMethods = self->_wpsConfigMethods;
  if (wpsConfigMethods)
  {
    [dictionary setObject:wpsConfigMethods forKey:@"wpsConfigMethods"];
  }

  localeSource = self->_localeSource;
  if (localeSource)
  {
    [dictionary setObject:localeSource forKey:@"localeSource"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x80000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxCSAFrames), @"rxCSAFrames"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelSwitchDuringHostSleep), @"channelSwitchDuringHostSleep"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_64:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelSwitchDuringHostWake), @"channelSwitchDuringHostWake"}];
  }

LABEL_65:
  privateMacType = self->_privateMacType;
  if (privateMacType)
  {
    [dictionary setObject:privateMacType forKey:@"privateMacType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 23) = self->_timestamp;
    *(to + 109) |= 2u;
  }

  if ([(AWDWiFiMetricLinkChangeData *)self rssiHistorysCount])
  {
    [to clearRssiHistorys];
    rssiHistorysCount = [(AWDWiFiMetricLinkChangeData *)self rssiHistorysCount];
    if (rssiHistorysCount)
    {
      v6 = rssiHistorysCount;
      for (i = 0; i != v6; ++i)
      {
        [to addRssiHistory:{-[AWDWiFiMetricLinkChangeData rssiHistoryAtIndex:](self, "rssiHistoryAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    *(to + 433) = self->_isLinkUp;
    *(to + 109) |= 0x4000000u;
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

  *(to + 432) = self->_isInVol;
  *(to + 109) |= 0x2000000u;
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
  *(to + 80) = self->_reason;
  *(to + 109) |= 0x40000u;
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
  *(to + 83) = self->_subreason;
  *(to + 109) |= 0x200000u;
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
  *(to + 50) = self->_channel;
  *(to + 109) |= 0x10u;
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
  *(to + 53) = self->_channelWidth;
  *(to + 109) |= 0x80u;
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
  *(to + 76) = self->_phyMode;
  *(to + 109) |= 0x20000u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    *(to + 57) = self->_flags;
    *(to + 109) |= 0x200u;
  }

LABEL_16:
  if (self->_oui)
  {
    [to setOui:?];
  }

  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    *(to + 82) = self->_securityType;
    *(to + 109) |= 0x100000u;
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

  *(to + 88) = self->_wpaProtocol;
  *(to + 109) |= 0x1000000u;
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
  *(to + 72) = self->_mcastCipher;
  *(to + 109) |= 0x10000u;
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
  *(to + 84) = self->_ucastCipher;
  *(to + 109) |= 0x400000u;
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
  *(to + 48) = self->_akmSuites;
  *(to + 109) |= 4u;
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
  *(to + 49) = self->_capabilities;
  *(to + 109) |= 8u;
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
  *(to + 56) = self->_enhancedSecurityType;
  *(to + 109) |= 0x100u;
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
  *(to + 62) = self->_htInfo;
  *(to + 109) |= 0x4000u;
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
  *(to + 61) = self->_htExtended;
  *(to + 109) |= 0x2000u;
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
  *(to + 66) = self->_htTxBf;
  *(to + 109) |= 0x8000u;
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
  *(to + 59) = self->_htASel;
  *(to + 109) |= 0x800u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_30:
    *(to + 60) = self->_htAmpduParams;
    *(to + 109) |= 0x1000u;
  }

LABEL_31:
  if (self->_htSupportedMcsSet)
  {
    [to setHtSupportedMcsSet:?];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(to + 85) = self->_vhtInfo;
    *(to + 109) |= 0x800000u;
  }

  if (self->_vhtSupportedMcsSet)
  {
    [to setVhtSupportedMcsSet:?];
  }

  if ([(AWDWiFiMetricLinkChangeData *)self txPerHistorysCount])
  {
    [to clearTxPerHistorys];
    txPerHistorysCount = [(AWDWiFiMetricLinkChangeData *)self txPerHistorysCount];
    if (txPerHistorysCount)
    {
      v11 = txPerHistorysCount;
      for (j = 0; j != v11; ++j)
      {
        [to addTxPerHistory:{-[AWDWiFiMetricLinkChangeData txPerHistoryAtIndex:](self, "txPerHistoryAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self txFrmsHistorysCount])
  {
    [to clearTxFrmsHistorys];
    txFrmsHistorysCount = [(AWDWiFiMetricLinkChangeData *)self txFrmsHistorysCount];
    if (txFrmsHistorysCount)
    {
      v14 = txFrmsHistorysCount;
      for (k = 0; k != v14; ++k)
      {
        [to addTxFrmsHistory:{-[AWDWiFiMetricLinkChangeData txFrmsHistoryAtIndex:](self, "txFrmsHistoryAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self fwTxPerHistorysCount])
  {
    [to clearFwTxPerHistorys];
    fwTxPerHistorysCount = [(AWDWiFiMetricLinkChangeData *)self fwTxPerHistorysCount];
    if (fwTxPerHistorysCount)
    {
      v17 = fwTxPerHistorysCount;
      for (m = 0; m != v17; ++m)
      {
        [to addFwTxPerHistory:{-[AWDWiFiMetricLinkChangeData fwTxPerHistoryAtIndex:](self, "fwTxPerHistoryAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self fwTxFrmsHistorysCount])
  {
    [to clearFwTxFrmsHistorys];
    fwTxFrmsHistorysCount = [(AWDWiFiMetricLinkChangeData *)self fwTxFrmsHistorysCount];
    if (fwTxFrmsHistorysCount)
    {
      v20 = fwTxFrmsHistorysCount;
      for (n = 0; n != v20; ++n)
      {
        [to addFwTxFrmsHistory:{-[AWDWiFiMetricLinkChangeData fwTxFrmsHistoryAtIndex:](self, "fwTxFrmsHistoryAtIndex:", n)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self bcnPerHistorysCount])
  {
    [to clearBcnPerHistorys];
    bcnPerHistorysCount = [(AWDWiFiMetricLinkChangeData *)self bcnPerHistorysCount];
    if (bcnPerHistorysCount)
    {
      v23 = bcnPerHistorysCount;
      for (ii = 0; ii != v23; ++ii)
      {
        [to addBcnPerHistory:{-[AWDWiFiMetricLinkChangeData bcnPerHistoryAtIndex:](self, "bcnPerHistoryAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiMetricLinkChangeData *)self bcnFrmsHistorysCount])
  {
    [to clearBcnFrmsHistorys];
    bcnFrmsHistorysCount = [(AWDWiFiMetricLinkChangeData *)self bcnFrmsHistorysCount];
    if (bcnFrmsHistorysCount)
    {
      v26 = bcnFrmsHistorysCount;
      for (jj = 0; jj != v26; ++jj)
      {
        [to addBcnFrmsHistory:{-[AWDWiFiMetricLinkChangeData bcnFrmsHistoryAtIndex:](self, "bcnFrmsHistoryAtIndex:", jj)}];
      }
    }
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(to + 58) = self->_gatewayARPHistory;
    *(to + 109) |= 0x400u;
  }

  if (self->_locale)
  {
    [to setLocale:?];
  }

  if (*&self->_has)
  {
    *(to + 22) = *&self->_associationDuration;
    *(to + 109) |= 1u;
  }

  if (self->_wpsResponseType)
  {
    [to setWpsResponseType:?];
  }

  if (self->_wpsManufacturerElement)
  {
    [to setWpsManufacturerElement:?];
  }

  if (self->_wpsModelName)
  {
    [to setWpsModelName:?];
  }

  if (self->_wpsModelNumber)
  {
    [to setWpsModelNumber:?];
  }

  if (self->_countryCode)
  {
    [to setCountryCode:?];
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    [to setWpsPrimaryDeviceTypeCategory:?];
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    [to setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (self->_wpsDeviceNameElement)
  {
    [to setWpsDeviceNameElement:?];
  }

  if (self->_wpsDeviceNameData)
  {
    [to setWpsDeviceNameData:?];
  }

  if (self->_wpsConfigMethods)
  {
    [to setWpsConfigMethods:?];
  }

  if (self->_localeSource)
  {
    [to setLocaleSource:?];
  }

  v28 = self->_has;
  if ((*&v28 & 0x80000) != 0)
  {
    *(to + 81) = self->_rxCSAFrames;
    *(to + 109) |= 0x80000u;
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

  *(to + 51) = self->_channelSwitchDuringHostSleep;
  *(to + 109) |= 0x20u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_92:
    *(to + 52) = self->_channelSwitchDuringHostWake;
    *(to + 109) |= 0x40u;
  }

LABEL_93:
  if (self->_privateMacType)
  {

    [to setPrivateMacType:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  *(v6 + 296) = [(NSData *)self->_oui copyWithZone:zone];
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

  *(v6 + 256) = [(NSData *)self->_htSupportedMcsSet copyWithZone:zone];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v6 + 340) = self->_vhtInfo;
    *(v6 + 436) |= 0x800000u;
  }

  *(v6 + 344) = [(NSData *)self->_vhtSupportedMcsSet copyWithZone:zone];
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

  *(v6 + 272) = [(NSString *)self->_locale copyWithZone:zone];
  if (*&self->_has)
  {
    *(v6 + 176) = self->_associationDuration;
    *(v6 + 436) |= 1u;
  }

  *(v6 + 424) = [(NSString *)self->_wpsResponseType copyWithZone:zone];
  *(v6 + 384) = [(NSString *)self->_wpsManufacturerElement copyWithZone:zone];

  *(v6 + 392) = [(NSString *)self->_wpsModelName copyWithZone:zone];
  *(v6 + 400) = [(NSString *)self->_wpsModelNumber copyWithZone:zone];

  *(v6 + 216) = [(NSString *)self->_countryCode copyWithZone:zone];
  *(v6 + 408) = [(NSString *)self->_wpsPrimaryDeviceTypeCategory copyWithZone:zone];

  *(v6 + 416) = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory copyWithZone:zone];
  *(v6 + 376) = [(NSString *)self->_wpsDeviceNameElement copyWithZone:zone];

  *(v6 + 368) = [(NSString *)self->_wpsDeviceNameData copyWithZone:zone];
  *(v6 + 360) = [(NSString *)self->_wpsConfigMethods copyWithZone:zone];

  *(v6 + 280) = [(NSString *)self->_localeSource copyWithZone:zone];
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

  *(v6 + 312) = [(NSString *)self->_privateMacType copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (!IsEqual)
  {
    return IsEqual;
  }

  v6 = *(equal + 109);
  if ((*&self->_has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(equal + 23))
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
  v8 = *(equal + 109);
  if ((*&has & 0x4000000) != 0)
  {
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_185;
    }

    v9 = *(equal + 433);
    if (self->_isLinkUp)
    {
      if ((*(equal + 433) & 1) == 0)
      {
        goto LABEL_185;
      }
    }

    else if (*(equal + 433))
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
      v10 = *(equal + 432);
      if (self->_isInVol)
      {
        if ((*(equal + 432) & 1) == 0)
        {
          goto LABEL_185;
        }
      }

      else if (*(equal + 432))
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
    if ((v8 & 0x40000) == 0 || self->_reason != *(equal + 80))
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
    if ((v8 & 0x200000) == 0 || self->_subreason != *(equal + 83))
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
    if ((v8 & 0x10) == 0 || self->_channel != *(equal + 50))
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
    if ((v8 & 0x80) == 0 || self->_channelWidth != *(equal + 53))
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
    if ((v8 & 0x20000) == 0 || self->_phyMode != *(equal + 76))
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
    if ((v8 & 0x200) == 0 || self->_flags != *(equal + 57))
    {
      goto LABEL_185;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_185;
  }

  oui = self->_oui;
  if (oui | *(equal + 37))
  {
    IsEqual = [(NSData *)oui isEqual:?];
    if (!IsEqual)
    {
      return IsEqual;
    }

    has = self->_has;
  }

  v12 = *(equal + 109);
  if ((*&has & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0 || self->_securityType != *(equal + 82))
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
    if ((v12 & 0x1000000) == 0 || self->_wpaProtocol != *(equal + 88))
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
    if ((v12 & 0x10000) == 0 || self->_mcastCipher != *(equal + 72))
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
    if ((v12 & 0x400000) == 0 || self->_ucastCipher != *(equal + 84))
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
    if ((v12 & 4) == 0 || self->_akmSuites != *(equal + 48))
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
    if ((v12 & 8) == 0 || self->_capabilities != *(equal + 49))
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
    if ((v12 & 0x100) == 0 || self->_enhancedSecurityType != *(equal + 56))
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
    if ((v12 & 0x4000) == 0 || self->_htInfo != *(equal + 62))
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
    if ((v12 & 0x2000) == 0 || self->_htExtended != *(equal + 61))
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
    if ((v12 & 0x8000) == 0 || self->_htTxBf != *(equal + 66))
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
    if ((v12 & 0x800) == 0 || self->_htASel != *(equal + 59))
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
    if ((v12 & 0x1000) == 0 || self->_htAmpduParams != *(equal + 60))
    {
      goto LABEL_185;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_185;
  }

  htSupportedMcsSet = self->_htSupportedMcsSet;
  if (htSupportedMcsSet | *(equal + 32))
  {
    IsEqual = [(NSData *)htSupportedMcsSet isEqual:?];
    if (!IsEqual)
    {
      return IsEqual;
    }

    has = self->_has;
  }

  v14 = *(equal + 109);
  if ((*&has & 0x800000) != 0)
  {
    if ((v14 & 0x800000) == 0 || self->_vhtInfo != *(equal + 85))
    {
      goto LABEL_185;
    }
  }

  else if ((v14 & 0x800000) != 0)
  {
    goto LABEL_185;
  }

  vhtSupportedMcsSet = self->_vhtSupportedMcsSet;
  if (!(vhtSupportedMcsSet | *(equal + 43)) || (IsEqual = [(NSData *)vhtSupportedMcsSet isEqual:?]) != 0)
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
                v17 = *(equal + 109);
                if ((*&v16 & 0x400) != 0)
                {
                  if ((v17 & 0x400) == 0 || self->_gatewayARPHistory != *(equal + 58))
                  {
                    goto LABEL_185;
                  }
                }

                else if ((v17 & 0x400) != 0)
                {
                  goto LABEL_185;
                }

                locale = self->_locale;
                if (locale | *(equal + 34))
                {
                  IsEqual = [(NSString *)locale isEqual:?];
                  if (!IsEqual)
                  {
                    return IsEqual;
                  }

                  v16 = self->_has;
                }

                v19 = *(equal + 109);
                if (*&v16)
                {
                  if ((v19 & 1) == 0 || self->_associationDuration != *(equal + 22))
                  {
                    goto LABEL_185;
                  }
                }

                else if (v19)
                {
                  goto LABEL_185;
                }

                wpsResponseType = self->_wpsResponseType;
                if (!(wpsResponseType | *(equal + 53)) || (IsEqual = [(NSString *)wpsResponseType isEqual:?]) != 0)
                {
                  wpsManufacturerElement = self->_wpsManufacturerElement;
                  if (!(wpsManufacturerElement | *(equal + 48)) || (IsEqual = [(NSString *)wpsManufacturerElement isEqual:?]) != 0)
                  {
                    wpsModelName = self->_wpsModelName;
                    if (!(wpsModelName | *(equal + 49)) || (IsEqual = [(NSString *)wpsModelName isEqual:?]) != 0)
                    {
                      wpsModelNumber = self->_wpsModelNumber;
                      if (!(wpsModelNumber | *(equal + 50)) || (IsEqual = [(NSString *)wpsModelNumber isEqual:?]) != 0)
                      {
                        countryCode = self->_countryCode;
                        if (!(countryCode | *(equal + 27)) || (IsEqual = [(NSString *)countryCode isEqual:?]) != 0)
                        {
                          wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
                          if (!(wpsPrimaryDeviceTypeCategory | *(equal + 51)) || (IsEqual = [(NSString *)wpsPrimaryDeviceTypeCategory isEqual:?]) != 0)
                          {
                            wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
                            if (!(wpsPrimaryDeviceTypeSubCategory | *(equal + 52)) || (IsEqual = [(NSString *)wpsPrimaryDeviceTypeSubCategory isEqual:?]) != 0)
                            {
                              wpsDeviceNameElement = self->_wpsDeviceNameElement;
                              if (!(wpsDeviceNameElement | *(equal + 47)) || (IsEqual = [(NSString *)wpsDeviceNameElement isEqual:?]) != 0)
                              {
                                wpsDeviceNameData = self->_wpsDeviceNameData;
                                if (!(wpsDeviceNameData | *(equal + 46)) || (IsEqual = [(NSString *)wpsDeviceNameData isEqual:?]) != 0)
                                {
                                  wpsConfigMethods = self->_wpsConfigMethods;
                                  if (!(wpsConfigMethods | *(equal + 45)) || (IsEqual = [(NSString *)wpsConfigMethods isEqual:?]) != 0)
                                  {
                                    localeSource = self->_localeSource;
                                    if (!(localeSource | *(equal + 35)) || (IsEqual = [(NSString *)localeSource isEqual:?]) != 0)
                                    {
                                      v31 = self->_has;
                                      v32 = *(equal + 109);
                                      if ((*&v31 & 0x80000) != 0)
                                      {
                                        if ((v32 & 0x80000) == 0 || self->_rxCSAFrames != *(equal + 81))
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
                                        if ((v32 & 0x20) == 0 || self->_channelSwitchDuringHostSleep != *(equal + 51))
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
                                        if ((v32 & 0x40) == 0 || self->_channelSwitchDuringHostWake != *(equal + 52))
                                        {
                                          goto LABEL_185;
                                        }
                                      }

                                      else if ((v32 & 0x40) != 0)
                                      {
                                        goto LABEL_185;
                                      }

                                      privateMacType = self->_privateMacType;
                                      if (privateMacType | *(equal + 39))
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

- (void)mergeFrom:(id)from
{
  if ((*(from + 436) & 2) != 0)
  {
    self->_timestamp = *(from + 23);
    *&self->_has |= 2u;
  }

  rssiHistorysCount = [from rssiHistorysCount];
  if (rssiHistorysCount)
  {
    v6 = rssiHistorysCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricLinkChangeData addRssiHistory:](self, "addRssiHistory:", [from rssiHistoryAtIndex:i]);
    }
  }

  v8 = *(from + 109);
  if ((v8 & 0x4000000) != 0)
  {
    self->_isLinkUp = *(from + 433);
    *&self->_has |= 0x4000000u;
    v8 = *(from + 109);
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

  self->_isInVol = *(from + 432);
  *&self->_has |= 0x2000000u;
  v8 = *(from + 109);
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
  self->_reason = *(from + 80);
  *&self->_has |= 0x40000u;
  v8 = *(from + 109);
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
  self->_subreason = *(from + 83);
  *&self->_has |= 0x200000u;
  v8 = *(from + 109);
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
  self->_channel = *(from + 50);
  *&self->_has |= 0x10u;
  v8 = *(from + 109);
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
  self->_channelWidth = *(from + 53);
  *&self->_has |= 0x80u;
  v8 = *(from + 109);
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
  self->_phyMode = *(from + 76);
  *&self->_has |= 0x20000u;
  if ((*(from + 109) & 0x200) != 0)
  {
LABEL_14:
    self->_flags = *(from + 57);
    *&self->_has |= 0x200u;
  }

LABEL_15:
  if (*(from + 37))
  {
    [(AWDWiFiMetricLinkChangeData *)self setOui:?];
  }

  v9 = *(from + 109);
  if ((v9 & 0x100000) != 0)
  {
    self->_securityType = *(from + 82);
    *&self->_has |= 0x100000u;
    v9 = *(from + 109);
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

  self->_wpaProtocol = *(from + 88);
  *&self->_has |= 0x1000000u;
  v9 = *(from + 109);
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
  self->_mcastCipher = *(from + 72);
  *&self->_has |= 0x10000u;
  v9 = *(from + 109);
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
  self->_ucastCipher = *(from + 84);
  *&self->_has |= 0x400000u;
  v9 = *(from + 109);
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
  self->_akmSuites = *(from + 48);
  *&self->_has |= 4u;
  v9 = *(from + 109);
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
  self->_capabilities = *(from + 49);
  *&self->_has |= 8u;
  v9 = *(from + 109);
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
  self->_enhancedSecurityType = *(from + 56);
  *&self->_has |= 0x100u;
  v9 = *(from + 109);
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
  self->_htInfo = *(from + 62);
  *&self->_has |= 0x4000u;
  v9 = *(from + 109);
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
  self->_htExtended = *(from + 61);
  *&self->_has |= 0x2000u;
  v9 = *(from + 109);
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
  self->_htTxBf = *(from + 66);
  *&self->_has |= 0x8000u;
  v9 = *(from + 109);
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
  self->_htASel = *(from + 59);
  *&self->_has |= 0x800u;
  if ((*(from + 109) & 0x1000) != 0)
  {
LABEL_29:
    self->_htAmpduParams = *(from + 60);
    *&self->_has |= 0x1000u;
  }

LABEL_30:
  if (*(from + 32))
  {
    [(AWDWiFiMetricLinkChangeData *)self setHtSupportedMcsSet:?];
  }

  if ((*(from + 438) & 0x80) != 0)
  {
    self->_vhtInfo = *(from + 85);
    *&self->_has |= 0x800000u;
  }

  if (*(from + 43))
  {
    [(AWDWiFiMetricLinkChangeData *)self setVhtSupportedMcsSet:?];
  }

  txPerHistorysCount = [from txPerHistorysCount];
  if (txPerHistorysCount)
  {
    v11 = txPerHistorysCount;
    for (j = 0; j != v11; ++j)
    {
      -[AWDWiFiMetricLinkChangeData addTxPerHistory:](self, "addTxPerHistory:", [from txPerHistoryAtIndex:j]);
    }
  }

  txFrmsHistorysCount = [from txFrmsHistorysCount];
  if (txFrmsHistorysCount)
  {
    v14 = txFrmsHistorysCount;
    for (k = 0; k != v14; ++k)
    {
      -[AWDWiFiMetricLinkChangeData addTxFrmsHistory:](self, "addTxFrmsHistory:", [from txFrmsHistoryAtIndex:k]);
    }
  }

  fwTxPerHistorysCount = [from fwTxPerHistorysCount];
  if (fwTxPerHistorysCount)
  {
    v17 = fwTxPerHistorysCount;
    for (m = 0; m != v17; ++m)
    {
      -[AWDWiFiMetricLinkChangeData addFwTxPerHistory:](self, "addFwTxPerHistory:", [from fwTxPerHistoryAtIndex:m]);
    }
  }

  fwTxFrmsHistorysCount = [from fwTxFrmsHistorysCount];
  if (fwTxFrmsHistorysCount)
  {
    v20 = fwTxFrmsHistorysCount;
    for (n = 0; n != v20; ++n)
    {
      -[AWDWiFiMetricLinkChangeData addFwTxFrmsHistory:](self, "addFwTxFrmsHistory:", [from fwTxFrmsHistoryAtIndex:n]);
    }
  }

  bcnPerHistorysCount = [from bcnPerHistorysCount];
  if (bcnPerHistorysCount)
  {
    v23 = bcnPerHistorysCount;
    for (ii = 0; ii != v23; ++ii)
    {
      -[AWDWiFiMetricLinkChangeData addBcnPerHistory:](self, "addBcnPerHistory:", [from bcnPerHistoryAtIndex:ii]);
    }
  }

  bcnFrmsHistorysCount = [from bcnFrmsHistorysCount];
  if (bcnFrmsHistorysCount)
  {
    v26 = bcnFrmsHistorysCount;
    for (jj = 0; jj != v26; ++jj)
    {
      -[AWDWiFiMetricLinkChangeData addBcnFrmsHistory:](self, "addBcnFrmsHistory:", [from bcnFrmsHistoryAtIndex:jj]);
    }
  }

  if ((*(from + 437) & 4) != 0)
  {
    self->_gatewayARPHistory = *(from + 58);
    *&self->_has |= 0x400u;
  }

  if (*(from + 34))
  {
    [(AWDWiFiMetricLinkChangeData *)self setLocale:?];
  }

  if (*(from + 436))
  {
    self->_associationDuration = *(from + 22);
    *&self->_has |= 1u;
  }

  if (*(from + 53))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsResponseType:?];
  }

  if (*(from + 48))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsManufacturerElement:?];
  }

  if (*(from + 49))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsModelName:?];
  }

  if (*(from + 50))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsModelNumber:?];
  }

  if (*(from + 27))
  {
    [(AWDWiFiMetricLinkChangeData *)self setCountryCode:?];
  }

  if (*(from + 51))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsPrimaryDeviceTypeCategory:?];
  }

  if (*(from + 52))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (*(from + 47))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsDeviceNameElement:?];
  }

  if (*(from + 46))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsDeviceNameData:?];
  }

  if (*(from + 45))
  {
    [(AWDWiFiMetricLinkChangeData *)self setWpsConfigMethods:?];
  }

  if (*(from + 35))
  {
    [(AWDWiFiMetricLinkChangeData *)self setLocaleSource:?];
  }

  v28 = *(from + 109);
  if ((v28 & 0x80000) != 0)
  {
    self->_rxCSAFrames = *(from + 81);
    *&self->_has |= 0x80000u;
    v28 = *(from + 109);
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

  self->_channelSwitchDuringHostSleep = *(from + 51);
  *&self->_has |= 0x20u;
  if ((*(from + 109) & 0x40) != 0)
  {
LABEL_85:
    self->_channelSwitchDuringHostWake = *(from + 52);
    *&self->_has |= 0x40u;
  }

LABEL_86:
  if (*(from + 39))
  {

    [(AWDWiFiMetricLinkChangeData *)self setPrivateMacType:?];
  }
}

@end