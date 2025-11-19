@interface AWDWRMFacetimeRecommendation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAlertedMode:(BOOL)a3;
- (void)setHasAudioErasure:(BOOL)a3;
- (void)setHasBssLoad:(BOOL)a3;
- (void)setHasCaptiveNetworks:(BOOL)a3;
- (void)setHasCca:(BOOL)a3;
- (void)setHasCellMode:(BOOL)a3;
- (void)setHasCellRsrp:(BOOL)a3;
- (void)setHasCellRsrq:(BOOL)a3;
- (void)setHasCellSnr:(BOOL)a3;
- (void)setHasCounter:(BOOL)a3;
- (void)setHasDataLQM:(BOOL)a3;
- (void)setHasFacetimeAction:(BOOL)a3;
- (void)setHasFacetimePacketLoss:(BOOL)a3;
- (void)setHasFacetimeTimeDelay:(BOOL)a3;
- (void)setHasIsPCDetected:(BOOL)a3;
- (void)setHasIsStallDetected:(BOOL)a3;
- (void)setHasQbssLoad:(BOOL)a3;
- (void)setHasSignalBar:(BOOL)a3;
- (void)setHasStationCount:(BOOL)a3;
- (void)setHasVideoErasure:(BOOL)a3;
- (void)setHasVoiceLQM:(BOOL)a3;
- (void)setHasWifiEstimatedBandwitdh:(BOOL)a3;
- (void)setHasWifiRssi:(BOOL)a3;
- (void)setHasWifiRxPhyRate:(BOOL)a3;
- (void)setHasWifiRxRetry:(BOOL)a3;
- (void)setHasWifiSNR:(BOOL)a3;
- (void)setHasWifiTxPER:(BOOL)a3;
- (void)setHasWifiTxPhyRate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWRMFacetimeRecommendation

- (void)dealloc
{
  [(AWDWRMFacetimeRecommendation *)self setRatType:0];
  [(AWDWRMFacetimeRecommendation *)self setIRATRecommendation:0];
  [(AWDWRMFacetimeRecommendation *)self setIRATRecommendationReason:0];
  v3.receiver = self;
  v3.super_class = AWDWRMFacetimeRecommendation;
  [(AWDWRMFacetimeRecommendation *)&v3 dealloc];
}

- (void)setHasWifiRssi:(BOOL)a3
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

- (void)setHasWifiTxPER:(BOOL)a3
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

- (void)setHasWifiSNR:(BOOL)a3
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

- (void)setHasCaptiveNetworks:(BOOL)a3
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

- (void)setHasWifiRxRetry:(BOOL)a3
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

- (void)setHasWifiEstimatedBandwitdh:(BOOL)a3
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

- (void)setHasWifiTxPhyRate:(BOOL)a3
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

- (void)setHasWifiRxPhyRate:(BOOL)a3
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

- (void)setHasQbssLoad:(BOOL)a3
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

- (void)setHasCca:(BOOL)a3
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

- (void)setHasStationCount:(BOOL)a3
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

- (void)setHasDataLQM:(BOOL)a3
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

- (void)setHasBssLoad:(BOOL)a3
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

- (void)setHasVoiceLQM:(BOOL)a3
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

- (void)setHasSignalBar:(BOOL)a3
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

- (void)setHasFacetimePacketLoss:(BOOL)a3
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

- (void)setHasFacetimeAction:(BOOL)a3
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

- (void)setHasFacetimeTimeDelay:(BOOL)a3
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

- (void)setHasCounter:(BOOL)a3
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

- (void)setHasAlertedMode:(BOOL)a3
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

- (void)setHasIsStallDetected:(BOOL)a3
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

- (void)setHasIsPCDetected:(BOOL)a3
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

- (void)setHasVideoErasure:(BOOL)a3
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

- (void)setHasAudioErasure:(BOOL)a3
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

- (void)setHasCellRsrp:(BOOL)a3
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

- (void)setHasCellRsrq:(BOOL)a3
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

- (void)setHasCellSnr:(BOOL)a3
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

- (void)setHasCellMode:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMFacetimeRecommendation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMFacetimeRecommendation description](&v3, sel_description), -[AWDWRMFacetimeRecommendation dictionaryRepresentation](self, "dictionaryRepresentation")];
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
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiRssi), @"wifiRssi"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTxPER), @"wifiTxPER"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiSNR), @"wifiSNR"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_captiveNetworks), @"captiveNetworks"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRxRetry), @"wifiRxRetry"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiEstimatedBandwitdh), @"wifiEstimatedBandwitdh"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTxPhyRate), @"wifiTxPhyRate"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRxPhyRate), @"wifiRxPhyRate"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_qbssLoad), @"qbssLoad"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cca), @"cca"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stationCount), @"stationCount"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataLQM), @"dataLQM"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bssLoad), @"bssLoad"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_voiceLQM), @"voiceLQM"}];
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_signalBar), @"signalBar"}];
  }

LABEL_18:
  ratType = self->_ratType;
  if (ratType)
  {
    [v3 setObject:ratType forKey:@"ratType"];
  }

  iRATRecommendation = self->_iRATRecommendation;
  if (iRATRecommendation)
  {
    [v3 setObject:iRATRecommendation forKey:@"iRATRecommendation"];
  }

  iRATRecommendationReason = self->_iRATRecommendationReason;
  if (iRATRecommendationReason)
  {
    [v3 setObject:iRATRecommendationReason forKey:@"iRATRecommendationReason"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_facetimePacketLoss), @"facetimePacketLoss"}];
    v8 = self->_has;
    if ((*&v8 & 0x800) == 0)
    {
LABEL_26:
      if ((*&v8 & 0x2000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v8 & 0x800) == 0)
  {
    goto LABEL_26;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_facetimeAction), @"facetimeAction"}];
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_facetimeTimeDelay), @"facetimeTimeDelay"}];
  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_counter), @"counter"}];
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_29:
    if ((*&v8 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_alertedMode), @"alertedMode"}];
  v8 = self->_has;
  if ((*&v8 & 0x10000000) == 0)
  {
LABEL_30:
    if ((*&v8 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isStallDetected), @"isStallDetected"}];
  v8 = self->_has;
  if ((*&v8 & 0x8000000) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isPCDetected), @"isPCDetected"}];
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_32:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_videoErasure), @"videoErasure"}];
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_33:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audioErasure), @"audioErasure"}];
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellRsrp), @"cell_rsrp"}];
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_36;
    }

LABEL_66:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellSnr), @"cell_snr"}];
    if ((*&self->_has & 0x4000000) == 0)
    {
      return v3;
    }

    goto LABEL_37;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellRsrq), @"cell_rsrq"}];
  v8 = self->_has;
  if ((*&v8 & 0x100) != 0)
  {
    goto LABEL_66;
  }

LABEL_36:
  if ((*&v8 & 0x4000000) != 0)
  {
LABEL_37:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cellMode), @"cellMode"}];
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
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  wifiRssi = self->_wifiRssi;
  PBDataWriterWriteSint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  wifiTxPER = self->_wifiTxPER;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  wifiSNR = self->_wifiSNR;
  PBDataWriterWriteSint64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  captiveNetworks = self->_captiveNetworks;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  wifiRxRetry = self->_wifiRxRetry;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  wifiEstimatedBandwitdh = self->_wifiEstimatedBandwitdh;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  wifiTxPhyRate = self->_wifiTxPhyRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  wifiRxPhyRate = self->_wifiRxPhyRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  qbssLoad = self->_qbssLoad;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  cca = self->_cca;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  stationCount = self->_stationCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  dataLQM = self->_dataLQM;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  bssLoad = self->_bssLoad;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_52:
  voiceLQM = self->_voiceLQM;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_17:
    signalBar = self->_signalBar;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  if (self->_ratType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iRATRecommendation)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iRATRecommendationReason)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x1000) != 0)
  {
    facetimePacketLoss = self->_facetimePacketLoss;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((*&v6 & 0x800) == 0)
    {
LABEL_26:
      if ((*&v6 & 0x2000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v6 & 0x800) == 0)
  {
    goto LABEL_26;
  }

  facetimeAction = self->_facetimeAction;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  facetimeTimeDelay = self->_facetimeTimeDelay;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  counter = self->_counter;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  alertedMode = self->_alertedMode;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  isStallDetected = self->_isStallDetected;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  isPCDetected = self->_isPCDetected;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_32:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  videoErasure = self->_videoErasure;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  audioErasure = self->_audioErasure;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  cellRsrp = self->_cellRsrp;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_36;
    }

LABEL_65:
    cellSnr = self->_cellSnr;
    PBDataWriterWriteSint32Field();
    if ((*&self->_has & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_66;
  }

LABEL_64:
  cellRsrq = self->_cellRsrq;
  PBDataWriterWriteSint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) != 0)
  {
    goto LABEL_65;
  }

LABEL_36:
  if ((*&v6 & 0x4000000) == 0)
  {
    return;
  }

LABEL_66:
  cellMode = self->_cellMode;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 39) |= 1u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = self->_wifiRssi;
  *(a3 + 39) |= 2u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 35) = self->_wifiTxPER;
  *(a3 + 39) |= 0x400000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 3) = self->_wifiSNR;
  *(a3 + 39) |= 4u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 149) = self->_captiveNetworks;
  *(a3 + 39) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 34) = self->_wifiRxRetry;
  *(a3 + 39) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 32) = self->_wifiEstimatedBandwitdh;
  *(a3 + 39) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 36) = self->_wifiTxPhyRate;
  *(a3 + 39) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 33) = self->_wifiRxPhyRate;
  *(a3 + 39) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 24) = self->_qbssLoad;
  *(a3 + 39) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 10) = self->_cca;
  *(a3 + 39) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 29) = self->_stationCount;
  *(a3 + 39) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 15) = self->_dataLQM;
  *(a3 + 39) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 9) = self->_bssLoad;
  *(a3 + 39) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_53:
  *(a3 + 31) = self->_voiceLQM;
  *(a3 + 39) |= 0x40000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_17:
    *(a3 + 28) = self->_signalBar;
    *(a3 + 39) |= 0x8000u;
  }

LABEL_18:
  if (self->_ratType)
  {
    [a3 setRatType:?];
  }

  if (self->_iRATRecommendation)
  {
    [a3 setIRATRecommendation:?];
  }

  if (self->_iRATRecommendationReason)
  {
    [a3 setIRATRecommendationReason:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x1000) != 0)
  {
    *(a3 + 17) = self->_facetimePacketLoss;
    *(a3 + 39) |= 0x1000u;
    v6 = self->_has;
    if ((*&v6 & 0x800) == 0)
    {
LABEL_26:
      if ((*&v6 & 0x2000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_57;
    }
  }

  else if ((*&v6 & 0x800) == 0)
  {
    goto LABEL_26;
  }

  *(a3 + 16) = self->_facetimeAction;
  *(a3 + 39) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 18) = self->_facetimeTimeDelay;
  *(a3 + 39) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 14) = self->_counter;
  *(a3 + 39) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 148) = self->_alertedMode;
  *(a3 + 39) |= 0x1000000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 152) = self->_isStallDetected;
  *(a3 + 39) |= 0x10000000u;
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 151) = self->_isPCDetected;
  *(a3 + 39) |= 0x8000000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_32:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 30) = self->_videoErasure;
  *(a3 + 39) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 8) = self->_audioErasure;
  *(a3 + 39) |= 8u;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 11) = self->_cellRsrp;
  *(a3 + 39) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 12) = self->_cellRsrq;
  *(a3 + 39) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_66:
  *(a3 + 13) = self->_cellSnr;
  *(a3 + 39) |= 0x100u;
  if ((*&self->_has & 0x4000000) == 0)
  {
    return;
  }

LABEL_37:
  *(a3 + 150) = self->_cellMode;
  *(a3 + 39) |= 0x4000000u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 156) |= 1u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_wifiRssi;
  *(v5 + 156) |= 2u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 140) = self->_wifiTxPER;
  *(v5 + 156) |= 0x400000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 24) = self->_wifiSNR;
  *(v5 + 156) |= 4u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 149) = self->_captiveNetworks;
  *(v5 + 156) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 136) = self->_wifiRxRetry;
  *(v5 + 156) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 128) = self->_wifiEstimatedBandwitdh;
  *(v5 + 156) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 144) = self->_wifiTxPhyRate;
  *(v5 + 156) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 132) = self->_wifiRxPhyRate;
  *(v5 + 156) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 96) = self->_qbssLoad;
  *(v5 + 156) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 40) = self->_cca;
  *(v5 + 156) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 116) = self->_stationCount;
  *(v5 + 156) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 60) = self->_dataLQM;
  *(v5 + 156) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 36) = self->_bssLoad;
  *(v5 + 156) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_47:
  *(v5 + 124) = self->_voiceLQM;
  *(v5 + 156) |= 0x40000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_17:
    *(v5 + 112) = self->_signalBar;
    *(v5 + 156) |= 0x8000u;
  }

LABEL_18:

  *(v6 + 104) = [(NSString *)self->_ratType copyWithZone:a3];
  *(v6 + 80) = [(NSString *)self->_iRATRecommendation copyWithZone:a3];

  *(v6 + 88) = [(NSString *)self->_iRATRecommendationReason copyWithZone:a3];
  v8 = self->_has;
  if ((*&v8 & 0x1000) != 0)
  {
    *(v6 + 68) = self->_facetimePacketLoss;
    *(v6 + 156) |= 0x1000u;
    v8 = self->_has;
    if ((*&v8 & 0x800) == 0)
    {
LABEL_20:
      if ((*&v8 & 0x2000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_51;
    }
  }

  else if ((*&v8 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  *(v6 + 64) = self->_facetimeAction;
  *(v6 + 156) |= 0x800u;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 72) = self->_facetimeTimeDelay;
  *(v6 + 156) |= 0x2000u;
  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 56) = self->_counter;
  *(v6 + 156) |= 0x200u;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 148) = self->_alertedMode;
  *(v6 + 156) |= 0x1000000u;
  v8 = self->_has;
  if ((*&v8 & 0x10000000) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 152) = self->_isStallDetected;
  *(v6 + 156) |= 0x10000000u;
  v8 = self->_has;
  if ((*&v8 & 0x8000000) == 0)
  {
LABEL_25:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 151) = self->_isPCDetected;
  *(v6 + 156) |= 0x8000000u;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_26:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 120) = self->_videoErasure;
  *(v6 + 156) |= 0x20000u;
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 32) = self->_audioErasure;
  *(v6 + 156) |= 8u;
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 44) = self->_cellRsrp;
  *(v6 + 156) |= 0x40u;
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_29:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    *(v6 + 52) = self->_cellSnr;
    *(v6 + 156) |= 0x100u;
    if ((*&self->_has & 0x4000000) == 0)
    {
      return v6;
    }

    goto LABEL_31;
  }

LABEL_59:
  *(v6 + 48) = self->_cellRsrq;
  *(v6 + 156) |= 0x80u;
  v8 = self->_has;
  if ((*&v8 & 0x100) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((*&v8 & 0x4000000) != 0)
  {
LABEL_31:
    *(v6 + 150) = self->_cellMode;
    *(v6 + 156) |= 0x4000000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 39);
  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_162;
    }
  }

  else if (v7)
  {
    goto LABEL_162;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_wifiRssi != *(a3 + 2))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_wifiTxPER != *(a3 + 35))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_wifiSNR != *(a3 + 3))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_162;
    }

    v8 = *(a3 + 149);
    if (self->_captiveNetworks)
    {
      if ((*(a3 + 149) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(a3 + 149))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_wifiRxRetry != *(a3 + 34))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_wifiEstimatedBandwitdh != *(a3 + 32))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_wifiTxPhyRate != *(a3 + 36))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_wifiRxPhyRate != *(a3 + 33))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_qbssLoad != *(a3 + 24))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_cca != *(a3 + 10))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_stationCount != *(a3 + 29))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_dataLQM != *(a3 + 15))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_bssLoad != *(a3 + 9))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_voiceLQM != *(a3 + 31))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_signalBar != *(a3 + 28))
    {
      goto LABEL_162;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_162;
  }

  ratType = self->_ratType;
  if (ratType | *(a3 + 13))
  {
    v5 = [(NSString *)ratType isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  iRATRecommendation = self->_iRATRecommendation;
  if (iRATRecommendation | *(a3 + 10))
  {
    v5 = [(NSString *)iRATRecommendation isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  iRATRecommendationReason = self->_iRATRecommendationReason;
  if (iRATRecommendationReason | *(a3 + 11))
  {
    v5 = [(NSString *)iRATRecommendationReason isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v12 = self->_has;
  v13 = *(a3 + 39);
  if ((*&v12 & 0x1000) != 0)
  {
    if ((v13 & 0x1000) == 0 || self->_facetimePacketLoss != *(a3 + 17))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x1000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x800) != 0)
  {
    if ((v13 & 0x800) == 0 || self->_facetimeAction != *(a3 + 16))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x800) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x2000) != 0)
  {
    if ((v13 & 0x2000) == 0 || self->_facetimeTimeDelay != *(a3 + 18))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x2000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x200) != 0)
  {
    if ((v13 & 0x200) == 0 || self->_counter != *(a3 + 14))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x200) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x1000000) != 0)
  {
    if ((v13 & 0x1000000) == 0)
    {
      goto LABEL_162;
    }

    v14 = *(a3 + 148);
    if (self->_alertedMode)
    {
      if ((*(a3 + 148) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(a3 + 148))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x1000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x10000000) != 0)
  {
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_162;
    }

    v15 = *(a3 + 152);
    if (self->_isStallDetected)
    {
      if ((*(a3 + 152) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(a3 + 152))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x10000000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x8000000) != 0)
  {
    if ((v13 & 0x8000000) != 0)
    {
      v16 = *(a3 + 151);
      if (self->_isPCDetected)
      {
        if ((*(a3 + 151) & 1) == 0)
        {
          goto LABEL_162;
        }

        goto LABEL_135;
      }

      if ((*(a3 + 151) & 1) == 0)
      {
        goto LABEL_135;
      }
    }

LABEL_162:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v13 & 0x8000000) != 0)
  {
    goto LABEL_162;
  }

LABEL_135:
  if ((*&v12 & 0x20000) != 0)
  {
    if ((v13 & 0x20000) == 0 || self->_videoErasure != *(a3 + 30))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x20000) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_audioErasure != *(a3 + 8))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_cellRsrp != *(a3 + 11))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x80) != 0)
  {
    if ((v13 & 0x80) == 0 || self->_cellRsrq != *(a3 + 12))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x80) != 0)
  {
    goto LABEL_162;
  }

  if ((*&v12 & 0x100) != 0)
  {
    if ((v13 & 0x100) == 0 || self->_cellSnr != *(a3 + 13))
    {
      goto LABEL_162;
    }
  }

  else if ((v13 & 0x100) != 0)
  {
    goto LABEL_162;
  }

  LOBYTE(v5) = (v13 & 0x4000000) == 0;
  if ((*&v12 & 0x4000000) != 0)
  {
    if ((v13 & 0x4000000) == 0)
    {
      goto LABEL_162;
    }

    if (self->_cellMode)
    {
      if ((*(a3 + 150) & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    else if (*(a3 + 150))
    {
      goto LABEL_162;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v37 = 2654435761u * self->_timestamp;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v36 = 2654435761 * self->_wifiRssi;
      if ((*&has & 0x400000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v37 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v36 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_4:
    v35 = 2654435761 * self->_wifiTxPER;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v35 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v34 = 2654435761 * self->_wifiSNR;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v34 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_6:
    v33 = 2654435761 * self->_captiveNetworks;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v33 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_7:
    v32 = 2654435761 * self->_wifiRxRetry;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v32 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_8:
    v31 = 2654435761 * self->_wifiEstimatedBandwitdh;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v31 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_9:
    v30 = 2654435761 * self->_wifiTxPhyRate;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v30 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_10:
    v29 = 2654435761 * self->_wifiRxPhyRate;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v29 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_11:
    v28 = 2654435761 * self->_qbssLoad;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v28 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v27 = 2654435761 * self->_cca;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v27 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_13:
    v4 = 2654435761 * self->_stationCount;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v5 = 2654435761 * self->_dataLQM;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v5 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_15:
    v6 = 2654435761 * self->_bssLoad;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v7 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_31:
  v6 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v7 = 2654435761 * self->_voiceLQM;
  if ((*&has & 0x8000) != 0)
  {
LABEL_17:
    v8 = 2654435761 * self->_signalBar;
    goto LABEL_34;
  }

LABEL_33:
  v8 = 0;
LABEL_34:
  v9 = [(NSString *)self->_ratType hash];
  v10 = [(NSString *)self->_iRATRecommendation hash];
  v11 = [(NSString *)self->_iRATRecommendationReason hash];
  v12 = self->_has;
  if ((*&v12 & 0x1000) != 0)
  {
    v13 = 2654435761 * self->_facetimePacketLoss;
    if ((*&v12 & 0x800) != 0)
    {
LABEL_36:
      v14 = 2654435761 * self->_facetimeAction;
      if ((*&v12 & 0x2000) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_36;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x2000) != 0)
  {
LABEL_37:
    v15 = 2654435761 * self->_facetimeTimeDelay;
    if ((*&v12 & 0x200) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = 0;
  if ((*&v12 & 0x200) != 0)
  {
LABEL_38:
    v16 = 2654435761 * self->_counter;
    if ((*&v12 & 0x1000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  v16 = 0;
  if ((*&v12 & 0x1000000) != 0)
  {
LABEL_39:
    v17 = 2654435761 * self->_alertedMode;
    if ((*&v12 & 0x10000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  v17 = 0;
  if ((*&v12 & 0x10000000) != 0)
  {
LABEL_40:
    v18 = 2654435761 * self->_isStallDetected;
    if ((*&v12 & 0x8000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_53:
  v18 = 0;
  if ((*&v12 & 0x8000000) != 0)
  {
LABEL_41:
    v19 = 2654435761 * self->_isPCDetected;
    if ((*&v12 & 0x20000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_54:
  v19 = 0;
  if ((*&v12 & 0x20000) != 0)
  {
LABEL_42:
    v20 = 2654435761 * self->_videoErasure;
    if ((*&v12 & 8) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_56;
  }

LABEL_55:
  v20 = 0;
  if ((*&v12 & 8) != 0)
  {
LABEL_43:
    v21 = 2654435761 * self->_audioErasure;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

LABEL_56:
  v21 = 0;
  if ((*&v12 & 0x40) != 0)
  {
LABEL_44:
    v22 = 2654435761 * self->_cellRsrp;
    if ((*&v12 & 0x80) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_57:
  v22 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_45:
    v23 = 2654435761 * self->_cellRsrq;
    if ((*&v12 & 0x100) != 0)
    {
      goto LABEL_46;
    }

LABEL_59:
    v24 = 0;
    if ((*&v12 & 0x4000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_60:
    v25 = 0;
    return v36 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
  }

LABEL_58:
  v23 = 0;
  if ((*&v12 & 0x100) == 0)
  {
    goto LABEL_59;
  }

LABEL_46:
  v24 = 2654435761 * self->_cellSnr;
  if ((*&v12 & 0x4000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_47:
  v25 = 2654435761 * self->_cellMode;
  return v36 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 39);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 39);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_wifiRssi = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 39);
  if ((v5 & 0x400000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_wifiTxPER = *(a3 + 35);
  *&self->_has |= 0x400000u;
  v5 = *(a3 + 39);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_wifiSNR = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 39);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_captiveNetworks = *(a3 + 149);
  *&self->_has |= 0x2000000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x200000) == 0)
  {
LABEL_7:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_wifiRxRetry = *(a3 + 34);
  *&self->_has |= 0x200000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x80000) == 0)
  {
LABEL_8:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_wifiEstimatedBandwitdh = *(a3 + 32);
  *&self->_has |= 0x80000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x800000) == 0)
  {
LABEL_9:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_wifiTxPhyRate = *(a3 + 36);
  *&self->_has |= 0x800000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x100000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_wifiRxPhyRate = *(a3 + 33);
  *&self->_has |= 0x100000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_qbssLoad = *(a3 + 24);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_cca = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 39);
  if ((v5 & 0x10000) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_stationCount = *(a3 + 29);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 39);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_dataLQM = *(a3 + 15);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 39);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_bssLoad = *(a3 + 9);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 39);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_53:
  self->_voiceLQM = *(a3 + 31);
  *&self->_has |= 0x40000u;
  if ((*(a3 + 39) & 0x8000) != 0)
  {
LABEL_17:
    self->_signalBar = *(a3 + 28);
    *&self->_has |= 0x8000u;
  }

LABEL_18:
  if (*(a3 + 13))
  {
    [(AWDWRMFacetimeRecommendation *)self setRatType:?];
  }

  if (*(a3 + 10))
  {
    [(AWDWRMFacetimeRecommendation *)self setIRATRecommendation:?];
  }

  if (*(a3 + 11))
  {
    [(AWDWRMFacetimeRecommendation *)self setIRATRecommendationReason:?];
  }

  v6 = *(a3 + 39);
  if ((v6 & 0x1000) != 0)
  {
    self->_facetimePacketLoss = *(a3 + 17);
    *&self->_has |= 0x1000u;
    v6 = *(a3 + 39);
    if ((v6 & 0x800) == 0)
    {
LABEL_26:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_57;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_26;
  }

  self->_facetimeAction = *(a3 + 16);
  *&self->_has |= 0x800u;
  v6 = *(a3 + 39);
  if ((v6 & 0x2000) == 0)
  {
LABEL_27:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_facetimeTimeDelay = *(a3 + 18);
  *&self->_has |= 0x2000u;
  v6 = *(a3 + 39);
  if ((v6 & 0x200) == 0)
  {
LABEL_28:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_counter = *(a3 + 14);
  *&self->_has |= 0x200u;
  v6 = *(a3 + 39);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_alertedMode = *(a3 + 148);
  *&self->_has |= 0x1000000u;
  v6 = *(a3 + 39);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_isStallDetected = *(a3 + 152);
  *&self->_has |= 0x10000000u;
  v6 = *(a3 + 39);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_isPCDetected = *(a3 + 151);
  *&self->_has |= 0x8000000u;
  v6 = *(a3 + 39);
  if ((v6 & 0x20000) == 0)
  {
LABEL_32:
    if ((v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_videoErasure = *(a3 + 30);
  *&self->_has |= 0x20000u;
  v6 = *(a3 + 39);
  if ((v6 & 8) == 0)
  {
LABEL_33:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_audioErasure = *(a3 + 8);
  *&self->_has |= 8u;
  v6 = *(a3 + 39);
  if ((v6 & 0x40) == 0)
  {
LABEL_34:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_cellRsrp = *(a3 + 11);
  *&self->_has |= 0x40u;
  v6 = *(a3 + 39);
  if ((v6 & 0x80) == 0)
  {
LABEL_35:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_cellRsrq = *(a3 + 12);
  *&self->_has |= 0x80u;
  v6 = *(a3 + 39);
  if ((v6 & 0x100) == 0)
  {
LABEL_36:
    if ((v6 & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_66:
  self->_cellSnr = *(a3 + 13);
  *&self->_has |= 0x100u;
  if ((*(a3 + 39) & 0x4000000) == 0)
  {
    return;
  }

LABEL_37:
  self->_cellMode = *(a3 + 150);
  *&self->_has |= 0x4000000u;
}

@end