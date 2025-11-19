@interface AWDCoreRoutineLMPAutofillSelectedInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasInteraction:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLMPAutofillSelectedInstance

- (void)dealloc
{
  [(AWDCoreRoutineLMPAutofillSelectedInstance *)self setEventId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPAutofillSelectedInstance;
  [(AWDCoreRoutineLMPAutofillSelectedInstance *)&v3 dealloc];
}

- (void)setHasInteraction:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineLMPAutofillSelectedInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPAutofillSelectedInstance description](&v3, sel_description), -[AWDCoreRoutineLMPAutofillSelectedInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_interaction), @"interaction"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 6) = self->_interaction;
    *(a3 + 28) |= 2u;
  }

  eventId = self->_eventId;
  if (eventId)
  {
    [a3 setEventId:eventId];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6[2] = [(NSString *)self->_eventId copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 28);
    if (*&self->_has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_interaction != *(a3 + 6))
      {
        goto LABEL_14;
      }
    }

    else if ((*(a3 + 28) & 2) != 0)
    {
      goto LABEL_14;
    }

    eventId = self->_eventId;
    if (eventId | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 28);
  }

  if ((v3 & 2) != 0)
  {
    self->_interaction = *(a3 + 6);
    *&self->_has |= 2u;
  }

  if (*(a3 + 2))
  {
    [(AWDCoreRoutineLMPAutofillSelectedInstance *)self setEventId:?];
  }
}

@end