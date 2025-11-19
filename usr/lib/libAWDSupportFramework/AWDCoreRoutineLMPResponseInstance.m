@interface AWDCoreRoutineLMPResponseInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasInteraction:(BOOL)a3;
- (void)setHasSelected:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLMPResponseInstance

- (void)dealloc
{
  [(AWDCoreRoutineLMPResponseInstance *)self setEventId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPResponseInstance;
  [(AWDCoreRoutineLMPResponseInstance *)&v3 dealloc];
}

- (void)setHasSelected:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineLMPResponseInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPResponseInstance description](&v3, sel_description), -[AWDCoreRoutineLMPResponseInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
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
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_selected), @"selected"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_interaction), @"interaction"}];
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
  if ((has & 4) != 0)
  {
    selected = self->_selected;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    interaction = self->_interaction;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_eventId)
  {
    [a3 setEventId:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 28) = self->_selected;
    *(a3 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 6) = self->_interaction;
    *(a3 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_eventId copyWithZone:a3];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_selected;
    *(v6 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_interaction;
    *(v6 + 32) |= 2u;
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
  v7 = *(a3 + 32);
  if (has)
  {
    if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(a3 + 32))
  {
    goto LABEL_17;
  }

  eventId = self->_eventId;
  if (eventId | *(a3 + 2))
  {
    v5 = [(NSString *)eventId isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(a3 + 32) & 4) != 0)
    {
      v9 = *(a3 + 28);
      if (self->_selected)
      {
        if ((*(a3 + 28) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(a3 + 28))
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_17:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 32) & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  LOBYTE(v5) = (*(a3 + 32) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(a3 + 32) & 2) == 0 || self->_interaction != *(a3 + 6))
    {
      goto LABEL_17;
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
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_selected;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_interaction;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDCoreRoutineLMPResponseInstance *)self setEventId:?];
  }

  v5 = *(a3 + 32);
  if ((v5 & 4) != 0)
  {
    self->_selected = *(a3 + 28);
    *&self->_has |= 4u;
    v5 = *(a3 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_interaction = *(a3 + 6);
    *&self->_has |= 2u;
  }
}

@end