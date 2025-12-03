@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasVoiceTriggerType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted setEnrollmentMode:](v5, "setEnrollmentMode:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted setVoiceTriggerType:](v5, "setVoiceTriggerType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaISOLocale alloc] initWithDictionary:v8];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)v5 setLocale:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self enrollmentMode]- 1;
    if (v4 > 8)
    {
      v5 = @"SIRISETUPENROLLMENTUIMODE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E2D48[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"enrollmentMode"];
  }

  if (self->_locale)
  {
    locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
    dictionaryRepresentation = [locale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"locale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"locale"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    voiceTriggerType = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self voiceTriggerType];
    v10 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_UNKNOWN";
    if (voiceTriggerType == 1)
    {
      v10 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS";
    }

    if (voiceTriggerType == 2)
    {
      v11 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS_JS";
    }

    else
    {
      v11 = v10;
    }

    [dictionary setObject:v11 forKeyedSubscript:@"voiceTriggerType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_enrollmentMode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaISOLocale *)self->_locale hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_voiceTriggerType;
  return v7 ^ v6 ^ [(SISchemaISOLocale *)self->_locale hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [equalCopy enrollmentMode])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (voiceTriggerType = self->_voiceTriggerType, voiceTriggerType == [equalCopy voiceTriggerType]))
    {
      locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
      locale2 = [equalCopy locale];
      v12 = locale2;
      if ((locale != 0) != (locale2 == 0))
      {
        locale3 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
        if (!locale3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = locale3;
        locale4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
        locale5 = [equalCopy locale];
        v17 = [locale4 isEqual:locale5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];

  v6 = toCopy;
  if (locale)
  {
    locale2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
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
  v9.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self deleteLocale];
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