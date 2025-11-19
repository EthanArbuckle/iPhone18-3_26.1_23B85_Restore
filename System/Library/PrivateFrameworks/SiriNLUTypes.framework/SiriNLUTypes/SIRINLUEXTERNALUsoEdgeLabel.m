@interface SIRINLUEXTERNALUsoEdgeLabel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)usoElementId;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUsoElementId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUsoEdgeLabel

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 24);
  if ((v6 & 2) != 0)
  {
    self->_usoElementId = v4[5];
    *&self->_has |= 2u;
    v6 = *(v4 + 24);
  }

  if (v6)
  {
    self->_enumeration = v4[4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_usoElementId != *(v4 + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_enumeration != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  baseEdgeLabel = self->_baseEdgeLabel;
  if (baseEdgeLabel | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(SIRINLUEXTERNALUsoLabel *)self->_baseEdgeLabel copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_usoElementId;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = self->_enumeration;
    *(v4 + 24) |= 1u;
  }

  if (self->_baseEdgeLabel)
  {
    v6 = v4;
    [v4 setBaseEdgeLabel:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    usoElementId = self->_usoElementId;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    enumeration = self->_enumeration;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_baseEdgeLabel)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_usoElementId];
    [v3 setObject:v5 forKey:@"uso_element_id"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_enumeration];
    [v3 setObject:v6 forKey:@"enumeration"];
  }

  baseEdgeLabel = self->_baseEdgeLabel;
  if (baseEdgeLabel)
  {
    v8 = [(SIRINLUEXTERNALUsoLabel *)baseEdgeLabel dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"base_edge_label"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoEdgeLabel;
  v4 = [(SIRINLUEXTERNALUsoEdgeLabel *)&v8 description];
  v5 = [(SIRINLUEXTERNALUsoEdgeLabel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasUsoElementId:(BOOL)a3
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