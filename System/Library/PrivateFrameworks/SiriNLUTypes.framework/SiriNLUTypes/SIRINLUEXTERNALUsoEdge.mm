@interface SIRINLUEXTERNALUsoEdge
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)fromIndex;
- (unsigned)toIndex;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasToIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUsoEdge

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_fromIndex = v4[2];
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
  }

  if ((v6 & 2) != 0)
  {
    self->_toIndex = v4[6];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_fromIndex != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_toIndex != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  label = self->_label;
  if (label | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(SIRINLUEXTERNALUsoEdgeLabel *)self->_label copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_fromIndex;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[6] = self->_toIndex;
    *(v4 + 28) |= 2u;
  }

  if (self->_label)
  {
    v6 = v4;
    [v4 setLabel:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    fromIndex = self->_fromIndex;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toIndex = self->_toIndex;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_label)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_fromIndex];
    [v3 setObject:v5 forKey:@"from_index"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_toIndex];
    [v3 setObject:v6 forKey:@"to_index"];
  }

  label = self->_label;
  if (label)
  {
    v8 = [(SIRINLUEXTERNALUsoEdgeLabel *)label dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"label"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoEdge;
  v4 = [(SIRINLUEXTERNALUsoEdge *)&v8 description];
  v5 = [(SIRINLUEXTERNALUsoEdge *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasToIndex:(BOOL)a3
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