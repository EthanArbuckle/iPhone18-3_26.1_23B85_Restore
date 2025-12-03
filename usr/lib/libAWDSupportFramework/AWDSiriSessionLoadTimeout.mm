@interface AWDSiriSessionLoadTimeout
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasInterfaceIndex:(BOOL)index;
- (void)setHasSendBufferSize:(BOOL)size;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasWwanPreferred:(BOOL)preferred;
- (void)writeTo:(id)to;
@end

@implementation AWDSiriSessionLoadTimeout

- (void)dealloc
{
  [(AWDSiriSessionLoadTimeout *)self setConnectionURL:0];
  v3.receiver = self;
  v3.super_class = AWDSiriSessionLoadTimeout;
  [(AWDSiriSessionLoadTimeout *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasInterfaceIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSendBufferSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasWwanPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSiriSessionLoadTimeout;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSiriSessionLoadTimeout description](&v3, sel_description), -[AWDSiriSessionLoadTimeout dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  connectionURL = self->_connectionURL;
  if (connectionURL)
  {
    [dictionary setObject:connectionURL forKey:@"connectionURL"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_interfaceIndex), @"interfaceIndex"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wwanPreferred), @"wwanPreferred"}];
      if ((*&self->_has & 1) == 0)
      {
        return dictionary;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sendBufferSize), @"sendBufferSize"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (has)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionTechnology), @"connectionTechnology"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_connectionURL)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    interfaceIndex = self->_interfaceIndex;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      wwanPreferred = self->_wwanPreferred;
      PBDataWriterWriteBOOLField();
      if ((*&self->_has & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  sendBufferSize = self->_sendBufferSize;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_13:
  connectionTechnology = self->_connectionTechnology;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 8) != 0)
  {
    *(to + 4) = self->_timestamp;
    *(to + 52) |= 8u;
  }

  if (self->_connectionURL)
  {
    [to setConnectionURL:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_interfaceIndex;
    *(to + 52) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(to + 3) = self->_sendBufferSize;
  *(to + 52) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(to + 48) = self->_wwanPreferred;
  *(to + 52) |= 0x10u;
  if ((*&self->_has & 1) == 0)
  {
    return;
  }

LABEL_9:
  *(to + 1) = self->_connectionTechnology;
  *(to + 52) |= 1u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 52) |= 8u;
  }

  *(v6 + 40) = [(NSString *)self->_connectionURL copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_interfaceIndex;
    *(v6 + 52) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 48) = self->_wwanPreferred;
      *(v6 + 52) |= 0x10u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 24) = self->_sendBufferSize;
  *(v6 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (has)
  {
LABEL_7:
    *(v6 + 8) = self->_connectionTechnology;
    *(v6 + 52) |= 1u;
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
  v7 = *(equal + 52);
  if ((has & 8) != 0)
  {
    if ((*(equal + 52) & 8) == 0 || self->_timestamp != *(equal + 4))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equal + 52) & 8) != 0)
  {
    goto LABEL_27;
  }

  connectionURL = self->_connectionURL;
  if (connectionURL | *(equal + 5))
  {
    v5 = [(NSString *)connectionURL isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equal + 52) & 2) == 0 || self->_interfaceIndex != *(equal + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equal + 52) & 2) != 0)
  {
    goto LABEL_27;
  }

  if ((has & 4) != 0)
  {
    if ((*(equal + 52) & 4) == 0 || self->_sendBufferSize != *(equal + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equal + 52) & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equal + 52) & 0x10) != 0)
    {
      v9 = *(equal + 48);
      if (self->_wwanPreferred)
      {
        if ((*(equal + 48) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (*(equal + 48))
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

LABEL_27:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 52) & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  LOBYTE(v5) = (*(equal + 52) & 1) == 0;
  if (has)
  {
    if ((*(equal + 52) & 1) == 0 || self->_connectionTechnology != *(equal + 1))
    {
      goto LABEL_27;
    }

    LOBYTE(v5) = 1;
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

  v4 = [(NSString *)self->_connectionURL hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_interfaceIndex;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_sendBufferSize;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if (*&self->_has)
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
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_wwanPreferred;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_connectionTechnology;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 52) & 8) != 0)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 8u;
  }

  if (*(from + 5))
  {
    [(AWDSiriSessionLoadTimeout *)self setConnectionURL:?];
  }

  v5 = *(from + 52);
  if ((v5 & 2) != 0)
  {
    self->_interfaceIndex = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 52);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(from + 52) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_sendBufferSize = *(from + 3);
  *&self->_has |= 4u;
  v5 = *(from + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  self->_wwanPreferred = *(from + 48);
  *&self->_has |= 0x10u;
  if ((*(from + 52) & 1) == 0)
  {
    return;
  }

LABEL_9:
  self->_connectionTechnology = *(from + 1);
  *&self->_has |= 1u;
}

@end