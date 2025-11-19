@interface AWDCoreRoutineHistogramBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineHistogramBin

- (void)setHasValue:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineHistogramBin;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineHistogramBin description](&v3, sel_description), -[AWDCoreRoutineHistogramBin dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_value), @"value"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

LABEL_5:
    *(a3 + 2) = self->_count;
    *(a3 + 16) |= 1u;
    return;
  }

  *(a3 + 3) = self->_value;
  *(a3 + 16) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 16) & 2) == 0 || self->_value != *(a3 + 3))
      {
        goto LABEL_11;
      }
    }

    else if ((*(a3 + 16) & 2) != 0)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(a3 + 16) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 16) & 1) == 0 || self->_count != *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 16) & 2) == 0)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_count = *(a3 + 2);
    *&self->_has |= 1u;
    return;
  }

  self->_value = *(a3 + 3);
  *&self->_has |= 2u;
  if (*(a3 + 16))
  {
    goto LABEL_5;
  }
}

@end