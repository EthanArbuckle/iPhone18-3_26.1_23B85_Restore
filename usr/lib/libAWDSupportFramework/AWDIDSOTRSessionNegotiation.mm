@interface AWDIDSOTRSessionNegotiation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasPriority:(BOOL)priority;
- (void)setHasResult:(BOOL)result;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSOTRSessionNegotiation

- (void)dealloc
{
  [(AWDIDSOTRSessionNegotiation *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSOTRSessionNegotiation;
  [(AWDIDSOTRSessionNegotiation *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasResult:(BOOL)result
{
  if (result)
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
  v3.super_class = AWDIDSOTRSessionNegotiation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSOTRSessionNegotiation description](&v3, sel_description), -[AWDIDSOTRSessionNegotiation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [dictionary setObject:service forKey:@"service"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_result), @"result"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  priority = self->_priority;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_11:
  result = self->_result;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 48) |= 4u;
  }

  if (self->_service)
  {
    [to setService:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_priority;
    *(to + 48) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
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

  *(to + 1) = self->_duration;
  *(to + 48) |= 1u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_8:
  *(to + 8) = self->_result;
  *(to + 48) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 48) |= 4u;
  }

  *(v6 + 40) = [(NSString *)self->_service copyWithZone:zone];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 8) = self->_duration;
    *(v6 + 48) |= 1u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 16) = self->_priority;
  *(v6 + 48) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 32) = self->_result;
    *(v6 + 48) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 48);
    if ((has & 4) != 0)
    {
      if ((*(equal + 48) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 48) & 4) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(equal + 5))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 48) & 2) == 0 || self->_priority != *(equal + 2))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 48) & 2) != 0)
    {
      goto LABEL_24;
    }

    if (has)
    {
      if ((*(equal + 48) & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 48))
    {
      goto LABEL_24;
    }

    LOBYTE(v5) = (*(equal + 48) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(equal + 48) & 8) == 0 || self->_result != *(equal + 8))
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
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761u * self->_priority;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761u * self->_duration;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_result;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 48) & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
  }

  if (*(from + 5))
  {
    [(AWDIDSOTRSessionNegotiation *)self setService:?];
  }

  v5 = *(from + 48);
  if ((v5 & 2) != 0)
  {
    self->_priority = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 48);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*(from + 48) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_duration = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 48) & 8) == 0)
  {
    return;
  }

LABEL_8:
  self->_result = *(from + 8);
  *&self->_has |= 8u;
}

@end