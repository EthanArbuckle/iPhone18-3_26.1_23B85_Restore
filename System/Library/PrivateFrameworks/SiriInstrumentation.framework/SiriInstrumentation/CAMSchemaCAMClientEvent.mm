@interface CAMSchemaCAMClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMAutoSendFeaturesGenerated)autoSendFeaturesGenerated;
- (CAMSchemaCAMClientEvent)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMClientEvent)initWithJSON:(id)n;
- (CAMSchemaCAMModelExecuted)modelExecuted;
- (CAMSchemaCAMRequestReceived)requestReceived;
- (CAMSchemaCAMResponseGenerated)responseGenerated;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAutoSendFeaturesGenerated;
- (void)deleteModelExecuted;
- (void)deleteRequestReceived;
- (void)deleteResponseGenerated;
- (void)setAutoSendFeaturesGenerated:(id)generated;
- (void)setModelExecuted:(id)executed;
- (void)setRequestReceived:(id)received;
- (void)setResponseGenerated:(id)generated;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMClientEvent

- (CAMSchemaCAMClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CAMSchemaCAMClientEvent;
  v5 = [(CAMSchemaCAMClientEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CAMSchemaCAMClientEventMetadata alloc] initWithDictionary:v6];
      [(CAMSchemaCAMClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"requestReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CAMSchemaCAMRequestReceived alloc] initWithDictionary:v8];
      [(CAMSchemaCAMClientEvent *)v5 setRequestReceived:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"modelExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CAMSchemaCAMModelExecuted alloc] initWithDictionary:v10];
      [(CAMSchemaCAMClientEvent *)v5 setModelExecuted:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CAMSchemaCAMResponseGenerated alloc] initWithDictionary:v12];
      [(CAMSchemaCAMClientEvent *)v5 setResponseGenerated:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"autoSendFeaturesGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CAMSchemaCAMAutoSendFeaturesGenerated alloc] initWithDictionary:v14];
      [(CAMSchemaCAMClientEvent *)v5 setAutoSendFeaturesGenerated:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CAMSchemaCAMClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMClientEvent *)self dictionaryRepresentation];
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
  if (self->_autoSendFeaturesGenerated)
  {
    autoSendFeaturesGenerated = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    dictionaryRepresentation = [autoSendFeaturesGenerated dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"autoSendFeaturesGenerated"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"autoSendFeaturesGenerated"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(CAMSchemaCAMClientEvent *)self eventMetadata];
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

  if (self->_modelExecuted)
  {
    modelExecuted = [(CAMSchemaCAMClientEvent *)self modelExecuted];
    dictionaryRepresentation3 = [modelExecuted dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"modelExecuted"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"modelExecuted"];
    }
  }

  if (self->_requestReceived)
  {
    requestReceived = [(CAMSchemaCAMClientEvent *)self requestReceived];
    dictionaryRepresentation4 = [requestReceived dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"requestReceived"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"requestReceived"];
    }
  }

  if (self->_responseGenerated)
  {
    responseGenerated = [(CAMSchemaCAMClientEvent *)self responseGenerated];
    dictionaryRepresentation5 = [responseGenerated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"responseGenerated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"responseGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(CAMSchemaCAMClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CAMSchemaCAMRequestReceived *)self->_requestReceived hash]^ v3;
  v5 = [(CAMSchemaCAMModelExecuted *)self->_modelExecuted hash];
  v6 = v4 ^ v5 ^ [(CAMSchemaCAMResponseGenerated *)self->_responseGenerated hash];
  return v6 ^ [(CAMSchemaCAMAutoSendFeaturesGenerated *)self->_autoSendFeaturesGenerated hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_28;
  }

  eventMetadata = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  eventMetadata3 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAMSchemaCAMClientEvent *)self requestReceived];
  eventMetadata2 = [equalCopy requestReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  requestReceived = [(CAMSchemaCAMClientEvent *)self requestReceived];
  if (requestReceived)
  {
    v14 = requestReceived;
    requestReceived2 = [(CAMSchemaCAMClientEvent *)self requestReceived];
    requestReceived3 = [equalCopy requestReceived];
    v17 = [requestReceived2 isEqual:requestReceived3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAMSchemaCAMClientEvent *)self modelExecuted];
  eventMetadata2 = [equalCopy modelExecuted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  modelExecuted = [(CAMSchemaCAMClientEvent *)self modelExecuted];
  if (modelExecuted)
  {
    v19 = modelExecuted;
    modelExecuted2 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
    modelExecuted3 = [equalCopy modelExecuted];
    v22 = [modelExecuted2 isEqual:modelExecuted3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAMSchemaCAMClientEvent *)self responseGenerated];
  eventMetadata2 = [equalCopy responseGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_27;
  }

  responseGenerated = [(CAMSchemaCAMClientEvent *)self responseGenerated];
  if (responseGenerated)
  {
    v24 = responseGenerated;
    responseGenerated2 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
    responseGenerated3 = [equalCopy responseGenerated];
    v27 = [responseGenerated2 isEqual:responseGenerated3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  eventMetadata = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
  eventMetadata2 = [equalCopy autoSendFeaturesGenerated];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    autoSendFeaturesGenerated = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    if (!autoSendFeaturesGenerated)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = autoSendFeaturesGenerated;
    autoSendFeaturesGenerated2 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    autoSendFeaturesGenerated3 = [equalCopy autoSendFeaturesGenerated];
    v32 = [autoSendFeaturesGenerated2 isEqual:autoSendFeaturesGenerated3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(CAMSchemaCAMClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  requestReceived = [(CAMSchemaCAMClientEvent *)self requestReceived];

  if (requestReceived)
  {
    requestReceived2 = [(CAMSchemaCAMClientEvent *)self requestReceived];
    PBDataWriterWriteSubmessage();
  }

  modelExecuted = [(CAMSchemaCAMClientEvent *)self modelExecuted];

  if (modelExecuted)
  {
    modelExecuted2 = [(CAMSchemaCAMClientEvent *)self modelExecuted];
    PBDataWriterWriteSubmessage();
  }

  responseGenerated = [(CAMSchemaCAMClientEvent *)self responseGenerated];

  if (responseGenerated)
  {
    responseGenerated2 = [(CAMSchemaCAMClientEvent *)self responseGenerated];
    PBDataWriterWriteSubmessage();
  }

  autoSendFeaturesGenerated = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];

  v13 = toCopy;
  if (autoSendFeaturesGenerated)
  {
    autoSendFeaturesGenerated2 = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteAutoSendFeaturesGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_autoSendFeaturesGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMAutoSendFeaturesGenerated)autoSendFeaturesGenerated
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_autoSendFeaturesGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAutoSendFeaturesGenerated:(id)generated
{
  generatedCopy = generated;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = 0;

  v8 = 104;
  if (!generatedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = generatedCopy;
}

- (void)deleteResponseGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_responseGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMResponseGenerated)responseGenerated
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_responseGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResponseGenerated:(id)generated
{
  generatedCopy = generated;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = 0;

  v8 = 103;
  if (!generatedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = generatedCopy;
}

- (void)deleteModelExecuted
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_modelExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMModelExecuted)modelExecuted
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_modelExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setModelExecuted:(id)executed
{
  executedCopy = executed;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = 0;

  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = 0;

  v8 = 102;
  if (!executedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = executedCopy;
}

- (void)deleteRequestReceived
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_requestReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (CAMSchemaCAMRequestReceived)requestReceived
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_requestReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestReceived:(id)received
{
  receivedCopy = received;
  modelExecuted = self->_modelExecuted;
  self->_modelExecuted = 0;

  responseGenerated = self->_responseGenerated;
  self->_responseGenerated = 0;

  autoSendFeaturesGenerated = self->_autoSendFeaturesGenerated;
  self->_autoSendFeaturesGenerated = 0;

  v8 = 101;
  if (!receivedCopy)
  {
    v8 = 0;
  }

  self->_whichEvent_Type = v8;
  requestReceived = self->_requestReceived;
  self->_requestReceived = receivedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CAMSchemaCAMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    return @"com.apple.aiml.siri.cam.CAMClientEvent";
  }

  else
  {
    return off_1E78D2310[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = CAMSchemaCAMClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAMSchemaCAMClientEvent *)self deleteEventMetadata];
  }

  requestReceived = [(CAMSchemaCAMClientEvent *)self requestReceived];
  v10 = [requestReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAMSchemaCAMClientEvent *)self deleteRequestReceived];
  }

  modelExecuted = [(CAMSchemaCAMClientEvent *)self modelExecuted];
  v13 = [modelExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAMSchemaCAMClientEvent *)self deleteModelExecuted];
  }

  responseGenerated = [(CAMSchemaCAMClientEvent *)self responseGenerated];
  v16 = [responseGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CAMSchemaCAMClientEvent *)self deleteResponseGenerated];
  }

  autoSendFeaturesGenerated = [(CAMSchemaCAMClientEvent *)self autoSendFeaturesGenerated];
  v19 = [autoSendFeaturesGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CAMSchemaCAMClientEvent *)self deleteAutoSendFeaturesGenerated];
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
  eventMetadata = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  camId = [eventMetadata camId];

  if (camId && ([camId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(camId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 4;
  }

  else
  {
    eventMetadata2 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      camId = requestId;
    }

    else
    {
      eventMetadata3 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
      camId = [eventMetadata3 subRequestId];

      if (camId)
      {
        value = [camId value];
        if (value)
        {
          value2 = [camId value];
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
  eventMetadata = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  camId = [eventMetadata camId];

  if (camId)
  {
    value = [camId value];
    if (value)
    {
      v6 = value;
      value2 = [camId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
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
        camId = requestId;
LABEL_11:
        value5 = camId;
        camId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(CAMSchemaCAMClientEvent *)self eventMetadata];
  camId = [eventMetadata3 subRequestId];

  if (camId)
  {
    value5 = [camId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [camId value];
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
  whichEvent_Type = [(CAMSchemaCAMClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9000[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E78E9020[tag - 101];
  }
}

@end