@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDidTriggerFirstPass:(BOOL)pass;
- (void)setHasIsMaxNumContinuousZerosOverThreshold:(BOOL)threshold;
- (void)setHasMaxNumAllowedContinuousZeros:(BOOL)zeros;
- (void)setHasMaxNumContinuousZeros:(BOOL)zeros;
- (void)setHasSpeechStartPointDetected:(BOOL)detected;
- (void)setHasStageStatus:(BOOL)status;
- (void)setHasTwoPassRecognizerUsed:(BOOL)used;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setPageNumber:](v5, "setPageNumber:", [v6 unsignedIntValue]);
    }

    v26 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"phraseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)v5 setPhraseId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"maxNumContinuousZeros"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setMaxNumContinuousZeros:](v5, "setMaxNumContinuousZeros:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"maxNumAllowedContinuousZeros"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setMaxNumAllowedContinuousZeros:](v5, "setMaxNumAllowedContinuousZeros:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isMaxNumContinuousZerosOverThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setIsMaxNumContinuousZerosOverThreshold:](v5, "setIsMaxNumContinuousZerosOverThreshold:", [v11 BOOLValue]);
    }

    v25 = v9;
    v12 = [dictionaryCopy objectForKeyedSubscript:{@"vtAssetConfigVersion", v11}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)v5 setVtAssetConfigVersion:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)v5 setLocale:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"stageStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setStageStatus:](v5, "setStageStatus:", [v16 intValue]);
    }

    v24 = v10;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"speechStartPointDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setSpeechStartPointDetected:](v5, "setSpeechStartPointDetected:", [v17 BOOLValue]);
    }

    v18 = v7;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"twoPassRecognizerUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setTwoPassRecognizerUsed:](v5, "setTwoPassRecognizerUsed:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"didTriggerFirstPass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted setDidTriggerFirstPass:](v5, "setDidTriggerFirstPass:", [v20 BOOLValue]);
    }

    v21 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self dictionaryRepresentation];
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
  if ((*(&self->_didTriggerFirstPass + 1) & 0x80) == 0)
  {
    if ((*(&self->_didTriggerFirstPass + 1) & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted didTriggerFirstPass](self, "didTriggerFirstPass")}];
  [dictionary setObject:v21 forKeyedSubscript:@"didTriggerFirstPass"];

  if ((*(&self->_didTriggerFirstPass + 1) & 8) != 0)
  {
LABEL_3:
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted isMaxNumContinuousZerosOverThreshold](self, "isMaxNumContinuousZerosOverThreshold")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isMaxNumContinuousZerosOverThreshold"];
  }

LABEL_4:
  if (self->_locale)
  {
    locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
    v6 = [locale copy];
    [dictionary setObject:v6 forKeyedSubscript:@"locale"];
  }

  v7 = *(&self->_didTriggerFirstPass + 1);
  if ((v7 & 4) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted maxNumAllowedContinuousZeros](self, "maxNumAllowedContinuousZeros")}];
    [dictionary setObject:v16 forKeyedSubscript:@"maxNumAllowedContinuousZeros"];

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
  [dictionary setObject:v17 forKeyedSubscript:@"maxNumContinuousZeros"];

  if (*(&self->_didTriggerFirstPass + 1))
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted pageNumber](self, "pageNumber")}];
    [dictionary setObject:v8 forKeyedSubscript:@"pageNumber"];
  }

LABEL_10:
  if (self->_phraseId)
  {
    phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
    v10 = [phraseId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"phraseId"];
  }

  v11 = *(&self->_didTriggerFirstPass + 1);
  if ((v11 & 0x20) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted speechStartPointDetected](self, "speechStartPointDetected")}];
    [dictionary setObject:v18 forKeyedSubscript:@"speechStartPointDetected"];

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

  [dictionary setObject:v20 forKeyedSubscript:@"stageStatus"];
  if ((*(&self->_didTriggerFirstPass + 1) & 0x40) != 0)
  {
LABEL_15:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted twoPassRecognizerUsed](self, "twoPassRecognizerUsed")}];
    [dictionary setObject:v12 forKeyedSubscript:@"twoPassRecognizerUsed"];
  }

LABEL_16:
  if (self->_vtAssetConfigVersion)
  {
    vtAssetConfigVersion = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
    v14 = [vtAssetConfigVersion copy];
    [dictionary setObject:v14 forKeyedSubscript:@"vtAssetConfigVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*(&self->_didTriggerFirstPass + 1) != (equalCopy[63] & 1))
  {
    goto LABEL_31;
  }

  if (*(&self->_didTriggerFirstPass + 1))
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [equalCopy pageNumber])
    {
      goto LABEL_31;
    }
  }

  phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
  phraseId2 = [equalCopy phraseId];
  if ((phraseId != 0) == (phraseId2 == 0))
  {
    goto LABEL_30;
  }

  phraseId3 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
  if (phraseId3)
  {
    v9 = phraseId3;
    phraseId4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];
    phraseId5 = [equalCopy phraseId];
    v12 = [phraseId4 isEqual:phraseId5];

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
  v15 = equalCopy[63];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v14)
  {
    maxNumContinuousZeros = self->_maxNumContinuousZeros;
    if (maxNumContinuousZeros != [equalCopy maxNumContinuousZeros])
    {
      goto LABEL_31;
    }

    v13 = *(&self->_didTriggerFirstPass + 1);
    v15 = equalCopy[63];
  }

  v17 = (v13 >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v17)
  {
    maxNumAllowedContinuousZeros = self->_maxNumAllowedContinuousZeros;
    if (maxNumAllowedContinuousZeros != [equalCopy maxNumAllowedContinuousZeros])
    {
      goto LABEL_31;
    }

    v13 = *(&self->_didTriggerFirstPass + 1);
    v15 = equalCopy[63];
  }

  v19 = (v13 >> 3) & 1;
  if (v19 != ((v15 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    isMaxNumContinuousZerosOverThreshold = self->_isMaxNumContinuousZerosOverThreshold;
    if (isMaxNumContinuousZerosOverThreshold != [equalCopy isMaxNumContinuousZerosOverThreshold])
    {
      goto LABEL_31;
    }
  }

  phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
  phraseId2 = [equalCopy vtAssetConfigVersion];
  if ((phraseId != 0) == (phraseId2 == 0))
  {
    goto LABEL_30;
  }

  vtAssetConfigVersion = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
  if (vtAssetConfigVersion)
  {
    v22 = vtAssetConfigVersion;
    vtAssetConfigVersion2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];
    vtAssetConfigVersion3 = [equalCopy vtAssetConfigVersion];
    v25 = [vtAssetConfigVersion2 isEqual:vtAssetConfigVersion3];

    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
  phraseId2 = [equalCopy locale];
  if ((phraseId != 0) == (phraseId2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
  if (locale)
  {
    v27 = locale;
    locale2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];
    locale3 = [equalCopy locale];
    v30 = [locale2 isEqual:locale3];

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
  v35 = equalCopy[63];
  if (v34 == ((v35 >> 4) & 1))
  {
    if (v34)
    {
      stageStatus = self->_stageStatus;
      if (stageStatus != [equalCopy stageStatus])
      {
        goto LABEL_31;
      }

      v33 = *(&self->_didTriggerFirstPass + 1);
      v35 = equalCopy[63];
    }

    v37 = (v33 >> 5) & 1;
    if (v37 == ((v35 >> 5) & 1))
    {
      if (v37)
      {
        speechStartPointDetected = self->_speechStartPointDetected;
        if (speechStartPointDetected != [equalCopy speechStartPointDetected])
        {
          goto LABEL_31;
        }

        v33 = *(&self->_didTriggerFirstPass + 1);
        v35 = equalCopy[63];
      }

      v39 = (v33 >> 6) & 1;
      if (v39 == ((v35 >> 6) & 1))
      {
        if (v39)
        {
          twoPassRecognizerUsed = self->_twoPassRecognizerUsed;
          if (twoPassRecognizerUsed != [equalCopy twoPassRecognizerUsed])
          {
            goto LABEL_31;
          }

          v33 = *(&self->_didTriggerFirstPass + 1);
          v35 = equalCopy[63];
        }

        if (((v35 ^ v33) & 0x80) == 0)
        {
          if ((v33 & 0x80) == 0 || (didTriggerFirstPass = self->_didTriggerFirstPass, didTriggerFirstPass == [equalCopy didTriggerFirstPass]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_didTriggerFirstPass + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self phraseId];

  if (phraseId)
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
  vtAssetConfigVersion = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self vtAssetConfigVersion];

  if (vtAssetConfigVersion)
  {
    PBDataWriterWriteStringField();
  }

  locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentDigitalZeroDetectionCompleted *)self locale];

  if (locale)
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

- (void)setHasDidTriggerFirstPass:(BOOL)pass
{
  if (pass)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = v3 & 0x80 | *(&self->_didTriggerFirstPass + 1) & 0x7F;
}

- (void)setHasTwoPassRecognizerUsed:(BOOL)used
{
  if (used)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xBF | v3;
}

- (void)setHasSpeechStartPointDetected:(BOOL)detected
{
  if (detected)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xDF | v3;
}

- (void)setHasStageStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xEF | v3;
}

- (void)setHasIsMaxNumContinuousZerosOverThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xF7 | v3;
}

- (void)setHasMaxNumAllowedContinuousZeros:(BOOL)zeros
{
  if (zeros)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_didTriggerFirstPass + 1) = *(&self->_didTriggerFirstPass + 1) & 0xFB | v3;
}

- (void)setHasMaxNumContinuousZeros:(BOOL)zeros
{
  if (zeros)
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