@interface ODDSiriSchemaODDAssistantCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantCounts)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantCounts)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantCounts

- (ODDSiriSchemaODDAssistantCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDAssistantCounts;
  v5 = [(ODDSiriSchemaODDAssistantCounts *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTurnCounts alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantCounts *)v5 setTurnCounts:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDTaskCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAssistantCounts *)v5 setTaskCounts:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDReliabilityCounts alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDAssistantCounts *)v5 setReliabilityCounts:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantCounts *)self dictionaryRepresentation];
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
  if (self->_reliabilityCounts)
  {
    reliabilityCounts = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];
    dictionaryRepresentation = [reliabilityCounts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"reliabilityCounts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"reliabilityCounts"];
    }
  }

  if (self->_taskCounts)
  {
    taskCounts = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];
    dictionaryRepresentation2 = [taskCounts dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"taskCounts"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"taskCounts"];
    }
  }

  if (self->_turnCounts)
  {
    turnCounts = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];
    dictionaryRepresentation3 = [turnCounts dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"turnCounts"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"turnCounts"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDTurnCounts *)self->_turnCounts hash];
  v4 = [(ODDSiriSchemaODDTaskCounts *)self->_taskCounts hash]^ v3;
  return v4 ^ [(ODDSiriSchemaODDReliabilityCounts *)self->_reliabilityCounts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  turnCounts = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];
  turnCounts2 = [equalCopy turnCounts];
  if ((turnCounts != 0) == (turnCounts2 == 0))
  {
    goto LABEL_16;
  }

  turnCounts3 = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];
  if (turnCounts3)
  {
    v8 = turnCounts3;
    turnCounts4 = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];
    turnCounts5 = [equalCopy turnCounts];
    v11 = [turnCounts4 isEqual:turnCounts5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  turnCounts = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];
  turnCounts2 = [equalCopy taskCounts];
  if ((turnCounts != 0) == (turnCounts2 == 0))
  {
    goto LABEL_16;
  }

  taskCounts = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];
  if (taskCounts)
  {
    v13 = taskCounts;
    taskCounts2 = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];
    taskCounts3 = [equalCopy taskCounts];
    v16 = [taskCounts2 isEqual:taskCounts3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  turnCounts = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];
  turnCounts2 = [equalCopy reliabilityCounts];
  if ((turnCounts != 0) != (turnCounts2 == 0))
  {
    reliabilityCounts = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];
    if (!reliabilityCounts)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = reliabilityCounts;
    reliabilityCounts2 = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];
    reliabilityCounts3 = [equalCopy reliabilityCounts];
    v21 = [reliabilityCounts2 isEqual:reliabilityCounts3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnCounts = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];

  if (turnCounts)
  {
    turnCounts2 = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];
    PBDataWriterWriteSubmessage();
  }

  taskCounts = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];

  if (taskCounts)
  {
    taskCounts2 = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];
    PBDataWriterWriteSubmessage();
  }

  reliabilityCounts = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];

  v9 = toCopy;
  if (reliabilityCounts)
  {
    reliabilityCounts2 = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDAssistantCounts;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  turnCounts = [(ODDSiriSchemaODDAssistantCounts *)self turnCounts];
  v7 = [turnCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssistantCounts *)self deleteTurnCounts];
  }

  taskCounts = [(ODDSiriSchemaODDAssistantCounts *)self taskCounts];
  v10 = [taskCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssistantCounts *)self deleteTaskCounts];
  }

  reliabilityCounts = [(ODDSiriSchemaODDAssistantCounts *)self reliabilityCounts];
  v13 = [reliabilityCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDAssistantCounts *)self deleteReliabilityCounts];
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