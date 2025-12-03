@interface AWDTuple
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUpDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation AWDTuple

- (void)setHasUpDuration:(BOOL)duration
{
  if (duration)
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
  v3.super_class = AWDTuple;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDTuple description](&v3, sel_description), -[AWDTuple dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_upDuration), @"upDuration"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_downDuration), @"downDuration"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    upDuration = self->_upDuration;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    downDuration = self->_downDuration;

    PBDataWriterWriteUint64Field();
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
    *(to + 1) = self->_downDuration;
    *(to + 24) |= 1u;
    return;
  }

  *(to + 2) = self->_upDuration;
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
    *(result + 2) = self->_upDuration;
    *(result + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_downDuration;
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
      if ((*(equal + 24) & 2) == 0 || self->_upDuration != *(equal + 2))
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
      if ((*(equal + 24) & 1) == 0 || self->_downDuration != *(equal + 1))
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
    v2 = 2654435761u * self->_upDuration;
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
  v3 = 2654435761u * self->_downDuration;
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
    self->_downDuration = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

  self->_upDuration = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 24))
  {
    goto LABEL_5;
  }
}

@end