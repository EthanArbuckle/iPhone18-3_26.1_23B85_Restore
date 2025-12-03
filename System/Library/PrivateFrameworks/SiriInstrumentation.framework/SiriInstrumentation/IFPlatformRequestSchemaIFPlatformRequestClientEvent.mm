@interface IFPlatformRequestSchemaIFPlatformRequestClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlanCycleGenerated)ifPlanCycleGenerated;
- (IFPlatformRequestSchemaIFPlatformRequestClientEvent)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlatformRequestClientEvent)initWithJSON:(id)n;
- (IFPlatformRequestSchemaIFPlatformRequestContext)ifPlatformRequestContext;
- (IFPlatformRequestSchemaIFPlatformRequestInvoked)ifPlatformRequestInvoked;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteIfPlanCycleGenerated;
- (void)deleteIfPlatformRequestContext;
- (void)deleteIfPlatformRequestInvoked;
- (void)setIfPlanCycleGenerated:(id)generated;
- (void)setIfPlatformRequestContext:(id)context;
- (void)setIfPlatformRequestInvoked:(id)invoked;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlatformRequestClientEvent

- (IFPlatformRequestSchemaIFPlatformRequestClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFPlatformRequestSchemaIFPlatformRequestClientEvent;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata alloc] initWithDictionary:v6];
      [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ifPlatformRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFPlatformRequestSchemaIFPlatformRequestContext alloc] initWithDictionary:v8];
      [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)v5 setIfPlatformRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ifPlatformRequestInvoked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFPlatformRequestSchemaIFPlatformRequestInvoked alloc] initWithDictionary:v10];
      [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)v5 setIfPlatformRequestInvoked:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ifPlanCycleGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFPlatformRequestSchemaIFPlanCycleGenerated alloc] initWithDictionary:v12];
      [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)v5 setIfPlanCycleGenerated:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlatformRequestClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
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

  if (self->_ifPlanCycleGenerated)
  {
    ifPlanCycleGenerated = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];
    dictionaryRepresentation2 = [ifPlanCycleGenerated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ifPlanCycleGenerated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ifPlanCycleGenerated"];
    }
  }

  if (self->_ifPlatformRequestContext)
  {
    ifPlatformRequestContext = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];
    dictionaryRepresentation3 = [ifPlatformRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"ifPlatformRequestContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"ifPlatformRequestContext"];
    }
  }

  if (self->_ifPlatformRequestInvoked)
  {
    ifPlatformRequestInvoked = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];
    dictionaryRepresentation4 = [ifPlatformRequestInvoked dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"ifPlatformRequestInvoked"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"ifPlatformRequestInvoked"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFPlatformRequestSchemaIFPlatformRequestClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(IFPlatformRequestSchemaIFPlatformRequestContext *)self->_ifPlatformRequestContext hash]^ v3;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestInvoked *)self->_ifPlatformRequestInvoked hash];
  return v4 ^ v5 ^ [(IFPlatformRequestSchemaIFPlanCycleGenerated *)self->_ifPlanCycleGenerated hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_23;
  }

  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];
  eventMetadata2 = [equalCopy ifPlatformRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  ifPlatformRequestContext = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];
  if (ifPlatformRequestContext)
  {
    v14 = ifPlatformRequestContext;
    ifPlatformRequestContext2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];
    ifPlatformRequestContext3 = [equalCopy ifPlatformRequestContext];
    v17 = [ifPlatformRequestContext2 isEqual:ifPlatformRequestContext3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];
  eventMetadata2 = [equalCopy ifPlatformRequestInvoked];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  ifPlatformRequestInvoked = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];
  if (ifPlatformRequestInvoked)
  {
    v19 = ifPlatformRequestInvoked;
    ifPlatformRequestInvoked2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];
    ifPlatformRequestInvoked3 = [equalCopy ifPlatformRequestInvoked];
    v22 = [ifPlatformRequestInvoked2 isEqual:ifPlatformRequestInvoked3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];
  eventMetadata2 = [equalCopy ifPlanCycleGenerated];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    ifPlanCycleGenerated = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];
    if (!ifPlanCycleGenerated)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = ifPlanCycleGenerated;
    ifPlanCycleGenerated2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];
    ifPlanCycleGenerated3 = [equalCopy ifPlanCycleGenerated];
    v27 = [ifPlanCycleGenerated2 isEqual:ifPlanCycleGenerated3];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  ifPlatformRequestContext = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];

  if (ifPlatformRequestContext)
  {
    ifPlatformRequestContext2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];
    PBDataWriterWriteSubmessage();
  }

  ifPlatformRequestInvoked = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];

  if (ifPlatformRequestInvoked)
  {
    ifPlatformRequestInvoked2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];
    PBDataWriterWriteSubmessage();
  }

  ifPlanCycleGenerated = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];

  v11 = toCopy;
  if (ifPlanCycleGenerated)
  {
    ifPlanCycleGenerated2 = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteIfPlanCycleGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_ifPlanCycleGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFPlatformRequestSchemaIFPlanCycleGenerated)ifPlanCycleGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_ifPlanCycleGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIfPlanCycleGenerated:(id)generated
{
  generatedCopy = generated;
  ifPlatformRequestContext = self->_ifPlatformRequestContext;
  self->_ifPlatformRequestContext = 0;

  ifPlatformRequestInvoked = self->_ifPlatformRequestInvoked;
  self->_ifPlatformRequestInvoked = 0;

  v7 = 103;
  if (!generatedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  ifPlanCycleGenerated = self->_ifPlanCycleGenerated;
  self->_ifPlanCycleGenerated = generatedCopy;
}

- (void)deleteIfPlatformRequestInvoked
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_ifPlatformRequestInvoked = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFPlatformRequestSchemaIFPlatformRequestInvoked)ifPlatformRequestInvoked
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_ifPlatformRequestInvoked;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIfPlatformRequestInvoked:(id)invoked
{
  invokedCopy = invoked;
  ifPlatformRequestContext = self->_ifPlatformRequestContext;
  self->_ifPlatformRequestContext = 0;

  ifPlanCycleGenerated = self->_ifPlanCycleGenerated;
  self->_ifPlanCycleGenerated = 0;

  v7 = 102;
  if (!invokedCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  ifPlatformRequestInvoked = self->_ifPlatformRequestInvoked;
  self->_ifPlatformRequestInvoked = invokedCopy;
}

- (void)deleteIfPlatformRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_ifPlatformRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFPlatformRequestSchemaIFPlatformRequestContext)ifPlatformRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_ifPlatformRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIfPlatformRequestContext:(id)context
{
  contextCopy = context;
  ifPlatformRequestInvoked = self->_ifPlatformRequestInvoked;
  self->_ifPlatformRequestInvoked = 0;

  ifPlanCycleGenerated = self->_ifPlanCycleGenerated;
  self->_ifPlanCycleGenerated = 0;

  v7 = 101;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  ifPlatformRequestContext = self->_ifPlatformRequestContext;
  self->_ifPlatformRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.ifPlatformRequest.IFPlatformRequestClientEvent";
  }

  else
  {
    return off_1E78D8178[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = IFPlatformRequestSchemaIFPlatformRequestClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self deleteEventMetadata];
  }

  ifPlatformRequestContext = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestContext];
  v10 = [ifPlatformRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self deleteIfPlatformRequestContext];
  }

  ifPlatformRequestInvoked = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlatformRequestInvoked];
  v13 = [ifPlatformRequestInvoked applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self deleteIfPlatformRequestInvoked];
  }

  ifPlanCycleGenerated = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self ifPlanCycleGenerated];
  v16 = [ifPlanCycleGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self deleteIfPlanCycleGenerated];
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
  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId)
  {
    value = [ifRequestId value];
    if (value)
    {
      value2 = [ifRequestId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 45;
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
  eventMetadata = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (!ifRequestId)
  {
    goto LABEL_5;
  }

  value = [ifRequestId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ifRequestId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ifRequestId;
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
  whichEvent_Type = [(IFPlatformRequestSchemaIFPlatformRequestClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9A08[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78E9A20[tag - 101];
  }
}

@end