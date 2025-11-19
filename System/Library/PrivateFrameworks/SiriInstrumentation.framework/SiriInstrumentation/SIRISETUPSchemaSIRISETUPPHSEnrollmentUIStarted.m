@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithDictionary:(id)a3;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasVoiceTriggerType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted setEnrollmentMode:](v5, "setEnrollmentMode:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"voiceTriggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted setVoiceTriggerType:](v5, "setVoiceTriggerType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"locale"];
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

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self dictionaryRepresentation];
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

    [v3 setObject:v5 forKeyedSubscript:@"enrollmentMode"];
  }

  if (self->_locale)
  {
    v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"locale"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"locale"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self voiceTriggerType];
    v10 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_UNKNOWN";
    if (v9 == 1)
    {
      v10 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS";
    }

    if (v9 == 2)
    {
      v11 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS_JS";
    }

    else
    {
      v11 = v10;
    }

    [v3 setObject:v11 forKeyedSubscript:@"voiceTriggerType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [v4 enrollmentMode])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (voiceTriggerType = self->_voiceTriggerType, voiceTriggerType == [v4 voiceTriggerType]))
    {
      v10 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
      v11 = [v4 locale];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
        v16 = [v4 locale];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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

  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];

  v6 = v8;
  if (v5)
  {
    v7 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasVoiceTriggerType:(BOOL)a3
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
  v9.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUIStarted *)self locale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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