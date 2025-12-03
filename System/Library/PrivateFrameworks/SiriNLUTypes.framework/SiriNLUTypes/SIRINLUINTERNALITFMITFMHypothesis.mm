@interface SIRINLUINTERNALITFMITFMHypothesis
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProbability:(BOOL)probability;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALITFMITFMHypothesis

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_label = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_probability = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SIRINLUINTERNALITFMITFMHypothesis *)self setStringLabel:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_label;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    return v12 ^ v8 ^ [(NSString *)self->_stringLabel hash:v3];
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  probability = self->_probability;
  if (probability < 0.0)
  {
    probability = -probability;
  }

  *v6.i32 = floorf(probability + 0.5);
  v10 = (probability - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = 2654435761u * *vbslq_s8(v11, v7, v6).i32;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabsf(v10);
  }

  return v12 ^ v8 ^ [(NSString *)self->_stringLabel hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_label != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_probability != *(equalCopy + 3))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_14;
  }

  stringLabel = self->_stringLabel;
  if (stringLabel | *(equalCopy + 2))
  {
    v7 = [(NSString *)stringLabel isEqual:?];
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
    *(v5 + 8) = self->_label;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_probability;
    *(v5 + 24) |= 2u;
  }

  v8 = [(NSString *)self->_stringLabel copyWithZone:zone];
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
    toCopy[2] = self->_label;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[3] = LODWORD(self->_probability);
    *(toCopy + 24) |= 2u;
  }

  if (self->_stringLabel)
  {
    v6 = toCopy;
    [toCopy setStringLabel:?];
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
    label = self->_label;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    probability = self->_probability;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }

  if (self->_stringLabel)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_label];
    [dictionary setObject:v6 forKey:@"label"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_probability;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v7 forKey:@"probability"];
  }

  stringLabel = self->_stringLabel;
  if (stringLabel)
  {
    [dictionary setObject:stringLabel forKey:@"string_label"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALITFMITFMHypothesis;
  v4 = [(SIRINLUINTERNALITFMITFMHypothesis *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALITFMITFMHypothesis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end