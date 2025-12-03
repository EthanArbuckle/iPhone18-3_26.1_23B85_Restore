@interface AWDWiFiUIConfigureEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasPreviousType:(BOOL)type;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiUIConfigureEvent

- (void)dealloc
{
  [(AWDWiFiUIConfigureEvent *)self setProcess:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiUIConfigureEvent;
  [(AWDWiFiUIConfigureEvent *)&v3 dealloc];
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPreviousType:(BOOL)type
{
  if (type)
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
  v3.super_class = AWDWiFiUIConfigureEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiUIConfigureEvent description](&v3, sel_description), -[AWDWiFiUIConfigureEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_type), @"type"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_previousType), @"previousType"}];
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
    type = self->_type;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    previousType = self->_previousType;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
  }

  if (self->_process)
  {
    [to setProcess:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 8) = self->_type;
    *(to + 36) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 4) = self->_previousType;
    *(to + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_process copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 32) = self->_type;
    *(v6 + 36) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_previousType;
    *(v6 + 36) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 36);
    if (has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 36))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    process = self->_process;
    if (process | *(equal + 3))
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
      if ((*(equal + 36) & 4) == 0 || self->_type != *(equal + 8))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 36) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_previousType != *(equal + 4))
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
    v5 = 2654435761 * self->_type;
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
  v6 = 2654435761 * self->_previousType;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 36))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDWiFiUIConfigureEvent *)self setProcess:?];
  }

  v5 = *(from + 36);
  if ((v5 & 4) != 0)
  {
    self->_type = *(from + 8);
    *&self->_has |= 4u;
    v5 = *(from + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_previousType = *(from + 4);
    *&self->_has |= 2u;
  }
}

@end