@interface ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithDictionary:(id)a3;
- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnrollmentOutcome:(BOOL)a3;
- (void)setHasPageNumberCompleted:(BOOL)a3;
- (void)setHasTrainingOutcome:(BOOL)a3;
- (void)setHasVoiceTriggerType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions;
  v5 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"coreDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODFUNNELSiriSchemaODFUNNELCoreDimensions alloc] initWithDictionary:v6];
      [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)v5 setCoreDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"enrollmentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setEnrollmentMode:](v5, "setEnrollmentMode:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"voiceTriggerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setVoiceTriggerType:](v5, "setVoiceTriggerType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"enrollmentOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setEnrollmentOutcome:](v5, "setEnrollmentOutcome:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"pageNumberCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setPageNumberCompleted:](v5, "setPageNumberCompleted:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"trainingOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions setTrainingOutcome:](v5, "setTrainingOutcome:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self dictionaryRepresentation];
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
  if (self->_coreDimensions)
  {
    v4 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"coreDimensions"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"coreDimensions"];
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

    [v3 setObject:v13 forKeyedSubscript:@"enrollmentMode"];
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

  [v3 setObject:v15 forKeyedSubscript:@"enrollmentOutcome"];
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
  [v3 setObject:v16 forKeyedSubscript:@"pageNumberCompleted"];

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

  [v3 setObject:v18 forKeyedSubscript:@"trainingOutcome"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v8 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self voiceTriggerType];
  v9 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_UNKNOWN";
  if (v8 == 1)
  {
    v9 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS";
  }

  if (v8 == 2)
  {
    v10 = @"SIRISETUPENROLLMENTUIVOICETRIGGERTYPE_HS_JS";
  }

  else
  {
    v10 = v9;
  }

  [v3 setObject:v10 forKeyedSubscript:@"voiceTriggerType"];
LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
  v6 = [v4 coreDimensions];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_28;
  }

  v8 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
    v11 = [v4 coreDimensions];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[36];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (*&has)
  {
    enrollmentMode = self->_enrollmentMode;
    if (enrollmentMode != [v4 enrollmentMode])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v16)
  {
    voiceTriggerType = self->_voiceTriggerType;
    if (voiceTriggerType != [v4 voiceTriggerType])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    enrollmentOutcome = self->_enrollmentOutcome;
    if (enrollmentOutcome != [v4 enrollmentOutcome])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_28;
  }

  if (v20)
  {
    pageNumberCompleted = self->_pageNumberCompleted;
    if (pageNumberCompleted == [v4 pageNumberCompleted])
    {
      has = self->_has;
      v14 = v4[36];
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
    if (trainingOutcome != [v4 trainingOutcome])
    {
      goto LABEL_28;
    }
  }

  v24 = 1;
LABEL_29:

  return v24;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];

  if (v4)
  {
    v5 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
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
  v7 = v8;
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
  v7 = v8;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_10:
}

- (void)setHasTrainingOutcome:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPageNumberCompleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEnrollmentOutcome:(BOOL)a3
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
  v9.super_class = ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODFUNNELSiriSchemaODFUNNELVoiceTriggerEnrollmentDimensions *)self coreDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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