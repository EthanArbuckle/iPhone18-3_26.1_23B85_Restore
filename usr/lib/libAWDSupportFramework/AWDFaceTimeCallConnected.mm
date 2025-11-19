@interface AWDFaceTimeCallConnected
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectDuration:(BOOL)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasCurrentNatType:(BOOL)a3;
- (void)setHasIsVideo:(BOOL)a3;
- (void)setHasLocalNetworkConnection:(BOOL)a3;
- (void)setHasOnLockScreen:(BOOL)a3;
- (void)setHasRelayConnectDuration:(BOOL)a3;
- (void)setHasRemoteNatType:(BOOL)a3;
- (void)setHasRemoteNetworkConnection:(BOOL)a3;
- (void)setHasUsesRelay:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDFaceTimeCallConnected

- (void)dealloc
{
  [(AWDFaceTimeCallConnected *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallConnected;
  [(AWDFaceTimeCallConnected *)&v3 dealloc];
}

- (void)setHasConnectDuration:(BOOL)a3
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

- (void)setHasRemoteNetworkConnection:(BOOL)a3
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

- (void)setHasLocalNetworkConnection:(BOOL)a3
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

- (void)setHasConnectionType:(BOOL)a3
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

- (void)setHasUsesRelay:(BOOL)a3
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

- (void)setHasCurrentNatType:(BOOL)a3
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

- (void)setHasRemoteNatType:(BOOL)a3
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

- (void)setHasRelayConnectDuration:(BOOL)a3
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

- (void)setHasIsVideo:(BOOL)a3
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

- (void)setHasOnLockScreen:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDFaceTimeCallConnected;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDFaceTimeCallConnected description](&v3, sel_description), -[AWDFaceTimeCallConnected dictionaryRepresentation](self, "dictionaryRepresentation")];
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
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectDuration), @"connectDuration"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteNetworkConnection), @"remoteNetworkConnection"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_localNetworkConnection), @"localNetworkConnection"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usesRelay), @"usesRelay"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_currentNatType), @"currentNatType"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteNatType), @"remoteNatType"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isVideo), @"isVideo"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return v4;
    }

    goto LABEL_14;
  }

LABEL_24:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_relayConnectDuration), @"relayConnectDuration"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  if ((has & 0x40) != 0)
  {
LABEL_14:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_onLockScreen), @"onLockScreen"}];
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
      if ((has & 0x200) == 0)
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

  connectDuration = self->_connectDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  remoteNetworkConnection = self->_remoteNetworkConnection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  localNetworkConnection = self->_localNetworkConnection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  usesRelay = self->_usesRelay;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  currentNatType = self->_currentNatType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  remoteNatType = self->_remoteNatType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_24:
    isVideo = self->_isVideo;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  relayConnectDuration = self->_relayConnectDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_25:
  onLockScreen = self->_onLockScreen;

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
    *(a3 + 34) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 4) = self->_connectDuration;
  *(a3 + 34) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 15) = self->_remoteNetworkConnection;
  *(a3 + 34) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 11) = self->_localNetworkConnection;
  *(a3 + 34) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 5) = self->_connectionType;
  *(a3 + 34) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 16) = self->_usesRelay;
  *(a3 + 34) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 6) = self->_currentNatType;
  *(a3 + 34) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 14) = self->_remoteNatType;
  *(a3 + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 13) = self->_relayConnectDuration;
  *(a3 + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_25:
  *(a3 + 10) = self->_isVideo;
  *(a3 + 34) |= 0x10u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_14:
  *(a3 + 12) = self->_onLockScreen;
  *(a3 + 34) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 32) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 68) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_connectDuration;
  *(v5 + 68) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 60) = self->_remoteNetworkConnection;
  *(v5 + 68) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 44) = self->_localNetworkConnection;
  *(v5 + 68) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 20) = self->_connectionType;
  *(v5 + 68) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 64) = self->_usesRelay;
  *(v5 + 68) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 24) = self->_currentNatType;
  *(v5 + 68) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 56) = self->_remoteNatType;
  *(v5 + 68) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    *(v5 + 40) = self->_isVideo;
    *(v5 + 68) |= 0x10u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v5;
    }

    goto LABEL_12;
  }

LABEL_22:
  *(v5 + 52) = self->_relayConnectDuration;
  *(v5 + 68) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((has & 0x40) != 0)
  {
LABEL_12:
    *(v5 + 48) = self->_onLockScreen;
    *(v5 + 68) |= 0x40u;
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
      v8 = *(a3 + 34);
      if (has)
      {
        if ((v8 & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_58;
        }
      }

      else if (v8)
      {
LABEL_58:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_connectDuration != *(a3 + 4))
        {
          goto LABEL_58;
        }
      }

      else if ((v8 & 2) != 0)
      {
        goto LABEL_58;
      }

      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(a3 + 34) & 0x200) == 0 || self->_remoteNetworkConnection != *(a3 + 15))
        {
          goto LABEL_58;
        }
      }

      else if ((*(a3 + 34) & 0x200) != 0)
      {
        goto LABEL_58;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_localNetworkConnection != *(a3 + 11))
        {
          goto LABEL_58;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_58;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_connectionType != *(a3 + 5))
        {
          goto LABEL_58;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_58;
      }

      if ((*&self->_has & 0x400) != 0)
      {
        if ((*(a3 + 34) & 0x400) == 0 || self->_usesRelay != *(a3 + 16))
        {
          goto LABEL_58;
        }
      }

      else if ((*(a3 + 34) & 0x400) != 0)
      {
        goto LABEL_58;
      }

      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_currentNatType != *(a3 + 6))
        {
          goto LABEL_58;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_58;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(a3 + 34) & 0x100) == 0 || self->_remoteNatType != *(a3 + 14))
        {
          goto LABEL_58;
        }
      }

      else if ((*(a3 + 34) & 0x100) != 0)
      {
        goto LABEL_58;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_relayConnectDuration != *(a3 + 13))
        {
          goto LABEL_58;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_58;
      }

      if ((has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_isVideo != *(a3 + 10))
        {
          goto LABEL_58;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_58;
      }

      LOBYTE(v5) = (v8 & 0x40) == 0;
      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_onLockScreen != *(a3 + 12))
        {
          goto LABEL_58;
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
      v6 = 2654435761 * self->_connectDuration;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
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
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_remoteNetworkConnection;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_localNetworkConnection;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_connectionType;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_usesRelay;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_currentNatType;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_remoteNatType;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_relayConnectDuration;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v14 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v15 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_21:
  v13 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = 2654435761 * self->_isVideo;
  if ((has & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v15 = 2654435761 * self->_onLockScreen;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 4))
  {
    [(AWDFaceTimeCallConnected *)self setGuid:?];
  }

  v5 = *(a3 + 34);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 34);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_connectDuration = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_remoteNetworkConnection = *(a3 + 15);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_localNetworkConnection = *(a3 + 11);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 34);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_connectionType = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_usesRelay = *(a3 + 16);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 34);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_currentNatType = *(a3 + 6);
  *&self->_has |= 8u;
  v5 = *(a3 + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_remoteNatType = *(a3 + 14);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_relayConnectDuration = *(a3 + 13);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_25:
  self->_isVideo = *(a3 + 10);
  *&self->_has |= 0x10u;
  if ((*(a3 + 34) & 0x40) == 0)
  {
    return;
  }

LABEL_14:
  self->_onLockScreen = *(a3 + 12);
  *&self->_has |= 0x40u;
}

@end