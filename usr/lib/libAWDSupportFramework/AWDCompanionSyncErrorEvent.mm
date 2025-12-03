@interface AWDCompanionSyncErrorEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsError:(id)error;
- (int)error;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasError:(BOOL)error;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCompanionSyncErrorEvent

- (void)dealloc
{
  [(AWDCompanionSyncErrorEvent *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncErrorEvent;
  [(AWDCompanionSyncErrorEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)error
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_error;
  }

  else
  {
    return 0;
  }
}

- (void)setHasError:(BOOL)error
{
  if (error)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsError:(id)error
{
  if ([error isEqualToString:@"None"])
  {
    return 0;
  }

  if ([error isEqualToString:@"Duplicate"])
  {
    return 1;
  }

  if ([error isEqualToString:@"OutOfSequence"])
  {
    return 2;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCompanionSyncErrorEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCompanionSyncErrorEvent description](&v3, sel_description), -[AWDCompanionSyncErrorEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [dictionary setObject:service forKey:@"service"];
  }

  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sequenceNumber), @"sequence_number"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    error = self->_error;
    if (error >= 3)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_error];
    }

    else
    {
      v7 = off_29EE32558[error];
    }

    [dictionary setObject:v7 forKey:@"error"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    error = self->_error;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 40) |= 2u;
  }

  if (self->_service)
  {
    [to setService:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_sequenceNumber;
    *(to + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(to + 6) = self->_error;
    *(to + 40) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 40) |= 2u;
  }

  *(v6 + 32) = [(NSString *)self->_service copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_sequenceNumber;
    *(v6 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_error;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 40);
    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(equal + 4))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if (has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_sequenceNumber != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 40) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_error != *(equal + 6))
      {
        goto LABEL_19;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_sequenceNumber;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_error;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 40) & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
  }

  if (*(from + 4))
  {
    [(AWDCompanionSyncErrorEvent *)self setService:?];
  }

  v5 = *(from + 40);
  if (v5)
  {
    self->_sequenceNumber = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_error = *(from + 6);
    *&self->_has |= 4u;
  }
}

@end