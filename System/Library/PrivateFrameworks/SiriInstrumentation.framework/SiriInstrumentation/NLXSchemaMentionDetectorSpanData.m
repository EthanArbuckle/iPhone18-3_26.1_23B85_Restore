@interface NLXSchemaMentionDetectorSpanData
- (BOOL)isEqual:(id)a3;
- (NLXSchemaMentionDetectorSpanData)initWithDictionary:(id)a3;
- (NLXSchemaMentionDetectorSpanData)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaMentionDetectorSpanData

- (NLXSchemaMentionDetectorSpanData)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NLXSchemaMentionDetectorSpanData;
  v5 = [(NLXSchemaMentionDetectorSpanData *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(NLXSchemaMentionDetectorSpanData *)v5 setScore:?];
    }

    v7 = v5;
  }

  return v5;
}

- (NLXSchemaMentionDetectorSpanData)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaMentionDetectorSpanData *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaMentionDetectorSpanData *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NLXSchemaMentionDetectorSpanData *)self score];
    v5 = [v4 numberWithDouble:?];
    [v3 setObject:v5 forKeyedSubscript:@"score"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

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
  result = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      result += v6;
    }
  }

  else
  {
    result -= fabs(v6);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[16] & 1))
    {
      if ((*&self->_has & 1) == 0 || (score = self->_score, [v4 score], score == v6))
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end