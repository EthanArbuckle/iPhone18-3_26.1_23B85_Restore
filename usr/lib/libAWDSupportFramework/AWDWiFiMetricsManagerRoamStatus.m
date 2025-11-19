@interface AWDWiFiMetricsManagerRoamStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCcaInt:(BOOL)a3;
- (void)setHasCcaOthers:(BOOL)a3;
- (void)setHasCcaSelf:(BOOL)a3;
- (void)setHasCcaTotal:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasHostReason:(BOOL)a3;
- (void)setHasLateRoam:(BOOL)a3;
- (void)setHasLatency:(BOOL)a3;
- (void)setHasMotionState:(BOOL)a3;
- (void)setHasOffChannelDt:(BOOL)a3;
- (void)setHasOriginAKMs:(BOOL)a3;
- (void)setHasOriginBcnPer:(BOOL)a3;
- (void)setHasOriginChannel:(BOOL)a3;
- (void)setHasOriginEnhancedSecurityType:(BOOL)a3;
- (void)setHasOriginFwTxPer:(BOOL)a3;
- (void)setHasOriginPhyMode:(BOOL)a3;
- (void)setHasOriginRssi:(BOOL)a3;
- (void)setHasOriginTxPer:(BOOL)a3;
- (void)setHasProfileType:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasRoamScanDuration:(BOOL)a3;
- (void)setHasSecurityType:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasTargetAKMs:(BOOL)a3;
- (void)setHasTargetChannel:(BOOL)a3;
- (void)setHasTargetEnhancedSecurityType:(BOOL)a3;
- (void)setHasTargetPhyMode:(BOOL)a3;
- (void)setHasTargetRssi:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasVoipActive:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerRoamStatus

- (void)dealloc
{
  [(AWDWiFiMetricsManagerRoamStatus *)self setOriginOui:0];
  [(AWDWiFiMetricsManagerRoamStatus *)self setTargetOui:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerRoamStatus;
  [(AWDWiFiMetricsManagerRoamStatus *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasLatency:(BOOL)a3
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

- (void)setHasProfileType:(BOOL)a3
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

- (void)setHasSecurityType:(BOOL)a3
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

- (void)setHasStatus:(BOOL)a3
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

- (void)setHasReason:(BOOL)a3
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

- (void)setHasOriginRssi:(BOOL)a3
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

- (void)setHasTargetRssi:(BOOL)a3
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

- (void)setHasOriginChannel:(BOOL)a3
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

- (void)setHasTargetChannel:(BOOL)a3
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

- (void)setHasCcaTotal:(BOOL)a3
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

- (void)setHasCcaSelf:(BOOL)a3
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

- (void)setHasCcaOthers:(BOOL)a3
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

- (void)setHasCcaInt:(BOOL)a3
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

- (void)setHasOriginTxPer:(BOOL)a3
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

- (void)setHasOffChannelDt:(BOOL)a3
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

- (void)setHasRoamScanDuration:(BOOL)a3
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

- (void)setHasHostReason:(BOOL)a3
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

- (void)setHasMotionState:(BOOL)a3
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

- (void)setHasVoipActive:(BOOL)a3
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

- (void)setHasLateRoam:(BOOL)a3
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

- (void)setHasOriginBcnPer:(BOOL)a3
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

- (void)setHasOriginFwTxPer:(BOOL)a3
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

- (void)setHasOriginEnhancedSecurityType:(BOOL)a3
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

- (void)setHasTargetEnhancedSecurityType:(BOOL)a3
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

- (void)setHasOriginAKMs:(BOOL)a3
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

- (void)setHasTargetAKMs:(BOOL)a3
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

- (void)setHasOriginPhyMode:(BOOL)a3
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

- (void)setHasTargetPhyMode:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerRoamStatus;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerRoamStatus description](&v3, sel_description), -[AWDWiFiMetricsManagerRoamStatus dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_latency), @"latency"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_profileType), @"profileType"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_status), @"status"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reason), @"reason"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_originRssi), @"originRssi"}];
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_targetRssi), @"targetRssi"}];
  }

LABEL_10:
  originOui = self->_originOui;
  if (originOui)
  {
    [v3 setObject:originOui forKey:@"originOui"];
  }

  targetOui = self->_targetOui;
  if (targetOui)
  {
    [v3 setObject:targetOui forKey:@"targetOui"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x200) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flags), @"flags"}];
    v7 = self->_has;
    if ((*&v7 & 0x8000) == 0)
    {
LABEL_16:
      if ((*&v7 & 0x2000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v7 & 0x8000) == 0)
  {
    goto LABEL_16;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_originChannel), @"originChannel"}];
  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_17:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_targetChannel), @"targetChannel"}];
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaTotal), @"ccaTotal"}];
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaSelf), @"ccaSelf"}];
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaOthers), @"ccaOthers"}];
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_21:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaInt), @"ccaInt"}];
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_originTxPer), @"originTxPer"}];
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_offChannelDt), @"offChannelDt"}];
  v7 = self->_has;
  if ((*&v7 & 0x200000) == 0)
  {
LABEL_24:
    if ((*&v7 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamScanDuration), @"roamScanDuration"}];
  v7 = self->_has;
  if ((*&v7 & 1) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_associatedDur), @"associatedDur"}];
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hostReason), @"hostReason"}];
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_motionState), @"motionState"}];
  v7 = self->_has;
  if ((*&v7 & 0x40000000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_voipActive), @"voipActive"}];
  v7 = self->_has;
  if ((*&v7 & 0x20000000) == 0)
  {
LABEL_29:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_lateRoam), @"lateRoam"}];
  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_30:
    if ((*&v7 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_originBcnPer), @"originBcnPer"}];
  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_originFwTxPer), @"originFwTxPer"}];
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x4000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_originEnhancedSecurityType), @"originEnhancedSecurityType"}];
  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_targetEnhancedSecurityType), @"targetEnhancedSecurityType"}];
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_originAKMs), @"originAKMs"}];
  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

LABEL_68:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_originPhyMode), @"originPhyMode"}];
    if ((*&self->_has & 0x8000000) == 0)
    {
      return v3;
    }

    goto LABEL_37;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_targetAKMs), @"targetAKMs"}];
  v7 = self->_has;
  if ((*&v7 & 0x20000) != 0)
  {
    goto LABEL_68;
  }

LABEL_36:
  if ((*&v7 & 0x8000000) != 0)
  {
LABEL_37:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_targetPhyMode), @"targetPhyMode"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  latency = self->_latency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  profileType = self->_profileType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  securityType = self->_securityType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  status = self->_status;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_44:
  originRssi = self->_originRssi;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_9:
    targetRssi = self->_targetRssi;
    PBDataWriterWriteInt32Field();
  }

LABEL_10:
  if (self->_originOui)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_targetOui)
  {
    PBDataWriterWriteDataField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    flags = self->_flags;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((*&v6 & 0x8000) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x2000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_48;
    }
  }

  else if ((*&v6 & 0x8000) == 0)
  {
    goto LABEL_16;
  }

  originChannel = self->_originChannel;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  targetChannel = self->_targetChannel;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  ccaTotal = self->_ccaTotal;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  ccaSelf = self->_ccaSelf;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  ccaOthers = self->_ccaOthers;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_21:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  ccaInt = self->_ccaInt;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  originTxPer = self->_originTxPer;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  offChannelDt = self->_offChannelDt;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_24:
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  roamScanDuration = self->_roamScanDuration;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 1) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  associatedDur = self->_associatedDur;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  hostReason = self->_hostReason;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  motionState = self->_motionState;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  voipActive = self->_voipActive;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_29:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  lateRoam = self->_lateRoam;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_30:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  originBcnPer = self->_originBcnPer;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  originFwTxPer = self->_originFwTxPer;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  originEnhancedSecurityType = self->_originEnhancedSecurityType;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  targetEnhancedSecurityType = self->_targetEnhancedSecurityType;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  originAKMs = self->_originAKMs;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

LABEL_67:
    originPhyMode = self->_originPhyMode;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x8000000) == 0)
    {
      return;
    }

    goto LABEL_68;
  }

LABEL_66:
  targetAKMs = self->_targetAKMs;
  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000) != 0)
  {
    goto LABEL_67;
  }

LABEL_36:
  if ((*&v6 & 0x8000000) == 0)
  {
    return;
  }

LABEL_68:
  targetPhyMode = self->_targetPhyMode;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 41) |= 0x10u;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 18) = self->_latency;
  *(a3 + 41) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 28) = self->_profileType;
  *(a3 + 41) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 31) = self->_securityType;
  *(a3 + 41) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 32) = self->_status;
  *(a3 + 41) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 29) = self->_reason;
  *(a3 + 41) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_45:
  *(a3 + 27) = self->_originRssi;
  *(a3 + 41) |= 0x40000u;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_9:
    *(a3 + 39) = self->_targetRssi;
    *(a3 + 41) |= 0x10000000u;
  }

LABEL_10:
  if (self->_originOui)
  {
    [a3 setOriginOui:?];
  }

  if (self->_targetOui)
  {
    [a3 setTargetOui:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    *(a3 + 16) = self->_flags;
    *(a3 + 41) |= 0x200u;
    v6 = self->_has;
    if ((*&v6 & 0x8000) == 0)
    {
LABEL_16:
      if ((*&v6 & 0x2000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v6 & 0x8000) == 0)
  {
    goto LABEL_16;
  }

  *(a3 + 22) = self->_originChannel;
  *(a3 + 41) |= 0x8000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 34) = self->_targetChannel;
  *(a3 + 41) |= 0x2000000u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 15) = self->_ccaTotal;
  *(a3 + 41) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 14) = self->_ccaSelf;
  *(a3 + 41) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 13) = self->_ccaOthers;
  *(a3 + 41) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_21:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 12) = self->_ccaInt;
  *(a3 + 41) |= 0x20u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 4) = self->_originTxPer;
  *(a3 + 41) |= 8u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 20) = self->_offChannelDt;
  *(a3 + 41) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_24:
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 30) = self->_roamScanDuration;
  *(a3 + 41) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 1) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 1) = self->_associatedDur;
  *(a3 + 41) |= 1u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 17) = self->_hostReason;
  *(a3 + 41) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 19) = self->_motionState;
  *(a3 + 41) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x40000000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 161) = self->_voipActive;
  *(a3 + 41) |= 0x40000000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000000) == 0)
  {
LABEL_29:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 160) = self->_lateRoam;
  *(a3 + 41) |= 0x20000000u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_30:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 2) = self->_originBcnPer;
  *(a3 + 41) |= 2u;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 3) = self->_originFwTxPer;
  *(a3 + 41) |= 4u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x4000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 23) = self->_originEnhancedSecurityType;
  *(a3 + 41) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 35) = self->_targetEnhancedSecurityType;
  *(a3 + 41) |= 0x4000000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 21) = self->_originAKMs;
  *(a3 + 41) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 33) = self->_targetAKMs;
  *(a3 + 41) |= 0x1000000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x8000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_68:
  *(a3 + 26) = self->_originPhyMode;
  *(a3 + 41) |= 0x20000u;
  if ((*&self->_has & 0x8000000) == 0)
  {
    return;
  }

LABEL_37:
  *(a3 + 38) = self->_targetPhyMode;
  *(a3 + 41) |= 0x8000000u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 164) |= 0x10u;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 72) = self->_latency;
  *(v5 + 164) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 112) = self->_profileType;
  *(v5 + 164) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 124) = self->_securityType;
  *(v5 + 164) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 128) = self->_status;
  *(v5 + 164) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 116) = self->_reason;
  *(v5 + 164) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_41:
  *(v5 + 108) = self->_originRssi;
  *(v5 + 164) |= 0x40000u;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_9:
    *(v5 + 156) = self->_targetRssi;
    *(v5 + 164) |= 0x10000000u;
  }

LABEL_10:

  *(v6 + 96) = [(NSData *)self->_originOui copyWithZone:a3];
  *(v6 + 144) = [(NSData *)self->_targetOui copyWithZone:a3];
  v8 = self->_has;
  if ((*&v8 & 0x200) != 0)
  {
    *(v6 + 64) = self->_flags;
    *(v6 + 164) |= 0x200u;
    v8 = self->_has;
    if ((*&v8 & 0x8000) == 0)
    {
LABEL_12:
      if ((*&v8 & 0x2000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v8 & 0x8000) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 88) = self->_originChannel;
  *(v6 + 164) |= 0x8000u;
  v8 = self->_has;
  if ((*&v8 & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 136) = self->_targetChannel;
  *(v6 + 164) |= 0x2000000u;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 60) = self->_ccaTotal;
  *(v6 + 164) |= 0x100u;
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 56) = self->_ccaSelf;
  *(v6 + 164) |= 0x80u;
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 52) = self->_ccaOthers;
  *(v6 + 164) |= 0x40u;
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_17:
    if ((*&v8 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 48) = self->_ccaInt;
  *(v6 + 164) |= 0x20u;
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 32) = self->_originTxPer;
  *(v6 + 164) |= 8u;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 80) = self->_offChannelDt;
  *(v6 + 164) |= 0x2000u;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_20:
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 120) = self->_roamScanDuration;
  *(v6 + 164) |= 0x200000u;
  v8 = self->_has;
  if ((*&v8 & 1) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 8) = self->_associatedDur;
  *(v6 + 164) |= 1u;
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 68) = self->_hostReason;
  *(v6 + 164) |= 0x400u;
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x40000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 76) = self->_motionState;
  *(v6 + 164) |= 0x1000u;
  v8 = self->_has;
  if ((*&v8 & 0x40000000) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 161) = self->_voipActive;
  *(v6 + 164) |= 0x40000000u;
  v8 = self->_has;
  if ((*&v8 & 0x20000000) == 0)
  {
LABEL_25:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 160) = self->_lateRoam;
  *(v6 + 164) |= 0x20000000u;
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_26:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 16) = self->_originBcnPer;
  *(v6 + 164) |= 2u;
  v8 = self->_has;
  if ((*&v8 & 4) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 24) = self->_originFwTxPer;
  *(v6 + 164) |= 4u;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v6 + 92) = self->_originEnhancedSecurityType;
  *(v6 + 164) |= 0x10000u;
  v8 = self->_has;
  if ((*&v8 & 0x4000000) == 0)
  {
LABEL_29:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 140) = self->_targetEnhancedSecurityType;
  *(v6 + 164) |= 0x4000000u;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 84) = self->_originAKMs;
  *(v6 + 164) |= 0x4000u;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    *(v6 + 104) = self->_originPhyMode;
    *(v6 + 164) |= 0x20000u;
    if ((*&self->_has & 0x8000000) == 0)
    {
      return v6;
    }

    goto LABEL_33;
  }

LABEL_63:
  *(v6 + 132) = self->_targetAKMs;
  *(v6 + 164) |= 0x1000000u;
  v8 = self->_has;
  if ((*&v8 & 0x20000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((*&v8 & 0x8000000) != 0)
  {
LABEL_33:
    *(v6 + 152) = self->_targetPhyMode;
    *(v6 + 164) |= 0x8000000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 41);
    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_timestamp != *(a3 + 5))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_latency != *(a3 + 18))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_profileType != *(a3 + 28))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_securityType != *(a3 + 31))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_status != *(a3 + 32))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_reason != *(a3 + 29))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_originRssi != *(a3 + 27))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_166;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_targetRssi != *(a3 + 39))
      {
        goto LABEL_166;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_166;
    }

    originOui = self->_originOui;
    if (!(originOui | *(a3 + 12)) || (v5 = [(NSData *)originOui isEqual:?]) != 0)
    {
      targetOui = self->_targetOui;
      if (!(targetOui | *(a3 + 18)) || (v5 = [(NSData *)targetOui isEqual:?]) != 0)
      {
        v10 = self->_has;
        v11 = *(a3 + 41);
        if ((*&v10 & 0x200) != 0)
        {
          if ((v11 & 0x200) == 0 || self->_flags != *(a3 + 16))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x200) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x8000) != 0)
        {
          if ((v11 & 0x8000) == 0 || self->_originChannel != *(a3 + 22))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x8000) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x2000000) != 0)
        {
          if ((v11 & 0x2000000) == 0 || self->_targetChannel != *(a3 + 34))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x2000000) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x100) != 0)
        {
          if ((v11 & 0x100) == 0 || self->_ccaTotal != *(a3 + 15))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x100) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x80) != 0)
        {
          if ((v11 & 0x80) == 0 || self->_ccaSelf != *(a3 + 14))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x80) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x40) != 0)
        {
          if ((v11 & 0x40) == 0 || self->_ccaOthers != *(a3 + 13))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x40) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x20) != 0)
        {
          if ((v11 & 0x20) == 0 || self->_ccaInt != *(a3 + 12))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x20) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 8) != 0)
        {
          if ((v11 & 8) == 0 || self->_originTxPer != *(a3 + 4))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 8) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x2000) != 0)
        {
          if ((v11 & 0x2000) == 0 || self->_offChannelDt != *(a3 + 20))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x2000) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x200000) != 0)
        {
          if ((v11 & 0x200000) == 0 || self->_roamScanDuration != *(a3 + 30))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x200000) != 0)
        {
          goto LABEL_166;
        }

        if (*&v10)
        {
          if ((v11 & 1) == 0 || self->_associatedDur != *(a3 + 1))
          {
            goto LABEL_166;
          }
        }

        else if (v11)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x400) != 0)
        {
          if ((v11 & 0x400) == 0 || self->_hostReason != *(a3 + 17))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x400) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x1000) != 0)
        {
          if ((v11 & 0x1000) == 0 || self->_motionState != *(a3 + 19))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x1000) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x40000000) != 0)
        {
          if ((v11 & 0x40000000) == 0)
          {
            goto LABEL_166;
          }

          v12 = *(a3 + 161);
          if (self->_voipActive)
          {
            if ((*(a3 + 161) & 1) == 0)
            {
              goto LABEL_166;
            }
          }

          else if (*(a3 + 161))
          {
            goto LABEL_166;
          }
        }

        else if ((v11 & 0x40000000) != 0)
        {
          goto LABEL_166;
        }

        if ((*&v10 & 0x20000000) != 0)
        {
          if ((v11 & 0x20000000) != 0)
          {
            v13 = *(a3 + 160);
            if (self->_lateRoam)
            {
              if ((*(a3 + 160) & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            else if (*(a3 + 160))
            {
              goto LABEL_166;
            }

            goto LABEL_115;
          }
        }

        else if ((v11 & 0x20000000) == 0)
        {
LABEL_115:
          if ((*&v10 & 2) != 0)
          {
            if ((v11 & 2) == 0 || self->_originBcnPer != *(a3 + 2))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 2) != 0)
          {
            goto LABEL_166;
          }

          if ((*&v10 & 4) != 0)
          {
            if ((v11 & 4) == 0 || self->_originFwTxPer != *(a3 + 3))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 4) != 0)
          {
            goto LABEL_166;
          }

          if ((*&v10 & 0x10000) != 0)
          {
            if ((v11 & 0x10000) == 0 || self->_originEnhancedSecurityType != *(a3 + 23))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 0x10000) != 0)
          {
            goto LABEL_166;
          }

          if ((*&v10 & 0x4000000) != 0)
          {
            if ((v11 & 0x4000000) == 0 || self->_targetEnhancedSecurityType != *(a3 + 35))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 0x4000000) != 0)
          {
            goto LABEL_166;
          }

          if ((*&v10 & 0x4000) != 0)
          {
            if ((v11 & 0x4000) == 0 || self->_originAKMs != *(a3 + 21))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 0x4000) != 0)
          {
            goto LABEL_166;
          }

          if ((*&v10 & 0x1000000) != 0)
          {
            if ((v11 & 0x1000000) == 0 || self->_targetAKMs != *(a3 + 33))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 0x1000000) != 0)
          {
            goto LABEL_166;
          }

          if ((*&v10 & 0x20000) != 0)
          {
            if ((v11 & 0x20000) == 0 || self->_originPhyMode != *(a3 + 26))
            {
              goto LABEL_166;
            }
          }

          else if ((v11 & 0x20000) != 0)
          {
            goto LABEL_166;
          }

          LOBYTE(v5) = (v11 & 0x8000000) == 0;
          if ((*&v10 & 0x8000000) != 0)
          {
            if ((v11 & 0x8000000) == 0 || self->_targetPhyMode != *(a3 + 38))
            {
              goto LABEL_166;
            }

            LOBYTE(v5) = 1;
          }

          return v5;
        }

LABEL_166:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v38 = 2654435761u * self->_timestamp;
    if ((*&has & 0x800) != 0)
    {
LABEL_3:
      v37 = 2654435761 * self->_latency;
      if ((*&has & 0x80000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v38 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v37 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_4:
    v36 = 2654435761 * self->_profileType;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v36 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_5:
    v35 = 2654435761 * self->_securityType;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v35 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_6:
    v34 = 2654435761 * self->_status;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v34 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_7:
    v33 = 2654435761 * self->_reason;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v32 = 0;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v33 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v32 = 2654435761 * self->_originRssi;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_9:
    v4 = 2654435761 * self->_targetRssi;
    goto LABEL_18;
  }

LABEL_17:
  v4 = 0;
LABEL_18:
  v5 = [(NSData *)self->_originOui hash];
  v6 = [(NSData *)self->_targetOui hash];
  v7 = self->_has;
  if ((*&v7 & 0x200) != 0)
  {
    v8 = 2654435761 * self->_flags;
    if ((*&v7 & 0x8000) != 0)
    {
LABEL_20:
      v9 = 2654435761 * self->_originChannel;
      if ((*&v7 & 0x2000000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v8 = 0;
    if ((*&v7 & 0x8000) != 0)
    {
      goto LABEL_20;
    }
  }

  v9 = 0;
  if ((*&v7 & 0x2000000) != 0)
  {
LABEL_21:
    v10 = 2654435761 * self->_targetChannel;
    if ((*&v7 & 0x100) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v10 = 0;
  if ((*&v7 & 0x100) != 0)
  {
LABEL_22:
    v11 = 2654435761 * self->_ccaTotal;
    if ((*&v7 & 0x80) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v11 = 0;
  if ((*&v7 & 0x80) != 0)
  {
LABEL_23:
    v12 = 2654435761 * self->_ccaSelf;
    if ((*&v7 & 0x40) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  v12 = 0;
  if ((*&v7 & 0x40) != 0)
  {
LABEL_24:
    v13 = 2654435761 * self->_ccaOthers;
    if ((*&v7 & 0x20) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  v13 = 0;
  if ((*&v7 & 0x20) != 0)
  {
LABEL_25:
    v14 = 2654435761 * self->_ccaInt;
    if ((*&v7 & 8) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  v14 = 0;
  if ((*&v7 & 8) != 0)
  {
LABEL_26:
    v15 = 2654435761u * self->_originTxPer;
    if ((*&v7 & 0x2000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  v15 = 0;
  if ((*&v7 & 0x2000) != 0)
  {
LABEL_27:
    v16 = 2654435761 * self->_offChannelDt;
    if ((*&v7 & 0x200000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  v16 = 0;
  if ((*&v7 & 0x200000) != 0)
  {
LABEL_28:
    v17 = 2654435761 * self->_roamScanDuration;
    if (*&v7)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_51:
  v17 = 0;
  if (*&v7)
  {
LABEL_29:
    v18 = 2654435761u * self->_associatedDur;
    if ((*&v7 & 0x400) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v18 = 0;
  if ((*&v7 & 0x400) != 0)
  {
LABEL_30:
    v19 = 2654435761 * self->_hostReason;
    if ((*&v7 & 0x1000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

LABEL_53:
  v19 = 0;
  if ((*&v7 & 0x1000) != 0)
  {
LABEL_31:
    v20 = 2654435761 * self->_motionState;
    if ((*&v7 & 0x40000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_55;
  }

LABEL_54:
  v20 = 0;
  if ((*&v7 & 0x40000000) != 0)
  {
LABEL_32:
    v21 = 2654435761 * self->_voipActive;
    if ((*&v7 & 0x20000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_56;
  }

LABEL_55:
  v21 = 0;
  if ((*&v7 & 0x20000000) != 0)
  {
LABEL_33:
    v22 = 2654435761 * self->_lateRoam;
    if ((*&v7 & 2) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

LABEL_56:
  v22 = 0;
  if ((*&v7 & 2) != 0)
  {
LABEL_34:
    v23 = 2654435761u * self->_originBcnPer;
    if ((*&v7 & 4) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_58;
  }

LABEL_57:
  v23 = 0;
  if ((*&v7 & 4) != 0)
  {
LABEL_35:
    v24 = 2654435761u * self->_originFwTxPer;
    if ((*&v7 & 0x10000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_59;
  }

LABEL_58:
  v24 = 0;
  if ((*&v7 & 0x10000) != 0)
  {
LABEL_36:
    v25 = 2654435761 * self->_originEnhancedSecurityType;
    if ((*&v7 & 0x4000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_60;
  }

LABEL_59:
  v25 = 0;
  if ((*&v7 & 0x4000000) != 0)
  {
LABEL_37:
    v26 = 2654435761 * self->_targetEnhancedSecurityType;
    if ((*&v7 & 0x4000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_61;
  }

LABEL_60:
  v26 = 0;
  if ((*&v7 & 0x4000) != 0)
  {
LABEL_38:
    v27 = 2654435761 * self->_originAKMs;
    if ((*&v7 & 0x1000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_62;
  }

LABEL_61:
  v27 = 0;
  if ((*&v7 & 0x1000000) != 0)
  {
LABEL_39:
    v28 = 2654435761 * self->_targetAKMs;
    if ((*&v7 & 0x20000) != 0)
    {
      goto LABEL_40;
    }

LABEL_63:
    v29 = 0;
    if ((*&v7 & 0x8000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_64:
    v30 = 0;
    return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_62:
  v28 = 0;
  if ((*&v7 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

LABEL_40:
  v29 = 2654435761 * self->_originPhyMode;
  if ((*&v7 & 0x8000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_41:
  v30 = 2654435761 * self->_targetPhyMode;
  return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 41);
  if ((v5 & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
    v5 = *(a3 + 41);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_latency = *(a3 + 18);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 41);
  if ((v5 & 0x80000) == 0)
  {
LABEL_4:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_profileType = *(a3 + 28);
  *&self->_has |= 0x80000u;
  v5 = *(a3 + 41);
  if ((v5 & 0x400000) == 0)
  {
LABEL_5:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_securityType = *(a3 + 31);
  *&self->_has |= 0x400000u;
  v5 = *(a3 + 41);
  if ((v5 & 0x800000) == 0)
  {
LABEL_6:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_status = *(a3 + 32);
  *&self->_has |= 0x800000u;
  v5 = *(a3 + 41);
  if ((v5 & 0x100000) == 0)
  {
LABEL_7:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_reason = *(a3 + 29);
  *&self->_has |= 0x100000u;
  v5 = *(a3 + 41);
  if ((v5 & 0x40000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_45:
  self->_originRssi = *(a3 + 27);
  *&self->_has |= 0x40000u;
  if ((*(a3 + 41) & 0x10000000) != 0)
  {
LABEL_9:
    self->_targetRssi = *(a3 + 39);
    *&self->_has |= 0x10000000u;
  }

LABEL_10:
  if (*(a3 + 12))
  {
    [(AWDWiFiMetricsManagerRoamStatus *)self setOriginOui:?];
  }

  if (*(a3 + 18))
  {
    [(AWDWiFiMetricsManagerRoamStatus *)self setTargetOui:?];
  }

  v6 = *(a3 + 41);
  if ((v6 & 0x200) != 0)
  {
    self->_flags = *(a3 + 16);
    *&self->_has |= 0x200u;
    v6 = *(a3 + 41);
    if ((v6 & 0x8000) == 0)
    {
LABEL_16:
      if ((v6 & 0x2000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
    goto LABEL_16;
  }

  self->_originChannel = *(a3 + 22);
  *&self->_has |= 0x8000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_targetChannel = *(a3 + 34);
  *&self->_has |= 0x2000000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_ccaTotal = *(a3 + 15);
  *&self->_has |= 0x100u;
  v6 = *(a3 + 41);
  if ((v6 & 0x80) == 0)
  {
LABEL_19:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_ccaSelf = *(a3 + 14);
  *&self->_has |= 0x80u;
  v6 = *(a3 + 41);
  if ((v6 & 0x40) == 0)
  {
LABEL_20:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_ccaOthers = *(a3 + 13);
  *&self->_has |= 0x40u;
  v6 = *(a3 + 41);
  if ((v6 & 0x20) == 0)
  {
LABEL_21:
    if ((v6 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_ccaInt = *(a3 + 12);
  *&self->_has |= 0x20u;
  v6 = *(a3 + 41);
  if ((v6 & 8) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_originTxPer = *(a3 + 4);
  *&self->_has |= 8u;
  v6 = *(a3 + 41);
  if ((v6 & 0x2000) == 0)
  {
LABEL_23:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_offChannelDt = *(a3 + 20);
  *&self->_has |= 0x2000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x200000) == 0)
  {
LABEL_24:
    if ((v6 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_roamScanDuration = *(a3 + 30);
  *&self->_has |= 0x200000u;
  v6 = *(a3 + 41);
  if ((v6 & 1) == 0)
  {
LABEL_25:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_associatedDur = *(a3 + 1);
  *&self->_has |= 1u;
  v6 = *(a3 + 41);
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_hostReason = *(a3 + 17);
  *&self->_has |= 0x400u;
  v6 = *(a3 + 41);
  if ((v6 & 0x1000) == 0)
  {
LABEL_27:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_motionState = *(a3 + 19);
  *&self->_has |= 0x1000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_voipActive = *(a3 + 161);
  *&self->_has |= 0x40000000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_29:
    if ((v6 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_lateRoam = *(a3 + 160);
  *&self->_has |= 0x20000000u;
  v6 = *(a3 + 41);
  if ((v6 & 2) == 0)
  {
LABEL_30:
    if ((v6 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_originBcnPer = *(a3 + 2);
  *&self->_has |= 2u;
  v6 = *(a3 + 41);
  if ((v6 & 4) == 0)
  {
LABEL_31:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_originFwTxPer = *(a3 + 3);
  *&self->_has |= 4u;
  v6 = *(a3 + 41);
  if ((v6 & 0x10000) == 0)
  {
LABEL_32:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_originEnhancedSecurityType = *(a3 + 23);
  *&self->_has |= 0x10000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_33:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_targetEnhancedSecurityType = *(a3 + 35);
  *&self->_has |= 0x4000000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x4000) == 0)
  {
LABEL_34:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_originAKMs = *(a3 + 21);
  *&self->_has |= 0x4000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_targetAKMs = *(a3 + 33);
  *&self->_has |= 0x1000000u;
  v6 = *(a3 + 41);
  if ((v6 & 0x20000) == 0)
  {
LABEL_36:
    if ((v6 & 0x8000000) == 0)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_68:
  self->_originPhyMode = *(a3 + 26);
  *&self->_has |= 0x20000u;
  if ((*(a3 + 41) & 0x8000000) == 0)
  {
    return;
  }

LABEL_37:
  self->_targetPhyMode = *(a3 + 38);
  *&self->_has |= 0x8000000u;
}

@end