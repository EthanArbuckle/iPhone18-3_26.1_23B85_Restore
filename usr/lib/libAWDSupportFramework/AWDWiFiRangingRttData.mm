@interface AWDWiFiRangingRttData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasCoreId:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasLosPeakRatio:(BOOL)a3;
- (void)setHasPeerBitErrorRate:(BOOL)a3;
- (void)setHasPeerCoreId:(BOOL)a3;
- (void)setHasPeerLosPeakRatio:(BOOL)a3;
- (void)setHasPeerPhyError:(BOOL)a3;
- (void)setHasPeerSnr:(BOOL)a3;
- (void)setHasPhyError:(BOOL)a3;
- (void)setHasRssi:(BOOL)a3;
- (void)setHasRtt:(BOOL)a3;
- (void)setHasSnr:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiRangingRttData

- (void)setHasFlags:(BOOL)a3
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

- (void)setHasRtt:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasRssi:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSnr:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasCoreId:(BOOL)a3
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

- (void)setHasLosPeakRatio:(BOOL)a3
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

- (void)setHasPhyError:(BOOL)a3
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

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasPeerSnr:(BOOL)a3
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

- (void)setHasPeerLosPeakRatio:(BOOL)a3
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

- (void)setHasPeerCoreId:(BOOL)a3
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

- (void)setHasPeerBitErrorRate:(BOOL)a3
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

- (void)setHasPeerPhyError:(BOOL)a3
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

- (void)setHasChannel:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiRangingRttData;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiRangingRttData description](&v3, sel_description), -[AWDWiFiRangingRttData dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flags), @"flags"}];
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rtt), @"rtt"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_rssi), @"rssi"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_snr), @"snr"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreId), @"coreId"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_losPeakRatio), @"losPeakRatio"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bitErrorRate), @"bitErrorRate"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyError), @"phyError"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_status), @"status"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerSnr), @"peerSnr"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerLosPeakRatio), @"peerLosPeakRatio"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerCoreId), @"peerCoreId"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerPhyError), @"peerPhyError"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_16;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerBitErrorRate), @"peerBitErrorRate"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((has & 2) != 0)
  {
LABEL_16:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    flags = self->_flags;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  rtt = self->_rtt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  rssi = self->_rssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  snr = self->_snr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  coreId = self->_coreId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  losPeakRatio = self->_losPeakRatio;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  bitErrorRate = self->_bitErrorRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  phyError = self->_phyError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  status = self->_status;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  peerSnr = self->_peerSnr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  peerLosPeakRatio = self->_peerLosPeakRatio;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  peerCoreId = self->_peerCoreId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    peerPhyError = self->_peerPhyError;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_29:
  peerBitErrorRate = self->_peerBitErrorRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_31:
  channel = self->_channel;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 5) = self->_flags;
    *(a3 + 34) |= 8u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 14) = self->_rtt;
  *(a3 + 34) |= 0x1000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 13) = self->_rssi;
  *(a3 + 34) |= 0x800u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 15) = self->_snr;
  *(a3 + 34) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 4) = self->_coreId;
  *(a3 + 34) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 6) = self->_losPeakRatio;
  *(a3 + 34) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 2) = self->_bitErrorRate;
  *(a3 + 34) |= 1u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 12) = self->_phyError;
  *(a3 + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 16) = self->_status;
  *(a3 + 34) |= 0x4000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 11) = self->_peerSnr;
  *(a3 + 34) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 9) = self->_peerLosPeakRatio;
  *(a3 + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 8) = self->_peerCoreId;
  *(a3 + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 7) = self->_peerBitErrorRate;
  *(a3 + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_31:
    *(a3 + 3) = self->_channel;
    *(a3 + 34) |= 2u;
    return;
  }

LABEL_30:
  *(a3 + 10) = self->_peerPhyError;
  *(a3 + 34) |= 0x100u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_31;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_flags;
    *(result + 34) |= 8u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 14) = self->_rtt;
  *(result + 34) |= 0x1000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 13) = self->_rssi;
  *(result + 34) |= 0x800u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 15) = self->_snr;
  *(result + 34) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 4) = self->_coreId;
  *(result + 34) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 6) = self->_losPeakRatio;
  *(result + 34) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 2) = self->_bitErrorRate;
  *(result + 34) |= 1u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 12) = self->_phyError;
  *(result + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 16) = self->_status;
  *(result + 34) |= 0x4000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 11) = self->_peerSnr;
  *(result + 34) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 9) = self->_peerLosPeakRatio;
  *(result + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 8) = self->_peerCoreId;
  *(result + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 7) = self->_peerBitErrorRate;
  *(result + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_31:
  *(result + 10) = self->_peerPhyError;
  *(result + 34) |= 0x100u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_16:
  *(result + 3) = self->_channel;
  *(result + 34) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 34);
    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_flags != *(a3 + 5))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 8) != 0)
    {
LABEL_76:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(a3 + 34) & 0x1000) == 0 || self->_rtt != *(a3 + 14))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x1000) != 0)
    {
      goto LABEL_76;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 34) & 0x800) == 0 || self->_rssi != *(a3 + 13))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x800) != 0)
    {
      goto LABEL_76;
    }

    if ((*&self->_has & 0x2000) != 0)
    {
      if ((*(a3 + 34) & 0x2000) == 0 || self->_snr != *(a3 + 15))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x2000) != 0)
    {
      goto LABEL_76;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_coreId != *(a3 + 4))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_76;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_losPeakRatio != *(a3 + 6))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_76;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_bitErrorRate != *(a3 + 2))
      {
        goto LABEL_76;
      }
    }

    else if (v7)
    {
      goto LABEL_76;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 34) & 0x400) == 0 || self->_phyError != *(a3 + 12))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x400) != 0)
    {
      goto LABEL_76;
    }

    if ((*&self->_has & 0x4000) != 0)
    {
      if ((*(a3 + 34) & 0x4000) == 0 || self->_status != *(a3 + 16))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x4000) != 0)
    {
      goto LABEL_76;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 34) & 0x200) == 0 || self->_peerSnr != *(a3 + 11))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x200) != 0)
    {
      goto LABEL_76;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_peerLosPeakRatio != *(a3 + 9))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_76;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_peerCoreId != *(a3 + 8))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_76;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_peerBitErrorRate != *(a3 + 7))
      {
        goto LABEL_76;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_76;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 34) & 0x100) == 0 || self->_peerPhyError != *(a3 + 10))
      {
        goto LABEL_76;
      }
    }

    else if ((*(a3 + 34) & 0x100) != 0)
    {
      goto LABEL_76;
    }

    LOBYTE(v5) = (v7 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_channel != *(a3 + 3))
      {
        goto LABEL_76;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v3 = 2654435761 * self->_flags;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_rtt;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_rssi;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_snr;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_coreId;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_losPeakRatio;
    if (has)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if (has)
  {
LABEL_8:
    v9 = 2654435761 * self->_bitErrorRate;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_phyError;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_status;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_peerSnr;
    if ((has & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_peerLosPeakRatio;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_peerCoreId;
    if ((has & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_peerBitErrorRate;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v17 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_29:
  v15 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_peerPhyError;
  if ((has & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v17 = 2654435761 * self->_channel;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 34);
  if ((v3 & 8) != 0)
  {
    self->_flags = *(a3 + 5);
    *&self->_has |= 8u;
    v3 = *(a3 + 34);
    if ((v3 & 0x1000) == 0)
    {
LABEL_3:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a3 + 34) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  self->_rtt = *(a3 + 14);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 34);
  if ((v3 & 0x800) == 0)
  {
LABEL_4:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_rssi = *(a3 + 13);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 34);
  if ((v3 & 0x2000) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_snr = *(a3 + 15);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 34);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_coreId = *(a3 + 4);
  *&self->_has |= 4u;
  v3 = *(a3 + 34);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_losPeakRatio = *(a3 + 6);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 34);
  if ((v3 & 1) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_bitErrorRate = *(a3 + 2);
  *&self->_has |= 1u;
  v3 = *(a3 + 34);
  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_phyError = *(a3 + 12);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 34);
  if ((v3 & 0x4000) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_status = *(a3 + 16);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 34);
  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_peerSnr = *(a3 + 11);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 34);
  if ((v3 & 0x80) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_peerLosPeakRatio = *(a3 + 9);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 34);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_peerCoreId = *(a3 + 8);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 34);
  if ((v3 & 0x20) == 0)
  {
LABEL_14:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_peerBitErrorRate = *(a3 + 7);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 34);
  if ((v3 & 0x100) == 0)
  {
LABEL_15:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_31:
    self->_channel = *(a3 + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_30:
  self->_peerPhyError = *(a3 + 10);
  *&self->_has |= 0x100u;
  if ((*(a3 + 34) & 2) != 0)
  {
    goto LABEL_31;
  }
}

@end