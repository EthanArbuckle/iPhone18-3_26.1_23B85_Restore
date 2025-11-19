@interface MHSchemaMHSpeakerFalseTriggerMitigated
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithDictionary:(id)a3;
- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasProcessedAudioDurationInNs:(BOOL)a3;
- (void)setHasThresholdScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSpeakerFalseTriggerMitigated

- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MHSchemaMHSpeakerFalseTriggerMitigated;
  v5 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setModelVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"speakerMatchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setSpeakerMatchScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"thresholdScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setThresholdScore:?];
    }

    v10 = [v4 objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setErrorMessage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"processedAudioDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setProcessedAudioDurationInNs:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerFalseTriggerMitigated setErrorCode:](v5, "setErrorCode:", [v13 unsignedIntValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHSpeakerFalseTriggerMitigated errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorMessage)
  {
    v5 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"errorMessage"];
  }

  if (self->_modelVersion)
  {
    v7 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v13 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeakerFalseTriggerMitigated *)self processedAudioDurationInNs];
    v14 = [v13 numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"processedAudioDurationInNs"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = MEMORY[0x1E696AD98];
  [(MHSchemaMHSpeakerFalseTriggerMitigated *)self speakerMatchScore];
  v16 = [v15 numberWithFloat:?];
  [v3 setObject:v16 forKeyedSubscript:@"speakerMatchScore"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v10 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeakerFalseTriggerMitigated *)self thresholdScore];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"thresholdScore"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelVersion hash];
  if (*&self->_has)
  {
    speakerMatchScore = self->_speakerMatchScore;
    if (speakerMatchScore >= 0.0)
    {
      v8 = speakerMatchScore;
    }

    else
    {
      v8 = -speakerMatchScore;
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
    thresholdScore = self->_thresholdScore;
    if (thresholdScore >= 0.0)
    {
      v13 = thresholdScore;
    }

    else
    {
      v13 = -thresholdScore;
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

  v16 = [(NSString *)self->_errorMessage hash];
  if ((*&self->_has & 4) != 0)
  {
    processedAudioDurationInNs = self->_processedAudioDurationInNs;
    if (processedAudioDurationInNs < 0.0)
    {
      processedAudioDurationInNs = -processedAudioDurationInNs;
    }

    *v17.i64 = floor(processedAudioDurationInNs + 0.5);
    v21 = (processedAudioDurationInNs - *v17.i64) * 1.84467441e19;
    *v18.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v18, v17).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v23 = 2654435761 * self->_errorCode;
  }

  else
  {
    v23 = 0;
  }

  return v6 ^ v3 ^ v11 ^ v16 ^ v19 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
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
  v13 = v4[44];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    speakerMatchScore = self->_speakerMatchScore;
    [v4 speakerMatchScore];
    if (speakerMatchScore != v15)
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[44];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v16)
  {
    thresholdScore = self->_thresholdScore;
    [v4 thresholdScore];
    if (thresholdScore != v18)
    {
      goto LABEL_19;
    }
  }

  v5 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
  v6 = [v4 errorMessage];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
  if (v19)
  {
    v20 = v19;
    v21 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
    v22 = [v4 errorMessage];
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
  v28 = v4[44];
  if (v27 == ((v28 >> 2) & 1))
  {
    if (v27)
    {
      processedAudioDurationInNs = self->_processedAudioDurationInNs;
      [v4 processedAudioDurationInNs];
      if (processedAudioDurationInNs != v30)
      {
        goto LABEL_19;
      }

      v26 = self->_has;
      v28 = v4[44];
    }

    v31 = (*&v26 >> 3) & 1;
    if (v31 == ((v28 >> 3) & 1))
    {
      if (!v31 || (errorCode = self->_errorCode, errorCode == [v4 errorCode]))
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
  v4 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];

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

  v6 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  v8 = v9;
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v8 = v9;
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v8 = v9;
  }
}

- (void)setHasErrorCode:(BOOL)a3
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

- (void)setHasProcessedAudioDurationInNs:(BOOL)a3
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

- (void)setHasThresholdScore:(BOOL)a3
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