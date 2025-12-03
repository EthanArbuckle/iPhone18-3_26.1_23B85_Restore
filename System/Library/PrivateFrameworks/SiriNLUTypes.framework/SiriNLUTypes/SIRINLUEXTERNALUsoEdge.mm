@interface SIRINLUEXTERNALUsoEdge
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)fromIndex;
- (unsigned)toIndex;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasToIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUsoEdge

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 28);
  if (v6)
  {
    self->_fromIndex = fromCopy[2];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 28);
  }

  if ((v6 & 2) != 0)
  {
    self->_toIndex = fromCopy[6];
    *&self->_has |= 2u;
  }

  label = self->_label;
  v8 = *(v5 + 2);
  if (label)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoEdgeLabel *)label mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALUsoEdge *)self setLabel:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_fromIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SIRINLUEXTERNALUsoEdgeLabel *)self->_label hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_toIndex;
  return v7 ^ v6 ^ [(SIRINLUEXTERNALUsoEdgeLabel *)self->_label hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_fromIndex != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_toIndex != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  label = self->_label;
  if (label | *(equalCopy + 2))
  {
    v7 = [(SIRINLUEXTERNALUsoEdgeLabel *)label isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_fromIndex;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_toIndex;
    *(v5 + 28) |= 2u;
  }

  v8 = [(SIRINLUEXTERNALUsoEdgeLabel *)self->_label copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_fromIndex;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[6] = self->_toIndex;
    *(toCopy + 28) |= 2u;
  }

  if (self->_label)
  {
    v6 = toCopy;
    [toCopy setLabel:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    fromIndex = self->_fromIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toIndex = self->_toIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_label)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_fromIndex];
    [dictionary setObject:v5 forKey:@"from_index"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_toIndex];
    [dictionary setObject:v6 forKey:@"to_index"];
  }

  label = self->_label;
  if (label)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUsoEdgeLabel *)label dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"label"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoEdge;
  v4 = [(SIRINLUEXTERNALUsoEdge *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUsoEdge *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasToIndex:(BOOL)index
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

- (unsigned)toIndex
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_toIndex;
  }

  else
  {
    return 0;
  }
}

- (unsigned)fromIndex
{
  if (*&self->_has)
  {
    return self->_fromIndex;
  }

  else
  {
    return 0;
  }
}

@end