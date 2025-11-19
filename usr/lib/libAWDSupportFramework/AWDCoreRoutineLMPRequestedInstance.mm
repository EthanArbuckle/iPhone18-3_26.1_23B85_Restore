@interface AWDCoreRoutineLMPRequestedInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConfidence:(BOOL)a3;
- (void)setHasOccurrences:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasSuggested:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLMPRequestedInstance

- (void)dealloc
{
  [(AWDCoreRoutineLMPRequestedInstance *)self setEventId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPRequestedInstance;
  [(AWDCoreRoutineLMPRequestedInstance *)&v3 dealloc];
}

- (void)setHasSuggested:(BOOL)a3
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

- (void)setHasConfidence:(BOOL)a3
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

- (void)setHasOccurrences:(BOOL)a3
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

- (void)setHasReason:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineLMPRequestedInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPRequestedInstance description](&v3, sel_description), -[AWDCoreRoutineLMPRequestedInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  eventId = self->_eventId;
  if (eventId)
  {
    [v3 setObject:eventId forKey:@"eventId"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_suggested), @"suggested"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_occurrences), @"occurrences"}];
      if ((*&self->_has & 8) == 0)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_confidence), @"confidence"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 8) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_reason), @"reason"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_eventId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    suggested = self->_suggested;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      occurrences = self->_occurrences;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 8) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  confidence = self->_confidence;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_13:
  reason = self->_reason;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 44) |= 1u;
  }

  if (self->_eventId)
  {
    [a3 setEventId:?];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 40) = self->_suggested;
    *(a3 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 4) = self->_confidence;
  *(a3 + 44) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(a3 + 8) = self->_occurrences;
  *(a3 + 44) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_9:
  *(a3 + 9) = self->_reason;
  *(a3 + 44) |= 8u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_eventId copyWithZone:a3];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 40) = self->_suggested;
    *(v6 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 32) = self->_occurrences;
      *(v6 + 44) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_confidence;
  *(v6 + 44) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v6 + 36) = self->_reason;
    *(v6 + 44) |= 8u;
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
  v7 = *(a3 + 44);
  if (has)
  {
    if ((*(a3 + 44) & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(a3 + 44))
  {
    goto LABEL_32;
  }

  eventId = self->_eventId;
  if (eventId | *(a3 + 3))
  {
    v5 = [(NSString *)eventId isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(a3 + 44) & 0x10) != 0)
    {
      v9 = *(a3 + 40);
      if (self->_suggested)
      {
        if ((*(a3 + 40) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(a3 + 40))
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

LABEL_32:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 44) & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
    if ((*(a3 + 44) & 2) == 0 || self->_confidence != *(a3 + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(a3 + 44) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 4) != 0)
  {
    if ((*(a3 + 44) & 4) == 0 || self->_occurrences != *(a3 + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(a3 + 44) & 4) != 0)
  {
    goto LABEL_32;
  }

  LOBYTE(v5) = (*(a3 + 44) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(a3 + 44) & 8) == 0 || self->_reason != *(a3 + 9))
    {
      goto LABEL_32;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_eventId hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_suggested;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_confidence;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_occurrences;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_reason;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 44))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDCoreRoutineLMPRequestedInstance *)self setEventId:?];
  }

  v5 = *(a3 + 44);
  if ((v5 & 0x10) != 0)
  {
    self->_suggested = *(a3 + 40);
    *&self->_has |= 0x10u;
    v5 = *(a3 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + 44) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_confidence = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 44);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  self->_occurrences = *(a3 + 8);
  *&self->_has |= 4u;
  if ((*(a3 + 44) & 8) == 0)
  {
    return;
  }

LABEL_9:
  self->_reason = *(a3 + 9);
  *&self->_has |= 8u;
}

@end