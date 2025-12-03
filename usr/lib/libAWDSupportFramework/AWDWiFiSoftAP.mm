@interface AWDWiFiSoftAP
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAppleDeviceConnectCount:(BOOL)count;
- (void)setHasAppleDeviceDisconnectCount:(BOOL)count;
- (void)setHasBringUpMethod:(BOOL)method;
- (void)setHasChannel:(BOOL)channel;
- (void)setHasFamilyDevice:(BOOL)device;
- (void)setHasMisToSoftAPActiveTimeInMilliseconds:(BOOL)milliseconds;
- (void)setHasOtherDeviceConnectCount:(BOOL)count;
- (void)setHasOtherDeviceDisconnectCount:(BOOL)count;
- (void)setHasReasonCode:(BOOL)code;
- (void)setHasSecurityTypes:(BOOL)types;
- (void)setHasSessionDuration:(BOOL)duration;
- (void)setHasSsidChanged:(BOOL)changed;
- (void)setHasTeardownReason:(BOOL)reason;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiSoftAP

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasMisToSoftAPActiveTimeInMilliseconds:(BOOL)milliseconds
{
  if (milliseconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasBringUpMethod:(BOOL)method
{
  if (method)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasReasonCode:(BOOL)code
{
  if (code)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTeardownReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasSessionDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAppleDeviceConnectCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasOtherDeviceConnectCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasAppleDeviceDisconnectCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasOtherDeviceDisconnectCount:(BOOL)count
{
  if (count)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSsidChanged:(BOOL)changed
{
  if (changed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasFamilyDevice:(BOOL)device
{
  if (device)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasSecurityTypes:(BOOL)types
{
  if (types)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiSoftAP;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiSoftAP description](&v3, sel_description), -[AWDWiFiSoftAP dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_misToSoftAPActiveTimeInMilliseconds), @"misToSoftAPActiveTimeInMilliseconds"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bringUpMethod), @"bringUpMethod"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reasonCode), @"reasonCode"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_teardownReason), @"teardownReason"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sessionDuration), @"sessionDuration"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_appleDeviceConnectCount), @"appleDeviceConnectCount"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_otherDeviceConnectCount), @"otherDeviceConnectCount"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_appleDeviceDisconnectCount), @"appleDeviceDisconnectCount"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_otherDeviceDisconnectCount), @"otherDeviceDisconnectCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ssidChanged), @"ssidChanged"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowPowerModeDuration), @"lowPowerModeDuration"}];
    if ((*&self->_has & 0x800) == 0)
    {
      return dictionary;
    }

    goto LABEL_16;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_familyDevice), @"familyDevice"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((has & 0x800) != 0)
  {
LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityTypes), @"securityTypes"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  misToSoftAPActiveTimeInMilliseconds = self->_misToSoftAPActiveTimeInMilliseconds;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  bringUpMethod = self->_bringUpMethod;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  reasonCode = self->_reasonCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  teardownReason = self->_teardownReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  sessionDuration = self->_sessionDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  appleDeviceConnectCount = self->_appleDeviceConnectCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  otherDeviceConnectCount = self->_otherDeviceConnectCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  appleDeviceDisconnectCount = self->_appleDeviceDisconnectCount;
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
  otherDeviceDisconnectCount = self->_otherDeviceDisconnectCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  channel = self->_channel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  ssidChanged = self->_ssidChanged;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    lowPowerModeDuration = self->_lowPowerModeDuration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x800) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_29:
  familyDevice = self->_familyDevice;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if (has)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((has & 0x800) == 0)
  {
    return;
  }

LABEL_31:
  securityTypes = self->_securityTypes;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 4) = self->_timestamp;
    *(to + 42) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_misToSoftAPActiveTimeInMilliseconds;
  *(to + 42) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 12) = self->_bringUpMethod;
  *(to + 42) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 16) = self->_reasonCode;
  *(to + 42) |= 0x400u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 19) = self->_teardownReason;
  *(to + 42) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 3) = self->_sessionDuration;
  *(to + 42) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 10) = self->_appleDeviceConnectCount;
  *(to + 42) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 14) = self->_otherDeviceConnectCount;
  *(to + 42) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 11) = self->_appleDeviceDisconnectCount;
  *(to + 42) |= 0x20u;
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
  *(to + 15) = self->_otherDeviceDisconnectCount;
  *(to + 42) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 13) = self->_channel;
  *(to + 42) |= 0x80u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 18) = self->_ssidChanged;
  *(to + 42) |= 0x1000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 80) = self->_familyDevice;
  *(to + 42) |= 0x4000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_15:
    if ((has & 0x800) == 0)
    {
      return;
    }

LABEL_31:
    *(to + 17) = self->_securityTypes;
    *(to + 42) |= 0x800u;
    return;
  }

LABEL_30:
  *(to + 1) = self->_lowPowerModeDuration;
  *(to + 42) |= 1u;
  if ((*&self->_has & 0x800) != 0)
  {
    goto LABEL_31;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = self->_timestamp;
    *(result + 42) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_misToSoftAPActiveTimeInMilliseconds;
  *(result + 42) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 12) = self->_bringUpMethod;
  *(result + 42) |= 0x40u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 16) = self->_reasonCode;
  *(result + 42) |= 0x400u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 19) = self->_teardownReason;
  *(result + 42) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 3) = self->_sessionDuration;
  *(result + 42) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 10) = self->_appleDeviceConnectCount;
  *(result + 42) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 14) = self->_otherDeviceConnectCount;
  *(result + 42) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 11) = self->_appleDeviceDisconnectCount;
  *(result + 42) |= 0x20u;
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
  *(result + 15) = self->_otherDeviceDisconnectCount;
  *(result + 42) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 13) = self->_channel;
  *(result + 42) |= 0x80u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 18) = self->_ssidChanged;
  *(result + 42) |= 0x1000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 80) = self->_familyDevice;
  *(result + 42) |= 0x4000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_15:
    if ((has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_16;
  }

LABEL_31:
  *(result + 1) = self->_lowPowerModeDuration;
  *(result + 42) |= 1u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_16:
  *(result + 17) = self->_securityTypes;
  *(result + 42) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 42);
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_timestamp != *(equal + 4))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_misToSoftAPActiveTimeInMilliseconds != *(equal + 2))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_bringUpMethod != *(equal + 12))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equal + 42) & 0x400) == 0 || self->_reasonCode != *(equal + 16))
    {
      goto LABEL_78;
    }
  }

  else if ((*(equal + 42) & 0x400) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equal + 42) & 0x2000) == 0 || self->_teardownReason != *(equal + 19))
    {
      goto LABEL_78;
    }
  }

  else if ((*(equal + 42) & 0x2000) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_sessionDuration != *(equal + 3))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_appleDeviceConnectCount != *(equal + 10))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equal + 42) & 0x100) == 0 || self->_otherDeviceConnectCount != *(equal + 14))
    {
      goto LABEL_78;
    }
  }

  else if ((*(equal + 42) & 0x100) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_appleDeviceDisconnectCount != *(equal + 11))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equal + 42) & 0x200) == 0 || self->_otherDeviceDisconnectCount != *(equal + 15))
    {
      goto LABEL_78;
    }
  }

  else if ((*(equal + 42) & 0x200) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_channel != *(equal + 13))
    {
      goto LABEL_78;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equal + 42) & 0x1000) == 0 || self->_ssidChanged != *(equal + 18))
    {
      goto LABEL_78;
    }
  }

  else if ((*(equal + 42) & 0x1000) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x4000) == 0)
  {
    if ((*(equal + 42) & 0x4000) == 0)
    {
      goto LABEL_64;
    }

LABEL_78:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 42) & 0x4000) == 0)
  {
    goto LABEL_78;
  }

  v8 = *(equal + 80);
  if (self->_familyDevice)
  {
    if ((*(equal + 80) & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_64;
  }

  if (*(equal + 80))
  {
    goto LABEL_78;
  }

LABEL_64:
  if (has)
  {
    if ((v7 & 1) == 0 || self->_lowPowerModeDuration != *(equal + 1))
    {
      goto LABEL_78;
    }
  }

  else if (v7)
  {
    goto LABEL_78;
  }

  LOBYTE(v5) = (v7 & 0x800) == 0;
  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equal + 42) & 0x800) == 0 || self->_securityTypes != *(equal + 17))
    {
      goto LABEL_78;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_misToSoftAPActiveTimeInMilliseconds;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_bringUpMethod;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_reasonCode;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_teardownReason;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_sessionDuration;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_appleDeviceConnectCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_otherDeviceConnectCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_appleDeviceDisconnectCount;
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
    v12 = 2654435761 * self->_otherDeviceDisconnectCount;
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
    v13 = 2654435761 * self->_channel;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_ssidChanged;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_familyDevice;
    if (has)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v17 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_29:
  v15 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761u * self->_lowPowerModeDuration;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v17 = 2654435761 * self->_securityTypes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 42);
  if ((v3 & 8) != 0)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 8u;
    v3 = *(from + 42);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_misToSoftAPActiveTimeInMilliseconds = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 42);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_bringUpMethod = *(from + 12);
  *&self->_has |= 0x40u;
  v3 = *(from + 42);
  if ((v3 & 0x400) == 0)
  {
LABEL_5:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_reasonCode = *(from + 16);
  *&self->_has |= 0x400u;
  v3 = *(from + 42);
  if ((v3 & 0x2000) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_teardownReason = *(from + 19);
  *&self->_has |= 0x2000u;
  v3 = *(from + 42);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_sessionDuration = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 42);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_appleDeviceConnectCount = *(from + 10);
  *&self->_has |= 0x10u;
  v3 = *(from + 42);
  if ((v3 & 0x100) == 0)
  {
LABEL_9:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_otherDeviceConnectCount = *(from + 14);
  *&self->_has |= 0x100u;
  v3 = *(from + 42);
  if ((v3 & 0x20) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_appleDeviceDisconnectCount = *(from + 11);
  *&self->_has |= 0x20u;
  v3 = *(from + 42);
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
  self->_otherDeviceDisconnectCount = *(from + 15);
  *&self->_has |= 0x200u;
  v3 = *(from + 42);
  if ((v3 & 0x80) == 0)
  {
LABEL_12:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_channel = *(from + 13);
  *&self->_has |= 0x80u;
  v3 = *(from + 42);
  if ((v3 & 0x1000) == 0)
  {
LABEL_13:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_ssidChanged = *(from + 18);
  *&self->_has |= 0x1000u;
  v3 = *(from + 42);
  if ((v3 & 0x4000) == 0)
  {
LABEL_14:
    if ((v3 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_familyDevice = *(from + 80);
  *&self->_has |= 0x4000u;
  v3 = *(from + 42);
  if ((v3 & 1) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      return;
    }

LABEL_31:
    self->_securityTypes = *(from + 17);
    *&self->_has |= 0x800u;
    return;
  }

LABEL_30:
  self->_lowPowerModeDuration = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 42) & 0x800) != 0)
  {
    goto LABEL_31;
  }
}

@end