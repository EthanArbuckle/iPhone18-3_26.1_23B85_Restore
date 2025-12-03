@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentOutcome:(BOOL)outcome;
- (void)setHasPageNumber:(BOOL)number;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted setEnrollmentMode:](v5, "setEnrollmentMode:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaISOLocale alloc] initWithDictionary:v7];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)v5 setLocale:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted setEnrollmentOutcome:](v5, "setEnrollmentOutcome:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted setPageNumber:](v5, "setPageNumber:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self enrollmentMode]- 1;
    if (v5 > 8)
    {
      v6 = @"SIRISETUPENROLLMENTUIMODE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E2CE0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"enrollmentMode"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self enrollmentOutcome]- 1;
    if (v7 > 3)
    {
      v8 = @"SIRISETUPENROLLMENTUISESSIONOUTCOME_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E2D28[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"enrollmentOutcome"];
  }

  if (self->_locale)
  {
    locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
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

  if ((*&self->_has & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted pageNumber](self, "pageNumber")}];
    [dictionary setObject:v12 forKeyedSubscript:@"pageNumber"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_enrollmentMode;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaISOLocale *)self->_locale hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_enrollmentOutcome;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_pageNumber;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [equalCopy enrollmentMode])
    {
      goto LABEL_19;
    }
  }

  locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
  locale2 = [equalCopy locale];
  v8 = locale2;
  if ((locale != 0) == (locale2 == 0))
  {

    goto LABEL_19;
  }

  locale3 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
  if (locale3)
  {
    v10 = locale3;
    locale4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
    locale5 = [equalCopy locale];
    v13 = [locale4 isEqual:locale5];

    if (!v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v15 = (*&has >> 1) & 1;
  v16 = equalCopy[32];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    enrollmentOutcome = self->_enrollmentOutcome;
    if (enrollmentOutcome == [equalCopy enrollmentOutcome])
    {
      has = self->_has;
      v16 = equalCopy[32];
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_15:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v16 >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v18)
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [equalCopy pageNumber])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  locale = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];

  if (locale)
  {
    locale2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasPageNumber:(BOOL)number
{
  if (number)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEnrollmentOutcome:(BOOL)outcome
{
  if (outcome)
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
  v9.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self deleteLocale];
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