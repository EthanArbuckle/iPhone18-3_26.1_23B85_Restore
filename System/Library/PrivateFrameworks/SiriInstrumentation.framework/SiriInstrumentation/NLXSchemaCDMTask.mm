@interface NLXSchemaCDMTask
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMTask)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMTask)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMTask

- (NLXSchemaCDMTask)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMTask;
  v5 = [(NLXSchemaCDMTask *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMTask *)v5 setTaskId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMTask *)v5 setTask:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(NLXSchemaCDMTask *)v5 setScore:?];
    }

    v11 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTask)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTask *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMTask *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(NLXSchemaCDMTask *)self score];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"score"];
  }

  if (self->_task)
  {
    task = [(NLXSchemaCDMTask *)self task];
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
    taskId = [(NLXSchemaCDMTask *)self taskId];
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

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_taskId hash];
  v4 = [(USOSchemaUSOGraph *)self->_task hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v5.i64 = floor(score + 0.5);
    v9 = (score - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  taskId = [(NLXSchemaCDMTask *)self taskId];
  taskId2 = [equalCopy taskId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_11;
  }

  taskId3 = [(NLXSchemaCDMTask *)self taskId];
  if (taskId3)
  {
    v8 = taskId3;
    taskId4 = [(NLXSchemaCDMTask *)self taskId];
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

  taskId = [(NLXSchemaCDMTask *)self task];
  taskId2 = [equalCopy task];
  if ((taskId != 0) == (taskId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  task = [(NLXSchemaCDMTask *)self task];
  if (task)
  {
    v13 = task;
    task2 = [(NLXSchemaCDMTask *)self task];
    task3 = [equalCopy task];
    v16 = [task2 isEqual:task3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (score = self->_score, [equalCopy score], score == v20))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  taskId = [(NLXSchemaCDMTask *)self taskId];

  if (taskId)
  {
    taskId2 = [(NLXSchemaCDMTask *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  task = [(NLXSchemaCDMTask *)self task];

  if (task)
  {
    task2 = [(NLXSchemaCDMTask *)self task];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMTask;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  taskId = [(NLXSchemaCDMTask *)self taskId];
  v7 = [taskId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMTask *)self deleteTaskId];
  }

  task = [(NLXSchemaCDMTask *)self task];
  v10 = [task applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMTask *)self deleteTask];
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