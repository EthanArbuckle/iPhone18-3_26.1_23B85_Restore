@interface ANCSchemaANCServerEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (ANCSchemaANCServerEvent)initWithDictionary:(id)dictionary;
- (ANCSchemaANCServerEvent)initWithJSON:(id)n;
- (ANCSchemaANCServerUserResponseEvaluated)userResponseEvaluated;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteUserResponseEvaluated;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCServerEvent

- (ANCSchemaANCServerEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ANCSchemaANCServerEvent;
  v5 = [(ANCSchemaANCServerEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ANCSchemaANCServerEventMetadata alloc] initWithDictionary:v6];
      [(ANCSchemaANCServerEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userResponseEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ANCSchemaANCServerUserResponseEvaluated alloc] initWithDictionary:v8];
      [(ANCSchemaANCServerEvent *)v5 setUserResponseEvaluated:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ANCSchemaANCServerEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCServerEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCServerEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(ANCSchemaANCServerEvent *)self eventMetadata];
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

  if (self->_userResponseEvaluated)
  {
    userResponseEvaluated = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    dictionaryRepresentation2 = [userResponseEvaluated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"userResponseEvaluated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"userResponseEvaluated"];
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

  eventMetadata = [(ANCSchemaANCServerEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(ANCSchemaANCServerEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(ANCSchemaANCServerEvent *)self eventMetadata];
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

  eventMetadata = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
  eventMetadata2 = [equalCopy userResponseEvaluated];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    userResponseEvaluated = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    if (!userResponseEvaluated)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = userResponseEvaluated;
    userResponseEvaluated2 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    userResponseEvaluated3 = [equalCopy userResponseEvaluated];
    v17 = [userResponseEvaluated2 isEqual:userResponseEvaluated3];

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
  eventMetadata = [(ANCSchemaANCServerEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(ANCSchemaANCServerEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  userResponseEvaluated = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];

  if (userResponseEvaluated)
  {
    userResponseEvaluated2 = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteUserResponseEvaluated
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_userResponseEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ANCSchemaANCServerUserResponseEvaluated)userResponseEvaluated
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_userResponseEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  if ([(ANCSchemaANCServerEvent *)self whichEvent_Type]== 2)
  {
    return @"com.apple.aiml.siri.anc.ANCServerEvent.ANCServerUserResponseEvaluated";
  }

  else
  {
    return @"com.apple.aiml.siri.anc.ANCServerEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ANCSchemaANCServerEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(ANCSchemaANCServerEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ANCSchemaANCServerEvent *)self deleteEventMetadata];
  }

  userResponseEvaluated = [(ANCSchemaANCServerEvent *)self userResponseEvaluated];
  v10 = [userResponseEvaluated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ANCSchemaANCServerEvent *)self deleteUserResponseEvaluated];
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
  eventMetadata = [(ANCSchemaANCServerEvent *)self eventMetadata];
  ancId = [eventMetadata ancId];

  if (ancId)
  {
    value = [ancId value];
    if (value)
    {
      value2 = [ancId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 12;
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
  eventMetadata = [(ANCSchemaANCServerEvent *)self eventMetadata];
  ancId = [eventMetadata ancId];

  if (!ancId)
  {
    goto LABEL_5;
  }

  value = [ancId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ancId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ancId;
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
  if ([(ANCSchemaANCServerEvent *)self whichEvent_Type]== 2)
  {
    v3 = self->_userResponseEvaluated;
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
    return @"userResponseEvaluated";
  }

  else
  {
    return 0;
  }
}

@end