@interface ODDSiriSchemaODDDictationExperimentDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationExperimentDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDictationExperimentDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDictationExperimentDimensions

- (ODDSiriSchemaODDDictationExperimentDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDDictationExperimentDimensions;
  v5 = [(ODDSiriSchemaODDDictationExperimentDimensions *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dictationDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDDictationDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDictationExperimentDimensions *)v5 setDictationDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"experimentAllocationStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationExperimentDimensions setExperimentAllocationStatus:](v5, "setExperimentAllocationStatus:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationExperimentDimensions setIsFirstTriggerOrAfterFirstTrigger:](v5, "setIsFirstTriggerOrAfterFirstTrigger:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"codePathId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDDictationExperimentDimensions *)v5 setCodePathId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationExperimentDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationExperimentDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictionaryRepresentation];
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
  if (self->_codePathId)
  {
    v4 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"codePathId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"codePathId"];
    }
  }

  if (self->_dictationDimensions)
  {
    v7 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"dictationDimensions"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"dictationDimensions"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self experimentAllocationStatus]- 1;
    if (v11 > 2)
    {
      v12 = @"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DD698[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"experimentAllocationStatus"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDDictationExperimentDimensions isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
    [v3 setObject:v13 forKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDDictationDimensions *)self->_dictationDimensions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_experimentAllocationStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_codePathId hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isFirstTriggerOrAfterFirstTrigger;
  return v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_codePathId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
  v6 = [v4 dictationDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
    v10 = [v4 dictationDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    experimentAllocationStatus = self->_experimentAllocationStatus;
    if (experimentAllocationStatus != [v4 experimentAllocationStatus])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    isFirstTriggerOrAfterFirstTrigger = self->_isFirstTriggerOrAfterFirstTrigger;
    if (isFirstTriggerOrAfterFirstTrigger != [v4 isFirstTriggerOrAfterFirstTrigger])
    {
      goto LABEL_19;
    }
  }

  v5 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  v6 = [v4 codePathId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  if (!v17)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  v20 = [v4 codePathId];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];

  v8 = v10;
  if (v7)
  {
    v9 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDDictationExperimentDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDDictationExperimentDimensions *)self deleteDictationDimensions];
  }

  v9 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDDictationExperimentDimensions *)self deleteCodePathId];
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