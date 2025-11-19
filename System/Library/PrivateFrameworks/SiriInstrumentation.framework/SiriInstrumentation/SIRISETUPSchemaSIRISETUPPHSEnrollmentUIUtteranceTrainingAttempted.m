@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentMode:(BOOL)a3;
- (void)setHasIsRetry:(BOOL)a3;
- (void)setHasTrainingOutcome:(BOOL)a3;
- (void)setHasWasAudioHintNeeded:(BOOL)a3;
- (void)setHasWasAudioHintSpokenSuccessfully:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted setPageNumber:](v5, "setPageNumber:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted setEnrollmentMode:](v5, "setEnrollmentMode:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaISOLocale alloc] initWithDictionary:v8];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)v5 setLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isRetry"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted setIsRetry:](v5, "setIsRetry:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"trainingOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted setTrainingOutcome:](v5, "setTrainingOutcome:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"wasAudioHintNeeded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted setWasAudioHintNeeded:](v5, "setWasAudioHintNeeded:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"wasAudioHintSpokenSuccessfully"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted setWasAudioHintSpokenSuccessfully:](v5, "setWasAudioHintSpokenSuccessfully:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self dictionaryRepresentation];
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
  v4 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self enrollmentMode]- 1;
    if (v5 > 8)
    {
      v6 = @"SIRISETUPENROLLMENTUIMODE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E2D90[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"enrollmentMode"];
    v4 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  }

  if ((v4 & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted isRetry](self, "isRetry")}];
    [v3 setObject:v7 forKeyedSubscript:@"isRetry"];
  }

  if (self->_locale)
  {
    v8 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"locale"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"locale"];
    }
  }

  v11 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  if (v11)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted pageNumber](self, "pageNumber")}];
    [v3 setObject:v14 forKeyedSubscript:@"pageNumber"];

    v11 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
    if ((v11 & 8) == 0)
    {
LABEL_15:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 8) == 0)
  {
    goto LABEL_15;
  }

  v15 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self trainingOutcome]- 1;
  if (v15 > 2)
  {
    v16 = @"SIRISETUPENROLLMENTUITRAININGOUTCOME_UNKNOWN";
  }

  else
  {
    v16 = off_1E78E2DD8[v15];
  }

  [v3 setObject:v16 forKeyedSubscript:@"trainingOutcome"];
  v11 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  if ((v11 & 0x10) == 0)
  {
LABEL_16:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_26:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted wasAudioHintNeeded](self, "wasAudioHintNeeded")}];
  [v3 setObject:v17 forKeyedSubscript:@"wasAudioHintNeeded"];

  if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 0x20) != 0)
  {
LABEL_17:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted wasAudioHintSpokenSuccessfully](self, "wasAudioHintSpokenSuccessfully")}];
    [v3 setObject:v12 forKeyedSubscript:@"wasAudioHintSpokenSuccessfully"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_wasAudioHintSpokenSuccessfully + 1))
  {
    v3 = 2654435761 * self->_pageNumber;
    if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_enrollmentMode;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(SISchemaISOLocale *)self->_locale hash];
  if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 4) != 0)
  {
    v6 = 2654435761 * self->_isRetry;
    if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 8) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_trainingOutcome;
      if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 0x10) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v8 = 0;
      if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v9 = 0;
      return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
    }
  }

  else
  {
    v6 = 0;
    if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v8 = 2654435761 * self->_wasAudioHintNeeded;
  if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = 2654435761 * self->_wasAudioHintSpokenSuccessfully;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  v6 = v4[34];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_31;
  }

  if (v5)
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [v4 pageNumber])
    {
      goto LABEL_31;
    }

    v5 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
    v6 = v4[34];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v8)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [v4 enrollmentMode])
    {
      goto LABEL_31;
    }
  }

  v10 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale];
  v11 = [v4 locale];
  v12 = v11;
  if ((v10 != 0) == (v11 == 0))
  {

    goto LABEL_31;
  }

  v13 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale];
  if (v13)
  {
    v14 = v13;
    v15 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale];
    v16 = [v4 locale];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v18 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  v19 = (v18 >> 2) & 1;
  v20 = v4[34];
  if (v19 != ((v20 >> 2) & 1))
  {
LABEL_31:
    v28 = 0;
    goto LABEL_32;
  }

  if (v19)
  {
    isRetry = self->_isRetry;
    if (isRetry != [v4 isRetry])
    {
      goto LABEL_31;
    }

    v18 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
    v20 = v4[34];
  }

  v22 = (v18 >> 3) & 1;
  if (v22 != ((v20 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v22)
  {
    trainingOutcome = self->_trainingOutcome;
    if (trainingOutcome != [v4 trainingOutcome])
    {
      goto LABEL_31;
    }

    v18 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
    v20 = v4[34];
  }

  v24 = (v18 >> 4) & 1;
  if (v24 != ((v20 >> 4) & 1))
  {
    goto LABEL_31;
  }

  if (v24)
  {
    wasAudioHintNeeded = self->_wasAudioHintNeeded;
    if (wasAudioHintNeeded == [v4 wasAudioHintNeeded])
    {
      v18 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
      v20 = v4[34];
      goto LABEL_27;
    }

    goto LABEL_31;
  }

LABEL_27:
  v26 = (v18 >> 5) & 1;
  if (v26 != ((v20 >> 5) & 1))
  {
    goto LABEL_31;
  }

  if (v26)
  {
    wasAudioHintSpokenSuccessfully = self->_wasAudioHintSpokenSuccessfully;
    if (wasAudioHintSpokenSuccessfully != [v4 wasAudioHintSpokenSuccessfully])
    {
      goto LABEL_31;
    }
  }

  v28 = 1;
LABEL_32:

  return v28;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  if (v4)
  {
    PBDataWriterWriteUint32Field();
    v4 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  }

  if ((v4 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale];

  if (v5)
  {
    v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale];
    PBDataWriterWriteSubmessage();
  }

  v7 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
    if ((v7 & 8) == 0)
    {
LABEL_9:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt32Field();
  v7 = *(&self->_wasAudioHintSpokenSuccessfully + 1);
  if ((v7 & 0x10) == 0)
  {
LABEL_10:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_wasAudioHintSpokenSuccessfully + 1) & 0x20) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
}

- (void)setHasWasAudioHintSpokenSuccessfully:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasAudioHintSpokenSuccessfully + 1) = *(&self->_wasAudioHintSpokenSuccessfully + 1) & 0xDF | v3;
}

- (void)setHasWasAudioHintNeeded:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasAudioHintSpokenSuccessfully + 1) = *(&self->_wasAudioHintSpokenSuccessfully + 1) & 0xEF | v3;
}

- (void)setHasTrainingOutcome:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasAudioHintSpokenSuccessfully + 1) = *(&self->_wasAudioHintSpokenSuccessfully + 1) & 0xF7 | v3;
}

- (void)setHasIsRetry:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasAudioHintSpokenSuccessfully + 1) = *(&self->_wasAudioHintSpokenSuccessfully + 1) & 0xFB | v3;
}

- (void)setHasEnrollmentMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasAudioHintSpokenSuccessfully + 1) = *(&self->_wasAudioHintSpokenSuccessfully + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self locale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIUtteranceTrainingAttempted *)self deleteLocale];
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