@interface AWDIDSDeviceConnectionDurationEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasClientInitToDaemonOpenSocket:(BOOL)a3;
- (void)setHasClientOpenSocketHandlerToIncomingFirstPacket:(BOOL)a3;
- (void)setHasConnectionInitToIncomingFirstPacket:(BOOL)a3;
- (void)setHasDaemonCompletionHandlerToClientOpenSocketCompletion:(BOOL)a3;
- (void)setHasDaemonCompletionHandlerToIncomingFirstPacket:(BOOL)a3;
- (void)setHasDaemonOpenSocketToDaemonCompletionHandler:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSDeviceConnectionDurationEvent

- (void)dealloc
{
  [(AWDIDSDeviceConnectionDurationEvent *)self setServiceName:0];
  v3.receiver = self;
  v3.super_class = AWDIDSDeviceConnectionDurationEvent;
  [(AWDIDSDeviceConnectionDurationEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasClientInitToDaemonOpenSocket:(BOOL)a3
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

- (void)setHasClientOpenSocketHandlerToIncomingFirstPacket:(BOOL)a3
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

- (void)setHasDaemonOpenSocketToDaemonCompletionHandler:(BOOL)a3
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

- (void)setHasDaemonCompletionHandlerToClientOpenSocketCompletion:(BOOL)a3
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

- (void)setHasDaemonCompletionHandlerToIncomingFirstPacket:(BOOL)a3
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

- (void)setHasConnectionInitToIncomingFirstPacket:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSDeviceConnectionDurationEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSDeviceConnectionDurationEvent description](&v3, sel_description), -[AWDIDSDeviceConnectionDurationEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_success), @"success"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_clientInitToDaemonOpenSocket), @"clientInitToDaemonOpenSocket"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_clientInitToClientOpenSocketHandler), @"clientInitToClientOpenSocketHandler"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_clientOpenSocketHandlerToIncomingFirstPacket), @"clientOpenSocketHandlerToIncomingFirstPacket"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_daemonOpenSocketToDaemonCompletionHandler), @"daemonOpenSocketToDaemonCompletionHandler"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_daemonCompletionHandlerToIncomingFirstPacket), @"daemonCompletionHandlerToIncomingFirstPacket"}];
    if ((*&self->_has & 8) == 0)
    {
      return v3;
    }

    goto LABEL_13;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_daemonCompletionHandlerToClientOpenSocketCompletion), @"daemonCompletionHandlerToClientOpenSocketCompletion"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((has & 8) != 0)
  {
LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionInitToIncomingFirstPacket), @"connectionInitToIncomingFirstPacket"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 0x80) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  clientInitToDaemonOpenSocket = self->_clientInitToDaemonOpenSocket;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  clientInitToClientOpenSocketHandler = self->_clientInitToClientOpenSocketHandler;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  clientOpenSocketHandlerToIncomingFirstPacket = self->_clientOpenSocketHandlerToIncomingFirstPacket;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  daemonOpenSocketToDaemonCompletionHandler = self->_daemonOpenSocketToDaemonCompletionHandler;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    daemonCompletionHandlerToIncomingFirstPacket = self->_daemonCompletionHandlerToIncomingFirstPacket;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_19:
  daemonCompletionHandlerToClientOpenSocketCompletion = self->_daemonCompletionHandlerToClientOpenSocketCompletion;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_21:
  connectionInitToIncomingFirstPacket = self->_connectionInitToIncomingFirstPacket;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x80) != 0)
  {
    *(a3 + 8) = self->_timestamp;
    *(a3 + 42) |= 0x80u;
  }

  if (self->_serviceName)
  {
    [a3 setServiceName:?];
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(a3 + 80) = self->_success;
    *(a3 + 42) |= 0x100u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 2) = self->_clientInitToDaemonOpenSocket;
  *(a3 + 42) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 1) = self->_clientInitToClientOpenSocketHandler;
  *(a3 + 42) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 3) = self->_clientOpenSocketHandlerToIncomingFirstPacket;
  *(a3 + 42) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 7) = self->_daemonOpenSocketToDaemonCompletionHandler;
  *(a3 + 42) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 5) = self->_daemonCompletionHandlerToClientOpenSocketCompletion;
  *(a3 + 42) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_21:
  *(a3 + 6) = self->_daemonCompletionHandlerToIncomingFirstPacket;
  *(a3 + 42) |= 0x20u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_13:
  *(a3 + 4) = self->_connectionInitToIncomingFirstPacket;
  *(a3 + 42) |= 8u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x80) != 0)
  {
    *(v5 + 64) = self->_timestamp;
    *(v5 + 84) |= 0x80u;
  }

  *(v6 + 72) = [(NSString *)self->_serviceName copyWithZone:a3];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v6 + 80) = self->_success;
    *(v6 + 84) |= 0x100u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_clientInitToDaemonOpenSocket;
  *(v6 + 84) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 8) = self->_clientInitToClientOpenSocketHandler;
  *(v6 + 84) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v6 + 24) = self->_clientOpenSocketHandlerToIncomingFirstPacket;
  *(v6 + 84) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v6 + 56) = self->_daemonOpenSocketToDaemonCompletionHandler;
  *(v6 + 84) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    *(v6 + 48) = self->_daemonCompletionHandlerToIncomingFirstPacket;
    *(v6 + 84) |= 0x20u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v6 + 40) = self->_daemonCompletionHandlerToClientOpenSocketCompletion;
  *(v6 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((has & 8) != 0)
  {
LABEL_11:
    *(v6 + 32) = self->_connectionInitToIncomingFirstPacket;
    *(v6 + 84) |= 8u;
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
  v7 = *(a3 + 42);
  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_timestamp != *(a3 + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  serviceName = self->_serviceName;
  if (serviceName | *(a3 + 9))
  {
    v5 = [(NSString *)serviceName isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v9 = *(a3 + 42);
  if ((has & 0x100) != 0)
  {
    if ((*(a3 + 42) & 0x100) != 0)
    {
      v10 = *(a3 + 80);
      if (self->_success)
      {
        if ((*(a3 + 80) & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else if (*(a3 + 80))
      {
        goto LABEL_52;
      }

      goto LABEL_12;
    }

LABEL_52:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 42) & 0x100) != 0)
  {
    goto LABEL_52;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_clientInitToDaemonOpenSocket != *(a3 + 2))
    {
      goto LABEL_52;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_52;
  }

  if (has)
  {
    if ((v9 & 1) == 0 || self->_clientInitToClientOpenSocketHandler != *(a3 + 1))
    {
      goto LABEL_52;
    }
  }

  else if (v9)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_clientOpenSocketHandlerToIncomingFirstPacket != *(a3 + 3))
    {
      goto LABEL_52;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_daemonOpenSocketToDaemonCompletionHandler != *(a3 + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_daemonCompletionHandlerToClientOpenSocketCompletion != *(a3 + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_daemonCompletionHandlerToIncomingFirstPacket != *(a3 + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  LOBYTE(v5) = (v9 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_connectionInitToIncomingFirstPacket != *(a3 + 4))
    {
      goto LABEL_52;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x80) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_serviceName hash];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v6 = 2654435761 * self->_success;
    if ((has & 2) != 0)
    {
LABEL_6:
      v7 = 2654435761u * self->_clientInitToDaemonOpenSocket;
      if (has)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if (has)
  {
LABEL_7:
    v8 = 2654435761u * self->_clientInitToClientOpenSocketHandler;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_clientOpenSocketHandlerToIncomingFirstPacket;
    if ((has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_daemonOpenSocketToDaemonCompletionHandler;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_daemonCompletionHandlerToClientOpenSocketCompletion;
    if ((has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v13 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_18:
  v11 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = 2654435761u * self->_daemonCompletionHandlerToIncomingFirstPacket;
  if ((has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v13 = 2654435761u * self->_connectionInitToIncomingFirstPacket;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 42) & 0x80) != 0)
  {
    self->_timestamp = *(a3 + 8);
    *&self->_has |= 0x80u;
  }

  if (*(a3 + 9))
  {
    [(AWDIDSDeviceConnectionDurationEvent *)self setServiceName:?];
  }

  v5 = *(a3 + 42);
  if ((v5 & 0x100) != 0)
  {
    self->_success = *(a3 + 80);
    *&self->_has |= 0x100u;
    v5 = *(a3 + 42);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_clientInitToDaemonOpenSocket = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 42);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_clientInitToClientOpenSocketHandler = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 42);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_clientOpenSocketHandlerToIncomingFirstPacket = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 42);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_daemonOpenSocketToDaemonCompletionHandler = *(a3 + 7);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 42);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_daemonCompletionHandlerToClientOpenSocketCompletion = *(a3 + 5);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 42);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_21:
  self->_daemonCompletionHandlerToIncomingFirstPacket = *(a3 + 6);
  *&self->_has |= 0x20u;
  if ((*(a3 + 42) & 8) == 0)
  {
    return;
  }

LABEL_13:
  self->_connectionInitToIncomingFirstPacket = *(a3 + 4);
  *&self->_has |= 8u;
}

@end