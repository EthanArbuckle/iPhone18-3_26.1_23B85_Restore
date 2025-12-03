@interface AWDCoreRoutineHistogramBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineHistogramBin

- (void)setHasValue:(BOOL)value
{
  if (value)
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
  v3.super_class = AWDCoreRoutineHistogramBin;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineHistogramBin description](&v3, sel_description), -[AWDCoreRoutineHistogramBin dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_value), @"value"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    value = self->_value;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    count = self->_count;

    PBDataWriterWriteUint32Field();
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
    *(to + 2) = self->_count;
    *(to + 16) |= 1u;
    return;
  }

  *(to + 3) = self->_value;
  *(to + 16) |= 2u;
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
    *(result + 3) = self->_value;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_count;
    *(result + 16) |= 1u;
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
      if ((*(equal + 16) & 2) == 0 || self->_value != *(equal + 3))
      {
        goto LABEL_11;
      }
    }

    else if ((*(equal + 16) & 2) != 0)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 16) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 16) & 1) == 0 || self->_count != *(equal + 2))
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
    v2 = 2654435761 * self->_value;
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
  v3 = 2654435761 * self->_count;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 16) & 2) == 0)
  {
    if ((*(from + 16) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_count = *(from + 2);
    *&self->_has |= 1u;
    return;
  }

  self->_value = *(from + 3);
  *&self->_has |= 2u;
  if (*(from + 16))
  {
    goto LABEL_5;
  }
}

@end