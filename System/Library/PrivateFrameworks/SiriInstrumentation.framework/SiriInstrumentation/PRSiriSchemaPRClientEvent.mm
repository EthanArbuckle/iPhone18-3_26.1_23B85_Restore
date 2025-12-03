@interface PRSiriSchemaPRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRClientEvent)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRClientEvent)initWithJSON:(id)n;
- (PRSiriSchemaPRJointResolverCallContext)jrCallContext;
- (PRSiriSchemaPRRequestContext)requestContext;
- (PRSiriSchemaPRResponseGenerationRequestContext)rgRequestContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteJrCallContext;
- (void)deleteRequestContext;
- (void)deleteRgRequestContext;
- (void)setJrCallContext:(id)context;
- (void)setRequestContext:(id)context;
- (void)setRgRequestContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation PRSiriSchemaPRClientEvent

- (PRSiriSchemaPRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PRSiriSchemaPRClientEvent;
  v5 = [(PRSiriSchemaPRClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PRSiriSchemaPRClientEventMetadata alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PRSiriSchemaPRRequestContext alloc] initWithDictionary:v8];
      [(PRSiriSchemaPRClientEvent *)v5 setRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rgRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PRSiriSchemaPRResponseGenerationRequestContext alloc] initWithDictionary:v10];
      [(PRSiriSchemaPRClientEvent *)v5 setRgRequestContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"jrCallContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PRSiriSchemaPRJointResolverCallContext alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRClientEvent *)v5 setJrCallContext:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
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

  if (self->_jrCallContext)
  {
    jrCallContext = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    dictionaryRepresentation2 = [jrCallContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"jrCallContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"jrCallContext"];
    }
  }

  if (self->_requestContext)
  {
    requestContext = [(PRSiriSchemaPRClientEvent *)self requestContext];
    dictionaryRepresentation3 = [requestContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"requestContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"requestContext"];
    }
  }

  if (self->_rgRequestContext)
  {
    rgRequestContext = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
    dictionaryRepresentation4 = [rgRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"rgRequestContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"rgRequestContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PRSiriSchemaPRClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PRSiriSchemaPRRequestContext *)self->_requestContext hash]^ v3;
  v5 = [(PRSiriSchemaPRResponseGenerationRequestContext *)self->_rgRequestContext hash];
  return v4 ^ v5 ^ [(PRSiriSchemaPRJointResolverCallContext *)self->_jrCallContext hash];
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

  eventMetadata = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
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

  eventMetadata = [(PRSiriSchemaPRClientEvent *)self requestContext];
  eventMetadata2 = [equalCopy requestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  requestContext = [(PRSiriSchemaPRClientEvent *)self requestContext];
  if (requestContext)
  {
    v14 = requestContext;
    requestContext2 = [(PRSiriSchemaPRClientEvent *)self requestContext];
    requestContext3 = [equalCopy requestContext];
    v17 = [requestContext2 isEqual:requestContext3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
  eventMetadata2 = [equalCopy rgRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  rgRequestContext = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
  if (rgRequestContext)
  {
    v19 = rgRequestContext;
    rgRequestContext2 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
    rgRequestContext3 = [equalCopy rgRequestContext];
    v22 = [rgRequestContext2 isEqual:rgRequestContext3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
  eventMetadata2 = [equalCopy jrCallContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    jrCallContext = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    if (!jrCallContext)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = jrCallContext;
    jrCallContext2 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    jrCallContext3 = [equalCopy jrCallContext];
    v27 = [jrCallContext2 isEqual:jrCallContext3];

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
  eventMetadata = [(PRSiriSchemaPRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  requestContext = [(PRSiriSchemaPRClientEvent *)self requestContext];

  if (requestContext)
  {
    requestContext2 = [(PRSiriSchemaPRClientEvent *)self requestContext];
    PBDataWriterWriteSubmessage();
  }

  rgRequestContext = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];

  if (rgRequestContext)
  {
    rgRequestContext2 = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
    PBDataWriterWriteSubmessage();
  }

  jrCallContext = [(PRSiriSchemaPRClientEvent *)self jrCallContext];

  v11 = toCopy;
  if (jrCallContext)
  {
    jrCallContext2 = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteJrCallContext
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_jrCallContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallContext)jrCallContext
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_jrCallContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setJrCallContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  rgRequestContext = self->_rgRequestContext;
  self->_rgRequestContext = 0;

  v7 = 12;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  jrCallContext = self->_jrCallContext;
  self->_jrCallContext = contextCopy;
}

- (void)deleteRgRequestContext
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_rgRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRResponseGenerationRequestContext)rgRequestContext
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_rgRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRgRequestContext:(id)context
{
  contextCopy = context;
  requestContext = self->_requestContext;
  self->_requestContext = 0;

  jrCallContext = self->_jrCallContext;
  self->_jrCallContext = 0;

  v7 = 11;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  rgRequestContext = self->_rgRequestContext;
  self->_rgRequestContext = contextCopy;
}

- (void)deleteRequestContext
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_requestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRRequestContext)requestContext
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_requestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestContext:(id)context
{
  contextCopy = context;
  rgRequestContext = self->_rgRequestContext;
  self->_rgRequestContext = 0;

  jrCallContext = self->_jrCallContext;
  self->_jrCallContext = 0;

  v7 = 10;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  requestContext = self->_requestContext;
  self->_requestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PRSiriSchemaPRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 2)
  {
    return @"com.apple.aiml.siri.pr.PRClientEvent";
  }

  else
  {
    return off_1E78E1048[whichEvent_Type - 10];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteEventMetadata];
  }

  requestContext = [(PRSiriSchemaPRClientEvent *)self requestContext];
  v10 = [requestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteRequestContext];
  }

  rgRequestContext = [(PRSiriSchemaPRClientEvent *)self rgRequestContext];
  v13 = [rgRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteRgRequestContext];
  }

  jrCallContext = [(PRSiriSchemaPRClientEvent *)self jrCallContext];
  v16 = [jrCallContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PRSiriSchemaPRClientEvent *)self deleteJrCallContext];
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
  eventMetadata = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId && ([ifRequestId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(ifRequestId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 45;
  }

  else
  {
    eventMetadata2 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
    prId = [eventMetadata2 prId];

    if (prId)
    {
      value = [prId value];
      if (value)
      {
        v13 = value;
        value2 = [prId value];
        v15 = [value2 length];

        if (v15)
        {
          v9 = 59;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      ifRequestId = prId;
    }

    else
    {
      v9 = 0;
      ifRequestId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId)
  {
    value = [ifRequestId value];
    if (value)
    {
      v6 = value;
      value2 = [ifRequestId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(PRSiriSchemaPRClientEvent *)self eventMetadata];
  prId = [eventMetadata2 prId];

  if (prId)
  {
    value3 = [prId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [prId value];
    v13 = [value4 length];

    if (v13)
    {
      ifRequestId = prId;
LABEL_8:
      value3 = ifRequestId;
      prId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(PRSiriSchemaPRClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 10 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAD08[whichEvent_Type - 10]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 10 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EAD20[tag - 10];
  }
}

@end