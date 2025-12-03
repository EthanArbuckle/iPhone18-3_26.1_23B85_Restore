@interface DialogEngineSchemaDLGENGClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (DialogEngineSchemaDLGENGClientEvent)initWithDictionary:(id)dictionary;
- (DialogEngineSchemaDLGENGClientEvent)initWithJSON:(id)n;
- (DialogEngineSchemaDLGENGNamedEntitiesUsed)DLGENGNamedEntitiesUsed;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (void)deleteDLGENGNamedEntitiesUsed;
- (void)setDLGENGNamedEntitiesUsed:(id)used;
- (void)writeTo:(id)to;
@end

@implementation DialogEngineSchemaDLGENGClientEvent

- (DialogEngineSchemaDLGENGClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = DialogEngineSchemaDLGENGClientEvent;
  v5 = [(DialogEngineSchemaDLGENGClientEvent *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DialogEngineSchemaDLGENGClientEventMetadata alloc] initWithDictionary:v6];
      [(DialogEngineSchemaDLGENGClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"DLGENGNamedEntitiesUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DialogEngineSchemaDLGENGNamedEntitiesUsed alloc] initWithDictionary:v8];
      [(DialogEngineSchemaDLGENGClientEvent *)v5 setDLGENGNamedEntitiesUsed:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (DialogEngineSchemaDLGENGClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DialogEngineSchemaDLGENGClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DialogEngineSchemaDLGENGClientEvent *)self dictionaryRepresentation];
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
  if (self->_DLGENGNamedEntitiesUsed)
  {
    dLGENGNamedEntitiesUsed = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    dictionaryRepresentation = [dLGENGNamedEntitiesUsed dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"DLGENGNamedEntitiesUsed"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"DLGENGNamedEntitiesUsed"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
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

  eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_12;
  }

  eventMetadata3 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
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

  eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
  eventMetadata2 = [equalCopy DLGENGNamedEntitiesUsed];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    dLGENGNamedEntitiesUsed = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    if (!dLGENGNamedEntitiesUsed)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = dLGENGNamedEntitiesUsed;
    dLGENGNamedEntitiesUsed2 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    dLGENGNamedEntitiesUsed3 = [equalCopy DLGENGNamedEntitiesUsed];
    v17 = [dLGENGNamedEntitiesUsed2 isEqual:dLGENGNamedEntitiesUsed3];

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
  eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  dLGENGNamedEntitiesUsed = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];

  if (dLGENGNamedEntitiesUsed)
  {
    dLGENGNamedEntitiesUsed2 = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteDLGENGNamedEntitiesUsed
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_DLGENGNamedEntitiesUsed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DialogEngineSchemaDLGENGNamedEntitiesUsed)DLGENGNamedEntitiesUsed
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_DLGENGNamedEntitiesUsed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDLGENGNamedEntitiesUsed:(id)used
{
  v3 = 101;
  if (!used)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_DLGENGNamedEntitiesUsed, used);
}

- (id)qualifiedMessageName
{
  if ([(DialogEngineSchemaDLGENGClientEvent *)self whichEvent_Type]== 101)
  {
    return @"com.apple.aiml.siri.dlgeng.DLGENGClientEvent.DLGENGNamedEntitiesUsed";
  }

  else
  {
    return @"com.apple.aiml.siri.dlgeng.DLGENGClientEvent";
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DialogEngineSchemaDLGENGClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DialogEngineSchemaDLGENGClientEvent *)self deleteEventMetadata];
  }

  dLGENGNamedEntitiesUsed = [(DialogEngineSchemaDLGENGClientEvent *)self DLGENGNamedEntitiesUsed];
  v10 = [dLGENGNamedEntitiesUsed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DialogEngineSchemaDLGENGClientEvent *)self deleteDLGENGNamedEntitiesUsed];
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
  eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  dialogEngineId = [eventMetadata dialogEngineId];

  if (dialogEngineId && ([dialogEngineId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(dialogEngineId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 52;
  }

  else
  {
    eventMetadata2 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      dialogEngineId = requestId;
    }

    else
    {
      eventMetadata3 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
      dialogEngineId = [eventMetadata3 subRequestId];

      if (dialogEngineId)
      {
        value = [dialogEngineId value];
        if (value)
        {
          value2 = [dialogEngineId value];
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
  eventMetadata = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  dialogEngineId = [eventMetadata dialogEngineId];

  if (dialogEngineId)
  {
    value = [dialogEngineId value];
    if (value)
    {
      v6 = value;
      value2 = [dialogEngineId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
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
        dialogEngineId = requestId;
LABEL_11:
        value5 = dialogEngineId;
        dialogEngineId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(DialogEngineSchemaDLGENGClientEvent *)self eventMetadata];
  dialogEngineId = [eventMetadata3 subRequestId];

  if (dialogEngineId)
  {
    value5 = [dialogEngineId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [dialogEngineId value];
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
  if ([(DialogEngineSchemaDLGENGClientEvent *)self whichEvent_Type]== 101)
  {
    v3 = self->_DLGENGNamedEntitiesUsed;
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
    return @"DLGENGNamedEntitiesUsed";
  }

  else
  {
    return 0;
  }
}

@end