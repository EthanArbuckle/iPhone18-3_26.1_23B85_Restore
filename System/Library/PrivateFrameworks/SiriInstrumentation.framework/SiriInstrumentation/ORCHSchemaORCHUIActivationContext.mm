@interface ORCHSchemaORCHUIActivationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHUIActivationContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHUIActivationContext)initWithJSON:(id)n;
- (ORCHSchemaORCHUIActivationEnded)ended;
- (ORCHSchemaORCHUIActivationStarted)startedOrChanged;
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

@implementation ORCHSchemaORCHUIActivationContext

- (ORCHSchemaORCHUIActivationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ORCHSchemaORCHUIActivationContext;
  v5 = [(ORCHSchemaORCHUIActivationContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHUIActivationStarted alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHUIActivationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHUIActivationEnded alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHUIActivationContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(ORCHSchemaORCHUIActivationContext *)v5 setTrpId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHUIActivationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHUIActivationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHUIActivationContext *)self dictionaryRepresentation];
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
    ended = [(ORCHSchemaORCHUIActivationContext *)self ended];
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
    startedOrChanged = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];
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

  if (self->_trpId)
  {
    trpId = [(ORCHSchemaORCHUIActivationContext *)self trpId];
    dictionaryRepresentation3 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ORCHSchemaORCHUIActivationStarted *)self->_startedOrChanged hash];
  v4 = [(ORCHSchemaORCHUIActivationEnded *)self->_ended hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_trpId hash];
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

  startedOrChanged = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];
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

  startedOrChanged = [(ORCHSchemaORCHUIActivationContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(ORCHSchemaORCHUIActivationContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(ORCHSchemaORCHUIActivationContext *)self ended];
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

  startedOrChanged = [(ORCHSchemaORCHUIActivationContext *)self trpId];
  startedOrChanged2 = [equalCopy trpId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    trpId = [(ORCHSchemaORCHUIActivationContext *)self trpId];
    if (!trpId)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = trpId;
    trpId2 = [(ORCHSchemaORCHUIActivationContext *)self trpId];
    trpId3 = [equalCopy trpId];
    v22 = [trpId2 isEqual:trpId3];

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
  startedOrChanged = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ORCHSchemaORCHUIActivationContext *)self ended];

  if (ended)
  {
    ended2 = [(ORCHSchemaORCHUIActivationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  trpId = [(ORCHSchemaORCHUIActivationContext *)self trpId];

  v9 = toCopy;
  if (trpId)
  {
    trpId2 = [(ORCHSchemaORCHUIActivationContext *)self trpId];
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

- (ORCHSchemaORCHUIActivationEnded)ended
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

- (ORCHSchemaORCHUIActivationStarted)startedOrChanged
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
  v16.super_class = ORCHSchemaORCHUIActivationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(ORCHSchemaORCHUIActivationContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHUIActivationContext *)self deleteStartedOrChanged];
  }

  ended = [(ORCHSchemaORCHUIActivationContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHUIActivationContext *)self deleteEnded];
  }

  trpId = [(ORCHSchemaORCHUIActivationContext *)self trpId];
  v13 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ORCHSchemaORCHUIActivationContext *)self deleteTrpId];
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