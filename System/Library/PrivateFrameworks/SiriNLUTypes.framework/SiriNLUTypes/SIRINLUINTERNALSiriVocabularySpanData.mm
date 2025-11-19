@interface SIRINLUINTERNALSiriVocabularySpanData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPriorOrdinality:(BOOL)a3;
- (void)setHasPriorScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSiriVocabularySpanData

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_priorOrdinality = *(v4 + 6);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_priorScore = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 28))
  {
LABEL_4:
    self->_matchScore = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_priorOrdinality;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  priorScore = self->_priorScore;
  if (priorScore < 0.0)
  {
    priorScore = -priorScore;
  }

  *v2.i64 = floor(priorScore + 0.5);
  v6 = (priorScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if (*&self->_has)
  {
    matchScore = self->_matchScore;
    if (matchScore < 0.0)
    {
      matchScore = -matchScore;
    }

    *v2.i64 = floor(matchScore + 0.5);
    v11 = (matchScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v8 ^ v4 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_priorOrdinality != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_priorScore != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_matchScore != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 6) = self->_priorOrdinality;
    *(result + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = *&self->_priorScore;
  *(result + 28) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = *&self->_matchScore;
  *(result + 28) |= 1u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[6] = self->_priorOrdinality;
    *(v4 + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 2) = *&self->_priorScore;
  *(v4 + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = *&self->_matchScore;
    *(v4 + 28) |= 1u;
  }

LABEL_5:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    priorOrdinality = self->_priorOrdinality;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  priorScore = self->_priorScore;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    matchScore = self->_matchScore;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_priorOrdinality];
    [v3 setObject:v7 forKey:@"prior_ordinality"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_priorScore];
  [v3 setObject:v8 forKey:@"prior_score"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_matchScore];
    [v3 setObject:v5 forKey:@"match_score"];
  }

LABEL_5:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSiriVocabularySpanData;
  v4 = [(SIRINLUINTERNALSiriVocabularySpanData *)&v8 description];
  v5 = [(SIRINLUINTERNALSiriVocabularySpanData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasPriorScore:(BOOL)a3
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

- (void)setHasPriorOrdinality:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end