@interface NLXSchemaCDMUserWantedToPause
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMUserWantedToPause)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMUserWantedToPause)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMUserWantedToPause

- (NLXSchemaCDMUserWantedToPause)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMUserWantedToPause;
  v5 = [(NLXSchemaCDMUserWantedToPause *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMUserWantedToPause *)v5 setTaskId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMUserWantedToPause)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMUserWantedToPause *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMUserWantedToPause *)self dictionaryRepresentation];
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
  if (self->_taskId)
  {
    taskId = [(NLXSchemaCDMUserWantedToPause *)self taskId];
    dictionaryRepresentation = [taskId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"taskId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"taskId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    taskId = [(NLXSchemaCDMUserWantedToPause *)self taskId];
    taskId2 = [equalCopy taskId];
    v7 = taskId2;
    if ((taskId != 0) != (taskId2 == 0))
    {
      taskId3 = [(NLXSchemaCDMUserWantedToPause *)self taskId];
      if (!taskId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = taskId3;
      taskId4 = [(NLXSchemaCDMUserWantedToPause *)self taskId];
      taskId5 = [equalCopy taskId];
      v12 = [taskId4 isEqual:taskId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  taskId = [(NLXSchemaCDMUserWantedToPause *)self taskId];

  if (taskId)
  {
    taskId2 = [(NLXSchemaCDMUserWantedToPause *)self taskId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMUserWantedToPause;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMUserWantedToPause *)self taskId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMUserWantedToPause *)self deleteTaskId];
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