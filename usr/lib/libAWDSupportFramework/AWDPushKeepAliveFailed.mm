@interface AWDPushKeepAliveFailed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasCurrentGrowthStage:(BOOL)a3;
- (void)setHasDualChannelState:(BOOL)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasKeepAliveVersion:(BOOL)a3;
- (void)setHasLastKeepAliveInterval:(BOOL)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasTimeSinceConnected:(BOOL)a3;
- (void)setHasTimeSinceLastSuccessfulKeepAlive:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPushKeepAliveFailed

- (void)dealloc
{
  [(AWDPushKeepAliveFailed *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDPushKeepAliveFailed;
  [(AWDPushKeepAliveFailed *)&v3 dealloc];
}

- (void)setHasConnectionType:(BOOL)a3
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

- (void)setHasLinkQuality:(BOOL)a3
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

- (void)setHasError:(BOOL)a3
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

- (void)setHasDualChannelState:(BOOL)a3
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

- (void)setHasKeepAliveVersion:(BOOL)a3
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

- (void)setHasTimeSinceLastSuccessfulKeepAlive:(BOOL)a3
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

- (void)setHasLastKeepAliveInterval:(BOOL)a3
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

- (void)setHasTimeSinceConnected:(BOOL)a3
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

- (void)setHasCurrentGrowthStage:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPushKeepAliveFailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushKeepAliveFailed description](&v3, sel_description), -[AWDPushKeepAliveFailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_error), @"error"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dualChannelState), @"dualChannelState"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_keepAliveVersion), @"keepAliveVersion"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeSinceLastSuccessfulKeepAlive), @"timeSinceLastSuccessfulKeepAlive"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeSinceConnected), @"timeSinceConnected"}];
    if ((*&self->_has & 4) == 0)
    {
      return v4;
    }

    goto LABEL_13;
  }

LABEL_22:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lastKeepAliveInterval), @"lastKeepAliveInterval"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_currentGrowthStage), @"currentGrowthStage"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  error = self->_error;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  dualChannelState = self->_dualChannelState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  keepAliveVersion = self->_keepAliveVersion;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  timeSinceLastSuccessfulKeepAlive = self->_timeSinceLastSuccessfulKeepAlive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    timeSinceConnected = self->_timeSinceConnected;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  lastKeepAliveInterval = self->_lastKeepAliveInterval;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_23:
  currentGrowthStage = self->_currentGrowthStage;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 30) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 4) = self->_connectionType;
  *(a3 + 30) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 12) = self->_linkQuality;
  *(a3 + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 7) = self->_error;
  *(a3 + 30) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 6) = self->_dualChannelState;
  *(a3 + 30) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 10) = self->_keepAliveVersion;
  *(a3 + 30) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 14) = self->_timeSinceLastSuccessfulKeepAlive;
  *(a3 + 30) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 11) = self->_lastKeepAliveInterval;
  *(a3 + 30) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_23:
  *(a3 + 13) = self->_timeSinceConnected;
  *(a3 + 30) |= 0x100u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_13:
  *(a3 + 5) = self->_currentGrowthStage;
  *(a3 + 30) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 32) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_connectionType;
  *(v5 + 60) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 48) = self->_linkQuality;
  *(v5 + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 28) = self->_error;
  *(v5 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 24) = self->_dualChannelState;
  *(v5 + 60) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 40) = self->_keepAliveVersion;
  *(v5 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 56) = self->_timeSinceLastSuccessfulKeepAlive;
  *(v5 + 60) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    *(v5 + 52) = self->_timeSinceConnected;
    *(v5 + 60) |= 0x100u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + 44) = self->_lastKeepAliveInterval;
  *(v5 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    *(v5 + 20) = self->_currentGrowthStage;
    *(v5 + 60) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(a3 + 4)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(a3 + 30);
      if (has)
      {
        if ((v8 & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_53;
        }
      }

      else if (v8)
      {
LABEL_53:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_connectionType != *(a3 + 4))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 2) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_linkQuality != *(a3 + 12))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_error != *(a3 + 7))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_dualChannelState != *(a3 + 6))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_keepAliveVersion != *(a3 + 10))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_53;
      }

      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(a3 + 30) & 0x200) == 0 || self->_timeSinceLastSuccessfulKeepAlive != *(a3 + 14))
        {
          goto LABEL_53;
        }
      }

      else if ((*(a3 + 30) & 0x200) != 0)
      {
        goto LABEL_53;
      }

      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_lastKeepAliveInterval != *(a3 + 11))
        {
          goto LABEL_53;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        goto LABEL_53;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(a3 + 30) & 0x100) == 0 || self->_timeSinceConnected != *(a3 + 13))
        {
          goto LABEL_53;
        }
      }

      else if ((*(a3 + 30) & 0x100) != 0)
      {
        goto LABEL_53;
      }

      LOBYTE(v5) = (v8 & 4) == 0;
      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_currentGrowthStage != *(a3 + 5))
        {
          goto LABEL_53;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_guid hash];
  has = self->_has;
  if (has)
  {
    v5 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_connectionType;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_linkQuality;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_error;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_dualChannelState;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_keepAliveVersion;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_timeSinceLastSuccessfulKeepAlive;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_lastKeepAliveInterval;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v14 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_19:
  v12 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v13 = 2654435761 * self->_timeSinceConnected;
  if ((has & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v14 = 2654435761 * self->_currentGrowthStage;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 4))
  {
    [(AWDPushKeepAliveFailed *)self setGuid:?];
  }

  v5 = *(a3 + 30);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 30);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_connectionType = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_linkQuality = *(a3 + 12);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_error = *(a3 + 7);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 30);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_dualChannelState = *(a3 + 6);
  *&self->_has |= 8u;
  v5 = *(a3 + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_keepAliveVersion = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_timeSinceLastSuccessfulKeepAlive = *(a3 + 14);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_lastKeepAliveInterval = *(a3 + 11);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_23:
  self->_timeSinceConnected = *(a3 + 13);
  *&self->_has |= 0x100u;
  if ((*(a3 + 30) & 4) == 0)
  {
    return;
  }

LABEL_13:
  self->_currentGrowthStage = *(a3 + 5);
  *&self->_has |= 4u;
}

@end