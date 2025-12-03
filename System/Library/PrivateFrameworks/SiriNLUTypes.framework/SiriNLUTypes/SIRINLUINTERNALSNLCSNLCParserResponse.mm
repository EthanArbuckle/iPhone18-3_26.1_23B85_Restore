@interface SIRINLUINTERNALSNLCSNLCParserResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsClassificationLabel:(id)label;
- (int)classificationLabel;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasClassificationProbability:(BOOL)probability;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLCSNLCParserResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_classificationLabel = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_classificationProbability = *(fromCopy + 3);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_classificationLabel != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_classificationProbability != *(equalCopy + 3))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_classificationLabel;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[3] = LODWORD(self->_classificationProbability);
    *(toCopy + 16) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    classificationLabel = self->_classificationLabel;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    classificationProbability = self->_classificationProbability;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v7 forKey:@"classification_label"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_classificationProbability;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [dictionary setObject:v8 forKey:@"classification_probability"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLCSNLCParserResponse;
  v4 = [(SIRINLUINTERNALSNLCSNLCParserResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLCSNLCParserResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasClassificationProbability:(BOOL)probability
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

- (int)StringAsClassificationLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"SNLC_CLASS_SERVER"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [labelCopy isEqualToString:@"SNLC_CLASS_DEVICE"];
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