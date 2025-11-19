@interface ODDSiriSchemaODDAssistantExperimentDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)a3;
- (void)setHasIsTriggered:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssistantExperimentDimensions

- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDAssistantExperimentDimensions;
  v5 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantExperimentDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"experimentAllocationStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantExperimentDimensions setExperimentAllocationStatus:](v5, "setExperimentAllocationStatus:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantExperimentDimensions setIsTriggered:](v5, "setIsTriggered:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantExperimentDimensions setIsFirstTriggerOrAfterFirstTrigger:](v5, "setIsFirstTriggerOrAfterFirstTrigger:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"codePathId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(ODDSiriSchemaODDAssistantExperimentDimensions *)v5 setCodePathId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self dictionaryRepresentation];
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
  if (self->_assistantDimensions)
  {
    v4 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (self->_codePathId)
  {
    v7 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"codePathId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"codePathId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self experimentAllocationStatus]- 1;
    if (v11 > 2)
    {
      v12 = @"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DCE10[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"experimentAllocationStatus"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantExperimentDimensions isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
    [v3 setObject:v13 forKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantExperimentDimensions isTriggered](self, "isTriggered")}];
    [v3 setObject:v14 forKeyedSubscript:@"isTriggered"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAssistantDimensions *)self->_assistantDimensions hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_codePathId hash];
  }

  v4 = 2654435761 * self->_experimentAllocationStatus;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_isTriggered;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_isFirstTriggerOrAfterFirstTrigger;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_codePathId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
  v6 = [v4 assistantDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
    v10 = [v4 assistantDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    experimentAllocationStatus = self->_experimentAllocationStatus;
    if (experimentAllocationStatus != [v4 experimentAllocationStatus])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v15)
  {
    isTriggered = self->_isTriggered;
    if (isTriggered != [v4 isTriggered])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_23;
  }

  if (v17)
  {
    isFirstTriggerOrAfterFirstTrigger = self->_isFirstTriggerOrAfterFirstTrigger;
    if (isFirstTriggerOrAfterFirstTrigger != [v4 isFirstTriggerOrAfterFirstTrigger])
    {
      goto LABEL_23;
    }
  }

  v5 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  v6 = [v4 codePathId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  v19 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  if (!v19)
  {

LABEL_26:
    v24 = 1;
    goto LABEL_24;
  }

  v20 = v19;
  v21 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  v22 = [v4 codePathId];
  v23 = [v21 isEqual:v22];

  if (v23)
  {
    goto LABEL_26;
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  v7 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];

  v8 = v10;
  if (v7)
  {
    v9 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)a3
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

- (void)setHasIsTriggered:(BOOL)a3
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
  v13.super_class = ODDSiriSchemaODDAssistantExperimentDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDAssistantExperimentDimensions *)self deleteAssistantDimensions];
  }

  v9 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDAssistantExperimentDimensions *)self deleteCodePathId];
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