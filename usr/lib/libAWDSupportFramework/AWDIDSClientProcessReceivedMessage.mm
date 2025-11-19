@interface AWDIDSClientProcessReceivedMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasPayloadSize:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasQos:(BOOL)a3;
- (void)setHasThreadPriority:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSClientProcessReceivedMessage

- (void)dealloc
{
  [(AWDIDSClientProcessReceivedMessage *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSClientProcessReceivedMessage;
  [(AWDIDSClientProcessReceivedMessage *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPayloadSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasQos:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasThreadPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSClientProcessReceivedMessage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSClientProcessReceivedMessage description](&v3, sel_description), -[AWDIDSClientProcessReceivedMessage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_payloadSize), @"payloadSize"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qos), @"qos"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_deltaTime), @"deltaTime"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_10;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_threadPriority), @"threadPriority"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((has & 4) != 0)
  {
LABEL_10:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    payloadSize = self->_payloadSize;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  qos = self->_qos;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    deltaTime = self->_deltaTime;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  threadPriority = self->_threadPriority;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_15:
  priority = self->_priority;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x20) != 0)
  {
    *(a3 + 6) = self->_timestamp;
    *(a3 + 64) |= 0x20u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_payloadSize;
    *(a3 + 64) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 4) = self->_qos;
  *(a3 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 5) = self->_threadPriority;
  *(a3 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  *(a3 + 1) = self->_deltaTime;
  *(a3 + 64) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_10:
  *(a3 + 3) = self->_priority;
  *(a3 + 64) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 64) |= 0x20u;
  }

  *(v6 + 56) = [(NSString *)self->_service copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_payloadSize;
    *(v6 + 64) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 32) = self->_qos;
  *(v6 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 8) = self->_deltaTime;
    *(v6 + 64) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 40) = self->_threadPriority;
  *(v6 + 64) |= 0x10u;
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 4) != 0)
  {
LABEL_8:
    *(v6 + 24) = self->_priority;
    *(v6 + 64) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 64);
    if ((has & 0x20) != 0)
    {
      if ((*(a3 + 64) & 0x20) == 0 || self->_timestamp != *(a3 + 6))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 64) & 0x20) != 0)
    {
LABEL_34:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(a3 + 7))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 64) & 2) == 0 || self->_payloadSize != *(a3 + 2))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 64) & 2) != 0)
    {
      goto LABEL_34;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 64) & 8) == 0 || self->_qos != *(a3 + 4))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 64) & 8) != 0)
    {
      goto LABEL_34;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 64) & 0x10) == 0 || self->_threadPriority != *(a3 + 5))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 64) & 0x10) != 0)
    {
      goto LABEL_34;
    }

    if (has)
    {
      if ((*(a3 + 64) & 1) == 0 || self->_deltaTime != *(a3 + 1))
      {
        goto LABEL_34;
      }
    }

    else if (*(a3 + 64))
    {
      goto LABEL_34;
    }

    LOBYTE(v5) = (*(a3 + 64) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 64) & 4) == 0 || self->_priority != *(a3 + 3))
      {
        goto LABEL_34;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_payloadSize;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_qos;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v7 = 2654435761u * self->_threadPriority;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761u * self->_deltaTime;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761u * self->_priority;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 64) & 0x20) != 0)
  {
    self->_timestamp = *(a3 + 6);
    *&self->_has |= 0x20u;
  }

  if (*(a3 + 7))
  {
    [(AWDIDSClientProcessReceivedMessage *)self setService:?];
  }

  v5 = *(a3 + 64);
  if ((v5 & 2) != 0)
  {
    self->_payloadSize = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a3 + 64) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_qos = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_threadPriority = *(a3 + 5);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  self->_deltaTime = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 64) & 4) == 0)
  {
    return;
  }

LABEL_10:
  self->_priority = *(a3 + 3);
  *&self->_has |= 4u;
}

@end