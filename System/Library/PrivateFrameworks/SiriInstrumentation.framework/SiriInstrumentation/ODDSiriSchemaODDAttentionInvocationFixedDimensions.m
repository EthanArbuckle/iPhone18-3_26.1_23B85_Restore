@interface ODDSiriSchemaODDAttentionInvocationFixedDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAttentionInvocationFixedDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAttentionInvocationFixedDimensions)initWithJSON:(id)a3;
- (float)snrOfEnrollmentUtterancesAtIndex:(unint64_t)a3;
- (float)werEnrollmentUtterancesAtIndex:(unint64_t)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSnrOfEnrollmentUtterances:(float)a3;
- (void)addWerEnrollmentUtterances:(float)a3;
- (void)setHasAgeOfProfileInMonths:(BOOL)a3;
- (void)setHasEnrollmentPitchEstimation:(BOOL)a3;
- (void)setHasEnrollmentUtteranceCount:(BOOL)a3;
- (void)setHasJsEnrollmentUtteranceCount:(BOOL)a3;
- (void)setHasLowEnrollmentSpeakerSimilarityScoreCounts:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAttentionInvocationFixedDimensions

- (ODDSiriSchemaODDAttentionInvocationFixedDimensions)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = ODDSiriSchemaODDAttentionInvocationFixedDimensions;
  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)v5 setFixedDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"systemBuild"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)v5 setSystemBuild:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dataSharingOptInStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationFixedDimensions setDataSharingOptInStatus:](v5, "setDataSharingOptInStatus:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaISOLocale alloc] initWithDictionary:v11];
      [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)v5 setSiriInputLocale:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"ageOfProfileInMonths"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationFixedDimensions setAgeOfProfileInMonths:](v5, "setAgeOfProfileInMonths:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"enrollmentPitchEstimation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)v5 setEnrollmentPitchEstimation:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"enrollmentUtteranceCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationFixedDimensions setEnrollmentUtteranceCount:](v5, "setEnrollmentUtteranceCount:", [v15 unsignedIntValue]);
    }

    v36 = v15;
    v37 = v14;
    v38 = v13;
    v16 = [v4 objectForKeyedSubscript:@"jsEnrollmentUtteranceCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationFixedDimensions setJsEnrollmentUtteranceCount:](v5, "setJsEnrollmentUtteranceCount:", [v16 unsignedIntValue]);
    }

    v35 = v16;
    v17 = [v4 objectForKeyedSubscript:@"snrOfEnrollmentUtterances"];
    objc_opt_class();
    v40 = v10;
    v41 = v8;
    v39 = v11;
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        do
        {
          v22 = 0;
          do
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v46 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v23 floatValue];
              [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)v5 addSnrOfEnrollmentUtterances:?];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v20);
      }

      v10 = v40;
      v8 = v41;
      v11 = v39;
    }

    v24 = [v4 objectForKeyedSubscript:@"werEnrollmentUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v6;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v43;
        do
        {
          v29 = 0;
          do
          {
            if (*v43 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v42 + 1) + 8 * v29);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v30 floatValue];
              [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)v5 addWerEnrollmentUtterances:?];
            }

            ++v29;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v27);
      }

      v6 = v34;
      v10 = v40;
      v8 = v41;
      v11 = v39;
    }

    v31 = [v4 objectForKeyedSubscript:{@"lowEnrollmentSpeakerSimilarityScoreCounts", v34}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAttentionInvocationFixedDimensions setLowEnrollmentSpeakerSimilarityScoreCounts:](v5, "setLowEnrollmentSpeakerSimilarityScoreCounts:", [v31 unsignedIntValue]);
    }

    v32 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAttentionInvocationFixedDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationFixedDimensions ageOfProfileInMonths](self, "ageOfProfileInMonths")}];
    [v3 setObject:v8 forKeyedSubscript:@"ageOfProfileInMonths"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self dataSharingOptInStatus]- 1;
  if (v9 > 2)
  {
    v10 = @"UNKNOWN";
  }

  else
  {
    v10 = off_1E78DD1C0[v9];
  }

  [v3 setObject:v10 forKeyedSubscript:@"dataSharingOptInStatus"];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_14:
  v11 = MEMORY[0x1E696AD98];
  [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self enrollmentPitchEstimation];
  v12 = [v11 numberWithFloat:?];
  [v3 setObject:v12 forKeyedSubscript:@"enrollmentPitchEstimation"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationFixedDimensions enrollmentUtteranceCount](self, "enrollmentUtteranceCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"enrollmentUtteranceCount"];
  }

LABEL_6:
  if (self->_fixedDimensions)
  {
    v6 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationFixedDimensions jsEnrollmentUtteranceCount](self, "jsEnrollmentUtteranceCount")}];
    [v3 setObject:v15 forKeyedSubscript:@"jsEnrollmentUtteranceCount"];

    v14 = self->_has;
  }

  if ((v14 & 0x20) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDAttentionInvocationFixedDimensions lowEnrollmentSpeakerSimilarityScoreCounts](self, "lowEnrollmentSpeakerSimilarityScoreCounts")}];
    [v3 setObject:v16 forKeyedSubscript:@"lowEnrollmentSpeakerSimilarityScoreCounts"];
  }

  if (self->_siriInputLocale)
  {
    v17 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  if ([(NSArray *)self->_snrOfEnrollmentUtterances count])
  {
    v20 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self snrOfEnrollmentUtterances];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"snrOfEnrollmentUtterances"];
  }

  if (self->_systemBuild)
  {
    v22 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self systemBuild];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"systemBuild"];
  }

  if ([(NSArray *)self->_werEnrollmentUtterances count])
  {
    v24 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self werEnrollmentUtterances];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"werEnrollmentUtterances"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v21 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  v19 = [(NSString *)self->_systemBuild hash];
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_dataSharingOptInStatus;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  if ((*&self->_has & 2) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v7 = 2654435761 * self->_ageOfProfileInMonths;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  enrollmentPitchEstimation = self->_enrollmentPitchEstimation;
  if (enrollmentPitchEstimation >= 0.0)
  {
    v9 = enrollmentPitchEstimation;
  }

  else
  {
    v9 = -enrollmentPitchEstimation;
  }

  *v5.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_13:
  if ((*&self->_has & 8) != 0)
  {
    v13 = 2654435761 * self->_enrollmentUtteranceCount;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_15:
      v14 = 2654435761 * self->_jsEnrollmentUtteranceCount;
      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_18:
  v15 = [(NSArray *)self->_snrOfEnrollmentUtterances hash];
  v16 = [(NSArray *)self->_werEnrollmentUtterances hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v17 = 2654435761 * self->_lowEnrollmentSpeakerSimilarityScoreCounts;
  }

  else
  {
    v17 = 0;
  }

  return v20 ^ v21 ^ v3 ^ v4 ^ v7 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];
  v6 = [v4 fixedDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v7 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];
    v10 = [v4 fixedDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self systemBuild];
  v6 = [v4 systemBuild];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v12 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self systemBuild];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self systemBuild];
    v15 = [v4 systemBuild];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[76] & 1))
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    dataSharingOptInStatus = self->_dataSharingOptInStatus;
    if (dataSharingOptInStatus != [v4 dataSharingOptInStatus])
    {
      goto LABEL_45;
    }
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v18 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];
  if (v18)
  {
    v19 = v18;
    v20 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];
    v21 = [v4 siriInputLocale];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  has = self->_has;
  v24 = (*&has >> 1) & 1;
  v25 = v4[76];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_45;
  }

  if (v24)
  {
    ageOfProfileInMonths = self->_ageOfProfileInMonths;
    if (ageOfProfileInMonths != [v4 ageOfProfileInMonths])
    {
      goto LABEL_45;
    }

    has = self->_has;
    v25 = v4[76];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_45;
  }

  if (v27)
  {
    enrollmentPitchEstimation = self->_enrollmentPitchEstimation;
    [v4 enrollmentPitchEstimation];
    if (enrollmentPitchEstimation != v29)
    {
      goto LABEL_45;
    }

    has = self->_has;
    v25 = v4[76];
  }

  v30 = (*&has >> 3) & 1;
  if (v30 != ((v25 >> 3) & 1))
  {
    goto LABEL_45;
  }

  if (v30)
  {
    enrollmentUtteranceCount = self->_enrollmentUtteranceCount;
    if (enrollmentUtteranceCount != [v4 enrollmentUtteranceCount])
    {
      goto LABEL_45;
    }

    has = self->_has;
    v25 = v4[76];
  }

  v32 = (*&has >> 4) & 1;
  if (v32 != ((v25 >> 4) & 1))
  {
    goto LABEL_45;
  }

  if (v32)
  {
    jsEnrollmentUtteranceCount = self->_jsEnrollmentUtteranceCount;
    if (jsEnrollmentUtteranceCount != [v4 jsEnrollmentUtteranceCount])
    {
      goto LABEL_45;
    }
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self snrOfEnrollmentUtterances];
  v6 = [v4 snrOfEnrollmentUtterances];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v34 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self snrOfEnrollmentUtterances];
  if (v34)
  {
    v35 = v34;
    v36 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self snrOfEnrollmentUtterances];
    v37 = [v4 snrOfEnrollmentUtterances];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self werEnrollmentUtterances];
  v6 = [v4 werEnrollmentUtterances];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_44:

    goto LABEL_45;
  }

  v39 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self werEnrollmentUtterances];
  if (v39)
  {
    v40 = v39;
    v41 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self werEnrollmentUtterances];
    v42 = [v4 werEnrollmentUtterances];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v46 = (*&self->_has >> 5) & 1;
  if (v46 == ((v4[76] >> 5) & 1))
  {
    if (!v46 || (lowEnrollmentSpeakerSimilarityScoreCounts = self->_lowEnrollmentSpeakerSimilarityScoreCounts, lowEnrollmentSpeakerSimilarityScoreCounts == [v4 lowEnrollmentSpeakerSimilarityScoreCounts]))
    {
      v44 = 1;
      goto LABEL_46;
    }
  }

LABEL_45:
  v44 = 0;
LABEL_46:

  return v44;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self systemBuild];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_33:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_snrOfEnrollmentUtterances;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v25 + 1) + 8 * i) floatValue];
        PBDataWriterWriteFloatField();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_werEnrollmentUtterances;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * j) floatValue];
        PBDataWriterWriteFloatField();
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasLowEnrollmentSpeakerSimilarityScoreCounts:(BOOL)a3
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

- (float)werEnrollmentUtterancesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_werEnrollmentUtterances objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addWerEnrollmentUtterances:(float)a3
{
  werEnrollmentUtterances = self->_werEnrollmentUtterances;
  if (!werEnrollmentUtterances)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_werEnrollmentUtterances;
    self->_werEnrollmentUtterances = v6;

    werEnrollmentUtterances = self->_werEnrollmentUtterances;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)werEnrollmentUtterances addObject:v9];
}

- (float)snrOfEnrollmentUtterancesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_snrOfEnrollmentUtterances objectAtIndexedSubscript:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)addSnrOfEnrollmentUtterances:(float)a3
{
  snrOfEnrollmentUtterances = self->_snrOfEnrollmentUtterances;
  if (!snrOfEnrollmentUtterances)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_snrOfEnrollmentUtterances;
    self->_snrOfEnrollmentUtterances = v6;

    snrOfEnrollmentUtterances = self->_snrOfEnrollmentUtterances;
  }

  *&v8 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [(NSArray *)snrOfEnrollmentUtterances addObject:v9];
}

- (void)setHasJsEnrollmentUtteranceCount:(BOOL)a3
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

- (void)setHasEnrollmentUtteranceCount:(BOOL)a3
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

- (void)setHasEnrollmentPitchEstimation:(BOOL)a3
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

- (void)setHasAgeOfProfileInMonths:(BOOL)a3
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
  v13.super_class = ODDSiriSchemaODDAttentionInvocationFixedDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self fixedDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self deleteFixedDimensions];
  }

  v9 = [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self siriInputLocale];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDAttentionInvocationFixedDimensions *)self deleteSiriInputLocale];
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