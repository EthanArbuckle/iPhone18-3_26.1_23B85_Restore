@interface SISchemaABServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaABExperimentServerFeatureTriggered)serverFeatureTriggered;
- (SISchemaABServerEvent)initWithDictionary:(id)dictionary;
- (SISchemaABServerEvent)initWithJSON:(id)n;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (void)deleteServerFeatureTriggered;
- (void)setServerFeatureTriggered:(id)triggered;
- (void)writeTo:(id)to;
@end

@implementation SISchemaABServerEvent

- (SISchemaABServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SISchemaABServerEvent;
  v5 = [(SISchemaABServerEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaABSeverEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaABServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"serverFeatureTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaABExperimentServerFeatureTriggered alloc] initWithDictionary:v8];
      [(SISchemaABServerEvent *)v5 setServerFeatureTriggered:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SISchemaABServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaABServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaABServerEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(SISchemaABServerEvent *)self eventMetadata];
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

  if (self->_serverFeatureTriggered)
  {
    serverFeatureTriggered = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    dictionaryRepresentation2 = [serverFeatureTriggered dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"serverFeatureTriggered"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"serverFeatureTriggered"];
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

  eventMetadata = [(SISchemaABServerEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(SISchemaABServerEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SISchemaABServerEvent *)self eventMetadata];
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

  eventMetadata = [(SISchemaABServerEvent *)self serverFeatureTriggered];
  eventMetadata2 = [equalCopy serverFeatureTriggered];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    serverFeatureTriggered = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    if (!serverFeatureTriggered)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = serverFeatureTriggered;
    serverFeatureTriggered2 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    serverFeatureTriggered3 = [equalCopy serverFeatureTriggered];
    v17 = [serverFeatureTriggered2 isEqual:serverFeatureTriggered3];

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
  eventMetadata = [(SISchemaABServerEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SISchemaABServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  serverFeatureTriggered = [(SISchemaABServerEvent *)self serverFeatureTriggered];

  if (serverFeatureTriggered)
  {
    serverFeatureTriggered2 = [(SISchemaABServerEvent *)self serverFeatureTriggered];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteServerFeatureTriggered
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_serverFeatureTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaABExperimentServerFeatureTriggered)serverFeatureTriggered
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_serverFeatureTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerFeatureTriggered:(id)triggered
{
  v3 = 101;
  if (!triggered)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_serverFeatureTriggered, triggered);
}

- (id)qualifiedMessageName
{
  if ([(SISchemaABServerEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.abe.ABServerEvent.ABExperimentServerFeatureTriggered";
  }

  else
  {
    return @"com.apple.aiml.siri.abe.ABServerEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaABServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SISchemaABServerEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaABServerEvent *)self deleteEventMetadata];
  }

  serverFeatureTriggered = [(SISchemaABServerEvent *)self serverFeatureTriggered];
  v10 = [serverFeatureTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaABServerEvent *)self deleteServerFeatureTriggered];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(SISchemaABServerEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_serverFeatureTriggered;
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
    return @"serverFeatureTriggered";
  }

  else
  {
    return 0;
  }
}

@end