@interface PRSiriSchemaPRRequestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRRequestContext)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRRequestContext)initWithJSON:(id)n;
- (PRSiriSchemaPRRequestEnded)ended;
- (PRSiriSchemaPRRequestFailed)failed;
- (PRSiriSchemaPRRequestStarted)startedOrChanged;
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

@implementation PRSiriSchemaPRRequestContext

- (PRSiriSchemaPRRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PRSiriSchemaPRRequestContext;
  v5 = [(PRSiriSchemaPRRequestContext *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PRSiriSchemaPRRequestStarted alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRRequestContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PRSiriSchemaPRRequestEnded alloc] initWithDictionary:v8];
      [(PRSiriSchemaPRRequestContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PRSiriSchemaPRRequestFailed alloc] initWithDictionary:v10];
      [(PRSiriSchemaPRRequestContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"planEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRRequestContext *)v5 setPlanEventId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRRequestContext setActionStatementId:](v5, "setActionStatementId:", [v14 unsignedIntValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRRequestContext *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRRequestContext actionStatementId](self, "actionStatementId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if (self->_ended)
  {
    ended = [(PRSiriSchemaPRRequestContext *)self ended];
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
    failed = [(PRSiriSchemaPRRequestContext *)self failed];
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

  if (self->_planEventId)
  {
    planEventId = [(PRSiriSchemaPRRequestContext *)self planEventId];
    dictionaryRepresentation3 = [planEventId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"planEventId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"planEventId"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
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
  v3 = [(PRSiriSchemaPRRequestStarted *)self->_startedOrChanged hash];
  v4 = [(PRSiriSchemaPRRequestEnded *)self->_ended hash];
  v5 = [(PRSiriSchemaPRRequestFailed *)self->_failed hash];
  v6 = [(SISchemaUUID *)self->_planEventId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_actionStatementId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
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

  startedOrChanged = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged3 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
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

  startedOrChanged = [(PRSiriSchemaPRRequestContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(PRSiriSchemaPRRequestContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(PRSiriSchemaPRRequestContext *)self ended];
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

  startedOrChanged = [(PRSiriSchemaPRRequestContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_22;
  }

  failed = [(PRSiriSchemaPRRequestContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(PRSiriSchemaPRRequestContext *)self failed];
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

  startedOrChanged = [(PRSiriSchemaPRRequestContext *)self planEventId];
  startedOrChanged2 = [equalCopy planEventId];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  planEventId = [(PRSiriSchemaPRRequestContext *)self planEventId];
  if (planEventId)
  {
    v24 = planEventId;
    planEventId2 = [(PRSiriSchemaPRRequestContext *)self planEventId];
    planEventId3 = [equalCopy planEventId];
    v27 = [planEventId2 isEqual:planEventId3];

    if (!v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[44] & 1))
  {
    if ((*&self->_has & 1) == 0 || (actionStatementId = self->_actionStatementId, actionStatementId == [equalCopy actionStatementId]))
    {
      v28 = 1;
      goto LABEL_24;
    }
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  startedOrChanged = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(PRSiriSchemaPRRequestContext *)self ended];

  if (ended)
  {
    ended2 = [(PRSiriSchemaPRRequestContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(PRSiriSchemaPRRequestContext *)self failed];

  if (failed)
  {
    failed2 = [(PRSiriSchemaPRRequestContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  planEventId = [(PRSiriSchemaPRRequestContext *)self planEventId];

  if (planEventId)
  {
    planEventId2 = [(PRSiriSchemaPRRequestContext *)self planEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
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

- (PRSiriSchemaPRRequestFailed)failed
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

- (PRSiriSchemaPRRequestEnded)ended
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

- (PRSiriSchemaPRRequestStarted)startedOrChanged
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
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(PRSiriSchemaPRRequestContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PRSiriSchemaPRRequestContext *)self deleteStartedOrChanged];
  }

  ended = [(PRSiriSchemaPRRequestContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PRSiriSchemaPRRequestContext *)self deleteEnded];
  }

  failed = [(PRSiriSchemaPRRequestContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PRSiriSchemaPRRequestContext *)self deleteFailed];
  }

  planEventId = [(PRSiriSchemaPRRequestContext *)self planEventId];
  v16 = [planEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PRSiriSchemaPRRequestContext *)self deletePlanEventId];
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