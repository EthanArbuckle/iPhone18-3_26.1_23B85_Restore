@interface AWDCompanionSyncReceiveEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasProcessingTime:(BOOL)a3;
- (void)setHasSequenceNumber:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCompanionSyncReceiveEvent

- (void)dealloc
{
  [(AWDCompanionSyncReceiveEvent *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncReceiveEvent;
  [(AWDCompanionSyncReceiveEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasSequenceNumber:(BOOL)a3
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

- (void)setHasProcessingTime:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncReceiveEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCompanionSyncReceiveEvent description](&v3, sel_description), -[AWDCompanionSyncReceiveEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sequenceNumber), @"sequence_number"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_processingTime), @"processingTime"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  sequenceNumber = self->_sequenceNumber;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_11:
  processingTime = self->_processingTime;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 8) != 0)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 48) |= 8u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_sequenceNumber;
    *(a3 + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 1) = self->_duration;
  *(a3 + 48) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_8:
  *(a3 + 2) = self->_processingTime;
  *(a3 + 48) |= 2u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 48) |= 8u;
  }

  *(v6 + 40) = [(NSString *)self->_service copyWithZone:a3];
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 8) = self->_duration;
    *(v6 + 48) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 24) = self->_sequenceNumber;
  *(v6 + 48) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v6 + 16) = self->_processingTime;
    *(v6 + 48) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 48);
    if ((has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_timestamp != *(a3 + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(a3 + 5))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_sequenceNumber != *(a3 + 3))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 4) != 0)
    {
      goto LABEL_24;
    }

    if (has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(a3 + 48))
    {
      goto LABEL_24;
    }

    LOBYTE(v5) = (*(a3 + 48) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_processingTime != *(a3 + 2))
      {
        goto LABEL_24;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761u * self->_sequenceNumber;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761u * self->_duration;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761u * self->_processingTime;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 48) & 8) != 0)
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 8u;
  }

  if (*(a3 + 5))
  {
    [(AWDCompanionSyncReceiveEvent *)self setService:?];
  }

  v5 = *(a3 + 48);
  if ((v5 & 4) != 0)
  {
    self->_sequenceNumber = *(a3 + 3);
    *&self->_has |= 4u;
    v5 = *(a3 + 48);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a3 + 48) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_duration = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 48) & 2) == 0)
  {
    return;
  }

LABEL_8:
  self->_processingTime = *(a3 + 2);
  *&self->_has |= 2u;
}

@end