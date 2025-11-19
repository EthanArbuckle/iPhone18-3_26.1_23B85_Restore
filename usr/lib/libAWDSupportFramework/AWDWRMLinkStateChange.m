@interface AWDWRMLinkStateChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBtRssi:(BOOL)a3;
- (void)setHasCcAssertion:(BOOL)a3;
- (void)setHasEnableCMAS:(BOOL)a3;
- (void)setHasEnableTelephony:(BOOL)a3;
- (void)setHasIsTriggeredByProximityChange:(BOOL)a3;
- (void)setHasMModeState:(BOOL)a3;
- (void)setHasNewLinkState:(BOOL)a3;
- (void)setHasOldLinkState:(BOOL)a3;
- (void)setHasPrevMModeState:(BOOL)a3;
- (void)setHasSiriApp:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasWifiProximity:(BOOL)a3;
- (void)setHasWifiRssi:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWRMLinkStateChange

- (void)dealloc
{
  [(AWDWRMLinkStateChange *)self setBundleID:0];
  [(AWDWRMLinkStateChange *)self setTriggerType:0];
  v3.receiver = self;
  v3.super_class = AWDWRMLinkStateChange;
  [(AWDWRMLinkStateChange *)&v3 dealloc];
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

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSiriApp:(BOOL)a3
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

- (void)setHasIsTriggeredByProximityChange:(BOOL)a3
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

- (void)setHasOldLinkState:(BOOL)a3
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

- (void)setHasNewLinkState:(BOOL)a3
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

- (void)setHasWifiProximity:(BOOL)a3
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

- (void)setHasCcAssertion:(BOOL)a3
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

- (void)setHasEnableCMAS:(BOOL)a3
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

- (void)setHasEnableTelephony:(BOOL)a3
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

- (void)setHasWifiRssi:(BOOL)a3
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

- (void)setHasBtRssi:(BOOL)a3
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

- (void)setHasMModeState:(BOOL)a3
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

- (void)setHasPrevMModeState:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMLinkStateChange;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMLinkStateChange description](&v3, sel_description), -[AWDWRMLinkStateChange dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_siriApp), @"siriApp"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isTriggeredByProximityChange), @"isTriggeredByProximityChange"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_oldLinkState), @"oldLinkState"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_newLinkState), @"newLinkState"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiProximity), @"wifiProximity"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccAssertion), @"ccAssertion"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_enableCMAS), @"enableCMAS"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_enableTelephony), @"enableTelephony"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_wifiRssi), @"wifiRssi"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_btRssi), @"btRssi"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mModeState), @"MModeState"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mModeStateDuration), @"MModeStateDuration"}];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_prevMModeState), @"prevMModeState"}];
  }

LABEL_19:
  triggerType = self->_triggerType;
  if (triggerType)
  {
    [v3 setObject:triggerType forKey:@"triggerType"];
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

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    siriApp = self->_siriApp;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  isTriggeredByProximityChange = self->_isTriggeredByProximityChange;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  oldLinkState = self->_oldLinkState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  newLinkState = self->_newLinkState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  wifiProximity = self->_wifiProximity;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  ccAssertion = self->_ccAssertion;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  enableCMAS = self->_enableCMAS;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  enableTelephony = self->_enableTelephony;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  wifiRssi = self->_wifiRssi;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  btRssi = self->_btRssi;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  mModeState = self->_mModeState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  mModeStateDuration = self->_mModeStateDuration;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    prevMModeState = self->_prevMModeState;
    PBDataWriterWriteUint32Field();
  }

LABEL_19:
  if (self->_triggerType)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 48) |= 2u;
  }

  if (self->_bundleID)
  {
    [a3 setBundleID:?];
  }

  has = self->_has;
  if ((has & 0x800) != 0)
  {
    *(a3 + 18) = self->_siriApp;
    *(a3 + 48) |= 0x800u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 13) = self->_isTriggeredByProximityChange;
  *(a3 + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 16) = self->_oldLinkState;
  *(a3 + 48) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 15) = self->_newLinkState;
  *(a3 + 48) |= 0x100u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 22) = self->_wifiProximity;
  *(a3 + 48) |= 0x1000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 10) = self->_ccAssertion;
  *(a3 + 48) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 11) = self->_enableCMAS;
  *(a3 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 12) = self->_enableTelephony;
  *(a3 + 48) |= 0x20u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 23) = self->_wifiRssi;
  *(a3 + 48) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 6) = self->_btRssi;
  *(a3 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 14) = self->_mModeState;
  *(a3 + 48) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_17:
    if ((has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  *(a3 + 1) = self->_mModeStateDuration;
  *(a3 + 48) |= 1u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    *(a3 + 17) = self->_prevMModeState;
    *(a3 + 48) |= 0x400u;
  }

LABEL_19:
  if (self->_triggerType)
  {

    [a3 setTriggerType:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 96) |= 2u;
  }

  *(v6 + 32) = [(NSString *)self->_bundleID copyWithZone:a3];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    *(v6 + 72) = self->_siriApp;
    *(v6 + 96) |= 0x800u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 52) = self->_isTriggeredByProximityChange;
  *(v6 + 96) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v6 + 64) = self->_oldLinkState;
  *(v6 + 96) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 60) = self->_newLinkState;
  *(v6 + 96) |= 0x100u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 88) = self->_wifiProximity;
  *(v6 + 96) |= 0x1000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 40) = self->_ccAssertion;
  *(v6 + 96) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v6 + 44) = self->_enableCMAS;
  *(v6 + 96) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v6 + 48) = self->_enableTelephony;
  *(v6 + 96) |= 0x20u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v6 + 92) = self->_wifiRssi;
  *(v6 + 96) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 24) = self->_btRssi;
  *(v6 + 96) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    *(v6 + 8) = self->_mModeStateDuration;
    *(v6 + 96) |= 1u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  *(v6 + 56) = self->_mModeState;
  *(v6 + 96) |= 0x80u;
  has = self->_has;
  if (has)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((has & 0x400) != 0)
  {
LABEL_16:
    *(v6 + 68) = self->_prevMModeState;
    *(v6 + 96) |= 0x400u;
  }

LABEL_17:

  *(v6 + 80) = [(NSString *)self->_triggerType copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 48);
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_77;
      }
    }

    else if ((v7 & 2) != 0)
    {
LABEL_77:
      LOBYTE(v5) = 0;
      return v5;
    }

    bundleID = self->_bundleID;
    if (bundleID | *(a3 + 4))
    {
      v5 = [(NSString *)bundleID isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 48);
    if ((has & 0x800) != 0)
    {
      if ((*(a3 + 48) & 0x800) == 0 || self->_siriApp != *(a3 + 18))
      {
        goto LABEL_77;
      }
    }

    else if ((*(a3 + 48) & 0x800) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_isTriggeredByProximityChange != *(a3 + 13))
      {
        goto LABEL_77;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(a3 + 48) & 0x200) == 0 || self->_oldLinkState != *(a3 + 16))
      {
        goto LABEL_77;
      }
    }

    else if ((*(a3 + 48) & 0x200) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x100) != 0)
    {
      if ((*(a3 + 48) & 0x100) == 0 || self->_newLinkState != *(a3 + 15))
      {
        goto LABEL_77;
      }
    }

    else if ((*(a3 + 48) & 0x100) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x1000) != 0)
    {
      if ((*(a3 + 48) & 0x1000) == 0 || self->_wifiProximity != *(a3 + 22))
      {
        goto LABEL_77;
      }
    }

    else if ((*(a3 + 48) & 0x1000) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_ccAssertion != *(a3 + 10))
      {
        goto LABEL_77;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_enableCMAS != *(a3 + 11))
      {
        goto LABEL_77;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_enableTelephony != *(a3 + 12))
      {
        goto LABEL_77;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x2000) != 0)
    {
      if ((*(a3 + 48) & 0x2000) == 0 || self->_wifiRssi != *(a3 + 23))
      {
        goto LABEL_77;
      }
    }

    else if ((*(a3 + 48) & 0x2000) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_btRssi != *(a3 + 6))
      {
        goto LABEL_77;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_77;
    }

    if ((has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_mModeState != *(a3 + 14))
      {
        goto LABEL_77;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_77;
    }

    if (has)
    {
      if ((v9 & 1) == 0 || self->_mModeStateDuration != *(a3 + 1))
      {
        goto LABEL_77;
      }
    }

    else if (v9)
    {
      goto LABEL_77;
    }

    if ((has & 0x400) != 0)
    {
      if ((*(a3 + 48) & 0x400) == 0 || self->_prevMModeState != *(a3 + 17))
      {
        goto LABEL_77;
      }
    }

    else if ((*(a3 + 48) & 0x400) != 0)
    {
      goto LABEL_77;
    }

    triggerType = self->_triggerType;
    if (triggerType | *(a3 + 10))
    {

      LOBYTE(v5) = [(NSString *)triggerType isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleID hash];
  has = self->_has;
  if ((has & 0x800) != 0)
  {
    v6 = 2654435761 * self->_siriApp;
    if ((has & 0x40) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_isTriggeredByProximityChange;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_oldLinkState;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_newLinkState;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_wifiProximity;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_ccAssertion;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_enableCMAS;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_enableTelephony;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_wifiRssi;
    if ((has & 4) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if ((has & 4) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_btRssi;
    if ((has & 0x80) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_mModeState;
    if (has)
    {
      goto LABEL_16;
    }

LABEL_29:
    v17 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v18 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ [(NSString *)self->_triggerType hash];
  }

LABEL_28:
  v16 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  v17 = 2654435761u * self->_mModeStateDuration;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = 2654435761 * self->_prevMModeState;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ [(NSString *)self->_triggerType hash];
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 48) & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
  }

  if (*(a3 + 4))
  {
    [(AWDWRMLinkStateChange *)self setBundleID:?];
  }

  v5 = *(a3 + 48);
  if ((v5 & 0x800) != 0)
  {
    self->_siriApp = *(a3 + 18);
    *&self->_has |= 0x800u;
    v5 = *(a3 + 48);
    if ((v5 & 0x40) == 0)
    {
LABEL_7:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  self->_isTriggeredByProximityChange = *(a3 + 13);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_oldLinkState = *(a3 + 16);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_newLinkState = *(a3 + 15);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 48);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_wifiProximity = *(a3 + 22);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_ccAssertion = *(a3 + 10);
  *&self->_has |= 8u;
  v5 = *(a3 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_enableCMAS = *(a3 + 11);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_enableTelephony = *(a3 + 12);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 48);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wifiRssi = *(a3 + 23);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_btRssi = *(a3 + 6);
  *&self->_has |= 4u;
  v5 = *(a3 + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_mModeState = *(a3 + 14);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 48);
  if ((v5 & 1) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  self->_mModeStateDuration = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 48) & 0x400) != 0)
  {
LABEL_18:
    self->_prevMModeState = *(a3 + 17);
    *&self->_has |= 0x400u;
  }

LABEL_19:
  if (*(a3 + 10))
  {

    [(AWDWRMLinkStateChange *)self setTriggerType:?];
  }
}

@end