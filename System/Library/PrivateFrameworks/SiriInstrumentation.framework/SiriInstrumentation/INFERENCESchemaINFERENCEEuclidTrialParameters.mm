@interface INFERENCESchemaINFERENCEEuclidTrialParameters
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEuclidAsrConfidenceThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEEuclidTrialParameters

- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEEuclidTrialParameters;
  v5 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"euclidModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(INFERENCESchemaINFERENCEEuclidTrialParameters *)v5 setEuclidModelVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"euclidScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCEEuclidTrialParameters *)v5 setEuclidScoreThreshold:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"euclidAsrConfidenceThreshold"];
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

- (INFERENCESchemaINFERENCEEuclidTrialParameters)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidAsrConfidenceThreshold];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"euclidAsrConfidenceThreshold"];
  }

  if (self->_euclidModelVersion)
  {
    euclidModelVersion = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
    v7 = [euclidModelVersion copy];
    [dictionary setObject:v7 forKeyedSubscript:@"euclidModelVersion"];
  }

  if (*&self->_has)
  {
    v8 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidScoreThreshold];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"euclidScoreThreshold"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  euclidModelVersion = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
  euclidModelVersion2 = [equalCopy euclidModelVersion];
  v7 = euclidModelVersion2;
  if ((euclidModelVersion != 0) != (euclidModelVersion2 == 0))
  {
    euclidModelVersion3 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
    if (euclidModelVersion3)
    {
      v9 = euclidModelVersion3;
      euclidModelVersion4 = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];
      euclidModelVersion5 = [equalCopy euclidModelVersion];
      v12 = [euclidModelVersion4 isEqual:euclidModelVersion5];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = equalCopy[24];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        euclidScoreThreshold = self->_euclidScoreThreshold;
        [equalCopy euclidScoreThreshold];
        if (euclidScoreThreshold != v16)
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = equalCopy[24];
      }

      v17 = (*&has >> 1) & 1;
      if (v17 == ((v14 >> 1) & 1))
      {
        if (!v17 || (euclidAsrConfidenceThreshold = self->_euclidAsrConfidenceThreshold, [equalCopy euclidAsrConfidenceThreshold], euclidAsrConfidenceThreshold == v19))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  euclidModelVersion = [(INFERENCESchemaINFERENCEEuclidTrialParameters *)self euclidModelVersion];

  if (euclidModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v6 = toCopy;
  }
}

- (void)setHasEuclidAsrConfidenceThreshold:(BOOL)threshold
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