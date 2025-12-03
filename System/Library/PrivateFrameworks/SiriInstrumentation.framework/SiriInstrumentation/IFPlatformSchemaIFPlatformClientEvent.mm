@interface IFPlatformSchemaIFPlatformClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (IFPlatformSchemaIFPlatformClientEvent)initWithDictionary:(id)dictionary;
- (IFPlatformSchemaIFPlatformClientEvent)initWithJSON:(id)n;
- (IFPlatformSchemaIFPlatformTargetContext)ifPlatformTargetContext;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteIfPlatformTargetContext;
- (void)setIfPlatformTargetContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformSchemaIFPlatformClientEvent

- (IFPlatformSchemaIFPlatformClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFPlatformSchemaIFPlatformClientEvent;
  v5 = [(IFPlatformSchemaIFPlatformClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFPlatformSchemaIFPlatformClientEventMetadata alloc] initWithDictionary:v6];
      [(IFPlatformSchemaIFPlatformClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ifPlatformTargetContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFPlatformSchemaIFPlatformTargetContext alloc] initWithDictionary:v8];
      [(IFPlatformSchemaIFPlatformClientEvent *)v5 setIfPlatformTargetContext:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (IFPlatformSchemaIFPlatformClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformSchemaIFPlatformClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformSchemaIFPlatformClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
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

  if (self->_ifPlatformTargetContext)
  {
    ifPlatformTargetContext = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];
    dictionaryRepresentation2 = [ifPlatformTargetContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifPlatformTargetContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifPlatformTargetContext"];
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

  eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
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

  eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];
  eventMetadata2 = [equalCopy ifPlatformTargetContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    ifPlatformTargetContext = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];
    if (!ifPlatformTargetContext)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = ifPlatformTargetContext;
    ifPlatformTargetContext2 = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];
    ifPlatformTargetContext3 = [equalCopy ifPlatformTargetContext];
    v17 = [ifPlatformTargetContext2 isEqual:ifPlatformTargetContext3];

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
  eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  ifPlatformTargetContext = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];

  if (ifPlatformTargetContext)
  {
    ifPlatformTargetContext2 = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteIfPlatformTargetContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_ifPlatformTargetContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFPlatformSchemaIFPlatformTargetContext)ifPlatformTargetContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_ifPlatformTargetContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIfPlatformTargetContext:(id)context
{
  v3 = 101;
  if (!context)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_ifPlatformTargetContext, context);
}

- (id)qualifiedMessageName
{
  if ([(IFPlatformSchemaIFPlatformClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.ifPlatform.IFPlatformClientEvent.IFPlatformTargetContext";
  }

  else
  {
    return @"com.apple.aiml.siri.ifPlatform.IFPlatformClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFPlatformSchemaIFPlatformClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFPlatformSchemaIFPlatformClientEvent *)self deleteEventMetadata];
  }

  ifPlatformTargetContext = [(IFPlatformSchemaIFPlatformClientEvent *)self ifPlatformTargetContext];
  v10 = [ifPlatformTargetContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFPlatformSchemaIFPlatformClientEvent *)self deleteIfPlatformTargetContext];
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
  eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
  ifSessionId = [eventMetadata ifSessionId];

  if (ifSessionId)
  {
    value = [ifSessionId value];
    if (value)
    {
      value2 = [ifSessionId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 53;
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
  eventMetadata = [(IFPlatformSchemaIFPlatformClientEvent *)self eventMetadata];
  ifSessionId = [eventMetadata ifSessionId];

  if (!ifSessionId)
  {
    goto LABEL_5;
  }

  value = [ifSessionId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ifSessionId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ifSessionId;
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
  if ([(IFPlatformSchemaIFPlatformClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_ifPlatformTargetContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag == 101)
  {
    return @"ifPlatformTargetContext";
  }

  else
  {
    return 0;
  }
}

@end