@interface ODDSiriSchemaODDAttentionInvocationDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAgeOfProfileInMonths:(BOOL)months;
- (void)setHasEnrollmentPitchEstimation:(BOOL)estimation;
- (void)setHasInvocationSource:(BOOL)source;
- (void)setHasTriggerPhrase:(BOOL)phrase;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAttentionInvocationDimensions

- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDAttentionInvocationDimensions;
  v5 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setSystemBuild:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"siriInputLocale", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaISOLocale alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setSiriInputLocale:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setVoiceTriggerAssetVersion:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"mitigationAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(ODDSiriSchemaODDAttentionInvocationDimensions *)v5 setMitigationAssetVersion:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"invocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setInvocationSource:](v5, "setInvocationSource:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setTriggerPhrase:](v5, "setTriggerPhrase:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"ageOfProfileInMonths"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationDimensions setAgeOfProfileInMonths:](v5, "setAgeOfProfileInMonths:", [v17 unsignedIntValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentPitchEstimation"];
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

- (ODDSiriSchemaODDAttentionInvocationDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationDimensions ageOfProfileInMonths](self, "ageOfProfileInMonths")}];
    [dictionary setObject:v5 forKeyedSubscript:@"ageOfProfileInMonths"];

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

  [dictionary setObject:v7 forKeyedSubscript:@"dataSharingOptInStatus"];
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
  [dictionary setObject:v9 forKeyedSubscript:@"enrollmentPitchEstimation"];

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

  [dictionary setObject:v11 forKeyedSubscript:@"invocationSource"];
LABEL_16:
  if (self->_mitigationAssetVersion)
  {
    mitigationAssetVersion = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
    v13 = [mitigationAssetVersion copy];
    [dictionary setObject:v13 forKeyedSubscript:@"mitigationAssetVersion"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
    dictionaryRepresentation = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if (self->_systemBuild)
  {
    systemBuild = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
    v18 = [systemBuild copy];
    [dictionary setObject:v18 forKeyedSubscript:@"systemBuild"];
  }

  if ((*&self->_has & 4) != 0)
  {
    triggerPhrase = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self triggerPhrase];
    v20 = @"TRIGGERPHRASE_UNKNOWN";
    if (triggerPhrase == 1)
    {
      v20 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (triggerPhrase == 2)
    {
      v21 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v21 = v20;
    }

    [dictionary setObject:v21 forKeyedSubscript:@"triggerPhrase"];
  }

  if (self->_voiceTriggerAssetVersion)
  {
    voiceTriggerAssetVersion = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
    v23 = [voiceTriggerAssetVersion copy];
    [dictionary setObject:v23 forKeyedSubscript:@"voiceTriggerAssetVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  systemBuild = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
  systemBuild2 = [equalCopy systemBuild];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_24;
  }

  systemBuild3 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
  if (systemBuild3)
  {
    v8 = systemBuild3;
    systemBuild4 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];
    systemBuild5 = [equalCopy systemBuild];
    v11 = [systemBuild4 isEqual:systemBuild5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [equalCopy dataSharingOptInStatus])
    {
      goto LABEL_25;
    }
  }

  systemBuild = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
  systemBuild2 = [equalCopy siriInputLocale];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_24;
  }

  siriInputLocale = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
  if (siriInputLocale)
  {
    v14 = siriInputLocale;
    siriInputLocale2 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
    siriInputLocale3 = [equalCopy siriInputLocale];
    v17 = [siriInputLocale2 isEqual:siriInputLocale3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  systemBuild = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
  systemBuild2 = [equalCopy voiceTriggerAssetVersion];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
    goto LABEL_24;
  }

  voiceTriggerAssetVersion = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
  if (voiceTriggerAssetVersion)
  {
    v19 = voiceTriggerAssetVersion;
    voiceTriggerAssetVersion2 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];
    voiceTriggerAssetVersion3 = [equalCopy voiceTriggerAssetVersion];
    v22 = [voiceTriggerAssetVersion2 isEqual:voiceTriggerAssetVersion3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  systemBuild = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
  systemBuild2 = [equalCopy mitigationAssetVersion];
  if ((systemBuild != 0) == (systemBuild2 == 0))
  {
LABEL_24:

    goto LABEL_25;
  }

  mitigationAssetVersion = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
  if (mitigationAssetVersion)
  {
    v24 = mitigationAssetVersion;
    mitigationAssetVersion2 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];
    mitigationAssetVersion3 = [equalCopy mitigationAssetVersion];
    v27 = [mitigationAssetVersion2 isEqual:mitigationAssetVersion3];

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
  v32 = equalCopy[64];
  if (v31 == ((v32 >> 1) & 1))
  {
    if (v31)
    {
      invocationSource = self->_invocationSource;
      if (invocationSource != [equalCopy invocationSource])
      {
        goto LABEL_25;
      }

      has = self->_has;
      v32 = equalCopy[64];
    }

    v34 = (*&has >> 2) & 1;
    if (v34 == ((v32 >> 2) & 1))
    {
      if (v34)
      {
        triggerPhrase = self->_triggerPhrase;
        if (triggerPhrase != [equalCopy triggerPhrase])
        {
          goto LABEL_25;
        }

        has = self->_has;
        v32 = equalCopy[64];
      }

      v36 = (*&has >> 3) & 1;
      if (v36 == ((v32 >> 3) & 1))
      {
        if (v36)
        {
          ageOfProfileInMonths = self->_ageOfProfileInMonths;
          if (ageOfProfileInMonths != [equalCopy ageOfProfileInMonths])
          {
            goto LABEL_25;
          }

          has = self->_has;
          v32 = equalCopy[64];
        }

        v38 = (*&has >> 4) & 1;
        if (v38 == ((v32 >> 4) & 1))
        {
          if (!v38 || (enrollmentPitchEstimation = self->_enrollmentPitchEstimation, [equalCopy enrollmentPitchEstimation], enrollmentPitchEstimation == v40))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  systemBuild = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self systemBuild];

  if (systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  siriInputLocale = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerAssetVersion = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self voiceTriggerAssetVersion];

  if (voiceTriggerAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  mitigationAssetVersion = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self mitigationAssetVersion];

  if (mitigationAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v10 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v10 = toCopy;
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
  v10 = toCopy;
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
  v10 = toCopy;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    PBDataWriterWriteFloatField();
    v10 = toCopy;
  }

LABEL_16:
}

- (void)setHasEnrollmentPitchEstimation:(BOOL)estimation
{
  if (estimation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAgeOfProfileInMonths:(BOOL)months
{
  if (months)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTriggerPhrase:(BOOL)phrase
{
  if (phrase)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInvocationSource:(BOOL)source
{
  if (source)
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
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDAttentionInvocationDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDAttentionInvocationDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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