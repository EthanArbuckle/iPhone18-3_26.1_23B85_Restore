@interface ExecutorSiriSchemaExecutorRequestFailed
- (BOOL)isEqual:(id)equal;
- (ExecutorSiriSchemaExecutorRequestFailed)initWithDictionary:(id)dictionary;
- (ExecutorSiriSchemaExecutorRequestFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ExecutorSiriSchemaExecutorRequestFailed

- (ExecutorSiriSchemaExecutorRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ExecutorSiriSchemaExecutorRequestFailed;
  v5 = [(ExecutorSiriSchemaExecutorRequestFailed *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaIFError alloc] initWithDictionary:v6];
      [(ExecutorSiriSchemaExecutorRequestFailed *)v5 setError:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ExecutorSiriSchemaExecutorRequestFailed *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    error = [(ExecutorSiriSchemaExecutorRequestFailed *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
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
    error = [(ExecutorSiriSchemaExecutorRequestFailed *)self error];
    error2 = [equalCopy error];
    v7 = error2;
    if ((error != 0) != (error2 == 0))
    {
      error3 = [(ExecutorSiriSchemaExecutorRequestFailed *)self error];
      if (!error3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = error3;
      error4 = [(ExecutorSiriSchemaExecutorRequestFailed *)self error];
      error5 = [equalCopy error];
      v12 = [error4 isEqual:error5];

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
  error = [(ExecutorSiriSchemaExecutorRequestFailed *)self error];

  if (error)
  {
    error2 = [(ExecutorSiriSchemaExecutorRequestFailed *)self error];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ExecutorSiriSchemaExecutorRequestFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ExecutorSiriSchemaExecutorRequestFailed *)self error:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ExecutorSiriSchemaExecutorRequestFailed *)self deleteError];
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