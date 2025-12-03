@interface MHSchemaMHSpeakerFalseTriggerMitigated
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithDictionary:(id)dictionary;
- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasProcessedAudioDurationInNs:(BOOL)ns;
- (void)setHasThresholdScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSpeakerFalseTriggerMitigated

- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MHSchemaMHSpeakerFalseTriggerMitigated;
  v5 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setModelVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speakerMatchScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setSpeakerMatchScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"thresholdScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setThresholdScore:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setErrorMessage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"processedAudioDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(MHSchemaMHSpeakerFalseTriggerMitigated *)v5 setProcessedAudioDurationInNs:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerFalseTriggerMitigated setErrorCode:](v5, "setErrorCode:", [v13 unsignedIntValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerFalseTriggerMitigated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHSpeakerFalseTriggerMitigated errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorMessage)
  {
    errorMessage = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
    v6 = [errorMessage copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorMessage"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
    v8 = [modelVersion copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelVersion"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v13 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeakerFalseTriggerMitigated *)self processedAudioDurationInNs];
    v14 = [v13 numberWithDouble:?];
    [dictionary setObject:v14 forKeyedSubscript:@"processedAudioDurationInNs"];

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
  [dictionary setObject:v16 forKeyedSubscript:@"speakerMatchScore"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v10 = MEMORY[0x1E696AD98];
    [(MHSchemaMHSpeakerFalseTriggerMitigated *)self thresholdScore];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"thresholdScore"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  modelVersion = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
  modelVersion2 = [equalCopy modelVersion];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
    goto LABEL_18;
  }

  modelVersion3 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
  if (modelVersion3)
  {
    v8 = modelVersion3;
    modelVersion4 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];
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
  v13 = equalCopy[44];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    speakerMatchScore = self->_speakerMatchScore;
    [equalCopy speakerMatchScore];
    if (speakerMatchScore != v15)
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[44];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v16)
  {
    thresholdScore = self->_thresholdScore;
    [equalCopy thresholdScore];
    if (thresholdScore != v18)
    {
      goto LABEL_19;
    }
  }

  modelVersion = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
  modelVersion2 = [equalCopy errorMessage];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  errorMessage = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
  if (errorMessage)
  {
    v20 = errorMessage;
    errorMessage2 = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];
    errorMessage3 = [equalCopy errorMessage];
    v23 = [errorMessage2 isEqual:errorMessage3];

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
  v28 = equalCopy[44];
  if (v27 == ((v28 >> 2) & 1))
  {
    if (v27)
    {
      processedAudioDurationInNs = self->_processedAudioDurationInNs;
      [equalCopy processedAudioDurationInNs];
      if (processedAudioDurationInNs != v30)
      {
        goto LABEL_19;
      }

      v26 = self->_has;
      v28 = equalCopy[44];
    }

    v31 = (*&v26 >> 3) & 1;
    if (v31 == ((v28 >> 3) & 1))
    {
      if (!v31 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
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
  modelVersion = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self modelVersion];

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

  errorMessage = [(MHSchemaMHSpeakerFalseTriggerMitigated *)self errorMessage];

  if (errorMessage)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  v8 = toCopy;
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v8 = toCopy;
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v8 = toCopy;
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasProcessedAudioDurationInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasThresholdScore:(BOOL)score
{
  if (score)
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