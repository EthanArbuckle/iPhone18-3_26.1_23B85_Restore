@interface IHSchemaIHClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (IHSchemaIHClientEvent)initWithDictionary:(id)dictionary;
- (IHSchemaIHClientEvent)initWithJSON:(id)n;
- (IHSchemaIHModelEvaluationContext)modelEvaluationContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteModelEvaluationContext;
- (void)writeTo:(id)to;
@end

@implementation IHSchemaIHClientEvent

- (IHSchemaIHClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IHSchemaIHClientEvent;
  v5 = [(IHSchemaIHClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IHSchemaIHClientEventMetadata alloc] initWithDictionary:v6];
      [(IHSchemaIHClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IHSchemaIHModelEvaluationContext alloc] initWithDictionary:v8];
      [(IHSchemaIHClientEvent *)v5 setModelEvaluationContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IHSchemaIHClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IHSchemaIHClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IHSchemaIHClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(IHSchemaIHClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_modelEvaluationContext)
  {
    modelEvaluationContext = [(IHSchemaIHClientEvent *)self modelEvaluationContext];
    dictionaryRepresentation2 = [modelEvaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"modelEvaluationContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"modelEvaluationContext"];
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
    goto LABEL_13;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_13;
  }

  eventMetadata = [(IHSchemaIHClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(IHSchemaIHClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(IHSchemaIHClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  eventMetadata = [(IHSchemaIHClientEvent *)self modelEvaluationContext];
  eventMetadata2 = [equalCopy modelEvaluationContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    modelEvaluationContext = [(IHSchemaIHClientEvent *)self modelEvaluationContext];
    if (!modelEvaluationContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = modelEvaluationContext;
    modelEvaluationContext2 = [(IHSchemaIHClientEvent *)self modelEvaluationContext];
    modelEvaluationContext3 = [equalCopy modelEvaluationContext];
    v17 = [modelEvaluationContext2 isEqual:modelEvaluationContext3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(IHSchemaIHClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(IHSchemaIHClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  modelEvaluationContext = [(IHSchemaIHClientEvent *)self modelEvaluationContext];

  if (modelEvaluationContext)
  {
    modelEvaluationContext2 = [(IHSchemaIHClientEvent *)self modelEvaluationContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteModelEvaluationContext
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_modelEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IHSchemaIHModelEvaluationContext)modelEvaluationContext
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_modelEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  if ([(IHSchemaIHClientEvent *)self whichEvent_Type]== 2)
  {
    return @"com.apple.aiml.siri.ih.IHClientEvent.IHModelEvaluationContext";
  }

  else
  {
    return @"com.apple.aiml.siri.ih.IHClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IHSchemaIHClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(IHSchemaIHClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IHSchemaIHClientEvent *)self deleteEventMetadata];
  }

  modelEvaluationContext = [(IHSchemaIHClientEvent *)self modelEvaluationContext];
  v10 = [modelEvaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IHSchemaIHClientEvent *)self deleteModelEvaluationContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(IHSchemaIHClientEvent *)self eventMetadata];
  ihId = [eventMetadata ihId];

  if (ihId)
  {
    value = [ihId value];
    if (value)
    {
      value2 = [ihId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 10;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(IHSchemaIHClientEvent *)self eventMetadata];
  ihId = [eventMetadata ihId];

  if (!ihId)
  {
    goto LABEL_5;
  }

  value = [ihId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ihId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ihId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(IHSchemaIHClientEvent *)self whichEvent_Type]== 2)
  {
    v3 = self->_modelEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 2)
  {
    return @"modelEvaluationContext";
  }

  else
  {
    return 0;
  }
}

@end