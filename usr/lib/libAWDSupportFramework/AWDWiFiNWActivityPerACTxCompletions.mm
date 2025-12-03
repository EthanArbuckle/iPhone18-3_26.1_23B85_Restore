@interface AWDWiFiNWActivityPerACTxCompletions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAc:(id)ac;
- (int)ac;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDpsNotifications:(BOOL)notifications;
- (void)setHasDurSinceLastEnqueue:(BOOL)enqueue;
- (void)setHasDurSinceLastEnqueueAtLastCheck:(BOOL)check;
- (void)setHasDurSinceLastFailedComp:(BOOL)comp;
- (void)setHasDurSinceLastSuccessfulComp:(BOOL)comp;
- (void)setHasExpiredComp:(BOOL)comp;
- (void)setHasFailedComp:(BOOL)comp;
- (void)setHasFailedCompletionsAtLastCheck:(BOOL)check;
- (void)setHasNoAckComp:(BOOL)comp;
- (void)setHasOtherErrComp:(BOOL)comp;
- (void)setHasQeuedPackets:(BOOL)packets;
- (void)setHasSinceLastEnqueueHowManyFailed:(BOOL)failed;
- (void)setHasSinceLastEnqueueHowManySuccess:(BOOL)success;
- (void)setHasSinceLastSuccessHowManyFailed:(BOOL)failed;
- (void)setHasSuccess:(BOOL)success;
- (void)setHasSuccessfulCompletionsAtLastCheck:(BOOL)check;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiNWActivityPerACTxCompletions

- (int)ac
{
  if (*&self->_has)
  {
    return self->_ac;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAc:(id)ac
{
  if ([ac isEqualToString:@"Rx"])
  {
    return 0;
  }

  if ([ac isEqualToString:@"Tx"])
  {
    return 1;
  }

  if ([ac isEqualToString:@"TxBK"])
  {
    return 2;
  }

  if ([ac isEqualToString:@"TxBE"])
  {
    return 3;
  }

  if ([ac isEqualToString:@"TxVO"])
  {
    return 4;
  }

  if ([ac isEqualToString:@"TxVI"])
  {
    return 5;
  }

  return 0;
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasDurSinceLastSuccessfulComp:(BOOL)comp
{
  if (comp)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasFailedComp:(BOOL)comp
{
  if (comp)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasDurSinceLastFailedComp:(BOOL)comp
{
  if (comp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasExpiredComp:(BOOL)comp
{
  if (comp)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasNoAckComp:(BOOL)comp
{
  if (comp)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasOtherErrComp:(BOOL)comp
{
  if (comp)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDurSinceLastEnqueue:(BOOL)enqueue
{
  if (enqueue)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasQeuedPackets:(BOOL)packets
{
  if (packets)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasSinceLastEnqueueHowManyFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSinceLastEnqueueHowManySuccess:(BOOL)success
{
  if (success)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSinceLastSuccessHowManyFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasDurSinceLastEnqueueAtLastCheck:(BOOL)check
{
  if (check)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasSuccessfulCompletionsAtLastCheck:(BOOL)check
{
  if (check)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasFailedCompletionsAtLastCheck:(BOOL)check
{
  if (check)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasDpsNotifications:(BOOL)notifications
{
  if (notifications)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityPerACTxCompletions;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityPerACTxCompletions description](&v3, sel_description), -[AWDWiFiNWActivityPerACTxCompletions dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    ac = self->_ac;
    if (ac >= 6)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_ac];
    }

    else
    {
      v6 = off_29EE332E0[ac];
    }

    [dictionary setObject:v6 forKey:@"ac"];
    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_success), @"success"}];
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_8:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_8;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durSinceLastSuccessfulComp), @"durSinceLastSuccessfulComp"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_failedComp), @"failedComp"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durSinceLastFailedComp), @"durSinceLastFailedComp"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expiredComp), @"expiredComp"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noAckComp), @"noAckComp"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_otherErrComp), @"otherErrComp"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durSinceLastEnqueue), @"durSinceLastEnqueue"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_qeuedPackets), @"qeuedPackets"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sinceLastEnqueueHowManyFailed), @"sinceLastEnqueueHowManyFailed"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sinceLastEnqueueHowManySuccess), @"sinceLastEnqueueHowManySuccess"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sinceLastSuccessHowManyFailed), @"sinceLastSuccessHowManyFailed"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durSinceLastEnqueueAtLastCheck), @"durSinceLastEnqueueAtLastCheck"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

LABEL_38:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_failedCompletionsAtLastCheck), @"failedCompletionsAtLastCheck"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_22;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_successfulCompletionsAtLastCheck), @"successfulCompletionsAtLastCheck"}];
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_38;
  }

LABEL_21:
  if ((*&has & 2) != 0)
  {
LABEL_22:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dpsNotifications), @"dpsNotifications"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    ac = self->_ac;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  success = self->_success;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  durSinceLastSuccessfulComp = self->_durSinceLastSuccessfulComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  failedComp = self->_failedComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  durSinceLastFailedComp = self->_durSinceLastFailedComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  expiredComp = self->_expiredComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  noAckComp = self->_noAckComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  otherErrComp = self->_otherErrComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  durSinceLastEnqueue = self->_durSinceLastEnqueue;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  qeuedPackets = self->_qeuedPackets;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  sinceLastEnqueueHowManyFailed = self->_sinceLastEnqueueHowManyFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  sinceLastEnqueueHowManySuccess = self->_sinceLastEnqueueHowManySuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  sinceLastSuccessHowManyFailed = self->_sinceLastSuccessHowManyFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  durSinceLastEnqueueAtLastCheck = self->_durSinceLastEnqueueAtLastCheck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    failedCompletionsAtLastCheck = self->_failedCompletionsAtLastCheck;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_33:
  successfulCompletionsAtLastCheck = self->_successfulCompletionsAtLastCheck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((*&has & 2) == 0)
  {
    return;
  }

LABEL_35:
  dpsNotifications = self->_dpsNotifications;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    *(to + 2) = self->_ac;
    *(to + 19) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 17) = self->_success;
  *(to + 19) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 7) = self->_durSinceLastSuccessfulComp;
  *(to + 19) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 9) = self->_failedComp;
  *(to + 19) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 6) = self->_durSinceLastFailedComp;
  *(to + 19) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 8) = self->_expiredComp;
  *(to + 19) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 11) = self->_noAckComp;
  *(to + 19) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 12) = self->_otherErrComp;
  *(to + 19) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 4) = self->_durSinceLastEnqueue;
  *(to + 19) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 13) = self->_qeuedPackets;
  *(to + 19) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 14) = self->_sinceLastEnqueueHowManyFailed;
  *(to + 19) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 15) = self->_sinceLastEnqueueHowManySuccess;
  *(to + 19) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 16) = self->_sinceLastSuccessHowManyFailed;
  *(to + 19) |= 0x4000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 5) = self->_durSinceLastEnqueueAtLastCheck;
  *(to + 19) |= 8u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 18) = self->_successfulCompletionsAtLastCheck;
  *(to + 19) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      return;
    }

LABEL_35:
    *(to + 3) = self->_dpsNotifications;
    *(to + 19) |= 2u;
    return;
  }

LABEL_34:
  *(to + 10) = self->_failedCompletionsAtLastCheck;
  *(to + 19) |= 0x100u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_35;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 2) = self->_ac;
    *(result + 19) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_success;
  *(result + 19) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 7) = self->_durSinceLastSuccessfulComp;
  *(result + 19) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 9) = self->_failedComp;
  *(result + 19) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 6) = self->_durSinceLastFailedComp;
  *(result + 19) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 8) = self->_expiredComp;
  *(result + 19) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 11) = self->_noAckComp;
  *(result + 19) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 12) = self->_otherErrComp;
  *(result + 19) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 4) = self->_durSinceLastEnqueue;
  *(result + 19) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 13) = self->_qeuedPackets;
  *(result + 19) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 14) = self->_sinceLastEnqueueHowManyFailed;
  *(result + 19) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 15) = self->_sinceLastEnqueueHowManySuccess;
  *(result + 19) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 16) = self->_sinceLastSuccessHowManyFailed;
  *(result + 19) |= 0x4000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 5) = self->_durSinceLastEnqueueAtLastCheck;
  *(result + 19) |= 8u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 18) = self->_successfulCompletionsAtLastCheck;
  *(result + 19) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_35:
  *(result + 10) = self->_failedCompletionsAtLastCheck;
  *(result + 19) |= 0x100u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_18:
  *(result + 3) = self->_dpsNotifications;
  *(result + 19) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 19);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_ac != *(equal + 2))
      {
        goto LABEL_86;
      }
    }

    else if (v7)
    {
LABEL_86:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_success != *(equal + 17))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_durSinceLastSuccessfulComp != *(equal + 7))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_failedComp != *(equal + 9))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_durSinceLastFailedComp != *(equal + 6))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_expiredComp != *(equal + 8))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_noAckComp != *(equal + 11))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_otherErrComp != *(equal + 12))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_durSinceLastEnqueue != *(equal + 4))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_qeuedPackets != *(equal + 13))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_sinceLastEnqueueHowManyFailed != *(equal + 14))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_sinceLastEnqueueHowManySuccess != *(equal + 15))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_sinceLastSuccessHowManyFailed != *(equal + 16))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_durSinceLastEnqueueAtLastCheck != *(equal + 5))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_successfulCompletionsAtLastCheck != *(equal + 18))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_86;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_failedCompletionsAtLastCheck != *(equal + 10))
      {
        goto LABEL_86;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_86;
    }

    LOBYTE(v5) = (*(equal + 19) & 2) == 0;
    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_dpsNotifications != *(equal + 3))
      {
        goto LABEL_86;
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
    v3 = 2654435761 * self->_ac;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_success;
      if ((*&has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_durSinceLastSuccessfulComp;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_failedComp;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_durSinceLastFailedComp;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_expiredComp;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_noAckComp;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_otherErrComp;
    if ((*&has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_durSinceLastEnqueue;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_qeuedPackets;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_sinceLastEnqueueHowManyFailed;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_sinceLastEnqueueHowManySuccess;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_sinceLastSuccessHowManyFailed;
    if ((*&has & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_durSinceLastEnqueueAtLastCheck;
  if ((*&has & 0x10000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_successfulCompletionsAtLastCheck;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x100) != 0)
  {
    v18 = 2654435761 * self->_failedCompletionsAtLastCheck;
    if ((*&has & 2) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v19 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v19 = 2654435761 * self->_dpsNotifications;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 19);
  if (v3)
  {
    self->_ac = *(from + 2);
    *&self->_has |= 1u;
    v3 = *(from + 19);
    if ((v3 & 0x8000) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  self->_success = *(from + 17);
  *&self->_has |= 0x8000u;
  v3 = *(from + 19);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_durSinceLastSuccessfulComp = *(from + 7);
  *&self->_has |= 0x20u;
  v3 = *(from + 19);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_failedComp = *(from + 9);
  *&self->_has |= 0x80u;
  v3 = *(from + 19);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_durSinceLastFailedComp = *(from + 6);
  *&self->_has |= 0x10u;
  v3 = *(from + 19);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_expiredComp = *(from + 8);
  *&self->_has |= 0x40u;
  v3 = *(from + 19);
  if ((v3 & 0x200) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_noAckComp = *(from + 11);
  *&self->_has |= 0x200u;
  v3 = *(from + 19);
  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_otherErrComp = *(from + 12);
  *&self->_has |= 0x400u;
  v3 = *(from + 19);
  if ((v3 & 4) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_durSinceLastEnqueue = *(from + 4);
  *&self->_has |= 4u;
  v3 = *(from + 19);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_qeuedPackets = *(from + 13);
  *&self->_has |= 0x800u;
  v3 = *(from + 19);
  if ((v3 & 0x1000) == 0)
  {
LABEL_12:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_sinceLastEnqueueHowManyFailed = *(from + 14);
  *&self->_has |= 0x1000u;
  v3 = *(from + 19);
  if ((v3 & 0x2000) == 0)
  {
LABEL_13:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_sinceLastEnqueueHowManySuccess = *(from + 15);
  *&self->_has |= 0x2000u;
  v3 = *(from + 19);
  if ((v3 & 0x4000) == 0)
  {
LABEL_14:
    if ((v3 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_sinceLastSuccessHowManyFailed = *(from + 16);
  *&self->_has |= 0x4000u;
  v3 = *(from + 19);
  if ((v3 & 8) == 0)
  {
LABEL_15:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_durSinceLastEnqueueAtLastCheck = *(from + 5);
  *&self->_has |= 8u;
  v3 = *(from + 19);
  if ((v3 & 0x10000) == 0)
  {
LABEL_16:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_successfulCompletionsAtLastCheck = *(from + 18);
  *&self->_has |= 0x10000u;
  v3 = *(from + 19);
  if ((v3 & 0x100) == 0)
  {
LABEL_17:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_35:
    self->_dpsNotifications = *(from + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_34:
  self->_failedCompletionsAtLastCheck = *(from + 10);
  *&self->_has |= 0x100u;
  if ((*(from + 19) & 2) != 0)
  {
    goto LABEL_35;
  }
}

@end