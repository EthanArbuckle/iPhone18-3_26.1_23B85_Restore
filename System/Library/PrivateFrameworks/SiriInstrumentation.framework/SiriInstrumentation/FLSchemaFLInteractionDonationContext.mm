@interface FLSchemaFLInteractionDonationContext
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLInteractionDonationContext)initWithDictionary:(id)dictionary;
- (FLSchemaFLInteractionDonationContext)initWithJSON:(id)n;
- (FLSchemaFLInteractionDonationEnded)ended;
- (FLSchemaFLInteractionDonationStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLInteractionDonationContext

- (FLSchemaFLInteractionDonationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FLSchemaFLInteractionDonationContext;
  v5 = [(FLSchemaFLInteractionDonationContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLInteractionDonationStarted alloc] initWithDictionary:v6];
      [(FLSchemaFLInteractionDonationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLSchemaFLInteractionDonationEnded alloc] initWithDictionary:v8];
      [(FLSchemaFLInteractionDonationContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(FLSchemaFLInteractionDonationContext *)v5 setContextId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (FLSchemaFLInteractionDonationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLInteractionDonationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLInteractionDonationContext *)self dictionaryRepresentation];
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
  if (self->_contextId)
  {
    contextId = [(FLSchemaFLInteractionDonationContext *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    ended = [(FLSchemaFLInteractionDonationContext *)self ended];
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
    startedOrChanged = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];
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
  v3 = [(FLSchemaFLInteractionDonationStarted *)self->_startedOrChanged hash];
  v4 = [(FLSchemaFLInteractionDonationEnded *)self->_ended hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_contextId hash];
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

  startedOrChanged = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];
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

  startedOrChanged = [(FLSchemaFLInteractionDonationContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(FLSchemaFLInteractionDonationContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(FLSchemaFLInteractionDonationContext *)self ended];
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

  startedOrChanged = [(FLSchemaFLInteractionDonationContext *)self contextId];
  startedOrChanged2 = [equalCopy contextId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    contextId = [(FLSchemaFLInteractionDonationContext *)self contextId];
    if (!contextId)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = contextId;
    contextId2 = [(FLSchemaFLInteractionDonationContext *)self contextId];
    contextId3 = [equalCopy contextId];
    v22 = [contextId2 isEqual:contextId3];

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
  startedOrChanged = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(FLSchemaFLInteractionDonationContext *)self ended];

  if (ended)
  {
    ended2 = [(FLSchemaFLInteractionDonationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  contextId = [(FLSchemaFLInteractionDonationContext *)self contextId];

  v9 = toCopy;
  if (contextId)
  {
    contextId2 = [(FLSchemaFLInteractionDonationContext *)self contextId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
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

- (FLSchemaFLInteractionDonationEnded)ended
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

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

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

- (FLSchemaFLInteractionDonationStarted)startedOrChanged
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

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = FLSchemaFLInteractionDonationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(FLSchemaFLInteractionDonationContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLSchemaFLInteractionDonationContext *)self deleteStartedOrChanged];
  }

  ended = [(FLSchemaFLInteractionDonationContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLSchemaFLInteractionDonationContext *)self deleteEnded];
  }

  contextId = [(FLSchemaFLInteractionDonationContext *)self contextId];
  v13 = [contextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLSchemaFLInteractionDonationContext *)self deleteContextId];
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