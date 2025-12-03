@interface SIRINLUINTERNALRewriteHypothesis
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRewriteType:(id)type;
- (int)rewriteType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRewriteType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALRewriteHypothesis

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  asrId = self->_asrId;
  v6 = *(fromCopy + 2);
  v8 = fromCopy;
  if (asrId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUEXTERNALUUID *)asrId mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALRewriteHypothesis *)self setAsrId:?];
  }

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 4))
  {
    [(SIRINLUINTERNALRewriteHypothesis *)self setUtterance:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 40);
  if (v7)
  {
    self->_confidence = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 40);
  }

  if ((v7 & 2) != 0)
  {
    self->_rewriteType = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALUUID *)self->_asrId hash];
  v4 = [(NSString *)self->_utterance hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v5.i64 = floor(confidence + 0.5);
    v9 = (confidence - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_rewriteType;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  asrId = self->_asrId;
  if (asrId | *(equalCopy + 2))
  {
    if (![(SIRINLUEXTERNALUUID *)asrId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(equalCopy + 4))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_confidence != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_rewriteType != *(equalCopy + 6))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_rewriteType;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_asrId)
  {
    [toCopy setAsrId:?];
    toCopy = v6;
  }

  if (self->_utterance)
  {
    [v6 setUtterance:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_confidence;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_rewriteType;
    *(toCopy + 40) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    rewriteType = self->_rewriteType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  asrId = self->_asrId;
  if (asrId)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"asr_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [dictionary setObject:utterance forKey:@"utterance"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [dictionary setObject:v8 forKey:@"confidence"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    rewriteType = self->_rewriteType;
    if (rewriteType)
    {
      if (rewriteType == 1)
      {
        v10 = @"REFERENCE_RESOLUTION";
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_rewriteType];
      }
    }

    else
    {
      v10 = @"CORRECTION";
    }

    [dictionary setObject:v10 forKey:@"rewrite_type"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALRewriteHypothesis;
  v4 = [(SIRINLUINTERNALRewriteHypothesis *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALRewriteHypothesis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsRewriteType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CORRECTION"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"REFERENCE_RESOLUTION"];
  }

  return v4;
}

- (void)setHasRewriteType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)rewriteType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_rewriteType;
  }

  else
  {
    return 0;
  }
}

@end