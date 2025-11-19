@interface AWDSiriNetworkAnalyzerRun
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAnalyzingSuccessfulRetry:(BOOL)a3;
- (void)setHasGatewayPingsDropped:(BOOL)a3;
- (void)setHasGatewayPingsSent:(BOOL)a3;
- (void)setHasGatewayStatus:(BOOL)a3;
- (void)setHasInterface:(BOOL)a3;
- (void)setHasIsUserRequest:(BOOL)a3;
- (void)setHasKnownURLLoadDuration:(BOOL)a3;
- (void)setHasSendBufferBytesRemaining:(BOOL)a3;
- (void)setHasSiriSaltURLLoadDuration:(BOOL)a3;
- (void)setHasSiriURLLoadDuration:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasWwanPreferred:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSiriNetworkAnalyzerRun

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

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasInterface:(BOOL)a3
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

- (void)setHasIsUserRequest:(BOOL)a3
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

- (void)setHasAnalyzingSuccessfulRetry:(BOOL)a3
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

- (void)setHasWwanPreferred:(BOOL)a3
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

- (void)setHasSendBufferBytesRemaining:(BOOL)a3
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

- (void)setHasKnownURLLoadDuration:(BOOL)a3
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

- (void)setHasSiriURLLoadDuration:(BOOL)a3
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

- (void)setHasSiriSaltURLLoadDuration:(BOOL)a3
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

- (void)setHasGatewayStatus:(BOOL)a3
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

- (void)setHasGatewayPingsSent:(BOOL)a3
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

- (void)setHasGatewayPingsDropped:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSiriNetworkAnalyzerRun;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSiriNetworkAnalyzerRun description](&v3, sel_description), -[AWDSiriNetworkAnalyzerRun dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_interface), @"interface"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isUserRequest), @"isUserRequest"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_analyzingSuccessfulRetry), @"analyzingSuccessfulRetry"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wwanPreferred), @"wwanPreferred"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sendBufferBytesRemaining), @"sendBufferBytesRemaining"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_knownURLLoadDuration), @"knownURLLoadDuration"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_siriURLLoadDuration), @"siriURLLoadDuration"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_siriSaltURLLoadDuration), @"siriSaltURLLoadDuration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_gatewayStatus), @"gatewayStatus"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayPingsSent), @"gatewayPingsSent"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_14;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_gatewayPingDuration), @"gatewayPingDuration"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 0x20) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gatewayPingsDropped), @"gatewayPingsDropped"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  interface = self->_interface;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  isUserRequest = self->_isUserRequest;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  analyzingSuccessfulRetry = self->_analyzingSuccessfulRetry;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  wwanPreferred = self->_wwanPreferred;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  sendBufferBytesRemaining = self->_sendBufferBytesRemaining;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  knownURLLoadDuration = self->_knownURLLoadDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  siriURLLoadDuration = self->_siriURLLoadDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  siriSaltURLLoadDuration = self->_siriSaltURLLoadDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  gatewayStatus = self->_gatewayStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    gatewayPingsSent = self->_gatewayPingsSent;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  gatewayPingDuration = self->_gatewayPingDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_27:
  gatewayPingsDropped = self->_gatewayPingsDropped;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 15) = self->_interface;
  *(a3 + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 69) = self->_isUserRequest;
  *(a3 + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 68) = self->_analyzingSuccessfulRetry;
  *(a3 + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 70) = self->_wwanPreferred;
  *(a3 + 36) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 16) = self->_sendBufferBytesRemaining;
  *(a3 + 36) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 2) = self->_knownURLLoadDuration;
  *(a3 + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 4) = self->_siriURLLoadDuration;
  *(a3 + 36) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 3) = self->_siriSaltURLLoadDuration;
  *(a3 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 14) = self->_gatewayStatus;
  *(a3 + 36) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 1) = self->_gatewayPingDuration;
  *(a3 + 36) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_27:
    *(a3 + 12) = self->_gatewayPingsDropped;
    *(a3 + 36) |= 0x20u;
    return;
  }

LABEL_26:
  *(a3 + 13) = self->_gatewayPingsSent;
  *(a3 + 36) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_27;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = self->_timestamp;
    *(result + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(result + 15) = self->_interface;
  *(result + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 69) = self->_isUserRequest;
  *(result + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 68) = self->_analyzingSuccessfulRetry;
  *(result + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 70) = self->_wwanPreferred;
  *(result + 36) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 16) = self->_sendBufferBytesRemaining;
  *(result + 36) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 2) = self->_knownURLLoadDuration;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 4) = self->_siriURLLoadDuration;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 3) = self->_siriSaltURLLoadDuration;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 14) = self->_gatewayStatus;
  *(result + 36) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 1) = self->_gatewayPingDuration;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 13) = self->_gatewayPingsSent;
  *(result + 36) |= 0x40u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 12) = self->_gatewayPingsDropped;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 36);
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_timestamp != *(a3 + 5))
    {
      goto LABEL_75;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 36) & 0x100) == 0 || self->_interface != *(a3 + 15))
    {
      goto LABEL_75;
    }
  }

  else if ((*(a3 + 36) & 0x100) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(a3 + 36) & 0x800) == 0)
    {
      goto LABEL_75;
    }

    v8 = *(a3 + 69);
    if (self->_isUserRequest)
    {
      if ((*(a3 + 69) & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else if (*(a3 + 69))
    {
      goto LABEL_75;
    }
  }

  else if ((*(a3 + 36) & 0x800) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 36) & 0x400) == 0)
    {
      goto LABEL_75;
    }

    v9 = *(a3 + 68);
    if (self->_analyzingSuccessfulRetry)
    {
      if ((*(a3 + 68) & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else if (*(a3 + 68))
    {
      goto LABEL_75;
    }
  }

  else if ((*(a3 + 36) & 0x400) != 0)
  {
    goto LABEL_75;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(a3 + 36) & 0x1000) != 0)
    {
      v10 = *(a3 + 70);
      if (self->_wwanPreferred)
      {
        if ((*(a3 + 70) & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      else if (*(a3 + 70))
      {
        goto LABEL_75;
      }

      goto LABEL_18;
    }

LABEL_75:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 36) & 0x1000) != 0)
  {
    goto LABEL_75;
  }

LABEL_18:
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 36) & 0x200) == 0 || self->_sendBufferBytesRemaining != *(a3 + 16))
    {
      goto LABEL_75;
    }
  }

  else if ((*(a3 + 36) & 0x200) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_knownURLLoadDuration != *(a3 + 2))
    {
      goto LABEL_75;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_siriURLLoadDuration != *(a3 + 4))
    {
      goto LABEL_75;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_siriSaltURLLoadDuration != *(a3 + 3))
    {
      goto LABEL_75;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_75;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_gatewayStatus != *(a3 + 14))
    {
      goto LABEL_75;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_75;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_gatewayPingDuration != *(a3 + 1))
    {
      goto LABEL_75;
    }
  }

  else if (v7)
  {
    goto LABEL_75;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_gatewayPingsSent != *(a3 + 13))
    {
      goto LABEL_75;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_75;
  }

  LOBYTE(v5) = (v7 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_gatewayPingsDropped != *(a3 + 12))
    {
      goto LABEL_75;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_interface;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_isUserRequest;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_analyzingSuccessfulRetry;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_wwanPreferred;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_sendBufferBytesRemaining;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_knownURLLoadDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_siriURLLoadDuration;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_siriSaltURLLoadDuration;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_gatewayStatus;
    if (has)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if (has)
  {
LABEL_12:
    v13 = 2654435761u * self->_gatewayPingDuration;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761 * self->_gatewayPingsSent;
  if ((has & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761 * self->_gatewayPingsDropped;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 36);
  if ((v3 & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
    v3 = *(a3 + 36);
    if ((v3 & 0x100) == 0)
    {
LABEL_3:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a3 + 36) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_interface = *(a3 + 15);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 36);
  if ((v3 & 0x800) == 0)
  {
LABEL_4:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_isUserRequest = *(a3 + 69);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 36);
  if ((v3 & 0x400) == 0)
  {
LABEL_5:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_analyzingSuccessfulRetry = *(a3 + 68);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 36);
  if ((v3 & 0x1000) == 0)
  {
LABEL_6:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_wwanPreferred = *(a3 + 70);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 36);
  if ((v3 & 0x200) == 0)
  {
LABEL_7:
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_sendBufferBytesRemaining = *(a3 + 16);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 36);
  if ((v3 & 2) == 0)
  {
LABEL_8:
    if ((v3 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_knownURLLoadDuration = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 36);
  if ((v3 & 8) == 0)
  {
LABEL_9:
    if ((v3 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_siriURLLoadDuration = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 36);
  if ((v3 & 4) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_siriSaltURLLoadDuration = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 36);
  if ((v3 & 0x80) == 0)
  {
LABEL_11:
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_gatewayStatus = *(a3 + 14);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 36);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_gatewayPingDuration = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 36);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_27:
    self->_gatewayPingsDropped = *(a3 + 12);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_26:
  self->_gatewayPingsSent = *(a3 + 13);
  *&self->_has |= 0x40u;
  if ((*(a3 + 36) & 0x20) != 0)
  {
    goto LABEL_27;
  }
}

@end