@interface TTSSchemaTTSClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (TTSSchemaTTSClientEvent)initWithDictionary:(id)a3;
- (TTSSchemaTTSClientEvent)initWithJSON:(id)a3;
- (TTSSchemaTTSClientSpeechContext)speechContext;
- (TTSSchemaTTSClientSynthesisContext)synthesisContext;
- (TTSSchemaTTSRequestReceived)requestReceived;
- (TTSSchemaTTSRequestReceivedTier1)requestReceivedTier1;
- (TTSSchemaTTSVoiceFallbackOccurred)voiceFallbackOccurred;
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setRequestReceived:(id)a3;
- (void)setRequestReceivedTier1:(id)a3;
- (void)setSpeechContext:(id)a3;
- (void)setSynthesisContext:(id)a3;
- (void)setVoiceFallbackOccurred:(id)a3;
- (void)writeTo:(id)a3;
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
  v2 = [(TTSSchemaTTSClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 4)
  {
    return @"com.apple.aiml.siri.tts.TTSClientEvent";
  }

  else
  {
    return off_1E78E80D8[v2 - 101];
  }
}

- (TTSSchemaTTSClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TTSSchemaTTSClientEvent;
  v5 = [(TTSSchemaTTSClientEvent *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[TTSSchemaTTSClientEventMetadata alloc] initWithDictionary:v6];
      [(TTSSchemaTTSClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"speechContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTSSchemaTTSClientSpeechContext alloc] initWithDictionary:v8];
      [(TTSSchemaTTSClientEvent *)v5 setSpeechContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"requestReceived"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[TTSSchemaTTSRequestReceived alloc] initWithDictionary:v10];
      [(TTSSchemaTTSClientEvent *)v5 setRequestReceived:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"requestReceivedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[TTSSchemaTTSRequestReceivedTier1 alloc] initWithDictionary:v12];
      [(TTSSchemaTTSClientEvent *)v5 setRequestReceivedTier1:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"voiceFallbackOccurred"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[TTSSchemaTTSVoiceFallbackOccurred alloc] initWithDictionary:v14];
      [(TTSSchemaTTSClientEvent *)v5 setVoiceFallbackOccurred:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"synthesisContext"];
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

- (TTSSchemaTTSClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_eventMetadata)
  {
    v4 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_requestReceived)
  {
    v7 = [(TTSSchemaTTSClientEvent *)self requestReceived];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"requestReceived"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"requestReceived"];
    }
  }

  if (self->_requestReceivedTier1)
  {
    v10 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"requestReceivedTier1"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"requestReceivedTier1"];
    }
  }

  if (self->_speechContext)
  {
    v13 = [(TTSSchemaTTSClientEvent *)self speechContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"speechContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"speechContext"];
    }
  }

  if (self->_synthesisContext)
  {
    v16 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"synthesisContext"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"synthesisContext"];
    }
  }

  if (self->_voiceFallbackOccurred)
  {
    v19 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"voiceFallbackOccurred"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"voiceFallbackOccurred"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_33;
  }

  v6 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientEvent *)self speechContext];
  v7 = [v4 speechContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(TTSSchemaTTSClientEvent *)self speechContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(TTSSchemaTTSClientEvent *)self speechContext];
    v16 = [v4 speechContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientEvent *)self requestReceived];
  v7 = [v4 requestReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(TTSSchemaTTSClientEvent *)self requestReceived];
  if (v18)
  {
    v19 = v18;
    v20 = [(TTSSchemaTTSClientEvent *)self requestReceived];
    v21 = [v4 requestReceived];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
  v7 = [v4 requestReceivedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
  if (v23)
  {
    v24 = v23;
    v25 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
    v26 = [v4 requestReceivedTier1];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
  v7 = [v4 voiceFallbackOccurred];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
  if (v28)
  {
    v29 = v28;
    v30 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
    v31 = [v4 voiceFallbackOccurred];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
  v7 = [v4 synthesisContext];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    if (!v33)
    {

LABEL_36:
      v38 = 1;
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    v36 = [v4 synthesisContext];
    v37 = [v35 isEqual:v36];

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

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(TTSSchemaTTSClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(TTSSchemaTTSClientEvent *)self speechContext];

  if (v6)
  {
    v7 = [(TTSSchemaTTSClientEvent *)self speechContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(TTSSchemaTTSClientEvent *)self requestReceived];

  if (v8)
  {
    v9 = [(TTSSchemaTTSClientEvent *)self requestReceived];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];

  if (v10)
  {
    v11 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];

  if (v12)
  {
    v13 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(TTSSchemaTTSClientEvent *)self synthesisContext];

  v15 = v17;
  if (v14)
  {
    v16 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
    PBDataWriterWriteSubmessage();

    v15 = v17;
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

- (void)setSynthesisContext:(id)a3
{
  v4 = a3;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  v9 = 105;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = v4;
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

- (void)setVoiceFallbackOccurred:(id)a3
{
  v4 = a3;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 104;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = v4;
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

- (void)setRequestReceivedTier1:(id)a3
{
  v4 = a3;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 103;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = v4;
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

- (void)setRequestReceived:(id)a3
{
  v4 = a3;
  speechContext = self->_speechContext;
  self->_speechContext = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 102;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  requestReceived = self->_requestReceived;
  self->_requestReceived = v4;
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

- (void)setSpeechContext:(id)a3
{
  v4 = a3;
  requestReceived = self->_requestReceived;
  self->_requestReceived = 0;

  requestReceivedTier1 = self->_requestReceivedTier1;
  self->_requestReceivedTier1 = 0;

  voiceFallbackOccurred = self->_voiceFallbackOccurred;
  self->_voiceFallbackOccurred = 0;

  synthesisContext = self->_synthesisContext;
  self->_synthesisContext = 0;

  v9 = 101;
  if (!v4)
  {
    v9 = 0;
  }

  self->_whichEvent_Type = v9;
  speechContext = self->_speechContext;
  self->_speechContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TTSSchemaTTSClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  v6 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(TTSSchemaTTSClientEvent *)self deleteEventMetadata];
  }

  v9 = [(TTSSchemaTTSClientEvent *)self speechContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(TTSSchemaTTSClientEvent *)self deleteSpeechContext];
  }

  v12 = [(TTSSchemaTTSClientEvent *)self requestReceived];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceived];
  }

  v15 = [(TTSSchemaTTSClientEvent *)self requestReceivedTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(TTSSchemaTTSClientEvent *)self deleteRequestReceivedTier1];
  }

  v18 = [(TTSSchemaTTSClientEvent *)self voiceFallbackOccurred];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(TTSSchemaTTSClientEvent *)self deleteVoiceFallbackOccurred];
  }

  v21 = [(TTSSchemaTTSClientEvent *)self synthesisContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
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
  v3 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  v4 = [v3 ttsId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 13;
  }

  else
  {
    v10 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11)
    {
      v12 = [v11 value];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 value];
        v9 = [v14 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      v4 = v11;
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  v4 = [v3 ttsId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = [(TTSSchemaTTSClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 value];
    v13 = [v12 length];

    if (v13)
    {
      v4 = v10;
LABEL_8:
      v11 = v4;
      v10 = v11;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(TTSSchemaTTSClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EB358[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78EB380[a3 - 101];
  }
}

@end