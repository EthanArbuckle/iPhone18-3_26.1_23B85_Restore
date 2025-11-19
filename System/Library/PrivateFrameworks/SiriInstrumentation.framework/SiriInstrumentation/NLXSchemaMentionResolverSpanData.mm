@interface NLXSchemaMentionResolverSpanData
- (BOOL)isEqual:(id)a3;
- (NLXSchemaMentionResolverSpanData)initWithDictionary:(id)a3;
- (NLXSchemaMentionResolverSpanData)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasModelScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaMentionResolverSpanData

- (NLXSchemaMentionResolverSpanData)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLXSchemaMentionResolverSpanData;
  v5 = [(NLXSchemaMentionResolverSpanData *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"jointScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(NLXSchemaMentionResolverSpanData *)v5 setJointScore:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"modelScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(NLXSchemaMentionResolverSpanData *)v5 setModelScore:?];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaMentionResolverSpanData)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaMentionResolverSpanData *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaMentionResolverSpanData *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = MEMORY[0x1E696AD98];
    [(NLXSchemaMentionResolverSpanData *)self jointScore];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"jointScore"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(NLXSchemaMentionResolverSpanData *)self modelScore];
    v8 = [v7 numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"modelScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    jointScore = self->_jointScore;
    if (jointScore < 0.0)
    {
      jointScore = -jointScore;
    }

    *v2.i64 = floor(jointScore + 0.5);
    v6 = (jointScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
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
    modelScore = self->_modelScore;
    if (modelScore < 0.0)
    {
      modelScore = -modelScore;
    }

    *v2.i64 = floor(modelScore + 0.5);
    v10 = (modelScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    jointScore = self->_jointScore;
    [v4 jointScore];
    if (jointScore != v8)
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (!v9 || (modelScore = self->_modelScore, [v4 modelScore], modelScore == v11))
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)setHasModelScore:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end