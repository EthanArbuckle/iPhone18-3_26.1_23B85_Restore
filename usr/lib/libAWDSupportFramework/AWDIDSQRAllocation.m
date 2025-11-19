@interface AWDIDSQRAllocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasHasRecipientAccepted:(BOOL)a3;
- (void)setHasPayloadSize:(BOOL)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSQRAllocation

- (void)dealloc
{
  [(AWDIDSQRAllocation *)self setTopic:0];
  [(AWDIDSQRAllocation *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSQRAllocation;
  [(AWDIDSQRAllocation *)&v3 dealloc];
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

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasResult:(BOOL)a3
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

- (void)setHasHasRecipientAccepted:(BOOL)a3
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

- (void)setHasPayloadSize:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSQRAllocation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSQRAllocation description](&v3, sel_description), -[AWDIDSQRAllocation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_result), @"result"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hasRecipientAccepted), @"hasRecipientAccepted"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_payloadSize), @"payloadSize"}];
  }

LABEL_7:
  topic = self->_topic;
  if (topic)
  {
    [v3 setObject:topic forKey:@"topic"];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = self->_result;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  hasRecipientAccepted = self->_hasRecipientAccepted;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    payloadSize = self->_payloadSize;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_service)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 1) = self->_duration;
  *(a3 + 56) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 8) = self->_result;
  *(a3 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  *(a3 + 6) = self->_hasRecipientAccepted;
  *(a3 + 56) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(a3 + 7) = self->_payloadSize;
    *(a3 + 56) |= 8u;
  }

LABEL_7:
  if (self->_topic)
  {
    [a3 setTopic:?];
  }

  if (self->_service)
  {

    [a3 setService:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_duration;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 24) = self->_hasRecipientAccepted;
    *(v5 + 56) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 32) = self->_result;
  *(v5 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v5 + 28) = self->_payloadSize;
    *(v5 + 56) |= 8u;
  }

LABEL_7:

  *(v6 + 48) = [(NSString *)self->_topic copyWithZone:a3];
  *(v6 + 40) = [(NSString *)self->_service copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 56);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 56) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 2) != 0)
    {
LABEL_31:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 56) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (*(a3 + 56))
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 56) & 0x10) == 0 || self->_result != *(a3 + 8))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 0x10) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 56) & 4) == 0 || self->_hasRecipientAccepted != *(a3 + 6))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 4) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 56) & 8) == 0 || self->_payloadSize != *(a3 + 7))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 8) != 0)
    {
      goto LABEL_31;
    }

    topic = self->_topic;
    if (!(topic | *(a3 + 6)) || (v5 = [(NSString *)topic isEqual:?]) != 0)
    {
      service = self->_service;
      if (service | *(a3 + 5))
      {

        LOBYTE(v5) = [(NSString *)service isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761u * self->_duration;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_result;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_hasRecipientAccepted;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = 2654435761 * self->_payloadSize;
LABEL_12:
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_topic hash];
  return v8 ^ [(NSString *)self->_service hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 56);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 56);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a3 + 56) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_result = *(a3 + 8);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  self->_hasRecipientAccepted = *(a3 + 6);
  *&self->_has |= 4u;
  if ((*(a3 + 56) & 8) != 0)
  {
LABEL_6:
    self->_payloadSize = *(a3 + 7);
    *&self->_has |= 8u;
  }

LABEL_7:
  if (*(a3 + 6))
  {
    [(AWDIDSQRAllocation *)self setTopic:?];
  }

  if (*(a3 + 5))
  {

    [(AWDIDSQRAllocation *)self setService:?];
  }
}

@end