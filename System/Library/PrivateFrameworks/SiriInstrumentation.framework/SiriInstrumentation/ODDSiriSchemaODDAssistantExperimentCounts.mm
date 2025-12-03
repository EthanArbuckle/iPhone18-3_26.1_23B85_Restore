@interface ODDSiriSchemaODDAssistantExperimentCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantExperimentCounts)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantExperimentCounts)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantExperimentCounts

- (ODDSiriSchemaODDAssistantExperimentCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ODDSiriSchemaODDAssistantExperimentCounts;
  v5 = [(ODDSiriSchemaODDAssistantExperimentCounts *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"turnCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTurnCounts alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantExperimentCounts *)v5 setTurnCounts:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDTaskCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAssistantExperimentCounts *)v5 setTaskCounts:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"reliabilityCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDReliabilityCounts alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDAssistantExperimentCounts *)v5 setReliabilityCounts:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sessionCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDSessionCounts alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDAssistantExperimentCounts *)v5 setSessionCounts:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantExperimentCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantExperimentCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantExperimentCounts *)self dictionaryRepresentation];
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
    reliabilityCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];
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

  if (self->_sessionCounts)
  {
    sessionCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];
    dictionaryRepresentation2 = [sessionCounts dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sessionCounts"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sessionCounts"];
    }
  }

  if (self->_taskCounts)
  {
    taskCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];
    dictionaryRepresentation3 = [taskCounts dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"taskCounts"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"taskCounts"];
    }
  }

  if (self->_turnCounts)
  {
    turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];
    dictionaryRepresentation4 = [turnCounts dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"turnCounts"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"turnCounts"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDTurnCounts *)self->_turnCounts hash];
  v4 = [(ODDSiriSchemaODDTaskCounts *)self->_taskCounts hash]^ v3;
  v5 = [(ODDSiriSchemaODDReliabilityCounts *)self->_reliabilityCounts hash];
  return v4 ^ v5 ^ [(ODDSiriSchemaODDSessionCounts *)self->_sessionCounts hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];
  turnCounts2 = [equalCopy turnCounts];
  if ((turnCounts != 0) == (turnCounts2 == 0))
  {
    goto LABEL_21;
  }

  turnCounts3 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];
  if (turnCounts3)
  {
    v8 = turnCounts3;
    turnCounts4 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];
    turnCounts5 = [equalCopy turnCounts];
    v11 = [turnCounts4 isEqual:turnCounts5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];
  turnCounts2 = [equalCopy taskCounts];
  if ((turnCounts != 0) == (turnCounts2 == 0))
  {
    goto LABEL_21;
  }

  taskCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];
  if (taskCounts)
  {
    v13 = taskCounts;
    taskCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];
    taskCounts3 = [equalCopy taskCounts];
    v16 = [taskCounts2 isEqual:taskCounts3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];
  turnCounts2 = [equalCopy reliabilityCounts];
  if ((turnCounts != 0) == (turnCounts2 == 0))
  {
    goto LABEL_21;
  }

  reliabilityCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];
  if (reliabilityCounts)
  {
    v18 = reliabilityCounts;
    reliabilityCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];
    reliabilityCounts3 = [equalCopy reliabilityCounts];
    v21 = [reliabilityCounts2 isEqual:reliabilityCounts3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];
  turnCounts2 = [equalCopy sessionCounts];
  if ((turnCounts != 0) != (turnCounts2 == 0))
  {
    sessionCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];
    if (!sessionCounts)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = sessionCounts;
    sessionCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];
    sessionCounts3 = [equalCopy sessionCounts];
    v26 = [sessionCounts2 isEqual:sessionCounts3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];

  if (turnCounts)
  {
    turnCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];
    PBDataWriterWriteSubmessage();
  }

  taskCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];

  if (taskCounts)
  {
    taskCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];
    PBDataWriterWriteSubmessage();
  }

  reliabilityCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];

  if (reliabilityCounts)
  {
    reliabilityCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];
    PBDataWriterWriteSubmessage();
  }

  sessionCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];

  v11 = toCopy;
  if (sessionCounts)
  {
    sessionCounts2 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDAssistantExperimentCounts;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  turnCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self turnCounts];
  v7 = [turnCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssistantExperimentCounts *)self deleteTurnCounts];
  }

  taskCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self taskCounts];
  v10 = [taskCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssistantExperimentCounts *)self deleteTaskCounts];
  }

  reliabilityCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self reliabilityCounts];
  v13 = [reliabilityCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDAssistantExperimentCounts *)self deleteReliabilityCounts];
  }

  sessionCounts = [(ODDSiriSchemaODDAssistantExperimentCounts *)self sessionCounts];
  v16 = [sessionCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDAssistantExperimentCounts *)self deleteSessionCounts];
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