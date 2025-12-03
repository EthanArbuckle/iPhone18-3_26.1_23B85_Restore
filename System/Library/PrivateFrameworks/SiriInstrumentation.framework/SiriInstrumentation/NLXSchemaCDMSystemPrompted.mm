@interface NLXSchemaCDMSystemPrompted
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSystemPrompted)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSystemPrompted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSystemPrompted

- (NLXSchemaCDMSystemPrompted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMSystemPrompted;
  v5 = [(NLXSchemaCDMSystemPrompted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemPrompted *)v5 setTaskId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"target"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSystemPrompted *)v5 setTarget:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSystemPrompted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemPrompted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSystemPrompted *)self dictionaryRepresentation];
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
  if (self->_target)
  {
    target = [(NLXSchemaCDMSystemPrompted *)self target];
    dictionaryRepresentation = [target dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"target"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"target"];
    }
  }

  if (self->_taskId)
  {
    taskId = [(NLXSchemaCDMSystemPrompted *)self taskId];
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

  taskId = [(NLXSchemaCDMSystemPrompted *)self taskId];
  taskId2 = [equalCopy taskId];
  if ((taskId != 0) == (taskId2 == 0))
  {
    goto LABEL_11;
  }

  taskId3 = [(NLXSchemaCDMSystemPrompted *)self taskId];
  if (taskId3)
  {
    v8 = taskId3;
    taskId4 = [(NLXSchemaCDMSystemPrompted *)self taskId];
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

  taskId = [(NLXSchemaCDMSystemPrompted *)self target];
  taskId2 = [equalCopy target];
  if ((taskId != 0) != (taskId2 == 0))
  {
    target = [(NLXSchemaCDMSystemPrompted *)self target];
    if (!target)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = target;
    target2 = [(NLXSchemaCDMSystemPrompted *)self target];
    target3 = [equalCopy target];
    v16 = [target2 isEqual:target3];

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
  taskId = [(NLXSchemaCDMSystemPrompted *)self taskId];

  if (taskId)
  {
    taskId2 = [(NLXSchemaCDMSystemPrompted *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  target = [(NLXSchemaCDMSystemPrompted *)self target];

  if (target)
  {
    target2 = [(NLXSchemaCDMSystemPrompted *)self target];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMSystemPrompted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  taskId = [(NLXSchemaCDMSystemPrompted *)self taskId];
  v7 = [taskId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMSystemPrompted *)self deleteTaskId];
  }

  target = [(NLXSchemaCDMSystemPrompted *)self target];
  v10 = [target applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMSystemPrompted *)self deleteTarget];
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