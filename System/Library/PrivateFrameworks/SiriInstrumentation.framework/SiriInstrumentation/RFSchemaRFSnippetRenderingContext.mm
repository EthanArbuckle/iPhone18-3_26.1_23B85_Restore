@interface RFSchemaRFSnippetRenderingContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFSnippetRenderingCancelled)cancelled;
- (RFSchemaRFSnippetRenderingContext)initWithDictionary:(id)dictionary;
- (RFSchemaRFSnippetRenderingContext)initWithJSON:(id)n;
- (RFSchemaRFSnippetRenderingEnded)ended;
- (RFSchemaRFSnippetRenderingFailed)failed;
- (RFSchemaRFSnippetRenderingStarted)startedOrChanged;
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

@implementation RFSchemaRFSnippetRenderingContext

- (RFSchemaRFSnippetRenderingEnded)ended
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

- (RFSchemaRFSnippetRenderingFailed)failed
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

- (RFSchemaRFSnippetRenderingCancelled)cancelled
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

- (RFSchemaRFSnippetRenderingStarted)startedOrChanged
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

- (RFSchemaRFSnippetRenderingContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = RFSchemaRFSnippetRenderingContext;
  v5 = [(RFSchemaRFSnippetRenderingContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[RFSchemaRFSnippetRenderingStarted alloc] initWithDictionary:v6];
      [(RFSchemaRFSnippetRenderingContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[RFSchemaRFSnippetRenderingEnded alloc] initWithDictionary:v8];
      [(RFSchemaRFSnippetRenderingContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[RFSchemaRFSnippetRenderingFailed alloc] initWithDictionary:v10];
      [(RFSchemaRFSnippetRenderingContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RFSchemaRFSnippetRenderingCancelled alloc] initWithDictionary:v12];
      [(RFSchemaRFSnippetRenderingContext *)v5 setCancelled:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (RFSchemaRFSnippetRenderingContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFSnippetRenderingContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFSnippetRenderingContext *)self dictionaryRepresentation];
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
    cancelled = [(RFSchemaRFSnippetRenderingContext *)self cancelled];
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
    ended = [(RFSchemaRFSnippetRenderingContext *)self ended];
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
    failed = [(RFSchemaRFSnippetRenderingContext *)self failed];
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

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];
    dictionaryRepresentation4 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(RFSchemaRFSnippetRenderingStarted *)self->_startedOrChanged hash];
  v4 = [(RFSchemaRFSnippetRenderingEnded *)self->_ended hash]^ v3;
  v5 = [(RFSchemaRFSnippetRenderingFailed *)self->_failed hash];
  return v4 ^ v5 ^ [(RFSchemaRFSnippetRenderingCancelled *)self->_cancelled hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_23;
  }

  startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged3 = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(RFSchemaRFSnippetRenderingContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(RFSchemaRFSnippetRenderingContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  failed = [(RFSchemaRFSnippetRenderingContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(RFSchemaRFSnippetRenderingContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self cancelled];
  startedOrChanged2 = [equalCopy cancelled];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    cancelled = [(RFSchemaRFSnippetRenderingContext *)self cancelled];
    if (!cancelled)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = cancelled;
    cancelled2 = [(RFSchemaRFSnippetRenderingContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v27 = [cancelled2 isEqual:cancelled3];

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
  startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(RFSchemaRFSnippetRenderingContext *)self ended];

  if (ended)
  {
    ended2 = [(RFSchemaRFSnippetRenderingContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(RFSchemaRFSnippetRenderingContext *)self failed];

  if (failed)
  {
    failed2 = [(RFSchemaRFSnippetRenderingContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(RFSchemaRFSnippetRenderingContext *)self cancelled];

  v11 = toCopy;
  if (cancelled)
  {
    cancelled2 = [(RFSchemaRFSnippetRenderingContext *)self cancelled];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
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
  v19.receiver = self;
  v19.super_class = RFSchemaRFSnippetRenderingContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(RFSchemaRFSnippetRenderingContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RFSchemaRFSnippetRenderingContext *)self deleteStartedOrChanged];
  }

  ended = [(RFSchemaRFSnippetRenderingContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RFSchemaRFSnippetRenderingContext *)self deleteEnded];
  }

  failed = [(RFSchemaRFSnippetRenderingContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(RFSchemaRFSnippetRenderingContext *)self deleteFailed];
  }

  cancelled = [(RFSchemaRFSnippetRenderingContext *)self cancelled];
  v16 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(RFSchemaRFSnippetRenderingContext *)self deleteCancelled];
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