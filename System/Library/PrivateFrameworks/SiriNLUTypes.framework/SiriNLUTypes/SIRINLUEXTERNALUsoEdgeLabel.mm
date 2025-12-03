@interface SIRINLUEXTERNALUsoEdgeLabel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)usoElementId;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUsoElementId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUsoEdgeLabel

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 24);
  if ((v6 & 2) != 0)
  {
    self->_usoElementId = fromCopy[5];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 24);
  }

  if (v6)
  {
    self->_enumeration = fromCopy[4];
    *&self->_has |= 1u;
  }

  baseEdgeLabel = self->_baseEdgeLabel;
  v8 = *(v5 + 1);
  if (baseEdgeLabel)
  {
    if (v8)
    {
      [(SIRINLUEXTERNALUsoLabel *)baseEdgeLabel mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SIRINLUEXTERNALUsoEdgeLabel *)self setBaseEdgeLabel:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_usoElementId;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SIRINLUEXTERNALUsoLabel *)self->_baseEdgeLabel hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_enumeration;
  return v7 ^ v6 ^ [(SIRINLUEXTERNALUsoLabel *)self->_baseEdgeLabel hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_usoElementId != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_enumeration != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

  baseEdgeLabel = self->_baseEdgeLabel;
  if (baseEdgeLabel | *(equalCopy + 1))
  {
    v7 = [(SIRINLUEXTERNALUsoLabel *)baseEdgeLabel isEqual:?];
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
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_usoElementId;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_enumeration;
    *(v5 + 24) |= 1u;
  }

  v8 = [(SIRINLUEXTERNALUsoLabel *)self->_baseEdgeLabel copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_usoElementId;
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = self->_enumeration;
    *(toCopy + 24) |= 1u;
  }

  if (self->_baseEdgeLabel)
  {
    v6 = toCopy;
    [toCopy setBaseEdgeLabel:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    usoElementId = self->_usoElementId;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    enumeration = self->_enumeration;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_baseEdgeLabel)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usoElementId];
    [dictionary setObject:v5 forKey:@"uso_element_id"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_enumeration];
    [dictionary setObject:v6 forKey:@"enumeration"];
  }

  baseEdgeLabel = self->_baseEdgeLabel;
  if (baseEdgeLabel)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUsoLabel *)baseEdgeLabel dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"base_edge_label"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoEdgeLabel;
  v4 = [(SIRINLUEXTERNALUsoEdgeLabel *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUsoEdgeLabel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasUsoElementId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)usoElementId
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_usoElementId;
  }

  else
  {
    return 0;
  }
}

@end