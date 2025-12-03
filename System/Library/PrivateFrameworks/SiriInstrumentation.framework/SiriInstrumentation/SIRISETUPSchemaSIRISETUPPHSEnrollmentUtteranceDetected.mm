@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentDate:(BOOL)date;
- (void)setHasTriggerPhrase:(BOOL)phrase;
- (void)setHasUtteranceEnrollSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setPageNumber:](v5, "setPageNumber:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)v5 setAudioId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setTriggerPhrase:](v5, "setTriggerPhrase:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaISOLocale alloc] initWithDictionary:v10];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)v5 setSiriInputLocale:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setEnrollmentDate:](v5, "setEnrollmentDate:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"utteranceEnrollSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected setUtteranceEnrollSuccess:](v5, "setUtteranceEnrollSuccess:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self dictionaryRepresentation];
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
  if (self->_audioId)
  {
    audioId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
    dictionaryRepresentation = [audioId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioId"];
    }
  }

  v7 = *(&self->_utteranceEnrollSuccess + 1);
  if ((v7 & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected enrollmentDate](self, "enrollmentDate")}];
    [dictionary setObject:v8 forKeyedSubscript:@"enrollmentDate"];

    v7 = *(&self->_utteranceEnrollSuccess + 1);
  }

  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected pageNumber](self, "pageNumber")}];
    [dictionary setObject:v9 forKeyedSubscript:@"pageNumber"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
    dictionaryRepresentation2 = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  v13 = *(&self->_utteranceEnrollSuccess + 1);
  if ((v13 & 2) != 0)
  {
    triggerPhrase = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self triggerPhrase];
    v15 = @"TRIGGERPHRASE_UNKNOWN";
    if (triggerPhrase == 1)
    {
      v15 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (triggerPhrase == 2)
    {
      v16 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v16 = v15;
    }

    [dictionary setObject:v16 forKeyedSubscript:@"triggerPhrase"];
    v13 = *(&self->_utteranceEnrollSuccess + 1);
  }

  if ((v13 & 8) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected utteranceEnrollSuccess](self, "utteranceEnrollSuccess")}];
    [dictionary setObject:v17 forKeyedSubscript:@"utteranceEnrollSuccess"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (*(&self->_utteranceEnrollSuccess + 1) != (equalCopy[49] & 1))
  {
    goto LABEL_18;
  }

  if (*(&self->_utteranceEnrollSuccess + 1))
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [equalCopy pageNumber])
    {
      goto LABEL_18;
    }
  }

  audioId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
  audioId2 = [equalCopy audioId];
  if ((audioId != 0) == (audioId2 == 0))
  {
    goto LABEL_17;
  }

  audioId3 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
  if (audioId3)
  {
    v9 = audioId3;
    audioId4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
    audioId5 = [equalCopy audioId];
    v12 = [audioId4 isEqual:audioId5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*(&self->_utteranceEnrollSuccess + 1) >> 1) & 1;
  if (v13 != ((equalCopy[49] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    triggerPhrase = self->_triggerPhrase;
    if (triggerPhrase != [equalCopy triggerPhrase])
    {
      goto LABEL_18;
    }
  }

  audioId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
  audioId2 = [equalCopy siriInputLocale];
  if ((audioId != 0) == (audioId2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  siriInputLocale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
  if (siriInputLocale)
  {
    v16 = siriInputLocale;
    siriInputLocale2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
    siriInputLocale3 = [equalCopy siriInputLocale];
    v19 = [siriInputLocale2 isEqual:siriInputLocale3];

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
  v24 = equalCopy[49];
  if (v23 == ((v24 >> 2) & 1))
  {
    if (v23)
    {
      enrollmentDate = self->_enrollmentDate;
      if (enrollmentDate != [equalCopy enrollmentDate])
      {
        goto LABEL_18;
      }

      v22 = *(&self->_utteranceEnrollSuccess + 1);
      v24 = equalCopy[49];
    }

    v26 = (v22 >> 3) & 1;
    if (v26 == ((v24 >> 3) & 1))
    {
      if (!v26 || (utteranceEnrollSuccess = self->_utteranceEnrollSuccess, utteranceEnrollSuccess == [equalCopy utteranceEnrollSuccess]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_utteranceEnrollSuccess + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  audioId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];

  if (audioId)
  {
    audioId2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_utteranceEnrollSuccess + 1) & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  siriInputLocale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
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

- (void)setHasUtteranceEnrollSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_utteranceEnrollSuccess + 1) = *(&self->_utteranceEnrollSuccess + 1) & 0xF7 | v3;
}

- (void)setHasEnrollmentDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_utteranceEnrollSuccess + 1) = *(&self->_utteranceEnrollSuccess + 1) & 0xFB | v3;
}

- (void)setHasTriggerPhrase:(BOOL)phrase
{
  if (phrase)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_utteranceEnrollSuccess + 1) = *(&self->_utteranceEnrollSuccess + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  audioId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self audioId];
  v7 = [audioId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self deleteAudioId];
  }

  siriInputLocale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceDetected *)self siriInputLocale];
  v10 = [siriInputLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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