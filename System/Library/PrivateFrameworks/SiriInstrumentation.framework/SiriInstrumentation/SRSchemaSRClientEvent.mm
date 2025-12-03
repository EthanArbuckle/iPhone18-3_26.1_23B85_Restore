@interface SRSchemaSRClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (SRSchemaSRClientEvent)initWithDictionary:(id)dictionary;
- (SRSchemaSRClientEvent)initWithJSON:(id)n;
- (SRSchemaSRErrorChecked)errorChecked;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteErrorChecked;
- (void)writeTo:(id)to;
@end

@implementation SRSchemaSRClientEvent

- (SRSchemaSRClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SRSchemaSRClientEvent;
  v5 = [(SRSchemaSRClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SRSchemaSRClientEventMetadata alloc] initWithDictionary:v6];
      [(SRSchemaSRClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorChecked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SRSchemaSRErrorChecked alloc] initWithDictionary:v8];
      [(SRSchemaSRClientEvent *)v5 setErrorChecked:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (SRSchemaSRClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SRSchemaSRClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SRSchemaSRClientEvent *)self dictionaryRepresentation];
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
  if (self->_errorChecked)
  {
    errorChecked = [(SRSchemaSRClientEvent *)self errorChecked];
    dictionaryRepresentation = [errorChecked dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"errorChecked"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"errorChecked"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SRSchemaSRClientEvent *)self eventMetadata];
    dictionaryRepresentation2 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"eventMetadata"];
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

  eventMetadata = [(SRSchemaSRClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(SRSchemaSRClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SRSchemaSRClientEvent *)self eventMetadata];
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

  eventMetadata = [(SRSchemaSRClientEvent *)self errorChecked];
  eventMetadata2 = [equalCopy errorChecked];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    errorChecked = [(SRSchemaSRClientEvent *)self errorChecked];
    if (!errorChecked)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = errorChecked;
    errorChecked2 = [(SRSchemaSRClientEvent *)self errorChecked];
    errorChecked3 = [equalCopy errorChecked];
    v17 = [errorChecked2 isEqual:errorChecked3];

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
  eventMetadata = [(SRSchemaSRClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SRSchemaSRClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  errorChecked = [(SRSchemaSRClientEvent *)self errorChecked];

  if (errorChecked)
  {
    errorChecked2 = [(SRSchemaSRClientEvent *)self errorChecked];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteErrorChecked
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_errorChecked = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SRSchemaSRErrorChecked)errorChecked
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_errorChecked;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  if ([(SRSchemaSRClientEvent *)self whichEvent_Type]== 2)
  {
    return @"com.apple.aiml.siri.sr.SRClientEvent.SRErrorChecked";
  }

  else
  {
    return @"com.apple.aiml.siri.sr.SRClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SRSchemaSRClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(SRSchemaSRClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SRSchemaSRClientEvent *)self deleteEventMetadata];
  }

  errorChecked = [(SRSchemaSRClientEvent *)self errorChecked];
  v10 = [errorChecked applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SRSchemaSRClientEvent *)self deleteErrorChecked];
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
  eventMetadata = [(SRSchemaSRClientEvent *)self eventMetadata];
  srId = [eventMetadata srId];

  if (srId && ([srId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(srId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 44;
  }

  else
  {
    eventMetadata2 = [(SRSchemaSRClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      srId = requestId;
    }

    else
    {
      eventMetadata3 = [(SRSchemaSRClientEvent *)self eventMetadata];
      srId = [eventMetadata3 subRequestId];

      if (srId)
      {
        value = [srId value];
        if (value)
        {
          value2 = [srId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
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
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(SRSchemaSRClientEvent *)self eventMetadata];
  srId = [eventMetadata srId];

  if (srId)
  {
    value = [srId value];
    if (value)
    {
      v6 = value;
      value2 = [srId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(SRSchemaSRClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        srId = requestId;
LABEL_11:
        value5 = srId;
        srId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(SRSchemaSRClientEvent *)self eventMetadata];
  srId = [eventMetadata3 subRequestId];

  if (srId)
  {
    value5 = [srId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [srId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  if ([(SRSchemaSRClientEvent *)self whichEvent_Type]== 2)
  {
    v3 = self->_errorChecked;
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
    return @"errorChecked";
  }

  else
  {
    return 0;
  }
}

@end