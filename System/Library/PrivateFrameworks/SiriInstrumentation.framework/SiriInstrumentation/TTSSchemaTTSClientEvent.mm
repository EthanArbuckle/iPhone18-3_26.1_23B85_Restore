@interface TTSSchemaTTSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (TTSSchemaTTSClientEvent)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSClientEvent)initWithJSON:(id)n;
- (TTSSchemaTTSClientSpeechContext)speechContext;
- (TTSSchemaTTSClientSynthesisContext)synthesisContext;
- (TTSSchemaTTSRequestReceived)requestReceived;
- (TTSSchemaTTSRequestReceivedTier1)requestReceivedTier1;
- (TTSSchemaTTSVoiceFallbackOccurred)voiceFallbackOccurred;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteRequestReceived;
- (void)deleteRequestReceivedTier1;
- (void)deleteSpeechContext;
- (void)deleteSynthesisContext;
- (void)deleteVoiceFallbackOccurred;
- (void)setRequestReceived:(id)received;
- (void)setRequestReceivedTier1:(id)tier1;
- (void)setSpeechContext:(id)context;
- (void)setSynthesisContext:(id)context;
- (void)setVoiceFallbackOccurred:(id)occurred;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSClientEvent

- (TTSSchemaTTSClientSpeechContext)speechContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_speechContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSRequestReceived)requestReceived
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_requestReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSRequestReceivedTier1)requestReceivedTier1
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_requestReceivedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSVoiceFallbackOccurred)voiceFallbackOccurred
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_voiceFallbackOccurred;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSClientSynthesisContext)synthesisContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_synthesisContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(TTSSchemaTTSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    return @"com.apple.aiml.siri.tts.TTSClientEvent";
  }

  else
  {
    return off_1E78E80D8[whichEvent_Type - 101];
  }
}

- (TTSSchemaTTSClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = TTSSchemaTTSClientEvent;
  v5 = [(TTSSchemaTTSClientEvent *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[TTSSchemaTTSClientEventMetadata alloc] initWithDictionary:v6];
      [(TTSSchemaTTSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTSSchemaTTSClientSpeechContext alloc] initWithDictionary:v8];
      [(TTSSchemaTTSClientEvent *)v5 setSpeechContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"requestReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[TTSSchemaTTSRequestReceived alloc] initWithDictionary:v10];
      [(TTSSchemaTTSClientEvent *)v5 setRequestReceived:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"requestReceivedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[TTSSchemaTTSRequestReceivedTier1 alloc] initWithDictionary:v12];
      [(TTSSchemaTTSClientEvent *)v5 setRequestReceivedTier1:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"voiceFallbackOccurred"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[TTSSchemaTTSVoiceFallbackOccurred alloc] initWithDictionary:v14];
      [(TTSSchemaTTSClientEvent *)v5 setVoiceFallbackOccurred:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"synthesisContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[TTSSchemaTTSClientSynthesisContext alloc] initWithDictionary:v16];
      [(TTSSchemaTTSClientEvent *)v5 setSynthesisContext:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (TTSSchemaTTSClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(TTSSchemaTTSClientEvent *)self eventMetadata];
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

  if (self->_requestReceived)
  {
    requestReceived = [(TTSSchemaTTSClientEvent *)self requestReceived];
    dictionaryRepresentation2 = [requestReceived dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requestReceived"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requestReceived"];
    }
  }

  if (self->_requestReceivedTier1)
  {
    requestReceivedTier1 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
    dictionaryRepresentation3 = [requestReceivedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"requestReceivedTier1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"requestReceivedTier1"];
    }
  }

  if (self->_speechContext)
  {
    speechContext = [(TTSSchemaTTSClientEvent *)self speechContext];
    dictionaryRepresentation4 = [speechContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"speechContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"speechContext"];
    }
  }

  if (self->_synthesisContext)
  {
    synthesisContext = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    dictionaryRepresentation5 = [synthesisContext dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"synthesisContext"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"synthesisContext"];
    }
  }

  if (self->_voiceFallbackOccurred)
  {
    voiceFallbackOccurred = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
    dictionaryRepresentation6 = [voiceFallbackOccurred dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"voiceFallbackOccurred"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"voiceFallbackOccurred"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(TTSSchemaTTSClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(TTSSchemaTTSClientSpeechContext *)self->_speechContext hash]^ v3;
  v5 = [(TTSSchemaTTSRequestReceived *)self->_requestReceived hash];
  v6 = v4 ^ v5 ^ [(TTSSchemaTTSRequestReceivedTier1 *)self->_requestReceivedTier1 hash];
  v7 = [(TTSSchemaTTSVoiceFallbackOccurred *)self->_voiceFallbackOccurred hash];
  return v6 ^ v7 ^ [(TTSSchemaTTSClientSynthesisContext *)self->_synthesisContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_33;
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  eventMetadata3 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self speechContext];
  eventMetadata2 = [equalCopy speechContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  speechContext = [(TTSSchemaTTSClientEvent *)self speechContext];
  if (speechContext)
  {
    v14 = speechContext;
    speechContext2 = [(TTSSchemaTTSClientEvent *)self speechContext];
    speechContext3 = [equalCopy speechContext];
    v17 = [speechContext2 isEqual:speechContext3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self requestReceived];
  eventMetadata2 = [equalCopy requestReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  requestReceived = [(TTSSchemaTTSClientEvent *)self requestReceived];
  if (requestReceived)
  {
    v19 = requestReceived;
    requestReceived2 = [(TTSSchemaTTSClientEvent *)self requestReceived];
    requestReceived3 = [equalCopy requestReceived];
    v22 = [requestReceived2 isEqual:requestReceived3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
  eventMetadata2 = [equalCopy requestReceivedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  requestReceivedTier1 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
  if (requestReceivedTier1)
  {
    v24 = requestReceivedTier1;
    requestReceivedTier12 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
    requestReceivedTier13 = [equalCopy requestReceivedTier1];
    v27 = [requestReceivedTier12 isEqual:requestReceivedTier13];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
  eventMetadata2 = [equalCopy voiceFallbackOccurred];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_32;
  }

  voiceFallbackOccurred = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
  if (voiceFallbackOccurred)
  {
    v29 = voiceFallbackOccurred;
    voiceFallbackOccurred2 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
    voiceFallbackOccurred3 = [equalCopy voiceFallbackOccurred];
    v32 = [voiceFallbackOccurred2 isEqual:voiceFallbackOccurred3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self synthesisContext];
  eventMetadata2 = [equalCopy synthesisContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    synthesisContext = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    if (!synthesisContext)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = synthesisContext;
    synthesisContext2 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    synthesisContext3 = [equalCopy synthesisContext];
    v37 = [synthesisContext2 isEqual:synthesisContext3];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(TTSSchemaTTSClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  speechContext = [(TTSSchemaTTSClientEvent *)self speechContext];

  if (speechContext)
  {
    speechContext2 = [(TTSSchemaTTSClientEvent *)self speechContext];
    PBDataWriterWriteSubmessage();
  }

  requestReceived = [(TTSSchemaTTSClientEvent *)self requestReceived];

  if (requestReceived)
  {
    requestReceived2 = [(TTSSchemaTTSClientEvent *)self requestReceived];
    PBDataWriterWriteSubmessage();
  }

  requestReceivedTier1 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];

  if (requestReceivedTier1)
  {
    requestReceivedTier12 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
    PBDataWriterWriteSubmessage();
  }

  voiceFallbackOccurred = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];

  if (voiceFallbackOccurred)
  {
    voiceFallbackOccurred2 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
    PBDataWriterWriteSubmessage();
  }

  synthesisContext = [(TTSSchemaTTSClientEvent *)self synthesisContext];

  v15 = toCopy;
  if (synthesisContext)
  {
    synthesisContext2 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)deleteSynthesisContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_synthesisContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSynthesisContext:(id)context
{
  contextCopy = context;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  v9 = 105;
  if (!contextCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = contextCopy;
}

- (void)deleteVoiceFallbackOccurred
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_voiceFallbackOccurred = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceFallbackOccurred:(id)occurred
{
  occurredCopy = occurred;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 104;
  if (!occurredCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = occurredCopy;
}

- (void)deleteRequestReceivedTier1
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_requestReceivedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRequestReceivedTier1:(id)tier1
{
  tier1Copy = tier1;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 103;
  if (!tier1Copy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = tier1Copy;
}

- (void)deleteRequestReceived
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_requestReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRequestReceived:(id)received
{
  receivedCopy = received;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 102;
  if (!receivedCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  requestReceived = self->_requestReceived;
  self->_requestReceived = receivedCopy;
}

- (void)deleteSpeechContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_speechContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSpeechContext:(id)context
{
  contextCopy = context;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 101;
  if (!contextCopy)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  speechContext = self->_speechContext;
  self->_speechContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = TTSSchemaTTSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  eventMetadata = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTSSchemaTTSClientEvent *)self deleteEventMetadata];
  }

  speechContext = [(TTSSchemaTTSClientEvent *)self speechContext];
  v10 = [speechContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTSSchemaTTSClientEvent *)self deleteSpeechContext];
  }

  requestReceived = [(TTSSchemaTTSClientEvent *)self requestReceived];
  v13 = [requestReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceived];
  }

  requestReceivedTier1 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
  v16 = [requestReceivedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  voiceFallbackOccurred = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
  v19 = [voiceFallbackOccurred applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(TTSSchemaTTSClientEvent *)self deleteVoiceFallbackOccurred];
  }

  synthesisContext = [(TTSSchemaTTSClientEvent *)self synthesisContext];
  v22 = [synthesisContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(TTSSchemaTTSClientEvent *)self deleteSynthesisContext];
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
  eventMetadata = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  ttsId = [eventMetadata ttsId];

  if (ttsId && ([ttsId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(ttsId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 13;
  }

  else
  {
    eventMetadata2 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId)
    {
      value = [requestId value];
      if (value)
      {
        v13 = value;
        value2 = [requestId value];
        v9 = [value2 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      ttsId = requestId;
    }

    else
    {
      v9 = 0;
      ttsId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  ttsId = [eventMetadata ttsId];

  if (ttsId)
  {
    value = [ttsId value];
    if (value)
    {
      v6 = value;
      value2 = [ttsId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [requestId value];
    v13 = [value4 length];

    if (v13)
    {
      ttsId = requestId;
LABEL_8:
      value3 = ttsId;
      requestId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(TTSSchemaTTSClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB358[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EB380[tag - 101];
  }
}

@end