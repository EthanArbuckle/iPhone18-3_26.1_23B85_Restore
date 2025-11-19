@interface MHSchemaMHOdldFalseTriggerMitigated
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHOdldFalseTriggerMitigated)initWithDictionary:(id)a3;
- (MHSchemaMHOdldFalseTriggerMitigated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAnchorSocialScore:(BOOL)a3;
- (void)setHasConversationalOdldScore:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasOdldScoreThreshold:(BOOL)a3;
- (void)setHasSocialScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHOdldFalseTriggerMitigated

- (MHSchemaMHOdldFalseTriggerMitigated)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MHSchemaMHOdldFalseTriggerMitigated;
  v5 = [(MHSchemaMHOdldFalseTriggerMitigated *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setModelVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"odldScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setOdldScore:?];
    }

    v23 = v8;
    v9 = [v4 objectForKeyedSubscript:@"odldScoreThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setOdldScoreThreshold:?];
    }

    v22 = v9;
    v10 = [v4 objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setErrorMessage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHOdldFalseTriggerMitigated setErrorCode:](v5, "setErrorCode:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"anchorRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaUUID alloc] initWithDictionary:v13];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setAnchorRequestId:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"previousRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setPreviousRequestId:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"anchorSocialScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setAnchorSocialScore:?];
    }

    v18 = [v4 objectForKeyedSubscript:@"socialScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(MHSchemaMHOdldFalseTriggerMitigated *)v5 setSocialScore:?];
    }

    v19 = [v4 objectForKeyedSubscript:@"conversationalOdldScore"];
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

- (MHSchemaMHOdldFalseTriggerMitigated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHOdldFalseTriggerMitigated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHOdldFalseTriggerMitigated *)self dictionaryRepresentation];
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
  if (self->_anchorRequestId)
  {
    v4 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"anchorRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"anchorRequestId"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v20 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorSocialScore];
    v21 = [v20 numberWithFloat:?];
    [v3 setObject:v21 forKeyedSubscript:@"anchorSocialScore"];

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
  [v3 setObject:v23 forKeyedSubscript:@"conversationalOdldScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHOdldFalseTriggerMitigated errorCode](self, "errorCode")}];
    [v3 setObject:v8 forKeyedSubscript:@"errorCode"];
  }

LABEL_10:
  if (self->_errorMessage)
  {
    v9 = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"errorMessage"];
  }

  if (self->_modelVersion)
  {
    v11 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"modelVersion"];
  }

  v13 = self->_has;
  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self odldScore];
    v15 = [v14 numberWithFloat:?];
    [v3 setObject:v15 forKeyedSubscript:@"odldScore"];

    v13 = self->_has;
  }

  if ((v13 & 2) != 0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self odldScoreThreshold];
    v17 = [v16 numberWithFloat:?];
    [v3 setObject:v17 forKeyedSubscript:@"odldScoreThreshold"];
  }

  if (self->_previousRequestId)
  {
    v18 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"previousRequestId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"previousRequestId"];
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v25 = MEMORY[0x1E696AD98];
    [(MHSchemaMHOdldFalseTriggerMitigated *)self socialScore];
    v26 = [v25 numberWithFloat:?];
    [v3 setObject:v26 forKeyedSubscript:@"socialScore"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
  v6 = [v4 modelVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];
    v10 = [v4 modelVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[68];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_32;
  }

  if (*&has)
  {
    odldScore = self->_odldScore;
    [v4 odldScore];
    if (odldScore != v15)
    {
      goto LABEL_32;
    }

    has = self->_has;
    v13 = v4[68];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v13 >> 1) & 1))
  {
    goto LABEL_32;
  }

  if (v16)
  {
    odldScoreThreshold = self->_odldScoreThreshold;
    [v4 odldScoreThreshold];
    if (odldScoreThreshold != v18)
    {
      goto LABEL_32;
    }
  }

  v5 = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
  v6 = [v4 errorMessage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v19 = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
  if (v19)
  {
    v20 = v19;
    v21 = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];
    v22 = [v4 errorMessage];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 2) & 1;
  if (v24 != ((v4[68] >> 2) & 1))
  {
    goto LABEL_32;
  }

  if (v24)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_32;
    }
  }

  v5 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
  v6 = [v4 anchorRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v26 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
  if (v26)
  {
    v27 = v26;
    v28 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
    v29 = [v4 anchorRequestId];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
  v6 = [v4 previousRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_31:

    goto LABEL_32;
  }

  v31 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
  if (v31)
  {
    v32 = v31;
    v33 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
    v34 = [v4 previousRequestId];
    v35 = [v33 isEqual:v34];

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
  v40 = v4[68];
  if (v39 == ((v40 >> 3) & 1))
  {
    if (v39)
    {
      anchorSocialScore = self->_anchorSocialScore;
      [v4 anchorSocialScore];
      if (anchorSocialScore != v42)
      {
        goto LABEL_32;
      }

      v38 = self->_has;
      v40 = v4[68];
    }

    v43 = (*&v38 >> 4) & 1;
    if (v43 == ((v40 >> 4) & 1))
    {
      if (v43)
      {
        socialScore = self->_socialScore;
        [v4 socialScore];
        if (socialScore != v45)
        {
          goto LABEL_32;
        }

        v38 = self->_has;
        v40 = v4[68];
      }

      v46 = (*&v38 >> 5) & 1;
      if (v46 == ((v40 >> 5) & 1))
      {
        if (!v46 || (conversationalOdldScore = self->_conversationalOdldScore, [v4 conversationalOdldScore], conversationalOdldScore == v48))
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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(MHSchemaMHOdldFalseTriggerMitigated *)self modelVersion];

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

  v6 = [(MHSchemaMHOdldFalseTriggerMitigated *)self errorMessage];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v7 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];

  if (v7)
  {
    v8 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];

  if (v9)
  {
    v10 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteFloatField();
    v11 = self->_has;
  }

  v12 = v13;
  if ((v11 & 0x10) != 0)
  {
    PBDataWriterWriteFloatField();
    v12 = v13;
    v11 = self->_has;
  }

  if ((v11 & 0x20) != 0)
  {
    PBDataWriterWriteFloatField();
    v12 = v13;
  }
}

- (void)setHasConversationalOdldScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSocialScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAnchorSocialScore:(BOOL)a3
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

- (void)setHasErrorCode:(BOOL)a3
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

- (void)setHasOdldScoreThreshold:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MHSchemaMHOdldFalseTriggerMitigated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHOdldFalseTriggerMitigated *)self anchorRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHOdldFalseTriggerMitigated *)self deleteAnchorRequestId];
  }

  v9 = [(MHSchemaMHOdldFalseTriggerMitigated *)self previousRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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