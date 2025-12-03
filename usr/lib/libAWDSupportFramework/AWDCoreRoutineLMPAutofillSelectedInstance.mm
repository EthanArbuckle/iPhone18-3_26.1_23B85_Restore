@interface AWDCoreRoutineLMPAutofillSelectedInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasInteraction:(BOOL)interaction;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLMPAutofillSelectedInstance

- (void)dealloc
{
  [(AWDCoreRoutineLMPAutofillSelectedInstance *)self setEventId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPAutofillSelectedInstance;
  [(AWDCoreRoutineLMPAutofillSelectedInstance *)&v3 dealloc];
}

- (void)setHasInteraction:(BOOL)interaction
{
  if (interaction)
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
  v3.super_class = AWDCoreRoutineLMPAutofillSelectedInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPAutofillSelectedInstance description](&v3, sel_description), -[AWDCoreRoutineLMPAutofillSelectedInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_interaction), @"interaction"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    interaction = self->_interaction;
    PBDataWriterWriteInt32Field();
  }

  if (self->_eventId)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 6) = self->_interaction;
    *(to + 28) |= 2u;
  }

  eventId = self->_eventId;
  if (eventId)
  {
    [to setEventId:eventId];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_interaction;
    *(v5 + 28) |= 2u;
  }

  v6[2] = [(NSString *)self->_eventId copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 28);
    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_interaction != *(equal + 6))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_14;
    }

    eventId = self->_eventId;
    if (eventId | *(equal + 2))
    {

      LOBYTE(v5) = [(NSString *)eventId isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_eventId hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_interaction;
  return v7 ^ v6 ^ [(NSString *)self->_eventId hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 28);
  }

  if ((v3 & 2) != 0)
  {
    self->_interaction = *(from + 6);
    *&self->_has |= 2u;
  }

  if (*(from + 2))
  {
    [(AWDCoreRoutineLMPAutofillSelectedInstance *)self setEventId:?];
  }
}

@end