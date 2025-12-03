@interface SICSchemaSICInvocationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SICSchemaSICInvocationCancelled)cancelled;
- (SICSchemaSICInvocationContext)initWithDictionary:(id)dictionary;
- (SICSchemaSICInvocationContext)initWithJSON:(id)n;
- (SICSchemaSICInvocationEnded)ended;
- (SICSchemaSICInvocationStarted)startedOrChanged;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCancelled;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setCancelled:(id)cancelled;
- (void)setEnded:(id)ended;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation SICSchemaSICInvocationContext

- (SICSchemaSICInvocationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SICSchemaSICInvocationContext;
  v5 = [(SICSchemaSICInvocationContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SICSchemaSICInvocationStarted alloc] initWithDictionary:v6];
      [(SICSchemaSICInvocationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SICSchemaSICInvocationEnded alloc] initWithDictionary:v8];
      [(SICSchemaSICInvocationContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SICSchemaSICInvocationCancelled alloc] initWithDictionary:v10];
      [(SICSchemaSICInvocationContext *)v5 setCancelled:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SICSchemaSICInvocationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SICSchemaSICInvocationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SICSchemaSICInvocationContext *)self dictionaryRepresentation];
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
    cancelled = [(SICSchemaSICInvocationContext *)self cancelled];
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
    ended = [(SICSchemaSICInvocationContext *)self ended];
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

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(SICSchemaSICInvocationContext *)self startedOrChanged];
    dictionaryRepresentation3 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SICSchemaSICInvocationStarted *)self->_startedOrChanged hash];
  v4 = [(SICSchemaSICInvocationEnded *)self->_ended hash]^ v3;
  return v4 ^ [(SICSchemaSICInvocationCancelled *)self->_cancelled hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_18;
  }

  startedOrChanged = [(SICSchemaSICInvocationContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(SICSchemaSICInvocationContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(SICSchemaSICInvocationContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(SICSchemaSICInvocationContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(SICSchemaSICInvocationContext *)self cancelled];
  startedOrChanged2 = [equalCopy cancelled];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    cancelled = [(SICSchemaSICInvocationContext *)self cancelled];
    if (!cancelled)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = cancelled;
    cancelled2 = [(SICSchemaSICInvocationContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v22 = [cancelled2 isEqual:cancelled3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  startedOrChanged = [(SICSchemaSICInvocationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(SICSchemaSICInvocationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(SICSchemaSICInvocationContext *)self ended];

  if (ended)
  {
    ended2 = [(SICSchemaSICInvocationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(SICSchemaSICInvocationContext *)self cancelled];

  v9 = toCopy;
  if (cancelled)
  {
    cancelled2 = [(SICSchemaSICInvocationContext *)self cancelled];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SICSchemaSICInvocationCancelled)cancelled
{
  if (self->_whichContextevent == 103)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 103;
  if (!cancelledCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  cancelled = self->_cancelled;
  self->_cancelled = cancelledCopy;
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

- (SICSchemaSICInvocationEnded)ended
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

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v7 = 102;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
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

- (SICSchemaSICInvocationStarted)startedOrChanged
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

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  cancelled = self->_cancelled;
  self->_cancelled = 0;

  v7 = 101;
  if (!changedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = SICSchemaSICInvocationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(SICSchemaSICInvocationContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SICSchemaSICInvocationContext *)self deleteStartedOrChanged];
  }

  ended = [(SICSchemaSICInvocationContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SICSchemaSICInvocationContext *)self deleteEnded];
  }

  cancelled = [(SICSchemaSICInvocationContext *)self cancelled];
  v13 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SICSchemaSICInvocationContext *)self deleteCancelled];
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