@interface ODDSiriSchemaODDAssistantExperimentDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)trigger;
- (void)setHasIsTriggered:(BOOL)triggered;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantExperimentDimensions

- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDAssistantExperimentDimensions;
  v5 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantExperimentDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"experimentAllocationStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantExperimentDimensions setExperimentAllocationStatus:](v5, "setExperimentAllocationStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantExperimentDimensions setIsTriggered:](v5, "setIsTriggered:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantExperimentDimensions setIsFirstTriggerOrAfterFirstTrigger:](v5, "setIsFirstTriggerOrAfterFirstTrigger:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"codePathId"];
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

- (ODDSiriSchemaODDAssistantExperimentDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self dictionaryRepresentation];
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
  if (self->_assistantDimensions)
  {
    assistantDimensions = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
    dictionaryRepresentation = [assistantDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (self->_codePathId)
  {
    codePathId = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
    dictionaryRepresentation2 = [codePathId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"codePathId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"codePathId"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"experimentAllocationStatus"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantExperimentDimensions isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAssistantExperimentDimensions isTriggered](self, "isTriggered")}];
    [dictionary setObject:v14 forKeyedSubscript:@"isTriggered"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  assistantDimensions = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
  assistantDimensions2 = [equalCopy assistantDimensions];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_22;
  }

  assistantDimensions3 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
  if (assistantDimensions3)
  {
    v8 = assistantDimensions3;
    assistantDimensions4 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
    assistantDimensions5 = [equalCopy assistantDimensions];
    v11 = [assistantDimensions4 isEqual:assistantDimensions5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    experimentAllocationStatus = self->_experimentAllocationStatus;
    if (experimentAllocationStatus != [equalCopy experimentAllocationStatus])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v15)
  {
    isTriggered = self->_isTriggered;
    if (isTriggered != [equalCopy isTriggered])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_23;
  }

  if (v17)
  {
    isFirstTriggerOrAfterFirstTrigger = self->_isFirstTriggerOrAfterFirstTrigger;
    if (isFirstTriggerOrAfterFirstTrigger != [equalCopy isFirstTriggerOrAfterFirstTrigger])
    {
      goto LABEL_23;
    }
  }

  assistantDimensions = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  assistantDimensions2 = [equalCopy codePathId];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  codePathId = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  if (!codePathId)
  {

LABEL_26:
    v24 = 1;
    goto LABEL_24;
  }

  v20 = codePathId;
  codePathId2 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  codePathId3 = [equalCopy codePathId];
  v23 = [codePathId2 isEqual:codePathId3];

  if (v23)
  {
    goto LABEL_26;
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assistantDimensions = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];

  if (assistantDimensions)
  {
    assistantDimensions2 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
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
  codePathId = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];

  v8 = toCopy;
  if (codePathId)
  {
    codePathId2 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsTriggered:(BOOL)triggered
{
  if (triggered)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDAssistantExperimentDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  assistantDimensions = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self assistantDimensions];
  v7 = [assistantDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssistantExperimentDimensions *)self deleteAssistantDimensions];
  }

  codePathId = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self codePathId];
  v10 = [codePathId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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