@interface NLXSchemaMARRSQueryRewriteHypothesis
- (BOOL)isEqual:(id)a3;
- (NLXSchemaMARRSQueryRewriteHypothesis)initWithDictionary:(id)a3;
- (NLXSchemaMARRSQueryRewriteHypothesis)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRewriteType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaMARRSQueryRewriteHypothesis

- (NLXSchemaMARRSQueryRewriteHypothesis)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLXSchemaMARRSQueryRewriteHypothesis;
  v5 = [(NLXSchemaMARRSQueryRewriteHypothesis *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(NLXSchemaMARRSQueryRewriteHypothesis *)v5 setConfidence:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"rewriteType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaMARRSQueryRewriteHypothesis setRewriteType:](v5, "setRewriteType:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSQueryRewriteHypothesis)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSQueryRewriteHypothesis *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaMARRSQueryRewriteHypothesis *)self dictionaryRepresentation];
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
    [(NLXSchemaMARRSQueryRewriteHypothesis *)self confidence];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"confidence"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(NLXSchemaMARRSQueryRewriteHypothesis *)self rewriteType];
    v8 = @"MARRSQUERYREWRITETYPE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"MARRSQUERYREWRITETYPE_CORRECTION";
    }

    if (v7 == 2)
    {
      v9 = @"MARRSQUERYREWRITETYPE_ANAPHORA_ELLIPSIS_RESOLUTION";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"rewriteType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v2.i64 = floor(confidence + 0.5);
    v6 = (confidence - *v2.i64) * 1.84467441e19;
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
    v8 = 2654435761 * self->_rewriteType;
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
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    confidence = self->_confidence;
    [v4 confidence];
    if (confidence != v8)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v9)
  {
    rewriteType = self->_rewriteType;
    if (rewriteType != [v4 rewriteType])
    {
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
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
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end