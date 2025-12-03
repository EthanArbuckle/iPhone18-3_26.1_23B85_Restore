@interface ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithDictionary:(id)dictionary;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentOutcome:(BOOL)outcome;
- (void)setHasPageNumberCompleted:(BOOL)completed;
- (void)setHasTrainingOutcome:(BOOL)outcome;
- (void)setHasVoiceTriggerType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions;
  v5 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"coreDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODFUNNELSiriSchemaODFUNNELCoreDimensions alloc] initWithDictionary:v6];
      [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)v5 setCoreDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setEnrollmentMode:](v5, "setEnrollmentMode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setVoiceTriggerType:](v5, "setVoiceTriggerType:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setEnrollmentOutcome:](v5, "setEnrollmentOutcome:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"pageNumberCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setPageNumberCompleted:](v5, "setPageNumberCompleted:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trainingOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setTrainingOutcome:](v5, "setTrainingOutcome:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self dictionaryRepresentation];
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
  if (self->_coreDimensions)
  {
    coreDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
    dictionaryRepresentation = [coreDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"coreDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"coreDimensions"];
    }
  }

  has = self->_has;
  if (has)
  {
    v12 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self enrollmentMode]- 1;
    if (v12 > 8)
    {
      v13 = @"SIRISETUPENROLLMENTUIMODE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78DDEB8[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"enrollmentMode"];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_8:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

  v14 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self enrollmentOutcome]- 1;
  if (v14 > 3)
  {
    v15 = @"SIRISETUPENROLLMENTUISESSIONOUTCOME_UNKNOWN";
  }

  else
  {
    v15 = off_1E78DDF00[v14];
  }

  [dictionary setObject:v15 forKeyedSubscript:@"enrollmentOutcome"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions pageNumberCompleted](self, "pageNumberCompleted")}];
  [dictionary setObject:v16 forKeyedSubscript:@"pageNumberCompleted"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

LABEL_29:
  v17 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self trainingOutcome]- 1;
  if (v17 > 2)
  {
    v18 = @"SIRISETUPENROLLMENTUITRAININGOUTCOME_UNKNOWN";
  }

  else
  {
    v18 = off_1E78DDF20[v17];
  }

  [dictionary setObject:v18 forKeyedSubscript:@"trainingOutcome"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  voiceTriggerType = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self voiceTriggerType];
  v9 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_UNKNOWN";
  if (voiceTriggerType == 1)
  {
    v9 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS";
  }

  if (voiceTriggerType == 2)
  {
    v10 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS_JS";
  }

  else
  {
    v10 = v9;
  }

  [dictionary setObject:v10 forKeyedSubscript:@"voiceTriggerType"];
LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODFUNNELSiriSchemaODFUNNELCoreDimensions *)self->_coreDimensions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_enrollmentMode;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_voiceTriggerType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_enrollmentOutcome;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_pageNumberCompleted;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_trainingOutcome;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  coreDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
  coreDimensions2 = [equalCopy coreDimensions];
  v7 = coreDimensions2;
  if ((coreDimensions != 0) == (coreDimensions2 == 0))
  {

    goto LABEL_28;
  }

  coreDimensions3 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
  if (coreDimensions3)
  {
    v9 = coreDimensions3;
    coreDimensions4 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
    coreDimensions5 = [equalCopy coreDimensions];
    v12 = [coreDimensions4 isEqual:coreDimensions5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[36];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (*&has)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [equalCopy enrollmentMode])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v16)
  {
    voiceTriggerType = self->_voiceTriggerType;
    if (voiceTriggerType != [equalCopy voiceTriggerType])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    enrollmentOutcome = self->_enrollmentOutcome;
    if (enrollmentOutcome != [equalCopy enrollmentOutcome])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_28;
  }

  if (v20)
  {
    pageNumberCompleted = self->_pageNumberCompleted;
    if (pageNumberCompleted == [equalCopy pageNumberCompleted])
    {
      has = self->_has;
      v14 = equalCopy[36];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_28;
  }

  if (v22)
  {
    trainingOutcome = self->_trainingOutcome;
    if (trainingOutcome != [equalCopy trainingOutcome])
    {
      goto LABEL_28;
    }
  }

  v24 = 1;
LABEL_29:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  coreDimensions = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];

  if (coreDimensions)
  {
    coreDimensions2 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  v7 = toCopy;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }

LABEL_10:
}

- (void)setHasTrainingOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPageNumberCompleted:(BOOL)completed
{
  if (completed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEnrollmentOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVoiceTriggerType:(BOOL)type
{
  if (type)
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
  v9.super_class = ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self deleteCoreDimensions];
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