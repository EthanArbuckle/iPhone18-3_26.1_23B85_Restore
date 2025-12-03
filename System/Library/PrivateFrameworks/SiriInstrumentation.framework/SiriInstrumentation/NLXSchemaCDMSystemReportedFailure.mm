@interface NLXSchemaCDMSystemReportedFailure
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSystemReportedFailure)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSystemReportedFailure)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSystemReportedFailure

- (NLXSchemaCDMSystemReportedFailure)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NLXSchemaCDMSystemReportedFailure;
  v5 = [(NLXSchemaCDMSystemReportedFailure *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemReportedFailure *)v5 setTaskId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSystemReportedFailure *)v5 setReason:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[USOSchemaUSOGraph alloc] initWithDictionary:v10];
      [(NLXSchemaCDMSystemReportedFailure *)v5 setTask:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSystemReportedFailure)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemReportedFailure *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSystemReportedFailure *)self dictionaryRepresentation];
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
  if (self->_reason)
  {
    reason = [(NLXSchemaCDMSystemReportedFailure *)self reason];
    dictionaryRepresentation = [reason dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"reason"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"reason"];
    }
  }

  if (self->_task)
  {
    task = [(NLXSchemaCDMSystemReportedFailure *)self task];
    dictionaryRepresentation2 = [task dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"task"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"task"];
    }
  }

  if (self->_taskId)
  {
    taskId = [(NLXSchemaCDMSystemReportedFailure *)self taskId];
    dictionaryRepresentation3 = [taskId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"taskId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"taskId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_taskId hash];
  v4 = [(USOSchemaUSOGraph *)self->_reason hash]^ v3;
  return v4 ^ [(USOSchemaUSOGraph *)self->_task hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  taskId = [(NLXSchemaCDMSystemReportedFailure *)self taskId];
  taskId2 = [equalCopy taskId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_16;
  }

  taskId3 = [(NLXSchemaCDMSystemReportedFailure *)self taskId];
  if (taskId3)
  {
    v8 = taskId3;
    taskId4 = [(NLXSchemaCDMSystemReportedFailure *)self taskId];
    taskId5 = [equalCopy taskId];
    v11 = [taskId4 isEqual:taskId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  taskId = [(NLXSchemaCDMSystemReportedFailure *)self reason];
  taskId2 = [equalCopy reason];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_16;
  }

  reason = [(NLXSchemaCDMSystemReportedFailure *)self reason];
  if (reason)
  {
    v13 = reason;
    reason2 = [(NLXSchemaCDMSystemReportedFailure *)self reason];
    reason3 = [equalCopy reason];
    v16 = [reason2 isEqual:reason3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  taskId = [(NLXSchemaCDMSystemReportedFailure *)self task];
  taskId2 = [equalCopy task];
  if ((taskId != 0) != (taskId2 == 0))
  {
    task = [(NLXSchemaCDMSystemReportedFailure *)self task];
    if (!task)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = task;
    task2 = [(NLXSchemaCDMSystemReportedFailure *)self task];
    task3 = [equalCopy task];
    v21 = [task2 isEqual:task3];

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
  taskId = [(NLXSchemaCDMSystemReportedFailure *)self taskId];

  if (taskId)
  {
    taskId2 = [(NLXSchemaCDMSystemReportedFailure *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  reason = [(NLXSchemaCDMSystemReportedFailure *)self reason];

  if (reason)
  {
    reason2 = [(NLXSchemaCDMSystemReportedFailure *)self reason];
    PBDataWriterWriteSubmessage();
  }

  task = [(NLXSchemaCDMSystemReportedFailure *)self task];

  v9 = toCopy;
  if (task)
  {
    task2 = [(NLXSchemaCDMSystemReportedFailure *)self task];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = NLXSchemaCDMSystemReportedFailure;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  taskId = [(NLXSchemaCDMSystemReportedFailure *)self taskId];
  v7 = [taskId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMSystemReportedFailure *)self deleteTaskId];
  }

  reason = [(NLXSchemaCDMSystemReportedFailure *)self reason];
  v10 = [reason applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMSystemReportedFailure *)self deleteReason];
  }

  task = [(NLXSchemaCDMSystemReportedFailure *)self task];
  v13 = [task applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMSystemReportedFailure *)self deleteTask];
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