@interface MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHLatticeFalseTriggerMitigationEnded)ended;
- (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext)initWithDictionary:(id)dictionary;
- (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext)initWithJSON:(id)n;
- (MHSchemaMHLatticeFalseTriggerMitigationFailed)failed;
- (MHSchemaMHLatticeFalseTriggerMitigationStarted)startedOrChanged;
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

@implementation MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext

- (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext;
  v5 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHLatticeFalseTriggerMitigationStarted alloc] initWithDictionary:v6];
      [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHLatticeFalseTriggerMitigationEnded alloc] initWithDictionary:v8];
      [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MHSchemaMHLatticeFalseTriggerMitigationFailed alloc] initWithDictionary:v10];
      [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self dictionaryRepresentation];
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
    ended = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];
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
    failed = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];
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
    startedOrChanged = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
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
  v3 = [(MHSchemaMHLatticeFalseTriggerMitigationStarted *)self->_startedOrChanged hash];
  v4 = [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)self->_ended hash]^ v3;
  return v4 ^ [(MHSchemaMHLatticeFalseTriggerMitigationFailed *)self->_failed hash];
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

  startedOrChanged = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
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

  startedOrChanged = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];
  startedOrChanged2 = [equalCopy ended];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];
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

  startedOrChanged = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    failed = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];
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
  startedOrChanged = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];

  if (ended)
  {
    ended2 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];
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

- (MHSchemaMHLatticeFalseTriggerMitigationFailed)failed
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

- (MHSchemaMHLatticeFalseTriggerMitigationEnded)ended
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

- (MHSchemaMHLatticeFalseTriggerMitigationStarted)startedOrChanged
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
  v16.super_class = MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self deleteStartedOrChanged];
  }

  ended = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self deleteEnded];
  }

  failed = [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self deleteFailed];
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