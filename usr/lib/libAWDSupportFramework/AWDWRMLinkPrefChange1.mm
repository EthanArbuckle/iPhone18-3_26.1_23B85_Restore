@interface AWDWRMLinkPrefChange1
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCount:(BOOL)a3;
- (void)setHasNCallActive:(BOOL)a3;
- (void)setHasNCallIdle:(BOOL)a3;
- (void)setHasNCellularGood:(BOOL)a3;
- (void)setHasNData:(BOOL)a3;
- (void)setHasNNegativeStatusUpdate:(BOOL)a3;
- (void)setHasNPositiveStatusUpdate:(BOOL)a3;
- (void)setHasNRunning:(BOOL)a3;
- (void)setHasNStationary:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin1:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin2:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin3:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin4:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin5:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin6:(BOOL)a3;
- (void)setHasNUnknownStatusUpdat:(BOOL)a3;
- (void)setHasNVehicular:(BOOL)a3;
- (void)setHasNVoice:(BOOL)a3;
- (void)setHasNWalking:(BOOL)a3;
- (void)setHasNWifiBadBcn:(BOOL)a3;
- (void)setHasNWifiBadLoad:(BOOL)a3;
- (void)setHasNWifiBadPER:(BOOL)a3;
- (void)setHasNWifiBadRSSI:(BOOL)a3;
- (void)setHasNWifiBadSNR:(BOOL)a3;
- (void)setHasNWifiBadTransportRTP:(BOOL)a3;
- (void)setHasNWifiBadTransportSymptom:(BOOL)a3;
- (void)setHasNWifiNotInit:(BOOL)a3;
- (void)setHasNWifiNotReady:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWRMLinkPrefChange1

- (void)setHasCount:(BOOL)a3
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

- (void)setHasNCallIdle:(BOOL)a3
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

- (void)setHasNCallActive:(BOOL)a3
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

- (void)setHasNData:(BOOL)a3
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

- (void)setHasNVoice:(BOOL)a3
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

- (void)setHasNStationary:(BOOL)a3
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

- (void)setHasNWalking:(BOOL)a3
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

- (void)setHasNRunning:(BOOL)a3
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

- (void)setHasNVehicular:(BOOL)a3
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

- (void)setHasNWifiNotInit:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasNWifiNotReady:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasNWifiBadSNR:(BOOL)a3
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

- (void)setHasNWifiBadRSSI:(BOOL)a3
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

- (void)setHasNWifiBadPER:(BOOL)a3
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

- (void)setHasNWifiBadTransportSymptom:(BOOL)a3
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

- (void)setHasNWifiBadTransportRTP:(BOOL)a3
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

- (void)setHasNWifiBadLoad:(BOOL)a3
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

- (void)setHasNWifiBadBcn:(BOOL)a3
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

- (void)setHasNCellularGood:(BOOL)a3
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

- (void)setHasNPositiveStatusUpdate:(BOOL)a3
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

- (void)setHasNNegativeStatusUpdate:(BOOL)a3
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

- (void)setHasNUnknownStatusUpdat:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin1:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin2:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin3:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin4:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin5:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin6:(BOOL)a3
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
  v3.super_class = AWDWRMLinkPrefChange1;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMLinkPrefChange1 description](&v3, sel_description), -[AWDWRMLinkPrefChange1 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCallIdle), @"nCallIdle"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCallActive), @"nCallActive"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nData), @"nData"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nVoice), @"nVoice"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStationary), @"nStationary"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWalking), @"nWalking"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nRunning), @"nRunning"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nVehicular), @"nVehicular"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiNotInit), @"nWifiNotInit"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiNotReady), @"nWifiNotReady"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadSNR), @"nWifiBadSNR"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadRSSI), @"nWifiBadRSSI"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadPER), @"nWifiBadPER"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadTransportSymptom), @"nWifiBadTransportSymptom"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadTransportRTP), @"nWifiBadTransportRTP"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadLoad), @"nWifiBadLoad"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiBadBcn), @"nWifiBadBcn"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCellularGood), @"nCellularGood"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nPositiveStatusUpdate), @"nPositiveStatusUpdate"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nNegativeStatusUpdate), @"nNegativeStatusUpdate"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nUnknownStatusUpdat), @"nUnknownStatusUpdat"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_25:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin1), @"nStatusUpdateDelayBin1"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_26:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin2), @"nStatusUpdateDelayBin2"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_27:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin3), @"nStatusUpdateDelayBin3"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_29;
    }

LABEL_59:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin5), @"nStatusUpdateDelayBin5"}];
    if ((*&self->_has & 0x8000) == 0)
    {
      return v3;
    }

    goto LABEL_30;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin4), @"nStatusUpdateDelayBin4"}];
  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    goto LABEL_59;
  }

LABEL_29:
  if ((*&has & 0x8000) != 0)
  {
LABEL_30:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin6), @"nStatusUpdateDelayBin6"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  count = self->_count;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  nCallIdle = self->_nCallIdle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  nCallActive = self->_nCallActive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  nData = self->_nData;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  nVoice = self->_nVoice;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  nStationary = self->_nStationary;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  nWalking = self->_nWalking;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  nRunning = self->_nRunning;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  nVehicular = self->_nVehicular;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  nWifiNotInit = self->_nWifiNotInit;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  nWifiNotReady = self->_nWifiNotReady;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  nWifiBadSNR = self->_nWifiBadSNR;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  nWifiBadRSSI = self->_nWifiBadRSSI;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  nWifiBadPER = self->_nWifiBadPER;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  nWifiBadTransportSymptom = self->_nWifiBadTransportSymptom;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  nWifiBadTransportRTP = self->_nWifiBadTransportRTP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  nWifiBadLoad = self->_nWifiBadLoad;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  nWifiBadBcn = self->_nWifiBadBcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  nCellularGood = self->_nCellularGood;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  nPositiveStatusUpdate = self->_nPositiveStatusUpdate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  nNegativeStatusUpdate = self->_nNegativeStatusUpdate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  nUnknownStatusUpdat = self->_nUnknownStatusUpdat;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_25:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  nStatusUpdateDelayBin1 = self->_nStatusUpdateDelayBin1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_26:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  nStatusUpdateDelayBin2 = self->_nStatusUpdateDelayBin2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_27:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  nStatusUpdateDelayBin3 = self->_nStatusUpdateDelayBin3;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    nStatusUpdateDelayBin5 = self->_nStatusUpdateDelayBin5;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_59;
  }

LABEL_57:
  nStatusUpdateDelayBin4 = self->_nStatusUpdateDelayBin4;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((*&has & 0x8000) == 0)
  {
    return;
  }

LABEL_59:
  nStatusUpdateDelayBin6 = self->_nStatusUpdateDelayBin6;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_count;
  *(a3 + 32) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 6) = self->_nCallIdle;
  *(a3 + 32) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 5) = self->_nCallActive;
  *(a3 + 32) |= 4u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 8) = self->_nData;
  *(a3 + 32) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 21) = self->_nVoice;
  *(a3 + 32) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 12) = self->_nStationary;
  *(a3 + 32) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 22) = self->_nWalking;
  *(a3 + 32) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 11) = self->_nRunning;
  *(a3 + 32) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 20) = self->_nVehicular;
  *(a3 + 32) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 30) = self->_nWifiNotInit;
  *(a3 + 32) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 31) = self->_nWifiNotReady;
  *(a3 + 32) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 27) = self->_nWifiBadSNR;
  *(a3 + 32) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 26) = self->_nWifiBadRSSI;
  *(a3 + 32) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 25) = self->_nWifiBadPER;
  *(a3 + 32) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 29) = self->_nWifiBadTransportSymptom;
  *(a3 + 32) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 28) = self->_nWifiBadTransportRTP;
  *(a3 + 32) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 24) = self->_nWifiBadLoad;
  *(a3 + 32) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 23) = self->_nWifiBadBcn;
  *(a3 + 32) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 7) = self->_nCellularGood;
  *(a3 + 32) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 10) = self->_nPositiveStatusUpdate;
  *(a3 + 32) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 9) = self->_nNegativeStatusUpdate;
  *(a3 + 32) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 19) = self->_nUnknownStatusUpdat;
  *(a3 + 32) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_25:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 13) = self->_nStatusUpdateDelayBin1;
  *(a3 + 32) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_26:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 14) = self->_nStatusUpdateDelayBin2;
  *(a3 + 32) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_27:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 15) = self->_nStatusUpdateDelayBin3;
  *(a3 + 32) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 16) = self->_nStatusUpdateDelayBin4;
  *(a3 + 32) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_29:
    if ((*&has & 0x8000) == 0)
    {
      return;
    }

LABEL_59:
    *(a3 + 18) = self->_nStatusUpdateDelayBin6;
    *(a3 + 32) |= 0x8000u;
    return;
  }

LABEL_58:
  *(a3 + 17) = self->_nStatusUpdateDelayBin5;
  *(a3 + 32) |= 0x4000u;
  if ((*&self->_has & 0x8000) != 0)
  {
    goto LABEL_59;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_count;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 6) = self->_nCallIdle;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 5) = self->_nCallActive;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_6:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 8) = self->_nData;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 21) = self->_nVoice;
  *(result + 32) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 12) = self->_nStationary;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 22) = self->_nWalking;
  *(result + 32) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 11) = self->_nRunning;
  *(result + 32) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 20) = self->_nVehicular;
  *(result + 32) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 30) = self->_nWifiNotInit;
  *(result + 32) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 31) = self->_nWifiNotReady;
  *(result + 32) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 27) = self->_nWifiBadSNR;
  *(result + 32) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 26) = self->_nWifiBadRSSI;
  *(result + 32) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 25) = self->_nWifiBadPER;
  *(result + 32) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 29) = self->_nWifiBadTransportSymptom;
  *(result + 32) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 28) = self->_nWifiBadTransportRTP;
  *(result + 32) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 24) = self->_nWifiBadLoad;
  *(result + 32) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 23) = self->_nWifiBadBcn;
  *(result + 32) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 7) = self->_nCellularGood;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 10) = self->_nPositiveStatusUpdate;
  *(result + 32) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 9) = self->_nNegativeStatusUpdate;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 19) = self->_nUnknownStatusUpdat;
  *(result + 32) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_25:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 13) = self->_nStatusUpdateDelayBin1;
  *(result + 32) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_26:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 14) = self->_nStatusUpdateDelayBin2;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_27:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 15) = self->_nStatusUpdateDelayBin3;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 16) = self->_nStatusUpdateDelayBin4;
  *(result + 32) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_29:
    if ((*&has & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_30;
  }

LABEL_59:
  *(result + 17) = self->_nStatusUpdateDelayBin5;
  *(result + 32) |= 0x4000u;
  if ((*&self->_has & 0x8000) == 0)
  {
    return result;
  }

LABEL_30:
  *(result + 18) = self->_nStatusUpdateDelayBin6;
  *(result + 32) |= 0x8000u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_146;
      }
    }

    else if (v7)
    {
LABEL_146:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_count != *(a3 + 4))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_nCallIdle != *(a3 + 6))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_nCallActive != *(a3 + 5))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_nData != *(a3 + 8))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_nVoice != *(a3 + 21))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_nStationary != *(a3 + 12))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_nWalking != *(a3 + 22))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_nRunning != *(a3 + 11))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_nVehicular != *(a3 + 20))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_nWifiNotInit != *(a3 + 30))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_nWifiNotReady != *(a3 + 31))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_nWifiBadSNR != *(a3 + 27))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_nWifiBadRSSI != *(a3 + 26))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_nWifiBadPER != *(a3 + 25))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_nWifiBadTransportSymptom != *(a3 + 29))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_nWifiBadTransportRTP != *(a3 + 28))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_nWifiBadLoad != *(a3 + 24))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_nWifiBadBcn != *(a3 + 23))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_nCellularGood != *(a3 + 7))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_nPositiveStatusUpdate != *(a3 + 10))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_nNegativeStatusUpdate != *(a3 + 9))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_nUnknownStatusUpdat != *(a3 + 19))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_nStatusUpdateDelayBin1 != *(a3 + 13))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_nStatusUpdateDelayBin2 != *(a3 + 14))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_nStatusUpdateDelayBin3 != *(a3 + 15))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_nStatusUpdateDelayBin4 != *(a3 + 16))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_146;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_nStatusUpdateDelayBin5 != *(a3 + 17))
      {
        goto LABEL_146;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_146;
    }

    LOBYTE(v5) = (*(a3 + 32) & 0x8000) == 0;
    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_nStatusUpdateDelayBin6 != *(a3 + 18))
      {
        goto LABEL_146;
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
    v32 = 2654435761u * self->_timestamp;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v31 = 2654435761 * self->_count;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v3 = 2654435761 * self->_nCallIdle;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  v3 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_nCallActive;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_nData;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  v5 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_nVoice;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_nStationary;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_nWalking;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v9 = 2654435761 * self->_nRunning;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_nVehicular;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_12:
    v11 = 2654435761 * self->_nWifiNotInit;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_13:
    v12 = 2654435761 * self->_nWifiNotReady;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_14:
    v13 = 2654435761 * self->_nWifiBadSNR;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_15:
    v14 = 2654435761 * self->_nWifiBadRSSI;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  v14 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_16:
    v15 = 2654435761 * self->_nWifiBadPER;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  v15 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_17:
    v16 = 2654435761 * self->_nWifiBadTransportSymptom;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v16 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_18:
    v17 = 2654435761 * self->_nWifiBadTransportRTP;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v17 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_19:
    v18 = 2654435761 * self->_nWifiBadLoad;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v18 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_20:
    v19 = 2654435761 * self->_nWifiBadBcn;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_21:
    v20 = 2654435761 * self->_nCellularGood;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  v20 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_22:
    v21 = 2654435761 * self->_nPositiveStatusUpdate;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_23:
    v22 = 2654435761 * self->_nNegativeStatusUpdate;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_24:
    v23 = 2654435761 * self->_nUnknownStatusUpdat;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v23 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_25:
    v24 = 2654435761 * self->_nStatusUpdateDelayBin1;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  v24 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_26:
    v25 = 2654435761 * self->_nStatusUpdateDelayBin2;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v25 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_27:
    v26 = 2654435761 * self->_nStatusUpdateDelayBin3;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  v26 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_28:
    v27 = 2654435761 * self->_nStatusUpdateDelayBin4;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    v28 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_30;
    }

LABEL_59:
    v29 = 0;
    return v31 ^ v32 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_57:
  v27 = 0;
  if ((*&has & 0x4000) == 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  v28 = 2654435761 * self->_nStatusUpdateDelayBin5;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_59;
  }

LABEL_30:
  v29 = 2654435761 * self->_nStatusUpdateDelayBin6;
  return v31 ^ v32 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 32);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 32);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_nCallIdle = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 32);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_nCallActive = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 32);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_nData = *(a3 + 8);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 32);
  if ((v3 & 0x40000) == 0)
  {
LABEL_7:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_nVoice = *(a3 + 21);
  *&self->_has |= 0x40000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x200) == 0)
  {
LABEL_8:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_nStationary = *(a3 + 12);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 32);
  if ((v3 & 0x80000) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_nWalking = *(a3 + 22);
  *&self->_has |= 0x80000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_nRunning = *(a3 + 11);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 32);
  if ((v3 & 0x20000) == 0)
  {
LABEL_11:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_nVehicular = *(a3 + 20);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_12:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_nWifiNotInit = *(a3 + 30);
  *&self->_has |= 0x8000000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_13:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_nWifiNotReady = *(a3 + 31);
  *&self->_has |= 0x10000000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_nWifiBadSNR = *(a3 + 27);
  *&self->_has |= 0x1000000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x800000) == 0)
  {
LABEL_15:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_nWifiBadRSSI = *(a3 + 26);
  *&self->_has |= 0x800000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x400000) == 0)
  {
LABEL_16:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_nWifiBadPER = *(a3 + 25);
  *&self->_has |= 0x400000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_nWifiBadTransportSymptom = *(a3 + 29);
  *&self->_has |= 0x4000000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_nWifiBadTransportRTP = *(a3 + 28);
  *&self->_has |= 0x2000000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x200000) == 0)
  {
LABEL_19:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_nWifiBadLoad = *(a3 + 24);
  *&self->_has |= 0x200000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x100000) == 0)
  {
LABEL_20:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_nWifiBadBcn = *(a3 + 23);
  *&self->_has |= 0x100000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_nCellularGood = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 32);
  if ((v3 & 0x80) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_nPositiveStatusUpdate = *(a3 + 10);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 32);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_nNegativeStatusUpdate = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 32);
  if ((v3 & 0x10000) == 0)
  {
LABEL_24:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_nUnknownStatusUpdat = *(a3 + 19);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x400) == 0)
  {
LABEL_25:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_nStatusUpdateDelayBin1 = *(a3 + 13);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 32);
  if ((v3 & 0x800) == 0)
  {
LABEL_26:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_nStatusUpdateDelayBin2 = *(a3 + 14);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 32);
  if ((v3 & 0x1000) == 0)
  {
LABEL_27:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_nStatusUpdateDelayBin3 = *(a3 + 15);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x2000) == 0)
  {
LABEL_28:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_nStatusUpdateDelayBin4 = *(a3 + 16);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 32);
  if ((v3 & 0x4000) == 0)
  {
LABEL_29:
    if ((v3 & 0x8000) == 0)
    {
      return;
    }

LABEL_59:
    self->_nStatusUpdateDelayBin6 = *(a3 + 18);
    *&self->_has |= 0x8000u;
    return;
  }

LABEL_58:
  self->_nStatusUpdateDelayBin5 = *(a3 + 17);
  *&self->_has |= 0x4000u;
  if ((*(a3 + 32) & 0x8000) != 0)
  {
    goto LABEL_59;
  }
}

@end