@interface CNVSchemaCNVIntentFinalExecutionContext
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVIntentFinalExecutionCancelled)cancelled;
- (CNVSchemaCNVIntentFinalExecutionContext)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVIntentFinalExecutionContext)initWithJSON:(id)n;
- (CNVSchemaCNVIntentFinalExecutionEnded)ended;
- (CNVSchemaCNVIntentFinalExecutionFailed)failed;
- (CNVSchemaCNVIntentFinalExecutionStarted)startedOrChanged;
- (NSData)jsonData;
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

@implementation CNVSchemaCNVIntentFinalExecutionContext

- (CNVSchemaCNVIntentFinalExecutionStarted)startedOrChanged
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentFinalExecutionEnded)ended
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentFinalExecutionFailed)failed
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentFinalExecutionCancelled)cancelled
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentFinalExecutionContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CNVSchemaCNVIntentFinalExecutionContext;
  v5 = [(CNVSchemaCNVIntentFinalExecutionContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CNVSchemaCNVIntentFinalExecutionStarted alloc] initWithDictionary:v6];
      [(CNVSchemaCNVIntentFinalExecutionContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CNVSchemaCNVIntentFinalExecutionEnded alloc] initWithDictionary:v8];
      [(CNVSchemaCNVIntentFinalExecutionContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CNVSchemaCNVIntentFinalExecutionFailed alloc] initWithDictionary:v10];
      [(CNVSchemaCNVIntentFinalExecutionContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CNVSchemaCNVIntentFinalExecutionCancelled alloc] initWithDictionary:v12];
      [(CNVSchemaCNVIntentFinalExecutionContext *)v5 setCancelled:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"hypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(CNVSchemaCNVIntentFinalExecutionContext *)v5 setHypothesisId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CNVSchemaCNVIntentFinalExecutionContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVIntentFinalExecutionContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVIntentFinalExecutionContext *)self dictionaryRepresentation];
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
    cancelled = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];
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

  if (self->_ended)
  {
    ended = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];
    dictionaryRepresentation2 = [ended dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"ended"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    failed = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];
    dictionaryRepresentation3 = [failed dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"failed"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_hypothesisId)
  {
    hypothesisId = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];
    dictionaryRepresentation4 = [hypothesisId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"hypothesisId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"hypothesisId"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];
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
  v3 = [(CNVSchemaCNVIntentFinalExecutionStarted *)self->_startedOrChanged hash];
  v4 = [(CNVSchemaCNVIntentFinalExecutionEnded *)self->_ended hash]^ v3;
  v5 = [(CNVSchemaCNVIntentFinalExecutionFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(CNVSchemaCNVIntentFinalExecutionCancelled *)self->_cancelled hash];
  return v6 ^ [(SISchemaUUID *)self->_hypothesisId hash];
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

  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged3 = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  ended = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];
  startedOrChanged2 = [equalCopy cancelled];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_27;
  }

  cancelled = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];
  if (cancelled)
  {
    v24 = cancelled;
    cancelled2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v27 = [cancelled2 isEqual:cancelled3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];
  startedOrChanged2 = [equalCopy hypothesisId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    hypothesisId = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];
    if (!hypothesisId)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = hypothesisId;
    hypothesisId2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];
    hypothesisId3 = [equalCopy hypothesisId];
    v32 = [hypothesisId2 isEqual:hypothesisId3];

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
  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];

  if (ended)
  {
    ended2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];

  if (failed)
  {
    failed2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];

  if (cancelled)
  {
    cancelled2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];
    PBDataWriterWriteSubmessage();
  }

  hypothesisId = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];

  v13 = toCopy;
  if (hypothesisId)
  {
    hypothesisId2 = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 4)
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

  self->_whichContextevent = 4 * (cancelledCopy != 0);
  cancelled = self->_cancelled;
  self->_cancelled = cancelledCopy;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 3)
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

  v8 = 3;
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
  if (self->_whichContextevent == 2)
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

  self->_whichContextevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 1)
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

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = CNVSchemaCNVIntentFinalExecutionContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(CNVSchemaCNVIntentFinalExecutionContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CNVSchemaCNVIntentFinalExecutionContext *)self deleteStartedOrChanged];
  }

  ended = [(CNVSchemaCNVIntentFinalExecutionContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CNVSchemaCNVIntentFinalExecutionContext *)self deleteEnded];
  }

  failed = [(CNVSchemaCNVIntentFinalExecutionContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CNVSchemaCNVIntentFinalExecutionContext *)self deleteFailed];
  }

  cancelled = [(CNVSchemaCNVIntentFinalExecutionContext *)self cancelled];
  v16 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CNVSchemaCNVIntentFinalExecutionContext *)self deleteCancelled];
  }

  hypothesisId = [(CNVSchemaCNVIntentFinalExecutionContext *)self hypothesisId];
  v19 = [hypothesisId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CNVSchemaCNVIntentFinalExecutionContext *)self deleteHypothesisId];
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