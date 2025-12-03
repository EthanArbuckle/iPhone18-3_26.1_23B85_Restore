@interface AWDCoreRoutineLMPRequestedInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConfidence:(BOOL)confidence;
- (void)setHasOccurrences:(BOOL)occurrences;
- (void)setHasReason:(BOOL)reason;
- (void)setHasSuggested:(BOOL)suggested;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLMPRequestedInstance

- (void)dealloc
{
  [(AWDCoreRoutineLMPRequestedInstance *)self setEventId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPRequestedInstance;
  [(AWDCoreRoutineLMPRequestedInstance *)&v3 dealloc];
}

- (void)setHasSuggested:(BOOL)suggested
{
  if (suggested)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasOccurrences:(BOOL)occurrences
{
  if (occurrences)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  eventId = self->_eventId;
  if (eventId)
  {
    [dictionary setObject:eventId forKey:@"eventId"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_suggested), @"suggested"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_occurrences), @"occurrences"}];
      if ((*&self->_has & 8) == 0)
      {
        return dictionary;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_confidence), @"confidence"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 8) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_reason), @"reason"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
  }

  if (self->_eventId)
  {
    [to setEventId:?];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 40) = self->_suggested;
    *(to + 44) |= 0x10u;
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

  *(to + 4) = self->_confidence;
  *(to + 44) |= 2u;
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
  *(to + 8) = self->_occurrences;
  *(to + 44) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_9:
  *(to + 9) = self->_reason;
  *(to + 44) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_eventId copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 44);
  if (has)
  {
    if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equal + 44))
  {
    goto LABEL_32;
  }

  eventId = self->_eventId;
  if (eventId | *(equal + 3))
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
    if ((*(equal + 44) & 0x10) != 0)
    {
      v9 = *(equal + 40);
      if (self->_suggested)
      {
        if ((*(equal + 40) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(equal + 40))
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

LABEL_32:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 44) & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
    if ((*(equal + 44) & 2) == 0 || self->_confidence != *(equal + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equal + 44) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 4) != 0)
  {
    if ((*(equal + 44) & 4) == 0 || self->_occurrences != *(equal + 8))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equal + 44) & 4) != 0)
  {
    goto LABEL_32;
  }

  LOBYTE(v5) = (*(equal + 44) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equal + 44) & 8) == 0 || self->_reason != *(equal + 9))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 44))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDCoreRoutineLMPRequestedInstance *)self setEventId:?];
  }

  v5 = *(from + 44);
  if ((v5 & 0x10) != 0)
  {
    self->_suggested = *(from + 40);
    *&self->_has |= 0x10u;
    v5 = *(from + 44);
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

  else if ((*(from + 44) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_confidence = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 44);
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
  self->_occurrences = *(from + 8);
  *&self->_has |= 4u;
  if ((*(from + 44) & 8) == 0)
  {
    return;
  }

LABEL_9:
  self->_reason = *(from + 9);
  *&self->_has |= 8u;
}

@end