@interface MHSchemaMHLatticeFalseTriggerMitigationEnded
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHLatticeFalseTriggerMitigationEnded)initWithDictionary:(id)dictionary;
- (MHSchemaMHLatticeFalseTriggerMitigationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHLatticeFalseTriggerMitigationEnded

- (MHSchemaMHLatticeFalseTriggerMitigationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MHSchemaMHLatticeFalseTriggerMitigationEnded;
  v5 = [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)v5 setScore:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"threshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)v5 setThreshold:?];
    }

    v8 = v5;
  }

  return v5;
}

- (MHSchemaMHLatticeFalseTriggerMitigationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = MEMORY[0x1E696AD98];
    [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)self score];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"score"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)self threshold];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"threshold"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v6 = score;
    }

    else
    {
      v6 = -score;
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
    threshold = self->_threshold;
    if (threshold >= 0.0)
    {
      v11 = threshold;
    }

    else
    {
      v11 = -threshold;
    }

    *v2.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
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

  return v9 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    score = self->_score;
    [equalCopy score];
    if (score != v8)
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (!v9 || (threshold = self->_threshold, [equalCopy threshold], threshold == v11))
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v12 = 0;
LABEL_10:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (void)setHasThreshold:(BOOL)threshold
{
  if (threshold)
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