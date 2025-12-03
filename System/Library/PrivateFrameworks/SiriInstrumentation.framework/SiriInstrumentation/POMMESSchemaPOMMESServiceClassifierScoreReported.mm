@interface POMMESSchemaPOMMESServiceClassifierScoreReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESServiceClassifierScoreReported)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESServiceClassifierScoreReported)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasClassifierLabel:(BOOL)label;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESServiceClassifierScoreReported

- (POMMESSchemaPOMMESServiceClassifierScoreReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = POMMESSchemaPOMMESServiceClassifierScoreReported;
  v5 = [(POMMESSchemaPOMMESServiceClassifierScoreReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(POMMESSchemaPOMMESServiceClassifierScoreReported *)v5 setScore:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"classifierLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESServiceClassifierScoreReported setClassifierLabel:](v5, "setClassifierLabel:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESServiceClassifierScoreReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESServiceClassifierScoreReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESServiceClassifierScoreReported *)self dictionaryRepresentation];
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
    v5 = [(POMMESSchemaPOMMESServiceClassifierScoreReported *)self classifierLabel]- 1;
    if (v5 > 3)
    {
      v6 = @"POMMESERVICECLASSIFIERLABEL_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E1008[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"classifierLabel"];
    has = self->_has;
  }

  if (has)
  {
    v7 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESServiceClassifierScoreReported *)self score];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"score"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v2.i64 = floor(score + 0.5);
    v6 = (score - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_classifierLabel;
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    score = self->_score;
    [equalCopy score];
    if (score != v8)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v9)
  {
    classifierLabel = self->_classifierLabel;
    if (classifierLabel != [equalCopy classifierLabel])
    {
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasClassifierLabel:(BOOL)label
{
  if (label)
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