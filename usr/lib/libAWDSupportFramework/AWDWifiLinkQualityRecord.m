@interface AWDWifiLinkQualityRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasArpFailureCount:(BOOL)a3;
- (void)setHasBcnPerSign:(BOOL)a3;
- (void)setHasBcnRcvs:(BOOL)a3;
- (void)setHasBcnSched:(BOOL)a3;
- (void)setHasDnsServersImpacted:(BOOL)a3;
- (void)setHasDnsServersTotal:(BOOL)a3;
- (void)setHasFwTxFail:(BOOL)a3;
- (void)setHasFwTxFrames:(BOOL)a3;
- (void)setHasFwTxPerSign:(BOOL)a3;
- (void)setHasFwTxRetrans:(BOOL)a3;
- (void)setHasGwArpExpiry:(BOOL)a3;
- (void)setHasMetricReason:(BOOL)a3;
- (void)setHasNetScore:(BOOL)a3;
- (void)setHasRapidLqmDuration:(BOOL)a3;
- (void)setHasRoamWaitTime:(BOOL)a3;
- (void)setHasRssi:(BOOL)a3;
- (void)setHasRxFrames:(BOOL)a3;
- (void)setHasSympAwdCode:(BOOL)a3;
- (void)setHasSympSign:(BOOL)a3;
- (void)setHasTdEvalDuration:(BOOL)a3;
- (void)setHasTrafficWatchDuration:(BOOL)a3;
- (void)setHasTrafficWatchRx:(BOOL)a3;
- (void)setHasTrafficWatchTime:(BOOL)a3;
- (void)setHasTrgDisc:(BOOL)a3;
- (void)setHasTxFail:(BOOL)a3;
- (void)setHasTxFrames:(BOOL)a3;
- (void)setHasTxPerSign:(BOOL)a3;
- (void)setHasTxRetrans:(BOOL)a3;
- (void)setHasUsrImpact:(BOOL)a3;
- (void)setHasUsrInput:(BOOL)a3;
- (void)setHasValidState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWifiLinkQualityRecord

- (void)setHasTxFrames:(BOOL)a3
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

- (void)setHasTxFail:(BOOL)a3
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

- (void)setHasTxRetrans:(BOOL)a3
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

- (void)setHasBcnSched:(BOOL)a3
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

- (void)setHasBcnRcvs:(BOOL)a3
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

- (void)setHasFwTxFrames:(BOOL)a3
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

- (void)setHasFwTxFail:(BOOL)a3
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

- (void)setHasFwTxRetrans:(BOOL)a3
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

- (void)setHasRxFrames:(BOOL)a3
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

- (void)setHasRssi:(BOOL)a3
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

- (void)setHasTrgDisc:(BOOL)a3
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

- (void)setHasGwArpExpiry:(BOOL)a3
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

- (void)setHasUsrInput:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasTxPerSign:(BOOL)a3
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

- (void)setHasFwTxPerSign:(BOOL)a3
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

- (void)setHasBcnPerSign:(BOOL)a3
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

- (void)setHasSympSign:(BOOL)a3
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

- (void)setHasNetScore:(BOOL)a3
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

- (void)setHasUsrImpact:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasSympAwdCode:(BOOL)a3
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

- (void)setHasArpFailureCount:(BOOL)a3
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

- (void)setHasDnsServersImpacted:(BOOL)a3
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

- (void)setHasDnsServersTotal:(BOOL)a3
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

- (void)setHasTrafficWatchRx:(BOOL)a3
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

- (void)setHasTrafficWatchDuration:(BOOL)a3
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

- (void)setHasTrafficWatchTime:(BOOL)a3
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

- (void)setHasValidState:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF);
}

- (void)setHasMetricReason:(BOOL)a3
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

- (void)setHasRapidLqmDuration:(BOOL)a3
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

- (void)setHasTdEvalDuration:(BOOL)a3
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

- (void)setHasRoamWaitTime:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWifiLinkQualityRecord;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiLinkQualityRecord description](&v3, sel_description), -[AWDWifiLinkQualityRecord dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txFrames), @"txFrames"}];
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txFail), @"txFail"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txRetrans), @"txRetrans"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bcnSched), @"bcnSched"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bcnRcvs), @"bcnRcvs"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_fwTxFrames), @"fwTxFrames"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_fwTxFail), @"fwTxFail"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_fwTxRetrans), @"fwTxRetrans"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxFrames), @"rxFrames"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_rssi), @"rssi"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_trgDisc), @"trgDisc"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gwArpExpiry), @"gwArpExpiry"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usrInput), @"usrInput"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txPerSign), @"txPerSign"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_fwTxPerSign), @"fwTxPerSign"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bcnPerSign), @"bcnPerSign"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sympSign), @"sympSign"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netScore), @"netScore"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usrImpact), @"usrImpact"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sympAwdCode), @"sympAwdCode"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_arpFailureCount), @"arpFailureCount"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dnsServersImpacted), @"dnsServersImpacted"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dnsServersTotal), @"dnsServersTotal"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_gateOpenTime), @"gateOpenTime"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_trafficWatchRx), @"trafficWatchRx"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_trafficWatchDuration), @"trafficWatchDuration"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_trafficWatchTime), @"trafficWatchTime"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validState), @"validState"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_metricReason), @"metricReason"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_65:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tdEvalDuration), @"tdEvalDuration"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_33;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rapidLqmDuration), @"rapidLqmDuration"}];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    goto LABEL_65;
  }

LABEL_32:
  if ((*&has & 4) != 0)
  {
LABEL_33:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_roamWaitTime), @"roamWaitTime"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    txFrames = self->_txFrames;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  txFail = self->_txFail;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  txRetrans = self->_txRetrans;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  bcnSched = self->_bcnSched;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  bcnRcvs = self->_bcnRcvs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  fwTxFrames = self->_fwTxFrames;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  fwTxFail = self->_fwTxFail;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  fwTxRetrans = self->_fwTxRetrans;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  rxFrames = self->_rxFrames;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  rssi = self->_rssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  trgDisc = self->_trgDisc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  gwArpExpiry = self->_gwArpExpiry;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  usrInput = self->_usrInput;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  txPerSign = self->_txPerSign;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  fwTxPerSign = self->_fwTxPerSign;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  bcnPerSign = self->_bcnPerSign;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  sympSign = self->_sympSign;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  netScore = self->_netScore;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  usrImpact = self->_usrImpact;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  sympAwdCode = self->_sympAwdCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  arpFailureCount = self->_arpFailureCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  dnsServersImpacted = self->_dnsServersImpacted;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  dnsServersTotal = self->_dnsServersTotal;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  gateOpenTime = self->_gateOpenTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  trafficWatchRx = self->_trafficWatchRx;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  trafficWatchDuration = self->_trafficWatchDuration;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  trafficWatchTime = self->_trafficWatchTime;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  validState = self->_validState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  metricReason = self->_metricReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    tdEvalDuration = self->_tdEvalDuration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_65;
  }

LABEL_63:
  rapidLqmDuration = self->_rapidLqmDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((*&has & 4) == 0)
  {
    return;
  }

LABEL_65:
  roamWaitTime = self->_roamWaitTime;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    *(a3 + 34) = self->_txFrames;
    *(a3 + 40) |= 0x4000000u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 33) = self->_txFail;
  *(a3 + 40) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 36) = self->_txRetrans;
  *(a3 + 40) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 17) = self->_bcnSched;
  *(a3 + 40) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 16) = self->_bcnRcvs;
  *(a3 + 40) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 21) = self->_fwTxFrames;
  *(a3 + 40) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 20) = self->_fwTxFail;
  *(a3 + 40) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 23) = self->_fwTxRetrans;
  *(a3 + 40) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 28) = self->_rxFrames;
  *(a3 + 40) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 27) = self->_rssi;
  *(a3 + 40) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 32) = self->_trgDisc;
  *(a3 + 40) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 24) = self->_gwArpExpiry;
  *(a3 + 40) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 38) = self->_usrInput;
  *(a3 + 40) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 35) = self->_txPerSign;
  *(a3 + 40) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 22) = self->_fwTxPerSign;
  *(a3 + 40) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 15) = self->_bcnPerSign;
  *(a3 + 40) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 30) = self->_sympSign;
  *(a3 + 40) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 26) = self->_netScore;
  *(a3 + 40) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 37) = self->_usrImpact;
  *(a3 + 40) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 29) = self->_sympAwdCode;
  *(a3 + 40) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 14) = self->_arpFailureCount;
  *(a3 + 40) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 18) = self->_dnsServersImpacted;
  *(a3 + 40) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 19) = self->_dnsServersTotal;
  *(a3 + 40) |= 0x800u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 1) = *&self->_gateOpenTime;
  *(a3 + 40) |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 31) = self->_trafficWatchRx;
  *(a3 + 40) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 5) = *&self->_trafficWatchDuration;
  *(a3 + 40) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 6) = *&self->_trafficWatchTime;
  *(a3 + 40) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 39) = self->_validState;
  *(a3 + 40) |= 0x80000000;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 25) = self->_metricReason;
  *(a3 + 40) |= 0x20000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 2) = self->_rapidLqmDuration;
  *(a3 + 40) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_32:
    if ((*&has & 4) == 0)
    {
      return;
    }

LABEL_65:
    *(a3 + 3) = self->_roamWaitTime;
    *(a3 + 40) |= 4u;
    return;
  }

LABEL_64:
  *(a3 + 4) = self->_tdEvalDuration;
  *(a3 + 40) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_65;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    *(result + 34) = self->_txFrames;
    *(result + 40) |= 0x4000000u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 33) = self->_txFail;
  *(result + 40) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 36) = self->_txRetrans;
  *(result + 40) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 17) = self->_bcnSched;
  *(result + 40) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 16) = self->_bcnRcvs;
  *(result + 40) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 21) = self->_fwTxFrames;
  *(result + 40) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 20) = self->_fwTxFail;
  *(result + 40) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 23) = self->_fwTxRetrans;
  *(result + 40) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 28) = self->_rxFrames;
  *(result + 40) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 27) = self->_rssi;
  *(result + 40) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 32) = self->_trgDisc;
  *(result + 40) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 24) = self->_gwArpExpiry;
  *(result + 40) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 38) = self->_usrInput;
  *(result + 40) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 35) = self->_txPerSign;
  *(result + 40) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 22) = self->_fwTxPerSign;
  *(result + 40) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 15) = self->_bcnPerSign;
  *(result + 40) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 30) = self->_sympSign;
  *(result + 40) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 26) = self->_netScore;
  *(result + 40) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 37) = self->_usrImpact;
  *(result + 40) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 29) = self->_sympAwdCode;
  *(result + 40) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 14) = self->_arpFailureCount;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 18) = self->_dnsServersImpacted;
  *(result + 40) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 19) = self->_dnsServersTotal;
  *(result + 40) |= 0x800u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 1) = *&self->_gateOpenTime;
  *(result + 40) |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 31) = self->_trafficWatchRx;
  *(result + 40) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 5) = *&self->_trafficWatchDuration;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 6) = *&self->_trafficWatchTime;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 39) = self->_validState;
  *(result + 40) |= 0x80000000;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 25) = self->_metricReason;
  *(result + 40) |= 0x20000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 2) = self->_rapidLqmDuration;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_32:
    if ((*&has & 4) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_65:
  *(result + 4) = self->_tdEvalDuration;
  *(result + 40) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_33:
  *(result + 3) = self->_roamWaitTime;
  *(result + 40) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_txFrames != *(a3 + 34))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_txFail != *(a3 + 33))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_txRetrans != *(a3 + 36))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_bcnSched != *(a3 + 17))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_bcnRcvs != *(a3 + 16))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_fwTxFrames != *(a3 + 21))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_fwTxFail != *(a3 + 20))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_fwTxRetrans != *(a3 + 23))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_rxFrames != *(a3 + 28))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_rssi != *(a3 + 27))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_trgDisc != *(a3 + 32))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_gwArpExpiry != *(a3 + 24))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x40000000) != 0)
    {
      if ((v7 & 0x40000000) == 0 || self->_usrInput != *(a3 + 38))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_txPerSign != *(a3 + 35))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_fwTxPerSign != *(a3 + 22))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_bcnPerSign != *(a3 + 15))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_sympSign != *(a3 + 30))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_netScore != *(a3 + 26))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_usrImpact != *(a3 + 37))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_sympAwdCode != *(a3 + 29))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_arpFailureCount != *(a3 + 14))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_dnsServersImpacted != *(a3 + 18))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_dnsServersTotal != *(a3 + 19))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_161;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_gateOpenTime != *(a3 + 1))
      {
        goto LABEL_161;
      }
    }

    else if (v7)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_trafficWatchRx != *(a3 + 31))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_trafficWatchDuration != *(a3 + 5))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_trafficWatchTime != *(a3 + 6))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 0x80000000) != 0)
    {
      if ((v7 & 0x80000000) == 0 || self->_validState != *(a3 + 39))
      {
        goto LABEL_161;
      }
    }

    else if (v7 < 0)
    {
LABEL_161:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_metricReason != *(a3 + 25))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_rapidLqmDuration != *(a3 + 2))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_161;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_tdEvalDuration != *(a3 + 4))
      {
        goto LABEL_161;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_161;
    }

    LOBYTE(v5) = (*(a3 + 40) & 4) == 0;
    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_roamWaitTime != *(a3 + 3))
      {
        goto LABEL_161;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    v46 = 2654435761 * self->_txFrames;
    if ((*&has & 0x2000000) != 0)
    {
LABEL_3:
      v45 = 2654435761 * self->_txFail;
      if ((*&has & 0x10000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v46 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v45 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_4:
    v44 = 2654435761 * self->_txRetrans;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v44 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_5:
    v43 = 2654435761 * self->_bcnSched;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v43 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_6:
    v42 = 2654435761 * self->_bcnRcvs;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v42 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_7:
    v41 = 2654435761 * self->_fwTxFrames;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  v41 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_fwTxFail;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v5 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_fwTxRetrans;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v6 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_rxFrames;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_11:
    v8 = 2654435761 * self->_rssi;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v8 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_12:
    v9 = 2654435761 * self->_trgDisc;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v9 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_13:
    v10 = 2654435761 * self->_gwArpExpiry;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v10 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_14:
    v11 = 2654435761 * self->_usrInput;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v11 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_15:
    v12 = 2654435761 * self->_txPerSign;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v12 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_16:
    v13 = 2654435761 * self->_fwTxPerSign;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  v13 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_17:
    v14 = 2654435761 * self->_bcnPerSign;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v14 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_18:
    v15 = 2654435761 * self->_sympSign;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v15 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_19:
    v16 = 2654435761 * self->_netScore;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v16 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_20:
    v17 = 2654435761 * self->_usrImpact;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v17 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_21:
    v18 = 2654435761 * self->_sympAwdCode;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v18 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_22:
    v19 = 2654435761 * self->_arpFailureCount;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_23:
    v20 = 2654435761 * self->_dnsServersImpacted;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_24;
    }

LABEL_51:
    v21 = 0;
    if (*&has)
    {
      goto LABEL_25;
    }

LABEL_52:
    v25 = 0;
    goto LABEL_53;
  }

LABEL_50:
  v20 = 0;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_51;
  }

LABEL_24:
  v21 = 2654435761 * self->_dnsServersTotal;
  if ((*&has & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_25:
  gateOpenTime = self->_gateOpenTime;
  if (gateOpenTime < 0.0)
  {
    gateOpenTime = -gateOpenTime;
  }

  *v2.i64 = floor(gateOpenTime + 0.5);
  v23 = (gateOpenTime - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
  v25 = 2654435761u * *v2.i64;
  if (v23 >= 0.0)
  {
    if (v23 > 0.0)
    {
      v25 += v23;
    }
  }

  else
  {
    v25 -= fabs(v23);
  }

LABEL_53:
  if ((*&has & 0x800000) != 0)
  {
    v26 = 2654435761 * self->_trafficWatchRx;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_55;
    }

LABEL_60:
    v30 = 0;
    goto LABEL_61;
  }

  v26 = 0;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_60;
  }

LABEL_55:
  trafficWatchDuration = self->_trafficWatchDuration;
  if (trafficWatchDuration < 0.0)
  {
    trafficWatchDuration = -trafficWatchDuration;
  }

  *v2.i64 = floor(trafficWatchDuration + 0.5);
  v28 = (trafficWatchDuration - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v29), v3, v2);
  v30 = 2654435761u * *v2.i64;
  if (v28 >= 0.0)
  {
    if (v28 > 0.0)
    {
      v30 += v28;
    }
  }

  else
  {
    v30 -= fabs(v28);
  }

LABEL_61:
  if ((*&has & 0x20) != 0)
  {
    trafficWatchTime = self->_trafficWatchTime;
    if (trafficWatchTime < 0.0)
    {
      trafficWatchTime = -trafficWatchTime;
    }

    *v2.i64 = floor(trafficWatchTime + 0.5);
    v33 = (trafficWatchTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v31 = 2654435761u * *vbslq_s8(vnegq_f64(v34), v3, v2).i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v31 += v33;
      }
    }

    else
    {
      v31 -= fabs(v33);
    }
  }

  else
  {
    v31 = 0;
  }

  if ((*&has & 0x80000000) != 0)
  {
    v35 = 2654435761 * self->_validState;
    if ((*&has & 0x20000) == 0)
    {
LABEL_75:
      v36 = 0;
      if ((*&has & 2) != 0)
      {
        goto LABEL_76;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v35 = 0;
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_75;
    }
  }

  v36 = 2654435761 * self->_metricReason;
  if ((*&has & 2) != 0)
  {
LABEL_76:
    v37 = 2654435761u * self->_rapidLqmDuration;
    if ((*&has & 8) != 0)
    {
      goto LABEL_77;
    }

LABEL_82:
    v38 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_78;
    }

LABEL_83:
    v39 = 0;
    return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v25 ^ v26 ^ v30 ^ v31 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39;
  }

LABEL_81:
  v37 = 0;
  if ((*&has & 8) == 0)
  {
    goto LABEL_82;
  }

LABEL_77:
  v38 = 2654435761u * self->_tdEvalDuration;
  if ((*&has & 4) == 0)
  {
    goto LABEL_83;
  }

LABEL_78:
  v39 = 2654435761u * self->_roamWaitTime;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v25 ^ v26 ^ v30 ^ v31 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 40);
  if ((v3 & 0x4000000) != 0)
  {
    self->_txFrames = *(a3 + 34);
    *&self->_has |= 0x4000000u;
    v3 = *(a3 + 40);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_3:
      if ((v3 & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  self->_txFail = *(a3 + 33);
  *&self->_has |= 0x2000000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_4:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_txRetrans = *(a3 + 36);
  *&self->_has |= 0x10000000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x200) == 0)
  {
LABEL_5:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_bcnSched = *(a3 + 17);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 40);
  if ((v3 & 0x100) == 0)
  {
LABEL_6:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_bcnRcvs = *(a3 + 16);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 40);
  if ((v3 & 0x2000) == 0)
  {
LABEL_7:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_fwTxFrames = *(a3 + 21);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x1000) == 0)
  {
LABEL_8:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_fwTxFail = *(a3 + 20);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x8000) == 0)
  {
LABEL_9:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_fwTxRetrans = *(a3 + 23);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x100000) == 0)
  {
LABEL_10:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_rxFrames = *(a3 + 28);
  *&self->_has |= 0x100000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x80000) == 0)
  {
LABEL_11:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_rssi = *(a3 + 27);
  *&self->_has |= 0x80000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_12:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_trgDisc = *(a3 + 32);
  *&self->_has |= 0x1000000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x10000) == 0)
  {
LABEL_13:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_gwArpExpiry = *(a3 + 24);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_14:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_usrInput = *(a3 + 38);
  *&self->_has |= 0x40000000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_15:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_txPerSign = *(a3 + 35);
  *&self->_has |= 0x8000000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x4000) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_fwTxPerSign = *(a3 + 22);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x80) == 0)
  {
LABEL_17:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_bcnPerSign = *(a3 + 15);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 40);
  if ((v3 & 0x400000) == 0)
  {
LABEL_18:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_sympSign = *(a3 + 30);
  *&self->_has |= 0x400000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x40000) == 0)
  {
LABEL_19:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_netScore = *(a3 + 26);
  *&self->_has |= 0x40000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_20:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_usrImpact = *(a3 + 37);
  *&self->_has |= 0x20000000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x200000) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_sympAwdCode = *(a3 + 29);
  *&self->_has |= 0x200000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x40) == 0)
  {
LABEL_22:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_arpFailureCount = *(a3 + 14);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 40);
  if ((v3 & 0x400) == 0)
  {
LABEL_23:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_dnsServersImpacted = *(a3 + 18);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 40);
  if ((v3 & 0x800) == 0)
  {
LABEL_24:
    if ((v3 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_dnsServersTotal = *(a3 + 19);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 40);
  if ((v3 & 1) == 0)
  {
LABEL_25:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_gateOpenTime = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 40);
  if ((v3 & 0x800000) == 0)
  {
LABEL_26:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_trafficWatchRx = *(a3 + 31);
  *&self->_has |= 0x800000u;
  v3 = *(a3 + 40);
  if ((v3 & 0x10) == 0)
  {
LABEL_27:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_trafficWatchDuration = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 40);
  if ((v3 & 0x20) == 0)
  {
LABEL_28:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_trafficWatchTime = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 40);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_validState = *(a3 + 39);
  *&self->_has |= 0x80000000;
  v3 = *(a3 + 40);
  if ((v3 & 0x20000) == 0)
  {
LABEL_30:
    if ((v3 & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_metricReason = *(a3 + 25);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 40);
  if ((v3 & 2) == 0)
  {
LABEL_31:
    if ((v3 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_rapidLqmDuration = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 40);
  if ((v3 & 8) == 0)
  {
LABEL_32:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_65:
    self->_roamWaitTime = *(a3 + 3);
    *&self->_has |= 4u;
    return;
  }

LABEL_64:
  self->_tdEvalDuration = *(a3 + 4);
  *&self->_has |= 8u;
  if ((*(a3 + 40) & 4) != 0)
  {
    goto LABEL_65;
  }
}

@end