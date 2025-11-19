@interface ODDSiriSchemaODDAttentionInvocationDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAgeOfProfileInMonths:(BOOL)a3;
- (void)setHasEnrollmentPitchEstimation:(BOOL)a3;
- (void)setHasInvocationSource:(BOOL)a3;
- (void)setHasTriggerPhrase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAttentionInvocationDimensions

- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDAttentionInvocationDimensions;
  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:{@"siriInputLocale", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaISOLocale alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setSiriInputLocale:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"voiceTriggerAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setVoiceTriggerAssetVersion:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"mitigationAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setMitigationAssetVersion:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setInvocationSource:](v5, "setInvocationSource:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setTriggerPhrase:](v5, "setTriggerPhrase:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"ageOfProfileInMonths"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setAgeOfProfileInMonths:](v5, "setAgeOfProfileInMonths:", [v17 unsignedIntValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"enrollmentPitchEstimation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setEnrollmentPitchEstimation:?];
    }

    v19 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationDimensions ageOfProfileInMonths](self, "ageOfProfileInMonths")}];
    [v3 setObject:v5 forKeyedSubscript:@"ageOfProfileInMonths"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self dataSharingOptInStatus]- 1;
  if (v6 > 2)
  {
    v7 = @"UNKNOWN";
  }

  else
  {
    v7 = off_1E78DCE70[v6];
  }

  [v3 setObject:v7 forKeyedSubscript:@"dataSharingOptInStatus"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDAttentionInvocationDimensions *)self enrollmentPitchEstimation];
  v9 = [v8 numberWithFloat:?];
  [v3 setObject:v9 forKeyedSubscript:@"enrollmentPitchEstimation"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self invocationSource]- 1;
  if (v10 > 0x66)
  {
    v11 = @"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE";
  }

  else
  {
    v11 = off_1E78DCE88[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"invocationSource"];
LABEL_16:
  if (self->_mitigationAssetVersion)
  {
    v12 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"mitigationAssetVersion"];
  }

  if (self->_siriInputLocale)
  {
    v14 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if (self->_systemBuild)
  {
    v17 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"systemBuild"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v19 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self triggerPhrase];
    v20 = @"TRIGGERPHRASE_UNKNOWN";
    if (v19 == 1)
    {
      v20 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (v19 == 2)
    {
      v21 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v21 = v20;
    }

    [v3 setObject:v21 forKeyedSubscript:@"triggerPhrase"];
  }

  if (self->_voiceTriggerAssetVersion)
  {
    v22 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"voiceTriggerAssetVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_systemBuild hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_dataSharingOptInStatus;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  v6 = [(NSString *)self->_voiceTriggerAssetVersion hash];
  v7 = [(NSString *)self->_mitigationAssetVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_invocationSource;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v11 = 2654435761 * self->_triggerPhrase;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_15:
      v12 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      v17 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v11 ^ v12 ^ v17;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v12 = 2654435761 * self->_ageOfProfileInMonths;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  enrollmentPitchEstimation = self->_enrollmentPitchEstimation;
  if (enrollmentPitchEstimation >= 0.0)
  {
    v14 = enrollmentPitchEstimation;
  }

  else
  {
    v14 = -enrollmentPitchEstimation;
  }

  *v8.i64 = floor(v14 + 0.5);
  v15 = (v14 - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v9, v8).i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v11 ^ v12 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
    v10 = [v4 systemBuild];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[64] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [v4 dataSharingOptInStatus])
    {
      goto LABEL_25;
    }
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
  if (v13)
  {
    v14 = v13;
    v15 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
    v16 = [v4 siriInputLocale];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
  v6 = [v4 voiceTriggerAssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
    v21 = [v4 voiceTriggerAssetVersion];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
  v6 = [v4 mitigationAssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  v23 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
  if (v23)
  {
    v24 = v23;
    v25 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
    v26 = [v4 mitigationAssetVersion];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  has = self->_has;
  v31 = (*&has >> 1) & 1;
  v32 = v4[64];
  if (v31 == ((v32 >> 1) & 1))
  {
    if (v31)
    {
      invocationSource = self->_invocationSource;
      if (invocationSource != [v4 invocationSource])
      {
        goto LABEL_25;
      }

      has = self->_has;
      v32 = v4[64];
    }

    v34 = (*&has >> 2) & 1;
    if (v34 == ((v32 >> 2) & 1))
    {
      if (v34)
      {
        triggerPhrase = self->_triggerPhrase;
        if (triggerPhrase != [v4 triggerPhrase])
        {
          goto LABEL_25;
        }

        has = self->_has;
        v32 = v4[64];
      }

      v36 = (*&has >> 3) & 1;
      if (v36 == ((v32 >> 3) & 1))
      {
        if (v36)
        {
          ageOfProfileInMonths = self->_ageOfProfileInMonths;
          if (ageOfProfileInMonths != [v4 ageOfProfileInMonths])
          {
            goto LABEL_25;
          }

          has = self->_has;
          v32 = v4[64];
        }

        v38 = (*&has >> 4) & 1;
        if (v38 == ((v32 >> 4) & 1))
        {
          if (!v38 || (enrollmentPitchEstimation = self->_enrollmentPitchEstimation, [v4 enrollmentPitchEstimation], enrollmentPitchEstimation == v40))
          {
            v28 = 1;
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v10 = v11;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v10 = v11;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteInt32Field();
  v10 = v11;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  v10 = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    PBDataWriterWriteFloatField();
    v10 = v11;
  }

LABEL_16:
}

- (void)setHasEnrollmentPitchEstimation:(BOOL)a3
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

- (void)setHasAgeOfProfileInMonths:(BOOL)a3
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

- (void)setHasTriggerPhrase:(BOOL)a3
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

- (void)setHasInvocationSource:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDAttentionInvocationDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODDSiriSchemaODDAttentionInvocationDimensions *)self deleteSiriInputLocale];
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