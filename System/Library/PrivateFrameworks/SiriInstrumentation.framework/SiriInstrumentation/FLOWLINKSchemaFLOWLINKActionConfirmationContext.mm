@interface FLOWLINKSchemaFLOWLINKActionConfirmationContext
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionConfirmationContext)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionConfirmationContext)initWithJSON:(id)n;
- (FLOWLINKSchemaFLOWLINKActionConfirmationEnded)ended;
- (FLOWLINKSchemaFLOWLINKActionConfirmationStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionConfirmationContext

- (FLOWLINKSchemaFLOWLINKActionConfirmationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWLINKSchemaFLOWLINKActionConfirmationContext;
  v5 = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWLINKSchemaFLOWLINKActionConfirmationStarted alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWLINKSchemaFLOWLINKActionConfirmationEnded alloc] initWithDictionary:v8];
      [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)v5 setEnded:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionConfirmationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    ended = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];
    dictionaryRepresentation = [ended dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ended"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ended"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];
    dictionaryRepresentation2 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"startedOrChanged"];
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

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_13;
  }

  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_12;
  }

  startedOrChanged3 = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    ended = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];
    if (!ended)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = ended;
    ended2 = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

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
  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];

  if (ended)
  {
    ended2 = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];
    PBDataWriterWriteSubmessage();
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

- (FLOWLINKSchemaFLOWLINKActionConfirmationEnded)ended
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

- (FLOWLINKSchemaFLOWLINKActionConfirmationStarted)startedOrChanged
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
  v13.receiver = self;
  v13.super_class = FLOWLINKSchemaFLOWLINKActionConfirmationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self deleteStartedOrChanged];
  }

  ended = [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWLINKSchemaFLOWLINKActionConfirmationContext *)self deleteEnded];
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