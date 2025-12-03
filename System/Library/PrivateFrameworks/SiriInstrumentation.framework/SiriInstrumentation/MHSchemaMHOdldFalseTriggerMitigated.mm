@interface MHSchemaMHOdldFalseTriggerMitigated
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHOdldFalseTriggerMitigated)initWithDictionary:(id)dictionary;
- (MHSchemaMHOdldFalseTriggerMitigated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAnchorSocialScore:(BOOL)score;
- (void)setHasConversationalOdldScore:(BOOL)score;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasOdldScoreThreshold:(BOOL)threshold;
- (void)setHasSocialScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHOdldFalseTriggerMitigated

- (MHSchemaMHOdldFalseTriggerMitigated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = MHSchemaMHOdldFalseTriggerMitigated;
  v5 = [(MHSchemaMHOdldFalseTriggerMitigated *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setModelVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"odldScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setOdldScore:?];
    }

    v23 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"odldScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setOdldScoreThreshold:?];
    }

    v22 = v9;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setErrorMessage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHOdldFalseTriggerMitigated setErrorCode:](v5, "setErrorCode:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"anchorRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setAnchorRequestId:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"previousRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setPreviousRequestId:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"anchorSocialScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setAnchorSocialScore:?];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"socialScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setSocialScore:?];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"conversationalOdldScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setConversationalOdldScore:?];
    }

    v20 = v5;
  }

  return v5;
}

- (MHSchemaMHOdldFalseTriggerMitigated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHOdldFalseTriggerMitigated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHOdldFalseTriggerMitigated *)self dictionaryRepresentation];
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
  if (self->_anchorRequestId)
  {
    anchorRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
    dictionaryRepresentation = [anchorRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"anchorRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"anchorRequestId"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v20 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorSocialScore];
    v21 = [v20 numberWithFloat:?];
    [dictionary setObject:v21 forKeyedSubscript:@"anchorSocialScore"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v22 = MEMORY[0x1E696AD98];
  [(MHSchemaMHOdldFalseTriggerMitigated *)self conversationalOdldScore];
  v23 = [v22 numberWithFloat:?];
  [dictionary setObject:v23 forKeyedSubscript:@"conversationalOdldScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHOdldFalseTriggerMitigated errorCode](self, "errorCode")}];
    [dictionary setObject:v8 forKeyedSubscript:@"errorCode"];
  }

LABEL_10:
  if (self->_errorMessage)
  {
    errorMessage = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
    v10 = [errorMessage copy];
    [dictionary setObject:v10 forKeyedSubscript:@"errorMessage"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
    v12 = [modelVersion copy];
    [dictionary setObject:v12 forKeyedSubscript:@"modelVersion"];
  }

  v13 = self->_has;
  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self odldScore];
    v15 = [v14 numberWithFloat:?];
    [dictionary setObject:v15 forKeyedSubscript:@"odldScore"];

    v13 = self->_has;
  }

  if ((v13 & 2) != 0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self odldScoreThreshold];
    v17 = [v16 numberWithFloat:?];
    [dictionary setObject:v17 forKeyedSubscript:@"odldScoreThreshold"];
  }

  if (self->_previousRequestId)
  {
    previousRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
    dictionaryRepresentation2 = [previousRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"previousRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"previousRequestId"];
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v25 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self socialScore];
    v26 = [v25 numberWithFloat:?];
    [dictionary setObject:v26 forKeyedSubscript:@"socialScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_modelVersion hash];
  if (*&self->_has)
  {
    odldScore = self->_odldScore;
    if (odldScore >= 0.0)
    {
      v8 = odldScore;
    }

    else
    {
      v8 = -odldScore;
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
    odldScoreThreshold = self->_odldScoreThreshold;
    if (odldScoreThreshold >= 0.0)
    {
      v13 = odldScoreThreshold;
    }

    else
    {
      v13 = -odldScoreThreshold;
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
    v17 = 2654435761 * self->_errorCode;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(SISchemaUUID *)self->_anchorRequestId hash];
  v19 = [(SISchemaUUID *)self->_previousRequestId hash];
  if ((*&self->_has & 8) != 0)
  {
    anchorSocialScore = self->_anchorSocialScore;
    if (anchorSocialScore >= 0.0)
    {
      v24 = anchorSocialScore;
    }

    else
    {
      v24 = -anchorSocialScore;
    }

    *v20.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v20.i64) * 1.84467441e19;
    *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v20 = vbslq_s8(vnegq_f64(v26), v21, v20);
    v22 = 2654435761u * *v20.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v22 += v25;
      }
    }

    else
    {
      v22 -= fabs(v25);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    socialScore = self->_socialScore;
    if (socialScore >= 0.0)
    {
      v29 = socialScore;
    }

    else
    {
      v29 = -socialScore;
    }

    *v20.i64 = floor(v29 + 0.5);
    v30 = (v29 - *v20.i64) * 1.84467441e19;
    *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v20 = vbslq_s8(vnegq_f64(v31), v21, v20);
    v27 = 2654435761u * *v20.i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v27 += v30;
      }
    }

    else
    {
      v27 -= fabs(v30);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    conversationalOdldScore = self->_conversationalOdldScore;
    if (conversationalOdldScore >= 0.0)
    {
      v34 = conversationalOdldScore;
    }

    else
    {
      v34 = -conversationalOdldScore;
    }

    *v20.i64 = floor(v34 + 0.5);
    v35 = (v34 - *v20.i64) * 1.84467441e19;
    *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v32 = 2654435761u * *vbslq_s8(vnegq_f64(v36), v21, v20).i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v32 += v35;
      }
    }

    else
    {
      v32 -= fabs(v35);
    }
  }

  else
  {
    v32 = 0;
  }

  return v6 ^ v3 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19 ^ v22 ^ v27 ^ v32;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  modelVersion = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
  modelVersion2 = [equalCopy modelVersion];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
    goto LABEL_31;
  }

  modelVersion3 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
  if (modelVersion3)
  {
    v8 = modelVersion3;
    modelVersion4 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
    modelVersion5 = [equalCopy modelVersion];
    v11 = [modelVersion4 isEqual:modelVersion5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[68];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_32;
  }

  if (*&has)
  {
    odldScore = self->_odldScore;
    [equalCopy odldScore];
    if (odldScore != v15)
    {
      goto LABEL_32;
    }

    has = self->_has;
    v13 = equalCopy[68];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v16)
  {
    odldScoreThreshold = self->_odldScoreThreshold;
    [equalCopy odldScoreThreshold];
    if (odldScoreThreshold != v18)
    {
      goto LABEL_32;
    }
  }

  modelVersion = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
  modelVersion2 = [equalCopy errorMessage];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
    goto LABEL_31;
  }

  errorMessage = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
  if (errorMessage)
  {
    v20 = errorMessage;
    errorMessage2 = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
    errorMessage3 = [equalCopy errorMessage];
    v23 = [errorMessage2 isEqual:errorMessage3];

    if (!v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 2) & 1;
  if (v24 != ((equalCopy[68] >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v24)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_32;
    }
  }

  modelVersion = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
  modelVersion2 = [equalCopy anchorRequestId];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
    goto LABEL_31;
  }

  anchorRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
  if (anchorRequestId)
  {
    v27 = anchorRequestId;
    anchorRequestId2 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
    anchorRequestId3 = [equalCopy anchorRequestId];
    v30 = [anchorRequestId2 isEqual:anchorRequestId3];

    if (!v30)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  modelVersion = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
  modelVersion2 = [equalCopy previousRequestId];
  if ((modelVersion != 0) == (modelVersion2 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  previousRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
  if (previousRequestId)
  {
    v32 = previousRequestId;
    previousRequestId2 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
    previousRequestId3 = [equalCopy previousRequestId];
    v35 = [previousRequestId2 isEqual:previousRequestId3];

    if (!v35)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v38 = self->_has;
  v39 = (*&v38 >> 3) & 1;
  v40 = equalCopy[68];
  if (v39 == ((v40 >> 3) & 1))
  {
    if (v39)
    {
      anchorSocialScore = self->_anchorSocialScore;
      [equalCopy anchorSocialScore];
      if (anchorSocialScore != v42)
      {
        goto LABEL_32;
      }

      v38 = self->_has;
      v40 = equalCopy[68];
    }

    v43 = (*&v38 >> 4) & 1;
    if (v43 == ((v40 >> 4) & 1))
    {
      if (v43)
      {
        socialScore = self->_socialScore;
        [equalCopy socialScore];
        if (socialScore != v45)
        {
          goto LABEL_32;
        }

        v38 = self->_has;
        v40 = equalCopy[68];
      }

      v46 = (*&v38 >> 5) & 1;
      if (v46 == ((v40 >> 5) & 1))
      {
        if (!v46 || (conversationalOdldScore = self->_conversationalOdldScore, [equalCopy conversationalOdldScore], conversationalOdldScore == v48))
        {
          v36 = 1;
          goto LABEL_33;
        }
      }
    }
  }

LABEL_32:
  v36 = 0;
LABEL_33:

  return v36;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelVersion = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];

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

  errorMessage = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];

  if (errorMessage)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  anchorRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];

  if (anchorRequestId)
  {
    anchorRequestId2 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
    PBDataWriterWriteSubmessage();
  }

  previousRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];

  if (previousRequestId)
  {
    previousRequestId2 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v11 = self->_has;
  }

  v12 = toCopy;
  if ((v11 & 0x10) != 0)
  {
    PBDataWriterWriteFloatField();
    v12 = toCopy;
    v11 = self->_has;
  }

  if ((v11 & 0x20) != 0)
  {
    PBDataWriterWriteFloatField();
    v12 = toCopy;
  }
}

- (void)setHasConversationalOdldScore:(BOOL)score
{
  if (score)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSocialScore:(BOOL)score
{
  if (score)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAnchorSocialScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOdldScoreThreshold:(BOOL)threshold
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = MHSchemaMHOdldFalseTriggerMitigated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  anchorRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
  v7 = [anchorRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHOdldFalseTriggerMitigated *)self deleteAnchorRequestId];
  }

  previousRequestId = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
  v10 = [previousRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHOdldFalseTriggerMitigated *)self deletePreviousRequestId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end