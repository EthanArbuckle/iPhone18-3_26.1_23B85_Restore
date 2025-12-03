@interface AWDWiFiUIEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasState:(BOOL)state;
- (void)setHasStateEnum:(BOOL)enum;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiUIEvent

- (void)dealloc
{
  [(AWDWiFiUIEvent *)self setProcess:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiUIEvent;
  [(AWDWiFiUIEvent *)&v3 dealloc];
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStateEnum:(BOOL)enum
{
  if (enum)
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
  v3.super_class = AWDWiFiUIEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiUIEvent description](&v3, sel_description), -[AWDWiFiUIEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  process = self->_process;
  if (process)
  {
    [dictionary setObject:process forKey:@"process"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_state), @"state"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stateEnum), @"stateEnum"}];
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

  if (self->_process)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    state = self->_state;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    stateEnum = self->_stateEnum;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_process)
  {
    [to setProcess:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 28) = self->_state;
    *(to + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 6) = self->_stateEnum;
    *(to + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_process copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_state;
    *(v6 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_stateEnum;
    *(v6 + 32) |= 2u;
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
  v7 = *(equal + 32);
  if (has)
  {
    if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equal + 32))
  {
    goto LABEL_17;
  }

  process = self->_process;
  if (process | *(equal + 2))
  {
    v5 = [(NSString *)process isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equal + 32) & 4) != 0)
    {
      v9 = *(equal + 28);
      if (self->_state)
      {
        if ((*(equal + 28) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(equal + 28))
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_17:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 32) & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  LOBYTE(v5) = (*(equal + 32) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equal + 32) & 2) == 0 || self->_stateEnum != *(equal + 6))
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

  v4 = [(NSString *)self->_process hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_state;
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
  v6 = 2654435761 * self->_stateEnum;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDWiFiUIEvent *)self setProcess:?];
  }

  v5 = *(from + 32);
  if ((v5 & 4) != 0)
  {
    self->_state = *(from + 28);
    *&self->_has |= 4u;
    v5 = *(from + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_stateEnum = *(from + 6);
    *&self->_has |= 2u;
  }
}

@end