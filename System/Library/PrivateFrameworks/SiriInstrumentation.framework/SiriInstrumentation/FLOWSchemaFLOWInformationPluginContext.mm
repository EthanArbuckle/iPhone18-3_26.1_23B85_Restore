@interface FLOWSchemaFLOWInformationPluginContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWInformationPluginContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWInformationPluginContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWInformationPluginContext

- (FLOWSchemaFLOWInformationPluginContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWInformationPluginContext;
  v5 = [(FLOWSchemaFLOWInformationPluginContext *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWInformationPluginContext setEventType:](v5, "setEventType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"executedPegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(FLOWSchemaFLOWInformationPluginContext *)v5 setExecutedPegasusDomain:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWInformationPluginContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWInformationPluginContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWInformationPluginContext *)self dictionaryRepresentation];
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
    eventType = [(FLOWSchemaFLOWInformationPluginContext *)self eventType];
    v5 = @"FLOWINFORMATIONPLUGINEVENTTYPE_UNKNOWN";
    if (eventType == 1)
    {
      v5 = @"FLOWINFORMATIONPLUGINEVENTTYPE_POMMES";
    }

    if (eventType == 2)
    {
      v6 = @"FLOWINFORMATIONPLUGINEVENTTYPE_MODALITY";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"eventType"];
  }

  if (self->_executedPegasusDomain)
  {
    executedPegasusDomain = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
    v8 = [executedPegasusDomain copy];
    [dictionary setObject:v8 forKeyedSubscript:@"executedPegasusDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_eventType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_executedPegasusDomain hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (eventType = self->_eventType, eventType == [equalCopy eventType]))
      {
        executedPegasusDomain = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
        executedPegasusDomain2 = [equalCopy executedPegasusDomain];
        v8 = executedPegasusDomain2;
        if ((executedPegasusDomain != 0) != (executedPegasusDomain2 == 0))
        {
          executedPegasusDomain3 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
          if (!executedPegasusDomain3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = executedPegasusDomain3;
          executedPegasusDomain4 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
          executedPegasusDomain5 = [equalCopy executedPegasusDomain];
          v13 = [executedPegasusDomain4 isEqual:executedPegasusDomain5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  executedPegasusDomain = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];

  v5 = toCopy;
  if (executedPegasusDomain)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = FLOWSchemaFLOWInformationPluginContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(FLOWSchemaFLOWInformationPluginContext *)self deleteExecutedPegasusDomain];
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