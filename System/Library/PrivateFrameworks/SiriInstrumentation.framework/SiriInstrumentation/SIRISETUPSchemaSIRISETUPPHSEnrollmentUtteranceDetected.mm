@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentDate:(BOOL)a3;
- (void)setHasTriggerPhrase:(BOOL)a3;
- (void)setHasUtteranceEnrollSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setPageNumber:](v5, "setPageNumber:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"audioId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)v5 setAudioId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setTriggerPhrase:](v5, "setTriggerPhrase:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaISOLocale alloc] initWithDictionary:v10];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)v5 setSiriInputLocale:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"enrollmentDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setEnrollmentDate:](v5, "setEnrollmentDate:", [v12 unsignedLongLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"utteranceEnrollSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setUtteranceEnrollSuccess:](v5, "setUtteranceEnrollSuccess:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self dictionaryRepresentation];
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
  if (self->_audioId)
  {
    v4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioId"];
    }
  }

  v7 = *(&self->_utteranceEnrollSuccess + 1);
  if ((v7 & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected enrollmentDate](self, "enrollmentDate")}];
    [v3 setObject:v8 forKeyedSubscript:@"enrollmentDate"];

    v7 = *(&self->_utteranceEnrollSuccess + 1);
  }

  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected pageNumber](self, "pageNumber")}];
    [v3 setObject:v9 forKeyedSubscript:@"pageNumber"];
  }

  if (self->_siriInputLocale)
  {
    v10 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  v13 = *(&self->_utteranceEnrollSuccess + 1);
  if ((v13 & 2) != 0)
  {
    v14 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self triggerPhrase];
    v15 = @"TRIGGERPHRASE_UNKNOWN";
    if (v14 == 1)
    {
      v15 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (v14 == 2)
    {
      v16 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v16 = v15;
    }

    [v3 setObject:v16 forKeyedSubscript:@"triggerPhrase"];
    v13 = *(&self->_utteranceEnrollSuccess + 1);
  }

  if ((v13 & 8) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected utteranceEnrollSuccess](self, "utteranceEnrollSuccess")}];
    [v3 setObject:v17 forKeyedSubscript:@"utteranceEnrollSuccess"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_utteranceEnrollSuccess + 1))
  {
    v3 = 2654435761 * self->_pageNumber;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_audioId hash];
  if ((*(&self->_utteranceEnrollSuccess + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_triggerPhrase;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  if ((*(&self->_utteranceEnrollSuccess + 1) & 4) != 0)
  {
    v7 = 2654435761u * self->_enrollmentDate;
    if ((*(&self->_utteranceEnrollSuccess + 1) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*(&self->_utteranceEnrollSuccess + 1) & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = 2654435761 * self->_utteranceEnrollSuccess;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (*(&self->_utteranceEnrollSuccess + 1) != (v4[49] & 1))
  {
    goto LABEL_18;
  }

  if (*(&self->_utteranceEnrollSuccess + 1))
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [v4 pageNumber])
    {
      goto LABEL_18;
    }
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
  v7 = [v4 audioId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
  if (v8)
  {
    v9 = v8;
    v10 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
    v11 = [v4 audioId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*(&self->_utteranceEnrollSuccess + 1) >> 1) & 1;
  if (v13 != ((v4[49] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    triggerPhrase = self->_triggerPhrase;
    if (triggerPhrase != [v4 triggerPhrase])
    {
      goto LABEL_18;
    }
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
  v7 = [v4 siriInputLocale];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v15 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
  if (v15)
  {
    v16 = v15;
    v17 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
    v18 = [v4 siriInputLocale];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = *(&self->_utteranceEnrollSuccess + 1);
  v23 = (v22 >> 2) & 1;
  v24 = v4[49];
  if (v23 == ((v24 >> 2) & 1))
  {
    if (v23)
    {
      enrollmentDate = self->_enrollmentDate;
      if (enrollmentDate != [v4 enrollmentDate])
      {
        goto LABEL_18;
      }

      v22 = *(&self->_utteranceEnrollSuccess + 1);
      v24 = v4[49];
    }

    v26 = (v22 >> 3) & 1;
    if (v26 == ((v24 >> 3) & 1))
    {
      if (!v26 || (utteranceEnrollSuccess = self->_utteranceEnrollSuccess, utteranceEnrollSuccess == [v4 utteranceEnrollSuccess]))
      {
        v20 = 1;
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*(&self->_utteranceEnrollSuccess + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];

  if (v4)
  {
    v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_utteranceEnrollSuccess + 1) & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];

  if (v6)
  {
    v7 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  v8 = *(&self->_utteranceEnrollSuccess + 1);
  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v8 = *(&self->_utteranceEnrollSuccess + 1);
  }

  if ((v8 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasUtteranceEnrollSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_utteranceEnrollSuccess + 1) = *(&self->_utteranceEnrollSuccess + 1) & 0xF7 | v3;
}

- (void)setHasEnrollmentDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_utteranceEnrollSuccess + 1) = *(&self->_utteranceEnrollSuccess + 1) & 0xFB | v3;
}

- (void)setHasTriggerPhrase:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_utteranceEnrollSuccess + 1) = *(&self->_utteranceEnrollSuccess + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self deleteAudioId];
  }

  v9 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self deleteSiriInputLocale];
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