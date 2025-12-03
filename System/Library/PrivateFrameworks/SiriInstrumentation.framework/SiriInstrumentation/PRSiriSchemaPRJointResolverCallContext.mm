@interface PRSiriSchemaPRJointResolverCallContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRJointResolverCallContext)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRJointResolverCallContext)initWithJSON:(id)n;
- (PRSiriSchemaPRJointResolverCallEnded)ended;
- (PRSiriSchemaPRJointResolverCallFailed)failed;
- (PRSiriSchemaPRJointResolverCallStarted)startedOrChanged;
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

@implementation PRSiriSchemaPRJointResolverCallContext

- (PRSiriSchemaPRJointResolverCallContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRJointResolverCallContext;
  v5 = [(PRSiriSchemaPRJointResolverCallContext *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PRSiriSchemaPRJointResolverCallStarted alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PRSiriSchemaPRJointResolverCallEnded alloc] initWithDictionary:v8];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PRSiriSchemaPRJointResolverCallFailed alloc] initWithDictionary:v10];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"planEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setPlanEventId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRJointResolverCallContext setActionStatementId:](v5, "setActionStatementId:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"traceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(PRSiriSchemaPRJointResolverCallContext *)v5 setTraceId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRJointResolverCallContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRJointResolverCallContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRJointResolverCallContext *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRJointResolverCallContext actionStatementId](self, "actionStatementId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if (self->_ended)
  {
    ended = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
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
    failed = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
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
    planEventId = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
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
    startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
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

  if (self->_traceId)
  {
    traceId = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    dictionaryRepresentation5 = [traceId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"traceId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"traceId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PRSiriSchemaPRJointResolverCallStarted *)self->_startedOrChanged hash];
  v4 = [(PRSiriSchemaPRJointResolverCallEnded *)self->_ended hash];
  v5 = [(PRSiriSchemaPRJointResolverCallFailed *)self->_failed hash];
  v6 = [(SISchemaUUID *)self->_planEventId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_actionStatementId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(SISchemaUUID *)self->_traceId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = *&self->_hasTraceId;
  if (v5 != [equalCopy whichContextevent])
  {
    goto LABEL_31;
  }

  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_30;
  }

  startedOrChanged3 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
    startedOrChanged5 = [equalCopy startedOrChanged];
    v12 = [startedOrChanged4 isEqual:startedOrChanged5];

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_30;
  }

  ended = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_30;
  }

  failed = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
  startedOrChanged2 = [equalCopy planEventId];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_30;
  }

  planEventId = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
  if (planEventId)
  {
    v24 = planEventId;
    planEventId2 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
    planEventId3 = [equalCopy planEventId];
    v27 = [planEventId2 isEqual:planEventId3];

    if (!v27)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [equalCopy actionStatementId])
    {
      goto LABEL_31;
    }
  }

  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
  startedOrChanged2 = [equalCopy traceId];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    traceId = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    if (!traceId)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = traceId;
    traceId2 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    traceId3 = [equalCopy traceId];
    v33 = [traceId2 isEqual:traceId3];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(PRSiriSchemaPRJointResolverCallContext *)self ended];

  if (ended)
  {
    ended2 = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(PRSiriSchemaPRJointResolverCallContext *)self failed];

  if (failed)
  {
    failed2 = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  planEventId = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];

  if (planEventId)
  {
    planEventId2 = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  traceId = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];

  v13 = toCopy;
  if (traceId)
  {
    traceId2 = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteFailed
{
  if (*&self->_hasTraceId == 3)
  {
    *&self->_hasTraceId = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallFailed)failed
{
  if (*&self->_hasTraceId == 3)
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

  *&self->_hasTraceId = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEnded
{
  if (*&self->_hasTraceId == 2)
  {
    *&self->_hasTraceId = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallEnded)ended
{
  if (*&self->_hasTraceId == 2)
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

  *&self->_hasTraceId = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (*&self->_hasTraceId == 1)
  {
    *&self->_hasTraceId = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PRSiriSchemaPRJointResolverCallStarted)startedOrChanged
{
  if (*&self->_hasTraceId == 1)
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

  *&self->_hasTraceId = changedCopy != 0;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = PRSiriSchemaPRJointResolverCallContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(PRSiriSchemaPRJointResolverCallContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteStartedOrChanged];
  }

  ended = [(PRSiriSchemaPRJointResolverCallContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteEnded];
  }

  failed = [(PRSiriSchemaPRJointResolverCallContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteFailed];
  }

  planEventId = [(PRSiriSchemaPRJointResolverCallContext *)self planEventId];
  v16 = [planEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deletePlanEventId];
  }

  traceId = [(PRSiriSchemaPRJointResolverCallContext *)self traceId];
  v19 = [traceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PRSiriSchemaPRJointResolverCallContext *)self deleteTraceId];
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