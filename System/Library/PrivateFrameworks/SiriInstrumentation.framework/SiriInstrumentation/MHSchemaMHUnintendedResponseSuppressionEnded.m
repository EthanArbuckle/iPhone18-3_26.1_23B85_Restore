@interface MHSchemaMHUnintendedResponseSuppressionEnded
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithDictionary:(id)a3;
- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSpeakerIDThreshold:(BOOL)a3;
- (void)setHasSpeakerIdScoreThreshold:(BOOL)a3;
- (void)setHasThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHUnintendedResponseSuppressionEnded

- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MHSchemaMHUnintendedResponseSuppressionEnded;
  v5 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setModelVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"threshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setThreshold:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"mitigationAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setMitigationAssetVersion:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"speakerIDThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(MHSchemaMHUnintendedResponseSuppressionEnded *)v5 setSpeakerIDThreshold:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"speakerIdScoreThreshold"];
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

- (MHSchemaMHUnintendedResponseSuppressionEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self dictionaryRepresentation];
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
  if (self->_mitigationAssetVersion)
  {
    v4 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"mitigationAssetVersion"];
  }

  if (self->_modelVersion)
  {
    v6 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"modelVersion"];
  }

  has = self->_has;
  if (has)
  {
    v12 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUnintendedResponseSuppressionEnded *)self score];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"score"];

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
  [v3 setObject:v15 forKeyedSubscript:@"speakerIDThreshold"];

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
  [v3 setObject:v17 forKeyedSubscript:@"speakerIdScoreThreshold"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    v9 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUnintendedResponseSuppressionEnded *)self threshold];
    v10 = [v9 numberWithFloat:?];
    [v3 setObject:v10 forKeyedSubscript:@"threshold"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];
    v10 = [v4 modelVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    score = self->_score;
    [v4 score];
    if (score != v15)
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v16)
  {
    threshold = self->_threshold;
    [v4 threshold];
    if (threshold != v18)
    {
      goto LABEL_19;
    }
  }

  v5 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
  v6 = [v4 mitigationAssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
  if (v19)
  {
    v20 = v19;
    v21 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];
    v22 = [v4 mitigationAssetVersion];
    v23 = [v21 isEqual:v22];

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
  v28 = v4[40];
  if (v27 == ((v28 >> 2) & 1))
  {
    if (v27)
    {
      speakerIDThreshold = self->_speakerIDThreshold;
      [v4 speakerIDThreshold];
      if (speakerIDThreshold != v30)
      {
        goto LABEL_19;
      }

      v26 = self->_has;
      v28 = v4[40];
    }

    v31 = (*&v26 >> 3) & 1;
    if (v31 == ((v28 >> 3) & 1))
    {
      if (!v31 || (speakerIdScoreThreshold = self->_speakerIdScoreThreshold, [v4 speakerIdScoreThreshold], speakerIdScoreThreshold == v33))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self modelVersion];

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

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
  }

  v6 = [(MHSchemaMHUnintendedResponseSuppressionEnded *)self mitigationAssetVersion];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  v8 = v9;
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteFloatField();
    v8 = v9;
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v8 = v9;
  }
}

- (void)setHasSpeakerIdScoreThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSpeakerIDThreshold:(BOOL)a3
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

- (void)setHasThreshold:(BOOL)a3
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