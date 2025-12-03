@interface AWDWiFiMetricInterfaceStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasA2dpAssocMinutes:(BOOL)minutes;
- (void)setHasCellularDataRxBytes:(BOOL)bytes;
- (void)setHasCellularDataTxBytes:(BOOL)bytes;
- (void)setHasHidAssocMinutes:(BOOL)minutes;
- (void)setHasScoAssocMinutes:(BOOL)minutes;
- (void)setHasStatsCollectionMinutes:(BOOL)minutes;
- (void)setHasWifiA2dpRxBytes:(BOOL)bytes;
- (void)setHasWifiA2dpTxBytes:(BOOL)bytes;
- (void)setHasWifiAssocMinutes:(BOOL)minutes;
- (void)setHasWifiHidRxBytes:(BOOL)bytes;
- (void)setHasWifiHidTxBytes:(BOOL)bytes;
- (void)setHasWifiRxBytes:(BOOL)bytes;
- (void)setHasWifiScoRxBytes:(BOOL)bytes;
- (void)setHasWifiScoTxBytes:(BOOL)bytes;
- (void)setHasWifiTxBytes:(BOOL)bytes;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricInterfaceStats

- (void)setHasWifiA2dpRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasWifiScoRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasWifiRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasWifiHidRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasCellularDataRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasWifiA2dpTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasWifiScoTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasWifiTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasWifiHidTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasCellularDataTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasStatsCollectionMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasWifiAssocMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasA2dpAssocMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasScoAssocMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasHidAssocMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricInterfaceStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricInterfaceStats description](&v3, sel_description), -[AWDWiFiMetricInterfaceStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiA2dpRxBytes), @"wifiA2dpRxBytes"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiScoRxBytes), @"wifiScoRxBytes"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRxBytes), @"wifiRxBytes"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiHidRxBytes), @"wifiHidRxBytes"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellularDataRxBytes), @"cellularDataRxBytes"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiA2dpTxBytes), @"wifiA2dpTxBytes"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiScoTxBytes), @"wifiScoTxBytes"}];
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTxBytes), @"wifiTxBytes"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiHidTxBytes), @"wifiHidTxBytes"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cellularDataTxBytes), @"cellularDataTxBytes"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_statsCollectionMinutes), @"statsCollectionMinutes"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiAssocMinutes), @"wifiAssocMinutes"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scoAssocMinutes), @"scoAssocMinutes"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_17;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_a2dpAssocMinutes), @"a2dpAssocMinutes"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if ((has & 0x10) != 0)
  {
LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hidAssocMinutes), @"hidAssocMinutes"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  wifiA2dpRxBytes = self->_wifiA2dpRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  wifiScoRxBytes = self->_wifiScoRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  wifiRxBytes = self->_wifiRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  wifiHidRxBytes = self->_wifiHidRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  cellularDataRxBytes = self->_cellularDataRxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  wifiA2dpTxBytes = self->_wifiA2dpTxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  wifiScoTxBytes = self->_wifiScoTxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  wifiTxBytes = self->_wifiTxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  wifiHidTxBytes = self->_wifiHidTxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  cellularDataTxBytes = self->_cellularDataTxBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  statsCollectionMinutes = self->_statsCollectionMinutes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  wifiAssocMinutes = self->_wifiAssocMinutes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    scoAssocMinutes = self->_scoAssocMinutes;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

LABEL_31:
  a2dpAssocMinutes = self->_a2dpAssocMinutes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_33:
  hidAssocMinutes = self->_hidAssocMinutes;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 38) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(to + 10) = self->_wifiA2dpRxBytes;
  *(to + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 16) = self->_wifiScoRxBytes;
  *(to + 38) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 15) = self->_wifiRxBytes;
  *(to + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 13) = self->_wifiHidRxBytes;
  *(to + 38) |= 0x400u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 5) = self->_cellularDataRxBytes;
  *(to + 38) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 11) = self->_wifiA2dpTxBytes;
  *(to + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 17) = self->_wifiScoTxBytes;
  *(to + 38) |= 0x4000u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 18) = self->_wifiTxBytes;
  *(to + 38) |= 0x8000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 14) = self->_wifiHidTxBytes;
  *(to + 38) |= 0x800u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 6) = self->_cellularDataTxBytes;
  *(to + 38) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 9) = self->_statsCollectionMinutes;
  *(to + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 12) = self->_wifiAssocMinutes;
  *(to + 38) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 4) = self->_a2dpAssocMinutes;
  *(to + 38) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_33:
    *(to + 7) = self->_hidAssocMinutes;
    *(to + 38) |= 0x10u;
    return;
  }

LABEL_32:
  *(to + 8) = self->_scoAssocMinutes;
  *(to + 38) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_33;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 38) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_wifiA2dpRxBytes;
  *(result + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 16) = self->_wifiScoRxBytes;
  *(result + 38) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 15) = self->_wifiRxBytes;
  *(result + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 13) = self->_wifiHidRxBytes;
  *(result + 38) |= 0x400u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 5) = self->_cellularDataRxBytes;
  *(result + 38) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 11) = self->_wifiA2dpTxBytes;
  *(result + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 17) = self->_wifiScoTxBytes;
  *(result + 38) |= 0x4000u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 18) = self->_wifiTxBytes;
  *(result + 38) |= 0x8000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 14) = self->_wifiHidTxBytes;
  *(result + 38) |= 0x800u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 6) = self->_cellularDataTxBytes;
  *(result + 38) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 9) = self->_statsCollectionMinutes;
  *(result + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 12) = self->_wifiAssocMinutes;
  *(result + 38) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 4) = self->_a2dpAssocMinutes;
  *(result + 38) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_33:
  *(result + 8) = self->_scoAssocMinutes;
  *(result + 38) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_17:
  *(result + 7) = self->_hidAssocMinutes;
  *(result + 38) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 38);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_81;
      }
    }

    else if (v7)
    {
      goto LABEL_81;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_wifiA2dpRxBytes != *(equal + 10))
      {
        goto LABEL_81;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x2000) != 0)
    {
      if ((*(equal + 38) & 0x2000) == 0 || self->_wifiScoRxBytes != *(equal + 16))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x2000) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 38) & 0x1000) == 0 || self->_wifiRxBytes != *(equal + 15))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x1000) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 38) & 0x400) == 0 || self->_wifiHidRxBytes != *(equal + 13))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x400) != 0)
    {
      goto LABEL_81;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_cellularDataRxBytes != *(equal + 5))
      {
        goto LABEL_81;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 38) & 0x100) == 0 || self->_wifiA2dpTxBytes != *(equal + 11))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x100) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x4000) != 0)
    {
      if ((*(equal + 38) & 0x4000) == 0 || self->_wifiScoTxBytes != *(equal + 17))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x4000) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x8000) != 0)
    {
      if ((*(equal + 38) & 0x8000) == 0 || self->_wifiTxBytes != *(equal + 18))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x8000) != 0)
    {
LABEL_81:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 38) & 0x800) == 0 || self->_wifiHidTxBytes != *(equal + 14))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x800) != 0)
    {
      goto LABEL_81;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_cellularDataTxBytes != *(equal + 6))
      {
        goto LABEL_81;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_81;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_statsCollectionMinutes != *(equal + 9))
      {
        goto LABEL_81;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_81;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 38) & 0x200) == 0 || self->_wifiAssocMinutes != *(equal + 12))
      {
        goto LABEL_81;
      }
    }

    else if ((*(equal + 38) & 0x200) != 0)
    {
      goto LABEL_81;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_a2dpAssocMinutes != *(equal + 4))
      {
        goto LABEL_81;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_81;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_scoAssocMinutes != *(equal + 8))
      {
        goto LABEL_81;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_81;
    }

    LOBYTE(v5) = (v7 & 0x10) == 0;
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_hidAssocMinutes != *(equal + 7))
      {
        goto LABEL_81;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_wifiA2dpRxBytes;
      if ((*&self->_has & 0x2000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_wifiScoRxBytes;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_wifiRxBytes;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_wifiHidRxBytes;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_cellularDataRxBytes;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_wifiA2dpTxBytes;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_wifiScoTxBytes;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_wifiTxBytes;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_wifiHidTxBytes;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = 0;
  if ((has & 8) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_cellularDataTxBytes;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_statsCollectionMinutes;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_wifiAssocMinutes;
    if ((has & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = 0;
  if ((has & 2) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_a2dpAssocMinutes;
    if ((has & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v17 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    v18 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_31:
  v16 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v17 = 2654435761 * self->_scoAssocMinutes;
  if ((has & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  v18 = 2654435761 * self->_hidAssocMinutes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 38);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 38);
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_wifiA2dpRxBytes = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 38);
  if ((v3 & 0x2000) == 0)
  {
LABEL_4:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_wifiScoRxBytes = *(from + 16);
  *&self->_has |= 0x2000u;
  v3 = *(from + 38);
  if ((v3 & 0x1000) == 0)
  {
LABEL_5:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_wifiRxBytes = *(from + 15);
  *&self->_has |= 0x1000u;
  v3 = *(from + 38);
  if ((v3 & 0x400) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_wifiHidRxBytes = *(from + 13);
  *&self->_has |= 0x400u;
  v3 = *(from + 38);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_cellularDataRxBytes = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 38);
  if ((v3 & 0x100) == 0)
  {
LABEL_8:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_wifiA2dpTxBytes = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 38);
  if ((v3 & 0x4000) == 0)
  {
LABEL_9:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_wifiScoTxBytes = *(from + 17);
  *&self->_has |= 0x4000u;
  v3 = *(from + 38);
  if ((v3 & 0x8000) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_wifiTxBytes = *(from + 18);
  *&self->_has |= 0x8000u;
  v3 = *(from + 38);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_wifiHidTxBytes = *(from + 14);
  *&self->_has |= 0x800u;
  v3 = *(from + 38);
  if ((v3 & 8) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_cellularDataTxBytes = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 38);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_statsCollectionMinutes = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 38);
  if ((v3 & 0x200) == 0)
  {
LABEL_14:
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_wifiAssocMinutes = *(from + 12);
  *&self->_has |= 0x200u;
  v3 = *(from + 38);
  if ((v3 & 2) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_a2dpAssocMinutes = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 38);
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_33:
    self->_hidAssocMinutes = *(from + 7);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_32:
  self->_scoAssocMinutes = *(from + 8);
  *&self->_has |= 0x20u;
  if ((*(from + 38) & 0x10) != 0)
  {
    goto LABEL_33;
  }
}

@end