@interface NLXSchemaCDMSystemReportedSuccess
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSystemReportedSuccess)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSystemReportedSuccess)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSystemReportedSuccess

- (NLXSchemaCDMSystemReportedSuccess)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMSystemReportedSuccess;
  v5 = [(NLXSchemaCDMSystemReportedSuccess *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemReportedSuccess *)v5 setTaskId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSystemReportedSuccess *)v5 setTask:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSystemReportedSuccess)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemReportedSuccess *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSystemReportedSuccess *)self dictionaryRepresentation];
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
  if (self->_task)
  {
    task = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    dictionaryRepresentation = [task dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"task"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"task"];
    }
  }

  if (self->_taskId)
  {
    taskId = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
    dictionaryRepresentation2 = [taskId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"taskId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"taskId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  taskId = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
  taskId2 = [equalCopy taskId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_11;
  }

  taskId3 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
  if (taskId3)
  {
    v8 = taskId3;
    taskId4 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
    taskId5 = [equalCopy taskId];
    v11 = [taskId4 isEqual:taskId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  taskId = [(NLXSchemaCDMSystemReportedSuccess *)self task];
  taskId2 = [equalCopy task];
  if ((taskId != 0) != (taskId2 == 0))
  {
    task = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    if (!task)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = task;
    task2 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    task3 = [equalCopy task];
    v16 = [task2 isEqual:task3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  taskId = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];

  if (taskId)
  {
    taskId2 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  task = [(NLXSchemaCDMSystemReportedSuccess *)self task];

  if (task)
  {
    task2 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMSystemReportedSuccess;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  taskId = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
  v7 = [taskId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMSystemReportedSuccess *)self deleteTaskId];
  }

  task = [(NLXSchemaCDMSystemReportedSuccess *)self task];
  v10 = [task applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMSystemReportedSuccess *)self deleteTask];
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