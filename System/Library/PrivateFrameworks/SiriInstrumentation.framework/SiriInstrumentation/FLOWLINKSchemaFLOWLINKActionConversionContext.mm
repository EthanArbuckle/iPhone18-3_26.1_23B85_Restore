@interface FLOWLINKSchemaFLOWLINKActionConversionContext
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionConversionContext)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionConversionContext)initWithJSON:(id)n;
- (FLOWLINKSchemaFLOWLINKActionConversionEnded)ended;
- (FLOWLINKSchemaFLOWLINKActionConversionFailed)failed;
- (FLOWLINKSchemaFLOWLINKActionConversionStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionConversionContext

- (FLOWLINKSchemaFLOWLINKActionConversionContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FLOWLINKSchemaFLOWLINKActionConversionContext;
  v5 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWLINKSchemaFLOWLINKActionConversionStarted alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKActionConversionContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWLINKSchemaFLOWLINKActionConversionEnded alloc] initWithDictionary:v8];
      [(FLOWLINKSchemaFLOWLINKActionConversionContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWLINKSchemaFLOWLINKActionConversionFailed alloc] initWithDictionary:v10];
      [(FLOWLINKSchemaFLOWLINKActionConversionContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionConversionContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self dictionaryRepresentation];
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
    ended = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];
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

  if (self->_failed)
  {
    failed = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];
    dictionaryRepresentation2 = [failed dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"failed"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];
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
  v3 = [(FLOWLINKSchemaFLOWLINKActionConversionStarted *)self->_startedOrChanged hash];
  v4 = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self->_ended hash]^ v3;
  return v4 ^ [(FLOWLINKSchemaFLOWLINKActionConversionFailed *)self->_failed hash];
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

  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];
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

  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];
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

  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    failed = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

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
  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];

  if (ended)
  {
    ended2 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
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

- (FLOWLINKSchemaFLOWLINKActionConversionFailed)failed
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

- (void)setFailed:(id)failed
{
  failedCopy = failed;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 3;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
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

- (FLOWLINKSchemaFLOWLINKActionConversionEnded)ended
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

  failed = self->_failed;
  self->_failed = 0;

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

- (FLOWLINKSchemaFLOWLINKActionConversionStarted)startedOrChanged
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

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = FLOWLINKSchemaFLOWLINKActionConversionContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self deleteStartedOrChanged];
  }

  ended = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self deleteEnded];
  }

  failed = [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWLINKSchemaFLOWLINKActionConversionContext *)self deleteFailed];
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