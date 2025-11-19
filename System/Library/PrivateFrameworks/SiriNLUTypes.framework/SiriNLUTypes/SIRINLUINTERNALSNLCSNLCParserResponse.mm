@interface SIRINLUINTERNALSNLCSNLCParserResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsClassificationLabel:(id)a3;
- (int)classificationLabel;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasClassificationProbability:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLCSNLCParserResponse

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_classificationLabel = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_classificationProbability = *(v4 + 3);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_classificationLabel;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    return v8 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  classificationProbability = self->_classificationProbability;
  if (classificationProbability < 0.0)
  {
    classificationProbability = -classificationProbability;
  }

  *v2.i32 = floorf(classificationProbability + 0.5);
  v6 = (classificationProbability - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = 2654435761u * *vbslq_s8(v7, v3, v2).i32;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabsf(v6);
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_classificationLabel != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_classificationProbability != *(v4 + 3))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_classificationLabel;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = LODWORD(self->_classificationProbability);
    *(result + 16) |= 2u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_classificationLabel;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[3] = LODWORD(self->_classificationProbability);
    *(v4 + 16) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    classificationLabel = self->_classificationLabel;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    classificationProbability = self->_classificationProbability;
    PBDataWriterWriteFloatField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    classificationLabel = self->_classificationLabel;
    if (classificationLabel)
    {
      if (classificationLabel == 1)
      {
        v7 = @"SNLC_CLASS_DEVICE";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_classificationLabel];
      }
    }

    else
    {
      v7 = @"SNLC_CLASS_SERVER";
    }

    [v3 setObject:v7 forKey:@"classification_label"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_classificationProbability;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v3 setObject:v8 forKey:@"classification_probability"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLCSNLCParserResponse;
  v4 = [(SIRINLUINTERNALSNLCSNLCParserResponse *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLCSNLCParserResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasClassificationProbability:(BOOL)a3
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

- (int)StringAsClassificationLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SNLC_CLASS_SERVER"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"SNLC_CLASS_DEVICE"];
  }

  return v4;
}

- (int)classificationLabel
{
  if (*&self->_has)
  {
    return self->_classificationLabel;
  }

  else
  {
    return 0;
  }
}

@end