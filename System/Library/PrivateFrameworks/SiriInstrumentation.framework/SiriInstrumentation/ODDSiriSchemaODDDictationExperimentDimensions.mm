@interface ODDSiriSchemaODDDictationExperimentDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationExperimentDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDDictationExperimentDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)trigger;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDDictationExperimentDimensions

- (ODDSiriSchemaODDDictationExperimentDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDDictationExperimentDimensions;
  v5 = [(ODDSiriSchemaODDDictationExperimentDimensions *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dictationDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDDictationDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDictationExperimentDimensions *)v5 setDictationDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"experimentAllocationStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationExperimentDimensions setExperimentAllocationStatus:](v5, "setExperimentAllocationStatus:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationExperimentDimensions setIsFirstTriggerOrAfterFirstTrigger:](v5, "setIsFirstTriggerOrAfterFirstTrigger:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"codePathId"];
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

- (ODDSiriSchemaODDDictationExperimentDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationExperimentDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictionaryRepresentation];
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
  if (self->_codePathId)
  {
    codePathId = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
    dictionaryRepresentation = [codePathId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"codePathId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"codePathId"];
    }
  }

  if (self->_dictationDimensions)
  {
    dictationDimensions = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
    dictionaryRepresentation2 = [dictationDimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dictationDimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"dictationDimensions"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"experimentAllocationStatus"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDDictationExperimentDimensions isFirstTriggerOrAfterFirstTrigger](self, "isFirstTriggerOrAfterFirstTrigger")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isFirstTriggerOrAfterFirstTrigger"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  dictationDimensions = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
  dictationDimensions2 = [equalCopy dictationDimensions];
  if ((dictationDimensions != 0) == (dictationDimensions2 == 0))
  {
    goto LABEL_18;
  }

  dictationDimensions3 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
  if (dictationDimensions3)
  {
    v8 = dictationDimensions3;
    dictationDimensions4 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
    dictationDimensions5 = [equalCopy dictationDimensions];
    v11 = [dictationDimensions4 isEqual:dictationDimensions5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    experimentAllocationStatus = self->_experimentAllocationStatus;
    if (experimentAllocationStatus != [equalCopy experimentAllocationStatus])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    isFirstTriggerOrAfterFirstTrigger = self->_isFirstTriggerOrAfterFirstTrigger;
    if (isFirstTriggerOrAfterFirstTrigger != [equalCopy isFirstTriggerOrAfterFirstTrigger])
    {
      goto LABEL_19;
    }
  }

  dictationDimensions = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  dictationDimensions2 = [equalCopy codePathId];
  if ((dictationDimensions != 0) == (dictationDimensions2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  codePathId = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  if (!codePathId)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = codePathId;
  codePathId2 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  codePathId3 = [equalCopy codePathId];
  v21 = [codePathId2 isEqual:codePathId3];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dictationDimensions = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];

  if (dictationDimensions)
  {
    dictationDimensions2 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
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

  codePathId = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];

  v8 = toCopy;
  if (codePathId)
  {
    codePathId2 = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasIsFirstTriggerOrAfterFirstTrigger:(BOOL)trigger
{
  if (trigger)
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
  v13.super_class = ODDSiriSchemaODDDictationExperimentDimensions;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dictationDimensions = [(ODDSiriSchemaODDDictationExperimentDimensions *)self dictationDimensions];
  v7 = [dictationDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDDictationExperimentDimensions *)self deleteDictationDimensions];
  }

  codePathId = [(ODDSiriSchemaODDDictationExperimentDimensions *)self codePathId];
  v10 = [codePathId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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