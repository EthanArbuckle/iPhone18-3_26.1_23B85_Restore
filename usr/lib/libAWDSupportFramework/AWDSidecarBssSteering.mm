@interface AWDSidecarBssSteering
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAttemptStatus:(BOOL)status;
- (void)setHasBssSyncChannel:(BOOL)channel;
- (void)setHasBssSyncChannelFlags:(BOOL)flags;
- (void)setHasCompletionTime:(BOOL)time;
- (void)setHasPeerChannel:(BOOL)channel;
- (void)setHasPeerChannelFlags:(BOOL)flags;
- (void)setHasPolicyCode:(BOOL)code;
- (void)setHasSelfInfraChannel:(BOOL)channel;
- (void)setHasSelfInfraChannelFlags:(BOOL)flags;
- (void)setHasTargetChannel:(BOOL)channel;
- (void)setHasTargetChannelFlags:(BOOL)flags;
- (void)setHasTrafficType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDSidecarBssSteering

- (void)setHasTrafficType:(BOOL)type
{
  if (type)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCompletionTime:(BOOL)time
{
  if (time)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAttemptStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasBssSyncChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPeerChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSelfInfraChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTargetChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasPolicyCode:(BOOL)code
{
  if (code)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPeerChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSelfInfraChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasBssSyncChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTargetChannelFlags:(BOOL)flags
{
  if (flags)
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
  v3.super_class = AWDSidecarBssSteering;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSidecarBssSteering description](&v3, sel_description), -[AWDSidecarBssSteering dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_trafficType), @"trafficType"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_completionTime), @"completionTime"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attemptStatus), @"attemptStatus"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attemptPeerCount), @"attemptPeerCount"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bssSyncChannel), @"bssSyncChannel"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerChannel), @"peerChannel"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfInfraChannel), @"selfInfraChannel"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_targetChannel), @"targetChannel"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_policyCode), @"policyCode"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerChannelFlags), @"peerChannelFlags"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bssSyncChannelFlags), @"bssSyncChannelFlags"}];
    if ((*&self->_has & 0x800) == 0)
    {
      return dictionary;
    }

    goto LABEL_14;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfInfraChannelFlags), @"selfInfraChannelFlags"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 0x800) != 0)
  {
LABEL_14:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_targetChannelFlags), @"targetChannelFlags"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    trafficType = self->_trafficType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  completionTime = self->_completionTime;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  attemptStatus = self->_attemptStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  attemptPeerCount = self->_attemptPeerCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  bssSyncChannel = self->_bssSyncChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  peerChannel = self->_peerChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  selfInfraChannel = self->_selfInfraChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  targetChannel = self->_targetChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  policyCode = self->_policyCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  peerChannelFlags = self->_peerChannelFlags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    bssSyncChannelFlags = self->_bssSyncChannelFlags;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x800) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  selfInfraChannelFlags = self->_selfInfraChannelFlags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((has & 0x800) == 0)
  {
    return;
  }

LABEL_27:
  targetChannelFlags = self->_targetChannelFlags;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(to + 14) = self->_trafficType;
    *(to + 30) |= 0x1000u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_completionTime;
  *(to + 30) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 3) = self->_attemptStatus;
  *(to + 30) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 2) = self->_attemptPeerCount;
  *(to + 30) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 4) = self->_bssSyncChannel;
  *(to + 30) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 7) = self->_peerChannel;
  *(to + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 10) = self->_selfInfraChannel;
  *(to + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 12) = self->_targetChannel;
  *(to + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 9) = self->_policyCode;
  *(to + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 8) = self->_peerChannelFlags;
  *(to + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 11) = self->_selfInfraChannelFlags;
  *(to + 30) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      return;
    }

LABEL_27:
    *(to + 13) = self->_targetChannelFlags;
    *(to + 30) |= 0x800u;
    return;
  }

LABEL_26:
  *(to + 5) = self->_bssSyncChannelFlags;
  *(to + 30) |= 8u;
  if ((*&self->_has & 0x800) != 0)
  {
    goto LABEL_27;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(result + 14) = self->_trafficType;
    *(result + 30) |= 0x1000u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_completionTime;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 3) = self->_attemptStatus;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 2) = self->_attemptPeerCount;
  *(result + 30) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 4) = self->_bssSyncChannel;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 7) = self->_peerChannel;
  *(result + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 10) = self->_selfInfraChannel;
  *(result + 30) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 12) = self->_targetChannel;
  *(result + 30) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 9) = self->_policyCode;
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 8) = self->_peerChannelFlags;
  *(result + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 11) = self->_selfInfraChannelFlags;
  *(result + 30) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 5) = self->_bssSyncChannelFlags;
  *(result + 30) |= 8u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 13) = self->_targetChannelFlags;
  *(result + 30) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 30);
    if ((has & 0x1000) != 0)
    {
      if ((*(equal + 30) & 0x1000) == 0 || self->_trafficType != *(equal + 14))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 30) & 0x1000) != 0)
    {
LABEL_66:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_completionTime != *(equal + 6))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_attemptStatus != *(equal + 3))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_66;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_attemptPeerCount != *(equal + 2))
      {
        goto LABEL_66;
      }
    }

    else if (v7)
    {
      goto LABEL_66;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_bssSyncChannel != *(equal + 4))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_peerChannel != *(equal + 7))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 30) & 0x100) == 0 || self->_selfInfraChannel != *(equal + 10))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 30) & 0x100) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 30) & 0x400) == 0 || self->_targetChannel != *(equal + 12))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 30) & 0x400) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_policyCode != *(equal + 9))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_peerChannelFlags != *(equal + 8))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 30) & 0x200) == 0 || self->_selfInfraChannelFlags != *(equal + 11))
      {
        goto LABEL_66;
      }
    }

    else if ((*(equal + 30) & 0x200) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_bssSyncChannelFlags != *(equal + 5))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_66;
    }

    LOBYTE(v5) = (v7 & 0x800) == 0;
    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 30) & 0x800) == 0 || self->_targetChannelFlags != *(equal + 13))
      {
        goto LABEL_66;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v3 = 2654435761 * self->_trafficType;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_completionTime;
      if ((has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_attemptStatus;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if (has)
  {
LABEL_5:
    v6 = 2654435761 * self->_attemptPeerCount;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_bssSyncChannel;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_peerChannel;
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
    v9 = 2654435761 * self->_selfInfraChannel;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_targetChannel;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_policyCode;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_peerChannelFlags;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_selfInfraChannelFlags;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761 * self->_bssSyncChannelFlags;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761 * self->_targetChannelFlags;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 30);
  if ((v3 & 0x1000) != 0)
  {
    self->_trafficType = *(from + 14);
    *&self->_has |= 0x1000u;
    v3 = *(from + 30);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_completionTime = *(from + 6);
  *&self->_has |= 0x10u;
  v3 = *(from + 30);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_attemptStatus = *(from + 3);
  *&self->_has |= 2u;
  v3 = *(from + 30);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_attemptPeerCount = *(from + 2);
  *&self->_has |= 1u;
  v3 = *(from + 30);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_bssSyncChannel = *(from + 4);
  *&self->_has |= 4u;
  v3 = *(from + 30);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_peerChannel = *(from + 7);
  *&self->_has |= 0x20u;
  v3 = *(from + 30);
  if ((v3 & 0x100) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_selfInfraChannel = *(from + 10);
  *&self->_has |= 0x100u;
  v3 = *(from + 30);
  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_targetChannel = *(from + 12);
  *&self->_has |= 0x400u;
  v3 = *(from + 30);
  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_policyCode = *(from + 9);
  *&self->_has |= 0x80u;
  v3 = *(from + 30);
  if ((v3 & 0x40) == 0)
  {
LABEL_11:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_peerChannelFlags = *(from + 8);
  *&self->_has |= 0x40u;
  v3 = *(from + 30);
  if ((v3 & 0x200) == 0)
  {
LABEL_12:
    if ((v3 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_selfInfraChannelFlags = *(from + 11);
  *&self->_has |= 0x200u;
  v3 = *(from + 30);
  if ((v3 & 8) == 0)
  {
LABEL_13:
    if ((v3 & 0x800) == 0)
    {
      return;
    }

LABEL_27:
    self->_targetChannelFlags = *(from + 13);
    *&self->_has |= 0x800u;
    return;
  }

LABEL_26:
  self->_bssSyncChannelFlags = *(from + 5);
  *&self->_has |= 8u;
  if ((*(from + 30) & 0x800) != 0)
  {
    goto LABEL_27;
  }
}

@end