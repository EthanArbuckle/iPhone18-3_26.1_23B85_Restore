@interface MHSchemaMHUnintendedResponseSuppressionEnded
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithDictionary:(id)dictionary;
- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSpeakerIDThreshold:(BOOL)threshold;
- (void)setHasSpeakerIdScoreThreshold:(BOOL)threshold;
- (void)setHasThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHUnintendedResponseSuppressionEnded

- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MHSchemaMHUnintendedResponseSuppressionEnded;
  v5 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setModelVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"threshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setThreshold:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mitigationAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setMitigationAssetVersion:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"speakerIDThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setSpeakerIDThreshold:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setSpeakerIdScoreThreshold:?];
    }

    v14 = v5;
  }

  return v5;
}

- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self dictionaryRepresentation];
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
  if (self->_mitigationAssetVersion)
  {
    mitigationAssetVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
    v5 = [mitigationAssetVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"mitigationAssetVersion"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
    v7 = [modelVersion copy];
    [dictionary setObject:v7 forKeyedSubscript:@"modelVersion"];
  }

  has = self->_has;
  if (has)
  {
    v12 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUnintendedResponseSuppressionEnded *)self score];
    v13 = [v12 numberWithFloat:?];
    [dictionary setObject:v13 forKeyedSubscript:@"score"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v14 = MEMORY[0x1E696AD98];
  [(MHSchemaMHUnintendedResponseSuppressionEnded *)self speakerIDThreshold];
  v15 = [v14 numberWithFloat:?];
  [dictionary setObject:v15 forKeyedSubscript:@"speakerIDThreshold"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v16 = MEMORY[0x1E696AD98];
  [(MHSchemaMHUnintendedResponseSuppressionEnded *)self speakerIdScoreThreshold];
  v17 = [v16 numberWithFloat:?];
  [dictionary setObject:v17 forKeyedSubscript:@"speakerIdScoreThreshold"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    v9 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUnintendedResponseSuppressionEnded *)self threshold];
    v10 = [v9 numberWithFloat:?];
    [dictionary setObject:v10 forKeyedSubscript:@"threshold"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelVersion hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v8 = score;
    }

    else
    {
      v8 = -score;
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
    threshold = self->_threshold;
    if (threshold >= 0.0)
    {
      v13 = threshold;
    }

    else
    {
      v13 = -threshold;
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

  v16 = [(NSString *)self->_mitigationAssetVersion hash];
  if ((*&self->_has & 4) != 0)
  {
    speakerIDThreshold = self->_speakerIDThreshold;
    if (speakerIDThreshold >= 0.0)
    {
      v21 = speakerIDThreshold;
    }

    else
    {
      v21 = -speakerIDThreshold;
    }

    *v17.i64 = floor(v21 + 0.5);
    v22 = (v21 - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v17 = vbslq_s8(vnegq_f64(v23), v18, v17);
    v19 = 2654435761u * *v17.i64;
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

  if ((*&self->_has & 8) != 0)
  {
    speakerIdScoreThreshold = self->_speakerIdScoreThreshold;
    if (speakerIdScoreThreshold >= 0.0)
    {
      v26 = speakerIdScoreThreshold;
    }

    else
    {
      v26 = -speakerIdScoreThreshold;
    }

    *v17.i64 = floor(v26 + 0.5);
    v27 = (v26 - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v24 = 2654435761u * *vbslq_s8(vnegq_f64(v28), v18, v17).i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v24 += v27;
      }
    }

    else
    {
      v24 -= fabs(v27);
    }
  }

  else
  {
    v24 = 0;
  }

  return v6 ^ v3 ^ v11 ^ v16 ^ v19 ^ v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  modelVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
  modelVersion2 = [equalCopy modelVersion];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
    goto LABEL_18;
  }

  modelVersion3 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
  if (modelVersion3)
  {
    v8 = modelVersion3;
    modelVersion4 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
    modelVersion5 = [equalCopy modelVersion];
    v11 = [modelVersion4 isEqual:modelVersion5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    score = self->_score;
    [equalCopy score];
    if (score != v15)
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v16)
  {
    threshold = self->_threshold;
    [equalCopy threshold];
    if (threshold != v18)
    {
      goto LABEL_19;
    }
  }

  modelVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
  modelVersion2 = [equalCopy mitigationAssetVersion];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  mitigationAssetVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
  if (mitigationAssetVersion)
  {
    v20 = mitigationAssetVersion;
    mitigationAssetVersion2 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
    mitigationAssetVersion3 = [equalCopy mitigationAssetVersion];
    v23 = [mitigationAssetVersion2 isEqual:mitigationAssetVersion3];

    if (!v23)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v26 = self->_has;
  v27 = (*&v26 >> 2) & 1;
  v28 = equalCopy[40];
  if (v27 == ((v28 >> 2) & 1))
  {
    if (v27)
    {
      speakerIDThreshold = self->_speakerIDThreshold;
      [equalCopy speakerIDThreshold];
      if (speakerIDThreshold != v30)
      {
        goto LABEL_19;
      }

      v26 = self->_has;
      v28 = equalCopy[40];
    }

    v31 = (*&v26 >> 3) & 1;
    if (v31 == ((v28 >> 3) & 1))
    {
      if (!v31 || (speakerIdScoreThreshold = self->_speakerIdScoreThreshold, [equalCopy speakerIdScoreThreshold], speakerIdScoreThreshold == v33))
      {
        v24 = 1;
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v24 = 0;
LABEL_20:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  mitigationAssetVersion = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];

  if (mitigationAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  v8 = toCopy;
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v8 = toCopy;
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v8 = toCopy;
  }
}

- (void)setHasSpeakerIdScoreThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSpeakerIDThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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