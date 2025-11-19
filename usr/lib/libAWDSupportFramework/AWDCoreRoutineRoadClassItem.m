@interface AWDCoreRoutineRoadClassItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRoadClass:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineRoadClassItem

- (void)setHasRoadClass:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineRoadClassItem;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineRoadClassItem description](&v3, sel_description), -[AWDCoreRoutineRoadClassItem dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_roadClass), @"roadClass"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_percentage), @"percentage"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    roadClass = self->_roadClass;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    percentage = self->_percentage;

    PBDataWriterWriteInt32Field();
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
    *(a3 + 2) = self->_percentage;
    *(a3 + 16) |= 1u;
    return;
  }

  *(a3 + 3) = self->_roadClass;
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
    *(result + 3) = self->_roadClass;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_percentage;
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
      if ((*(a3 + 16) & 2) == 0 || self->_roadClass != *(a3 + 3))
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
      if ((*(a3 + 16) & 1) == 0 || self->_percentage != *(a3 + 2))
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
    v2 = 2654435761 * self->_roadClass;
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
  v3 = 2654435761 * self->_percentage;
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
    self->_percentage = *(a3 + 2);
    *&self->_has |= 1u;
    return;
  }

  self->_roadClass = *(a3 + 3);
  *&self->_has |= 2u;
  if (*(a3 + 16))
  {
    goto LABEL_5;
  }
}

@end