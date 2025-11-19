@interface INFERENCESchemaINFERENCEEuclidTrialParameters
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEuclidAsrConfidenceThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEEuclidTrialParameters

- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEEuclidTrialParameters;
  v5 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"euclidModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEEuclidTrialParameters *)v5 setEuclidModelVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"euclidScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCEEuclidTrialParameters *)v5 setEuclidScoreThreshold:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"euclidAsrConfidenceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(INFERENCESchemaINFERENCEEuclidTrialParameters *)v5 setEuclidAsrConfidenceThreshold:?];
    }

    v10 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidAsrConfidenceThreshold];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"euclidAsrConfidenceThreshold"];
  }

  if (self->_euclidModelVersion)
  {
    v6 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"euclidModelVersion"];
  }

  if (*&self->_has)
  {
    v8 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidScoreThreshold];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"euclidScoreThreshold"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_euclidModelVersion hash];
  if (*&self->_has)
  {
    euclidScoreThreshold = self->_euclidScoreThreshold;
    if (euclidScoreThreshold >= 0.0)
    {
      v8 = euclidScoreThreshold;
    }

    else
    {
      v8 = -euclidScoreThreshold;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    euclidAsrConfidenceThreshold = self->_euclidAsrConfidenceThreshold;
    if (euclidAsrConfidenceThreshold >= 0.0)
    {
      v13 = euclidAsrConfidenceThreshold;
    }

    else
    {
      v13 = -euclidAsrConfidenceThreshold;
    }

    *v4.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v11 += v14;
      }
    }

    else
    {
      v11 -= fabs(v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
  v6 = [v4 euclidModelVersion];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
    if (v8)
    {
      v9 = v8;
      v10 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
      v11 = [v4 euclidModelVersion];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = v4[24];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        euclidScoreThreshold = self->_euclidScoreThreshold;
        [v4 euclidScoreThreshold];
        if (euclidScoreThreshold != v16)
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = v4[24];
      }

      v17 = (*&has >> 1) & 1;
      if (v17 == ((v14 >> 1) & 1))
      {
        if (!v17 || (euclidAsrConfidenceThreshold = self->_euclidAsrConfidenceThreshold, [v4 euclidAsrConfidenceThreshold], euclidAsrConfidenceThreshold == v19))
        {
          v20 = 1;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
  }

LABEL_15:
  v20 = 0;
LABEL_16:

  return v20;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v6 = v7;
  }
}

- (void)setHasEuclidAsrConfidenceThreshold:(BOOL)a3
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