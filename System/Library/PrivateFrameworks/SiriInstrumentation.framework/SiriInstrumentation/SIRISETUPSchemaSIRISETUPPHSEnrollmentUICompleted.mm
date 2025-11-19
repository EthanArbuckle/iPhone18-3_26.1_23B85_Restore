@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentOutcome:(BOOL)a3;
- (void)setHasPageNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted setEnrollmentMode:](v5, "setEnrollmentMode:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaISOLocale alloc] initWithDictionary:v7];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)v5 setLocale:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"enrollmentOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted setEnrollmentOutcome:](v5, "setEnrollmentOutcome:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted setPageNumber:](v5, "setPageNumber:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self dictionaryRepresentation];
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

    [v3 setObject:v6 forKeyedSubscript:@"enrollmentMode"];
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

    [v3 setObject:v8 forKeyedSubscript:@"enrollmentOutcome"];
  }

  if (self->_locale)
  {
    v9 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"locale"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"locale"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted pageNumber](self, "pageNumber")}];
    [v3 setObject:v12 forKeyedSubscript:@"pageNumber"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [v4 enrollmentMode])
    {
      goto LABEL_19;
    }
  }

  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
  v7 = [v4 locale];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

    goto LABEL_19;
  }

  v9 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
  if (v9)
  {
    v10 = v9;
    v11 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
    v12 = [v4 locale];
    v13 = [v11 isEqual:v12];

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
  v16 = v4[32];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    enrollmentOutcome = self->_enrollmentOutcome;
    if (enrollmentOutcome == [v4 enrollmentOutcome])
    {
      has = self->_has;
      v16 = v4[32];
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
    if (pageNumber != [v4 pageNumber])
    {
      goto LABEL_19;
    }
  }

  v20 = 1;
LABEL_20:

  return v20;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];

  if (v4)
  {
    v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale];
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

- (void)setHasPageNumber:(BOOL)a3
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

- (void)setHasEnrollmentOutcome:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUICompleted *)self locale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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