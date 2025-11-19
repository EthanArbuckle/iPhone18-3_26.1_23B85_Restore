@interface SIRINLUINTERNALITFMITFMHypothesis
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProbability:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALITFMITFMHypothesis

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_label = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_probability = *(v4 + 3);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(SIRINLUINTERNALITFMITFMHypothesis *)self setStringLabel:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_label != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_probability != *(v4 + 3))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_14;
  }

  stringLabel = self->_stringLabel;
  if (stringLabel | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_stringLabel copyWithZone:a3];
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
    v4[2] = self->_label;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[3] = LODWORD(self->_probability);
    *(v4 + 24) |= 2u;
  }

  if (self->_stringLabel)
  {
    v6 = v4;
    [v4 setStringLabel:?];
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
    label = self->_label;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    probability = self->_probability;
    PBDataWriterWriteFloatField();
    v4 = v8;
  }

  if (self->_stringLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_label];
    [v3 setObject:v6 forKey:@"label"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_probability;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v7 forKey:@"probability"];
  }

  stringLabel = self->_stringLabel;
  if (stringLabel)
  {
    [v3 setObject:stringLabel forKey:@"string_label"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALITFMITFMHypothesis;
  v4 = [(SIRINLUINTERNALITFMITFMHypothesis *)&v8 description];
  v5 = [(SIRINLUINTERNALITFMITFMHypothesis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasProbability:(BOOL)a3
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

@end