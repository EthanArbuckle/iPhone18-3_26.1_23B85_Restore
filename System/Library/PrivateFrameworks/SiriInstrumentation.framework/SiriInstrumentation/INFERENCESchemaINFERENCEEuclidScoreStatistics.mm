@interface INFERENCESchemaINFERENCEEuclidScoreStatistics
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEEuclidScoreStatistics)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEEuclidScoreStatistics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMaxScore:(BOOL)score;
- (void)setHasMeanScore:(BOOL)score;
- (void)setHasMedianScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEEuclidScoreStatistics

- (INFERENCESchemaINFERENCEEuclidScoreStatistics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEEuclidScoreStatistics;
  v5 = [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"minScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)v5 setMinScore:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"maxScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)v5 setMaxScore:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"medianScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)v5 setMedianScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"meanScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)v5 setMeanScore:?];
    }

    v10 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEEuclidScoreStatistics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self maxScore];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"maxScore"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self meanScore];
  v11 = [v10 numberWithFloat:?];
  [dictionary setObject:v11 forKeyedSubscript:@"meanScore"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v12 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self medianScore];
  v13 = [v12 numberWithFloat:?];
  [dictionary setObject:v13 forKeyedSubscript:@"medianScore"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEEuclidScoreStatistics *)self minScore];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"minScore"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    minScore = self->_minScore;
    if (minScore >= 0.0)
    {
      v6 = minScore;
    }

    else
    {
      v6 = -minScore;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    maxScore = self->_maxScore;
    if (maxScore >= 0.0)
    {
      v11 = maxScore;
    }

    else
    {
      v11 = -maxScore;
    }

    *v2.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    medianScore = self->_medianScore;
    if (medianScore >= 0.0)
    {
      v16 = medianScore;
    }

    else
    {
      v16 = -medianScore;
    }

    *v2.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v18), v3, v2);
    v14 = 2654435761u * *v2.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v14 += v17;
      }
    }

    else
    {
      v14 -= fabs(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    meanScore = self->_meanScore;
    if (meanScore >= 0.0)
    {
      v21 = meanScore;
    }

    else
    {
      v21 = -meanScore;
    }

    *v2.i64 = floor(v21 + 0.5);
    v22 = (v21 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v3, v2).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v19 += v22;
      }
    }

    else
    {
      v19 -= fabs(v22);
    }
  }

  else
  {
    v19 = 0;
  }

  return v9 ^ v4 ^ v14 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_17;
  }

  if (*&has)
  {
    minScore = self->_minScore;
    [equalCopy minScore];
    if (minScore != v8)
    {
      goto LABEL_17;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      maxScore = self->_maxScore;
      [equalCopy maxScore];
      if (maxScore != v11)
      {
        goto LABEL_17;
      }

      has = self->_has;
      v6 = equalCopy[24];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 == ((v6 >> 2) & 1))
    {
      if (v12)
      {
        medianScore = self->_medianScore;
        [equalCopy medianScore];
        if (medianScore != v14)
        {
          goto LABEL_17;
        }

        has = self->_has;
        v6 = equalCopy[24];
      }

      v15 = (*&has >> 3) & 1;
      if (v15 == ((v6 >> 3) & 1))
      {
        if (!v15 || (meanScore = self->_meanScore, [equalCopy meanScore], meanScore == v17))
        {
          v18 = 1;
          goto LABEL_18;
        }
      }
    }
  }

LABEL_17:
  v18 = 0;
LABEL_18:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteFloatField();
  }

LABEL_6:
}

- (void)setHasMeanScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMedianScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMaxScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end