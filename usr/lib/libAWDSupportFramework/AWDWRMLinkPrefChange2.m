@interface AWDWRMLinkPrefChange2
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
- (void)setHasNCelluarBadEcio:(BOOL)a3;
- (void)setHasNCelluarBadLQM:(BOOL)a3;
- (void)setHasNCelluarBadRSRP:(BOOL)a3;
- (void)setHasNCelluarBadSignal:(BOOL)a3;
- (void)setHasNCellularNotReady:(BOOL)a3;
- (void)setHasNData:(BOOL)a3;
- (void)setHasNHandoverNotPerformed:(BOOL)a3;
- (void)setHasNHandoverPerformed:(BOOL)a3;
- (void)setHasNHandoverUnknown:(BOOL)a3;
- (void)setHasNRunning:(BOOL)a3;
- (void)setHasNStationary:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin1:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin2:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin3:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin4:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin5:(BOOL)a3;
- (void)setHasNStatusUpdateDelayBin6:(BOOL)a3;
- (void)setHasNVehicular:(BOOL)a3;
- (void)setHasNVoice:(BOOL)a3;
- (void)setHasNWalking:(BOOL)a3;
- (void)setHasNWifiGood:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWRMLinkPrefChange2

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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasNVoice:(BOOL)a3
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

- (void)setHasNStationary:(BOOL)a3
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

- (void)setHasNWalking:(BOOL)a3
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

- (void)setHasNRunning:(BOOL)a3
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

- (void)setHasNVehicular:(BOOL)a3
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

- (void)setHasNWifiGood:(BOOL)a3
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

- (void)setHasNCellularNotReady:(BOOL)a3
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

- (void)setHasNCelluarBadSignal:(BOOL)a3
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

- (void)setHasNCelluarBadRSRP:(BOOL)a3
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

- (void)setHasNCelluarBadLQM:(BOOL)a3
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

- (void)setHasNCelluarBadEcio:(BOOL)a3
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

- (void)setHasNHandoverPerformed:(BOOL)a3
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

- (void)setHasNHandoverNotPerformed:(BOOL)a3
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

- (void)setHasNHandoverUnknown:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin1:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin2:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin3:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin4:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin5:(BOOL)a3
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

- (void)setHasNStatusUpdateDelayBin6:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMLinkPrefChange2;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMLinkPrefChange2 description](&v3, sel_description), -[AWDWRMLinkPrefChange2 dictionaryRepresentation](self, "dictionaryRepresentation")];
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

      goto LABEL_30;
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

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCallIdle), @"nCallIdle"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCallActive), @"nCallActive"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nData), @"nData"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nVoice), @"nVoice"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStationary), @"nStationary"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWalking), @"nWalking"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nRunning), @"nRunning"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nVehicular), @"nVehicular"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nWifiGood), @"nWifiGood"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCellularNotReady), @"nCellularNotReady"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCelluarBadSignal), @"nCelluarBadSignal"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCelluarBadRSRP), @"nCelluarBadRSRP"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCelluarBadLQM), @"nCelluarBadLQM"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nCelluarBadEcio), @"nCelluarBadEcio"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nHandoverPerformed), @"nHandoverPerformed"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nHandoverNotPerformed), @"nHandoverNotPerformed"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nHandoverUnknown), @"nHandoverUnknown"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin1), @"nStatusUpdateDelayBin1"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin2), @"nStatusUpdateDelayBin2"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin3), @"nStatusUpdateDelayBin3"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_25;
    }

LABEL_51:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin5), @"nStatusUpdateDelayBin5"}];
    if ((*&self->_has & 0x100000) == 0)
    {
      return v3;
    }

    goto LABEL_26;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nStatusUpdateDelayBin4), @"nStatusUpdateDelayBin4"}];
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_51;
  }

LABEL_25:
  if ((*&has & 0x100000) != 0)
  {
LABEL_26:
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

      goto LABEL_29;
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

    goto LABEL_30;
  }

LABEL_29:
  nCallIdle = self->_nCallIdle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  nCallActive = self->_nCallActive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  nData = self->_nData;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  nVoice = self->_nVoice;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  nStationary = self->_nStationary;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  nWalking = self->_nWalking;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  nRunning = self->_nRunning;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  nVehicular = self->_nVehicular;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  nWifiGood = self->_nWifiGood;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  nCellularNotReady = self->_nCellularNotReady;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  nCelluarBadSignal = self->_nCelluarBadSignal;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  nCelluarBadRSRP = self->_nCelluarBadRSRP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  nCelluarBadLQM = self->_nCelluarBadLQM;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  nCelluarBadEcio = self->_nCelluarBadEcio;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  nHandoverPerformed = self->_nHandoverPerformed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  nHandoverNotPerformed = self->_nHandoverNotPerformed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  nHandoverUnknown = self->_nHandoverUnknown;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  nStatusUpdateDelayBin1 = self->_nStatusUpdateDelayBin1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  nStatusUpdateDelayBin2 = self->_nStatusUpdateDelayBin2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  nStatusUpdateDelayBin3 = self->_nStatusUpdateDelayBin3;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_25;
    }

LABEL_50:
    nStatusUpdateDelayBin5 = self->_nStatusUpdateDelayBin5;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_51;
  }

LABEL_49:
  nStatusUpdateDelayBin4 = self->_nStatusUpdateDelayBin4;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_50;
  }

LABEL_25:
  if ((*&has & 0x100000) == 0)
  {
    return;
  }

LABEL_51:
  nStatusUpdateDelayBin6 = self->_nStatusUpdateDelayBin6;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_count;
  *(a3 + 28) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 6) = self->_nCallIdle;
  *(a3 + 28) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 5) = self->_nCallActive;
  *(a3 + 28) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 12) = self->_nData;
  *(a3 + 28) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 25) = self->_nVoice;
  *(a3 + 28) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 17) = self->_nStationary;
  *(a3 + 28) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 26) = self->_nWalking;
  *(a3 + 28) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 16) = self->_nRunning;
  *(a3 + 28) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 24) = self->_nVehicular;
  *(a3 + 28) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 27) = self->_nWifiGood;
  *(a3 + 28) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 11) = self->_nCellularNotReady;
  *(a3 + 28) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 10) = self->_nCelluarBadSignal;
  *(a3 + 28) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 9) = self->_nCelluarBadRSRP;
  *(a3 + 28) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 8) = self->_nCelluarBadLQM;
  *(a3 + 28) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 7) = self->_nCelluarBadEcio;
  *(a3 + 28) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 14) = self->_nHandoverPerformed;
  *(a3 + 28) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 13) = self->_nHandoverNotPerformed;
  *(a3 + 28) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 15) = self->_nHandoverUnknown;
  *(a3 + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 18) = self->_nStatusUpdateDelayBin1;
  *(a3 + 28) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 19) = self->_nStatusUpdateDelayBin2;
  *(a3 + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 20) = self->_nStatusUpdateDelayBin3;
  *(a3 + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 21) = self->_nStatusUpdateDelayBin4;
  *(a3 + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_25:
    if ((*&has & 0x100000) == 0)
    {
      return;
    }

LABEL_51:
    *(a3 + 23) = self->_nStatusUpdateDelayBin6;
    *(a3 + 28) |= 0x100000u;
    return;
  }

LABEL_50:
  *(a3 + 22) = self->_nStatusUpdateDelayBin5;
  *(a3 + 28) |= 0x80000u;
  if ((*&self->_has & 0x100000) != 0)
  {
    goto LABEL_51;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_count;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 6) = self->_nCallIdle;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 5) = self->_nCallActive;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 12) = self->_nData;
  *(result + 28) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 25) = self->_nVoice;
  *(result + 28) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 17) = self->_nStationary;
  *(result + 28) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 26) = self->_nWalking;
  *(result + 28) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 16) = self->_nRunning;
  *(result + 28) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 24) = self->_nVehicular;
  *(result + 28) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 27) = self->_nWifiGood;
  *(result + 28) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 11) = self->_nCellularNotReady;
  *(result + 28) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 10) = self->_nCelluarBadSignal;
  *(result + 28) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 9) = self->_nCelluarBadRSRP;
  *(result + 28) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_16:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 8) = self->_nCelluarBadLQM;
  *(result + 28) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_17:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 7) = self->_nCelluarBadEcio;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 14) = self->_nHandoverPerformed;
  *(result + 28) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 13) = self->_nHandoverNotPerformed;
  *(result + 28) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 15) = self->_nHandoverUnknown;
  *(result + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 18) = self->_nStatusUpdateDelayBin1;
  *(result + 28) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 19) = self->_nStatusUpdateDelayBin2;
  *(result + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 20) = self->_nStatusUpdateDelayBin3;
  *(result + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 21) = self->_nStatusUpdateDelayBin4;
  *(result + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_25:
    if ((*&has & 0x100000) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_51:
  *(result + 22) = self->_nStatusUpdateDelayBin5;
  *(result + 28) |= 0x80000u;
  if ((*&self->_has & 0x100000) == 0)
  {
    return result;
  }

LABEL_26:
  *(result + 23) = self->_nStatusUpdateDelayBin6;
  *(result + 28) |= 0x100000u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 28);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_126;
      }
    }

    else if (v7)
    {
LABEL_126:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_count != *(a3 + 4))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_nCallIdle != *(a3 + 6))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_nCallActive != *(a3 + 5))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_nData != *(a3 + 12))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_nVoice != *(a3 + 25))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_nStationary != *(a3 + 17))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_nWalking != *(a3 + 26))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_nRunning != *(a3 + 16))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_nVehicular != *(a3 + 24))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_nWifiGood != *(a3 + 27))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_nCellularNotReady != *(a3 + 11))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_nCelluarBadSignal != *(a3 + 10))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_nCelluarBadRSRP != *(a3 + 9))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_nCelluarBadLQM != *(a3 + 8))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_nCelluarBadEcio != *(a3 + 7))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_nHandoverPerformed != *(a3 + 14))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_nHandoverNotPerformed != *(a3 + 13))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_nHandoverUnknown != *(a3 + 15))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_nStatusUpdateDelayBin1 != *(a3 + 18))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_nStatusUpdateDelayBin2 != *(a3 + 19))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_nStatusUpdateDelayBin3 != *(a3 + 20))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_nStatusUpdateDelayBin4 != *(a3 + 21))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_126;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_nStatusUpdateDelayBin5 != *(a3 + 22))
      {
        goto LABEL_126;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_126;
    }

    LOBYTE(v5) = (v7 & 0x100000) == 0;
    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_nStatusUpdateDelayBin6 != *(a3 + 23))
      {
        goto LABEL_126;
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
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_count;
      if ((*&has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_nCallIdle;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_nCallActive;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_nData;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_nVoice;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_nStationary;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_nWalking;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_nRunning;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_nVehicular;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_nWifiGood;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_nCellularNotReady;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_nCelluarBadSignal;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_nCelluarBadRSRP;
  if ((*&has & 0x20) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_nCelluarBadLQM;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x10) != 0)
  {
    v18 = 2654435761 * self->_nCelluarBadEcio;
    if ((*&has & 0x800) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_nHandoverPerformed;
      if ((*&has & 0x400) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_nHandoverNotPerformed;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  v20 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_36:
    v21 = 2654435761 * self->_nHandoverUnknown;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

LABEL_46:
  v21 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_37:
    v22 = 2654435761 * self->_nStatusUpdateDelayBin1;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_48;
  }

LABEL_47:
  v22 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_38:
    v23 = 2654435761 * self->_nStatusUpdateDelayBin2;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_39:
    v24 = 2654435761 * self->_nStatusUpdateDelayBin3;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_50;
  }

LABEL_49:
  v24 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_40:
    v25 = 2654435761 * self->_nStatusUpdateDelayBin4;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_41;
    }

LABEL_51:
    v26 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_42;
    }

LABEL_52:
    v27 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
  }

LABEL_50:
  v25 = 0;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_51;
  }

LABEL_41:
  v26 = 2654435761 * self->_nStatusUpdateDelayBin5;
  if ((*&has & 0x100000) == 0)
  {
    goto LABEL_52;
  }

LABEL_42:
  v27 = 2654435761 * self->_nStatusUpdateDelayBin6;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 28);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 28);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_nCallIdle = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 28);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_nCallActive = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 28);
  if ((v3 & 0x200) == 0)
  {
LABEL_6:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_nData = *(a3 + 12);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 28);
  if ((v3 & 0x400000) == 0)
  {
LABEL_7:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_nVoice = *(a3 + 25);
  *&self->_has |= 0x400000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x4000) == 0)
  {
LABEL_8:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_nStationary = *(a3 + 17);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x800000) == 0)
  {
LABEL_9:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_nWalking = *(a3 + 26);
  *&self->_has |= 0x800000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x2000) == 0)
  {
LABEL_10:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_nRunning = *(a3 + 16);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x200000) == 0)
  {
LABEL_11:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_nVehicular = *(a3 + 24);
  *&self->_has |= 0x200000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_12:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_nWifiGood = *(a3 + 27);
  *&self->_has |= 0x1000000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x100) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_nCellularNotReady = *(a3 + 11);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 28);
  if ((v3 & 0x80) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_nCelluarBadSignal = *(a3 + 10);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 28);
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_nCelluarBadRSRP = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 28);
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_nCelluarBadLQM = *(a3 + 8);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_nCelluarBadEcio = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 28);
  if ((v3 & 0x800) == 0)
  {
LABEL_18:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_nHandoverPerformed = *(a3 + 14);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 28);
  if ((v3 & 0x400) == 0)
  {
LABEL_19:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_nHandoverNotPerformed = *(a3 + 13);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 28);
  if ((v3 & 0x1000) == 0)
  {
LABEL_20:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_nHandoverUnknown = *(a3 + 15);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x8000) == 0)
  {
LABEL_21:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_nStatusUpdateDelayBin1 = *(a3 + 18);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x10000) == 0)
  {
LABEL_22:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_nStatusUpdateDelayBin2 = *(a3 + 19);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x20000) == 0)
  {
LABEL_23:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_nStatusUpdateDelayBin3 = *(a3 + 20);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x40000) == 0)
  {
LABEL_24:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_nStatusUpdateDelayBin4 = *(a3 + 21);
  *&self->_has |= 0x40000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x80000) == 0)
  {
LABEL_25:
    if ((v3 & 0x100000) == 0)
    {
      return;
    }

LABEL_51:
    self->_nStatusUpdateDelayBin6 = *(a3 + 23);
    *&self->_has |= 0x100000u;
    return;
  }

LABEL_50:
  self->_nStatusUpdateDelayBin5 = *(a3 + 22);
  *&self->_has |= 0x80000u;
  if ((*(a3 + 28) & 0x100000) != 0)
  {
    goto LABEL_51;
  }
}

@end