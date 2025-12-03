@interface AWDPowerWifiMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWifi2P4GHzRxDuration:(BOOL)duration;
- (void)setHasWifi2P4GHzTxDuration:(BOOL)duration;
- (void)setHasWifi5GHz20MHzRxDuration:(BOOL)duration;
- (void)setHasWifi5GHz20MHzTxDuration:(BOOL)duration;
- (void)setHasWifi5GHz40MHzRxDuration:(BOOL)duration;
- (void)setHasWifi5GHz40MHzTxDuration:(BOOL)duration;
- (void)setHasWifi5GHz80MHzRxDuration:(BOOL)duration;
- (void)setHasWifi5GHz80MHzTxDuration:(BOOL)duration;
- (void)setHasWifiFRTSDuration:(BOOL)duration;
- (void)setHasWifiHsicActiveDuration:(BOOL)duration;
- (void)setHasWifiPcieL0Duration:(BOOL)duration;
- (void)setHasWifiPcieL10Duration:(BOOL)duration;
- (void)setHasWifiPcieL11Duration:(BOOL)duration;
- (void)setHasWifiPcieL12Duration:(BOOL)duration;
- (void)setHasWifiScanDuration:(BOOL)duration;
- (void)setHasWifiSleepDuration:(BOOL)duration;
- (void)setHasWifiTotalDuration:(BOOL)duration;
- (void)setHasWifiTotalPowerMicroWatt:(BOOL)watt;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerWifiMetrics

- (void)setHasWifi2P4GHzTxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasWifi2P4GHzRxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasWifi5GHz20MHzTxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasWifi5GHz40MHzTxDuration:(BOOL)duration
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

- (void)setHasWifi5GHz80MHzTxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasWifi5GHz20MHzRxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasWifi5GHz40MHzRxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasWifi5GHz80MHzRxDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasWifiSleepDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasWifiTotalDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasWifiFRTSDuration:(BOOL)duration
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

- (void)setHasWifiScanDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasWifiPcieL0Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasWifiPcieL10Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasWifiPcieL11Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasWifiPcieL12Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasWifiTotalPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasWifiHsicActiveDuration:(BOOL)duration
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerWifiMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerWifiMetrics description](&v3, sel_description), -[AWDPowerWifiMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi2P4GHzTxDuration), @"wifi2P4GHzTxDuration"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi2P4GHzRxDuration), @"wifi2P4GHzRxDuration"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi5GHz20MHzTxDuration), @"wifi5GHz20MHzTxDuration"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi5GHz40MHzTxDuration), @"wifi5GHz40MHzTxDuration"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi5GHz80MHzTxDuration), @"wifi5GHz80MHzTxDuration"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi5GHz20MHzRxDuration), @"wifi5GHz20MHzRxDuration"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi5GHz40MHzRxDuration), @"wifi5GHz40MHzRxDuration"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifi5GHz80MHzRxDuration), @"wifi5GHz80MHzRxDuration"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiSleepDuration), @"wifiSleepDuration"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTotalDuration), @"wifiTotalDuration"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiFRTSDuration), @"wifiFRTSDuration"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiScanDuration), @"wifiScanDuration"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiPcieL0Duration), @"wifiPcieL0Duration"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiPcieL10Duration), @"wifiPcieL10Duration"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiPcieL11Duration), @"wifiPcieL11Duration"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTotalPowerMicroWatt), @"wifiTotalPowerMicroWatt"}];
    if ((*&self->_has & 0x400) == 0)
    {
      return dictionary;
    }

    goto LABEL_20;
  }

LABEL_38:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiPcieL12Duration), @"wifiPcieL12Duration"}];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((*&has & 0x400) != 0)
  {
LABEL_20:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiHsicActiveDuration), @"wifiHsicActiveDuration"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  wifi2P4GHzTxDuration = self->_wifi2P4GHzTxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  wifi2P4GHzRxDuration = self->_wifi2P4GHzRxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  wifi5GHz20MHzTxDuration = self->_wifi5GHz20MHzTxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  wifi5GHz40MHzTxDuration = self->_wifi5GHz40MHzTxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  wifi5GHz80MHzTxDuration = self->_wifi5GHz80MHzTxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  wifi5GHz20MHzRxDuration = self->_wifi5GHz20MHzRxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  wifi5GHz40MHzRxDuration = self->_wifi5GHz40MHzRxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  wifi5GHz80MHzRxDuration = self->_wifi5GHz80MHzRxDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  wifiSleepDuration = self->_wifiSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  wifiTotalDuration = self->_wifiTotalDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  wifiFRTSDuration = self->_wifiFRTSDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  wifiScanDuration = self->_wifiScanDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  wifiPcieL0Duration = self->_wifiPcieL0Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  wifiPcieL10Duration = self->_wifiPcieL10Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  wifiPcieL11Duration = self->_wifiPcieL11Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    wifiTotalPowerMicroWatt = self->_wifiTotalPowerMicroWatt;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x400) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

LABEL_37:
  wifiPcieL12Duration = self->_wifiPcieL12Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((*&has & 0x400) == 0)
  {
    return;
  }

LABEL_39:
  wifiHsicActiveDuration = self->_wifiHsicActiveDuration;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 22) |= 1u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_wifi2P4GHzTxDuration;
  *(to + 22) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 4) = self->_wifi2P4GHzRxDuration;
  *(to + 22) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 7) = self->_wifi5GHz20MHzTxDuration;
  *(to + 22) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 9) = self->_wifi5GHz40MHzTxDuration;
  *(to + 22) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 11) = self->_wifi5GHz80MHzTxDuration;
  *(to + 22) |= 0x100u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 6) = self->_wifi5GHz20MHzRxDuration;
  *(to + 22) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 8) = self->_wifi5GHz40MHzRxDuration;
  *(to + 22) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 10) = self->_wifi5GHz80MHzRxDuration;
  *(to + 22) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 19) = self->_wifiSleepDuration;
  *(to + 22) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 20) = self->_wifiTotalDuration;
  *(to + 22) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 12) = self->_wifiFRTSDuration;
  *(to + 22) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 18) = self->_wifiScanDuration;
  *(to + 22) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 14) = self->_wifiPcieL0Duration;
  *(to + 22) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 15) = self->_wifiPcieL10Duration;
  *(to + 22) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 16) = self->_wifiPcieL11Duration;
  *(to + 22) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 17) = self->_wifiPcieL12Duration;
  *(to + 22) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400) == 0)
    {
      return;
    }

LABEL_39:
    *(to + 13) = self->_wifiHsicActiveDuration;
    *(to + 22) |= 0x400u;
    return;
  }

LABEL_38:
  *(to + 21) = self->_wifiTotalPowerMicroWatt;
  *(to + 22) |= 0x40000u;
  if ((*&self->_has & 0x400) != 0)
  {
    goto LABEL_39;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 22) |= 1u;
    has = self->_has;
    if ((*&has & 4) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_wifi2P4GHzTxDuration;
  *(result + 22) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 4) = self->_wifi2P4GHzRxDuration;
  *(result + 22) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 7) = self->_wifi5GHz20MHzTxDuration;
  *(result + 22) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 9) = self->_wifi5GHz40MHzTxDuration;
  *(result + 22) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 11) = self->_wifi5GHz80MHzTxDuration;
  *(result + 22) |= 0x100u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 6) = self->_wifi5GHz20MHzRxDuration;
  *(result + 22) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 8) = self->_wifi5GHz40MHzRxDuration;
  *(result + 22) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 10) = self->_wifi5GHz80MHzRxDuration;
  *(result + 22) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 19) = self->_wifiSleepDuration;
  *(result + 22) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 20) = self->_wifiTotalDuration;
  *(result + 22) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 12) = self->_wifiFRTSDuration;
  *(result + 22) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 18) = self->_wifiScanDuration;
  *(result + 22) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 14) = self->_wifiPcieL0Duration;
  *(result + 22) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 15) = self->_wifiPcieL10Duration;
  *(result + 22) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 16) = self->_wifiPcieL11Duration;
  *(result + 22) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 17) = self->_wifiPcieL12Duration;
  *(result + 22) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_39:
  *(result + 21) = self->_wifiTotalPowerMicroWatt;
  *(result + 22) |= 0x40000u;
  if ((*&self->_has & 0x400) == 0)
  {
    return result;
  }

LABEL_20:
  *(result + 13) = self->_wifiHsicActiveDuration;
  *(result + 22) |= 0x400u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 22);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_96;
      }
    }

    else if (v7)
    {
LABEL_96:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_wifi2P4GHzTxDuration != *(equal + 5))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_wifi2P4GHzRxDuration != *(equal + 4))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_wifi5GHz20MHzTxDuration != *(equal + 7))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_wifi5GHz40MHzTxDuration != *(equal + 9))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_wifi5GHz80MHzTxDuration != *(equal + 11))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_wifi5GHz20MHzRxDuration != *(equal + 6))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_wifi5GHz40MHzRxDuration != *(equal + 8))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_wifi5GHz80MHzRxDuration != *(equal + 10))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_wifiSleepDuration != *(equal + 19))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_wifiTotalDuration != *(equal + 20))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_wifiFRTSDuration != *(equal + 12))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_wifiScanDuration != *(equal + 18))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_wifiPcieL0Duration != *(equal + 14))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_wifiPcieL10Duration != *(equal + 15))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_wifiPcieL11Duration != *(equal + 16))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_wifiPcieL12Duration != *(equal + 17))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_96;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_wifiTotalPowerMicroWatt != *(equal + 21))
      {
        goto LABEL_96;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_96;
    }

    LOBYTE(v5) = (*(equal + 22) & 0x400) == 0;
    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_wifiHsicActiveDuration != *(equal + 13))
      {
        goto LABEL_96;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_wifi2P4GHzTxDuration;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_wifi2P4GHzRxDuration;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_wifi5GHz20MHzTxDuration;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_wifi5GHz40MHzTxDuration;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_wifi5GHz80MHzTxDuration;
    if ((*&has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_wifi5GHz20MHzRxDuration;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_wifi5GHz40MHzRxDuration;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_wifi5GHz80MHzRxDuration;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_wifiSleepDuration;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_wifiTotalDuration;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_wifiFRTSDuration;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_wifiScanDuration;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_wifiPcieL0Duration;
  if ((*&has & 0x1000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_wifiPcieL10Duration;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x2000) != 0)
  {
    v18 = 2654435761 * self->_wifiPcieL11Duration;
    if ((*&has & 0x4000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_wifiPcieL12Duration;
      if ((*&has & 0x40000) != 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      v20 = 0;
      if ((*&has & 0x400) != 0)
      {
        goto LABEL_36;
      }

LABEL_40:
      v21 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v20 = 2654435761 * self->_wifiTotalPowerMicroWatt;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v21 = 2654435761 * self->_wifiHsicActiveDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 22);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 22);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_wifi2P4GHzTxDuration = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 22);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_wifi2P4GHzRxDuration = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 22);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_wifi5GHz20MHzTxDuration = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 22);
  if ((v3 & 0x40) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_wifi5GHz40MHzTxDuration = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 22);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_wifi5GHz80MHzTxDuration = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 22);
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_wifi5GHz20MHzRxDuration = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 22);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_wifi5GHz40MHzRxDuration = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 22);
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_wifi5GHz80MHzRxDuration = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 22);
  if ((v3 & 0x10000) == 0)
  {
LABEL_11:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_wifiSleepDuration = *(from + 19);
  *&self->_has |= 0x10000u;
  v3 = *(from + 22);
  if ((v3 & 0x20000) == 0)
  {
LABEL_12:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wifiTotalDuration = *(from + 20);
  *&self->_has |= 0x20000u;
  v3 = *(from + 22);
  if ((v3 & 0x200) == 0)
  {
LABEL_13:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_wifiFRTSDuration = *(from + 12);
  *&self->_has |= 0x200u;
  v3 = *(from + 22);
  if ((v3 & 0x8000) == 0)
  {
LABEL_14:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_wifiScanDuration = *(from + 18);
  *&self->_has |= 0x8000u;
  v3 = *(from + 22);
  if ((v3 & 0x800) == 0)
  {
LABEL_15:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_wifiPcieL0Duration = *(from + 14);
  *&self->_has |= 0x800u;
  v3 = *(from + 22);
  if ((v3 & 0x1000) == 0)
  {
LABEL_16:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_wifiPcieL10Duration = *(from + 15);
  *&self->_has |= 0x1000u;
  v3 = *(from + 22);
  if ((v3 & 0x2000) == 0)
  {
LABEL_17:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_wifiPcieL11Duration = *(from + 16);
  *&self->_has |= 0x2000u;
  v3 = *(from + 22);
  if ((v3 & 0x4000) == 0)
  {
LABEL_18:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_wifiPcieL12Duration = *(from + 17);
  *&self->_has |= 0x4000u;
  v3 = *(from + 22);
  if ((v3 & 0x40000) == 0)
  {
LABEL_19:
    if ((v3 & 0x400) == 0)
    {
      return;
    }

LABEL_39:
    self->_wifiHsicActiveDuration = *(from + 13);
    *&self->_has |= 0x400u;
    return;
  }

LABEL_38:
  self->_wifiTotalPowerMicroWatt = *(from + 21);
  *&self->_has |= 0x40000u;
  if ((*(from + 22) & 0x400) != 0)
  {
    goto LABEL_39;
  }
}

@end