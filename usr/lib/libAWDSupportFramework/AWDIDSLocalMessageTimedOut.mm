@interface AWDIDSLocalMessageTimedOut
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSLocalMessageTimedOut

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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSLocalMessageTimedOut;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSLocalMessageTimedOut description](&v3, sel_description), -[AWDIDSLocalMessageTimedOut dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_expirationDate), @"expiration_date"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    expirationDate = self->_expirationDate;

    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 1) = self->_expirationDate;
    *(to + 24) |= 1u;
    return;
  }

  *(to + 2) = self->_timestamp;
  *(to + 24) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_expirationDate;
    *(result + 24) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_11;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 24) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_expirationDate != *(equal + 1))
      {
        goto LABEL_11;
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
    v2 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_expirationDate;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 24) & 2) == 0)
  {
    if ((*(from + 24) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_expirationDate = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

  self->_timestamp = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 24))
  {
    goto LABEL_5;
  }
}

@end