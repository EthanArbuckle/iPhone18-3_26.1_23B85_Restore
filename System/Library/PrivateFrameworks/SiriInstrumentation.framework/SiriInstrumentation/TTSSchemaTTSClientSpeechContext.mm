@interface TTSSchemaTTSClientSpeechContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSClientSpeechContext)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSClientSpeechContext)initWithJSON:(id)n;
- (TTSSchemaTTSSpeechCancelled)cancelled;
- (TTSSchemaTTSSpeechEnded)ended;
- (TTSSchemaTTSSpeechFailed)failed;
- (TTSSchemaTTSSpeechStarted)startedOrChanged;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCancelled;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setCancelled:(id)cancelled;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSClientSpeechContext

- (TTSSchemaTTSSpeechStarted)startedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSSpeechEnded)ended
{
  if (self->_whichContextevent == 102)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSSpeechFailed)failed
{
  if (self->_whichContextevent == 103)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSSpeechCancelled)cancelled
{
  if (self->_whichContextevent == 104)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TTSSchemaTTSClientSpeechContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = TTSSchemaTTSClientSpeechContext;
  v5 = [(TTSSchemaTTSClientSpeechContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(TTSSchemaTTSClientSpeechContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[TTSSchemaTTSSpeechStarted alloc] initWithDictionary:v8];
      [(TTSSchemaTTSClientSpeechContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[TTSSchemaTTSSpeechEnded alloc] initWithDictionary:v10];
      [(TTSSchemaTTSClientSpeechContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[TTSSchemaTTSSpeechFailed alloc] initWithDictionary:v12];
      [(TTSSchemaTTSClientSpeechContext *)v5 setFailed:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[TTSSchemaTTSSpeechCancelled alloc] initWithDictionary:v14];
      [(TTSSchemaTTSClientSpeechContext *)v5 setCancelled:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (TTSSchemaTTSClientSpeechContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSClientSpeechContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSClientSpeechContext *)self dictionaryRepresentation];
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
  if (self->_cancelled)
  {
    cancelled = [(TTSSchemaTTSClientSpeechContext *)self cancelled];
    dictionaryRepresentation = [cancelled dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cancelled"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cancelled"];
    }
  }

  if (self->_contextId)
  {
    contextId = [(TTSSchemaTTSClientSpeechContext *)self contextId];
    dictionaryRepresentation2 = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"contextId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    ended = [(TTSSchemaTTSClientSpeechContext *)self ended];
    dictionaryRepresentation3 = [ended dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"ended"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    failed = [(TTSSchemaTTSClientSpeechContext *)self failed];
    dictionaryRepresentation4 = [failed dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"failed"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];
    dictionaryRepresentation5 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(TTSSchemaTTSSpeechStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(TTSSchemaTTSSpeechEnded *)self->_ended hash];
  v6 = v4 ^ v5 ^ [(TTSSchemaTTSSpeechFailed *)self->_failed hash];
  return v6 ^ [(TTSSchemaTTSSpeechCancelled *)self->_cancelled hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_28;
  }

  contextId = [(TTSSchemaTTSClientSpeechContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  contextId3 = [(TTSSchemaTTSClientSpeechContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(TTSSchemaTTSClientSpeechContext *)self contextId];
    contextId5 = [equalCopy contextId];
    v12 = [contextId4 isEqual:contextId5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(TTSSchemaTTSClientSpeechContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(TTSSchemaTTSClientSpeechContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(TTSSchemaTTSClientSpeechContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(TTSSchemaTTSClientSpeechContext *)self failed];
  contextId2 = [equalCopy failed];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(TTSSchemaTTSClientSpeechContext *)self failed];
  if (failed)
  {
    v24 = failed;
    failed2 = [(TTSSchemaTTSClientSpeechContext *)self failed];
    failed3 = [equalCopy failed];
    v27 = [failed2 isEqual:failed3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  contextId = [(TTSSchemaTTSClientSpeechContext *)self cancelled];
  contextId2 = [equalCopy cancelled];
  if ((contextId != 0) != (contextId2 == 0))
  {
    cancelled = [(TTSSchemaTTSClientSpeechContext *)self cancelled];
    if (!cancelled)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = cancelled;
    cancelled2 = [(TTSSchemaTTSClientSpeechContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v32 = [cancelled2 isEqual:cancelled3];

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
  contextId = [(TTSSchemaTTSClientSpeechContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(TTSSchemaTTSClientSpeechContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(TTSSchemaTTSClientSpeechContext *)self ended];

  if (ended)
  {
    ended2 = [(TTSSchemaTTSClientSpeechContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(TTSSchemaTTSClientSpeechContext *)self failed];

  if (failed)
  {
    failed2 = [(TTSSchemaTTSClientSpeechContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(TTSSchemaTTSClientSpeechContext *)self cancelled];

  v13 = toCopy;
  if (cancelled)
  {
    cancelled2 = [(TTSSchemaTTSClientSpeechContext *)self cancelled];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 104)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  v8 = 104;
  if (!cancelledCopy)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  cancelled = self->_cancelled;
  self->_cancelled = cancelledCopy;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFailed:(id)failed
{
  failedCopy = failed;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 103;
  if (!failedCopy)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 102;
  if (!endedCopy)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v8 = 101;
  if (!changedCopy)
  {
    v8 = 0;
  }

  self->_whichContextevent = v8;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = TTSSchemaTTSClientSpeechContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  contextId = [(TTSSchemaTTSClientSpeechContext *)self contextId];
  v7 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(TTSSchemaTTSClientSpeechContext *)self deleteContextId];
  }

  startedOrChanged = [(TTSSchemaTTSClientSpeechContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(TTSSchemaTTSClientSpeechContext *)self deleteStartedOrChanged];
  }

  ended = [(TTSSchemaTTSClientSpeechContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(TTSSchemaTTSClientSpeechContext *)self deleteEnded];
  }

  failed = [(TTSSchemaTTSClientSpeechContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(TTSSchemaTTSClientSpeechContext *)self deleteFailed];
  }

  cancelled = [(TTSSchemaTTSClientSpeechContext *)self cancelled];
  v19 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(TTSSchemaTTSClientSpeechContext *)self deleteCancelled];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end