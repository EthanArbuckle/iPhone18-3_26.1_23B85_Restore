@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDidTriggerFirstPass:(BOOL)a3;
- (void)setHasIsMaxNumContinuousZerosOverThreshold:(BOOL)a3;
- (void)setHasMaxNumAllowedContinuousZeros:(BOOL)a3;
- (void)setHasMaxNumContinuousZeros:(BOOL)a3;
- (void)setHasSpeechStartPointDetected:(BOOL)a3;
- (void)setHasStageStatus:(BOOL)a3;
- (void)setHasTwoPassRecognizerUsed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setPageNumber:](v5, "setPageNumber:", [v6 unsignedIntValue]);
    }

    v26 = v6;
    v7 = [v4 objectForKeyedSubscript:@"phraseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)v5 setPhraseId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"maxNumContinuousZeros"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setMaxNumContinuousZeros:](v5, "setMaxNumContinuousZeros:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"maxNumAllowedContinuousZeros"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setMaxNumAllowedContinuousZeros:](v5, "setMaxNumAllowedContinuousZeros:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isMaxNumContinuousZerosOverThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setIsMaxNumContinuousZerosOverThreshold:](v5, "setIsMaxNumContinuousZerosOverThreshold:", [v11 BOOLValue]);
    }

    v25 = v9;
    v12 = [v4 objectForKeyedSubscript:{@"vtAssetConfigVersion", v11}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)v5 setVtAssetConfigVersion:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)v5 setLocale:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"stageStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setStageStatus:](v5, "setStageStatus:", [v16 intValue]);
    }

    v24 = v10;
    v17 = [v4 objectForKeyedSubscript:@"speechStartPointDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setSpeechStartPointDetected:](v5, "setSpeechStartPointDetected:", [v17 BOOLValue]);
    }

    v18 = v7;
    v19 = [v4 objectForKeyedSubscript:@"twoPassRecognizerUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setTwoPassRecognizerUsed:](v5, "setTwoPassRecognizerUsed:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"didTriggerFirstPass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setDidTriggerFirstPass:](v5, "setDidTriggerFirstPass:", [v20 BOOLValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self dictionaryRepresentation];
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
  if ((*(&self->_didTriggerFirstPass + 1) & 0x80) == 0)
  {
    if ((*(&self->_didTriggerFirstPass + 1) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted didTriggerFirstPass](self, "didTriggerFirstPass")}];
  [v3 setObject:v21 forKeyedSubscript:@"didTriggerFirstPass"];

  if ((*(&self->_didTriggerFirstPass + 1) & 8) != 0)
  {
LABEL_3:
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted isMaxNumContinuousZerosOverThreshold](self, "isMaxNumContinuousZerosOverThreshold")}];
    [v3 setObject:v4 forKeyedSubscript:@"isMaxNumContinuousZerosOverThreshold"];
  }

LABEL_4:
  if (self->_locale)
  {
    v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"locale"];
  }

  v7 = *(&self->_didTriggerFirstPass + 1);
  if ((v7 & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted maxNumAllowedContinuousZeros](self, "maxNumAllowedContinuousZeros")}];
    [v3 setObject:v16 forKeyedSubscript:@"maxNumAllowedContinuousZeros"];

    v7 = *(&self->_didTriggerFirstPass + 1);
    if ((v7 & 2) == 0)
    {
LABEL_8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_didTriggerFirstPass + 1) & 2) == 0)
  {
    goto LABEL_8;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted maxNumContinuousZeros](self, "maxNumContinuousZeros")}];
  [v3 setObject:v17 forKeyedSubscript:@"maxNumContinuousZeros"];

  if (*(&self->_didTriggerFirstPass + 1))
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted pageNumber](self, "pageNumber")}];
    [v3 setObject:v8 forKeyedSubscript:@"pageNumber"];
  }

LABEL_10:
  if (self->_phraseId)
  {
    v9 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"phraseId"];
  }

  v11 = *(&self->_didTriggerFirstPass + 1);
  if ((v11 & 0x20) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted speechStartPointDetected](self, "speechStartPointDetected")}];
    [v3 setObject:v18 forKeyedSubscript:@"speechStartPointDetected"];

    v11 = *(&self->_didTriggerFirstPass + 1);
    if ((v11 & 0x10) == 0)
    {
LABEL_14:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((*(&self->_didTriggerFirstPass + 1) & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v19 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self stageStatus]- 1;
  if (v19 > 7)
  {
    v20 = @"SIRISETUPTRAININGMANAGERSTAGESTATUS_UNKNOWN";
  }

  else
  {
    v20 = off_1E78E2CA0[v19];
  }

  [v3 setObject:v20 forKeyedSubscript:@"stageStatus"];
  if ((*(&self->_didTriggerFirstPass + 1) & 0x40) != 0)
  {
LABEL_15:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted twoPassRecognizerUsed](self, "twoPassRecognizerUsed")}];
    [v3 setObject:v12 forKeyedSubscript:@"twoPassRecognizerUsed"];
  }

LABEL_16:
  if (self->_vtAssetConfigVersion)
  {
    v13 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"vtAssetConfigVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_didTriggerFirstPass + 1))
  {
    v3 = 2654435761 * self->_pageNumber;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_phraseId hash];
  if ((*(&self->_didTriggerFirstPass + 1) & 2) == 0)
  {
    v5 = 0;
    if ((*(&self->_didTriggerFirstPass + 1) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*(&self->_didTriggerFirstPass + 1) & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v5 = 2654435761 * self->_maxNumContinuousZeros;
  if ((*(&self->_didTriggerFirstPass + 1) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_maxNumAllowedContinuousZeros;
  if ((*(&self->_didTriggerFirstPass + 1) & 8) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_isMaxNumContinuousZerosOverThreshold;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v8 = [(NSString *)self->_vtAssetConfigVersion hash];
  v9 = [(NSString *)self->_locale hash];
  if ((*(&self->_didTriggerFirstPass + 1) & 0x10) != 0)
  {
    v10 = 2654435761 * self->_stageStatus;
    if ((*(&self->_didTriggerFirstPass + 1) & 0x20) != 0)
    {
LABEL_13:
      v11 = 2654435761 * self->_speechStartPointDetected;
      if ((*(&self->_didTriggerFirstPass + 1) & 0x40) != 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v12 = 0;
      if (*(&self->_didTriggerFirstPass + 1) < 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      v13 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
    }
  }

  else
  {
    v10 = 0;
    if ((*(&self->_didTriggerFirstPass + 1) & 0x20) != 0)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
  if ((*(&self->_didTriggerFirstPass + 1) & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = 2654435761 * self->_twoPassRecognizerUsed;
  if ((*(&self->_didTriggerFirstPass + 1) & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = 2654435761 * self->_didTriggerFirstPass;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*(&self->_didTriggerFirstPass + 1) != (v4[63] & 1))
  {
    goto LABEL_31;
  }

  if (*(&self->_didTriggerFirstPass + 1))
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [v4 pageNumber])
    {
      goto LABEL_31;
    }
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
  v7 = [v4 phraseId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v8 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
  if (v8)
  {
    v9 = v8;
    v10 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
    v11 = [v4 phraseId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v13 = *(&self->_didTriggerFirstPass + 1);
  v14 = (v13 >> 1) & 1;
  v15 = v4[63];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v14)
  {
    maxNumContinuousZeros = self->_maxNumContinuousZeros;
    if (maxNumContinuousZeros != [v4 maxNumContinuousZeros])
    {
      goto LABEL_31;
    }

    v13 = *(&self->_didTriggerFirstPass + 1);
    v15 = v4[63];
  }

  v17 = (v13 >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v17)
  {
    maxNumAllowedContinuousZeros = self->_maxNumAllowedContinuousZeros;
    if (maxNumAllowedContinuousZeros != [v4 maxNumAllowedContinuousZeros])
    {
      goto LABEL_31;
    }

    v13 = *(&self->_didTriggerFirstPass + 1);
    v15 = v4[63];
  }

  v19 = (v13 >> 3) & 1;
  if (v19 != ((v15 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    isMaxNumContinuousZerosOverThreshold = self->_isMaxNumContinuousZerosOverThreshold;
    if (isMaxNumContinuousZerosOverThreshold != [v4 isMaxNumContinuousZerosOverThreshold])
    {
      goto LABEL_31;
    }
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
  v7 = [v4 vtAssetConfigVersion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_30;
  }

  v21 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
  if (v21)
  {
    v22 = v21;
    v23 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
    v24 = [v4 vtAssetConfigVersion];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
  v7 = [v4 locale];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  v26 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
  if (v26)
  {
    v27 = v26;
    v28 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
    v29 = [v4 locale];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v33 = *(&self->_didTriggerFirstPass + 1);
  v34 = (v33 >> 4) & 1;
  v35 = v4[63];
  if (v34 == ((v35 >> 4) & 1))
  {
    if (v34)
    {
      stageStatus = self->_stageStatus;
      if (stageStatus != [v4 stageStatus])
      {
        goto LABEL_31;
      }

      v33 = *(&self->_didTriggerFirstPass + 1);
      v35 = v4[63];
    }

    v37 = (v33 >> 5) & 1;
    if (v37 == ((v35 >> 5) & 1))
    {
      if (v37)
      {
        speechStartPointDetected = self->_speechStartPointDetected;
        if (speechStartPointDetected != [v4 speechStartPointDetected])
        {
          goto LABEL_31;
        }

        v33 = *(&self->_didTriggerFirstPass + 1);
        v35 = v4[63];
      }

      v39 = (v33 >> 6) & 1;
      if (v39 == ((v35 >> 6) & 1))
      {
        if (v39)
        {
          twoPassRecognizerUsed = self->_twoPassRecognizerUsed;
          if (twoPassRecognizerUsed != [v4 twoPassRecognizerUsed])
          {
            goto LABEL_31;
          }

          v33 = *(&self->_didTriggerFirstPass + 1);
          v35 = v4[63];
        }

        if (((v35 ^ v33) & 0x80) == 0)
        {
          if ((v33 & 0x80) == 0 || (didTriggerFirstPass = self->_didTriggerFirstPass, didTriggerFirstPass == [v4 didTriggerFirstPass]))
          {
            v31 = 1;
            goto LABEL_32;
          }
        }
      }
    }
  }

LABEL_31:
  v31 = 0;
LABEL_32:

  return v31;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*(&self->_didTriggerFirstPass + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_didTriggerFirstPass + 1);
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v5 = *(&self->_didTriggerFirstPass + 1);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(&self->_didTriggerFirstPass + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  if ((*(&self->_didTriggerFirstPass + 1) & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = *(&self->_didTriggerFirstPass + 1);
  if ((v8 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v8 = *(&self->_didTriggerFirstPass + 1);
    if ((v8 & 0x20) == 0)
    {
LABEL_15:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_16;
      }

LABEL_25:
      PBDataWriterWriteBOOLField();
      if ((*(&self->_didTriggerFirstPass + 1) & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((*(&self->_didTriggerFirstPass + 1) & 0x20) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteBOOLField();
  v8 = *(&self->_didTriggerFirstPass + 1);
  if ((v8 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
LABEL_17:
}

- (void)setHasDidTriggerFirstPass:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = v3 & 0x80 | *(&self->_didTriggerFirstPass + 1) & 0x7F;
}

- (void)setHasTwoPassRecognizerUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xBF | v3;
}

- (void)setHasSpeechStartPointDetected:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xDF | v3;
}

- (void)setHasStageStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xEF | v3;
}

- (void)setHasIsMaxNumContinuousZerosOverThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xF7 | v3;
}

- (void)setHasMaxNumAllowedContinuousZeros:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xFB | v3;
}

- (void)setHasMaxNumContinuousZeros:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end