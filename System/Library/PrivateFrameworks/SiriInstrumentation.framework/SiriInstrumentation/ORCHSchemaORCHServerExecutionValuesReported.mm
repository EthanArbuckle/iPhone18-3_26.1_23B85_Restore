@interface ORCHSchemaORCHServerExecutionValuesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHServerExecutionValuesReported)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHServerExecutionValuesReported)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHServerExecutionValuesReported

- (ORCHSchemaORCHServerExecutionValuesReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHServerExecutionValuesReported;
  v5 = [(ORCHSchemaORCHServerExecutionValuesReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"serverExecutedDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ORCHSchemaORCHServerExecutionValuesReported *)v5 setServerExecutedDomain:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHServerExecutionValuesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHServerExecutionValuesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHServerExecutionValuesReported *)self dictionaryRepresentation];
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
  if (self->_serverExecutedDomain)
  {
    serverExecutedDomain = [(ORCHSchemaORCHServerExecutionValuesReported *)self serverExecutedDomain];
    v5 = [serverExecutedDomain copy];
    [dictionary setObject:v5 forKeyedSubscript:@"serverExecutedDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    serverExecutedDomain = [(ORCHSchemaORCHServerExecutionValuesReported *)self serverExecutedDomain];
    serverExecutedDomain2 = [equalCopy serverExecutedDomain];
    v7 = serverExecutedDomain2;
    if ((serverExecutedDomain != 0) != (serverExecutedDomain2 == 0))
    {
      serverExecutedDomain3 = [(ORCHSchemaORCHServerExecutionValuesReported *)self serverExecutedDomain];
      if (!serverExecutedDomain3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = serverExecutedDomain3;
      serverExecutedDomain4 = [(ORCHSchemaORCHServerExecutionValuesReported *)self serverExecutedDomain];
      serverExecutedDomain5 = [equalCopy serverExecutedDomain];
      v12 = [serverExecutedDomain4 isEqual:serverExecutedDomain5];

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
  serverExecutedDomain = [(ORCHSchemaORCHServerExecutionValuesReported *)self serverExecutedDomain];

  if (serverExecutedDomain)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end