@interface SIRINLUINTERNALRewriteHypothesis
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRewriteType:(id)a3;
- (int)rewriteType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRewriteType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALRewriteHypothesis

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  asrId = self->_asrId;
  v6 = *(v4 + 2);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  if (*(v4 + 4))
  {
    [(SIRINLUINTERNALRewriteHypothesis *)self setUtterance:?];
    v4 = v8;
  }

  v7 = *(v4 + 40);
  if (v7)
  {
    self->_confidence = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 40);
  }

  if ((v7 & 2) != 0)
  {
    self->_rewriteType = *(v4 + 6);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  asrId = self->_asrId;
  if (asrId | *(v4 + 2))
  {
    if (![(SIRINLUEXTERNALUUID *)asrId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  utterance = self->_utterance;
  if (utterance | *(v4 + 4))
  {
    if (![(NSString *)utterance isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_confidence != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_rewriteType != *(v4 + 6))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALUUID *)self->_asrId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_utterance copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_asrId)
  {
    [v4 setAsrId:?];
    v4 = v6;
  }

  if (self->_utterance)
  {
    [v6 setUtterance:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_confidence;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_rewriteType;
    *(v4 + 40) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_asrId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_utterance)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    rewriteType = self->_rewriteType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  asrId = self->_asrId;
  if (asrId)
  {
    v5 = [(SIRINLUEXTERNALUUID *)asrId dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"asr_id"];
  }

  utterance = self->_utterance;
  if (utterance)
  {
    [v3 setObject:utterance forKey:@"utterance"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
    [v3 setObject:v8 forKey:@"confidence"];

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

    [v3 setObject:v10 forKey:@"rewrite_type"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALRewriteHypothesis;
  v4 = [(SIRINLUINTERNALRewriteHypothesis *)&v8 description];
  v5 = [(SIRINLUINTERNALRewriteHypothesis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsRewriteType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CORRECTION"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"REFERENCE_RESOLUTION"];
  }

  return v4;
}

- (void)setHasRewriteType:(BOOL)a3
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