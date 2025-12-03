@interface USPSchemaUSPMeasurementContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USPSchemaUSPMeasurementContext)initWithDictionary:(id)dictionary;
- (USPSchemaUSPMeasurementContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation USPSchemaUSPMeasurementContext

- (USPSchemaUSPMeasurementContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = USPSchemaUSPMeasurementContext;
  v5 = [(USPSchemaUSPMeasurementContext *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USPSchemaUSPMeasurementContext *)v5 setContextName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"environment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USPSchemaUSPMeasurementContext setEnvironment:](v5, "setEnvironment:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (USPSchemaUSPMeasurementContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USPSchemaUSPMeasurementContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USPSchemaUSPMeasurementContext *)self dictionaryRepresentation];
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
  if (self->_contextName)
  {
    contextName = [(USPSchemaUSPMeasurementContext *)self contextName];
    v5 = [contextName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"contextName"];
  }

  if (*&self->_has)
  {
    environment = [(USPSchemaUSPMeasurementContext *)self environment];
    v7 = @"USPENVIRONMENT_UNKNOWN";
    if (environment == 1)
    {
      v7 = @"USPENVIRONMENT_LOCAL";
    }

    if (environment == 2)
    {
      v8 = @"USPENVIRONMENT_CONTINUOS_INTEGRATION";
    }

    else
    {
      v8 = v7;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"environment"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contextName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_environment;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  contextName = [(USPSchemaUSPMeasurementContext *)self contextName];
  contextName2 = [equalCopy contextName];
  v7 = contextName2;
  if ((contextName != 0) == (contextName2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  contextName3 = [(USPSchemaUSPMeasurementContext *)self contextName];
  if (contextName3)
  {
    v9 = contextName3;
    contextName4 = [(USPSchemaUSPMeasurementContext *)self contextName];
    contextName5 = [equalCopy contextName];
    v12 = [contextName4 isEqual:contextName5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    environment = self->_environment;
    if (environment != [equalCopy environment])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  contextName = [(USPSchemaUSPMeasurementContext *)self contextName];

  if (contextName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end