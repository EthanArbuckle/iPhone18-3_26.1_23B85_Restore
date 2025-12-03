@interface MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithDictionary:(id)dictionary;
- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithJSON:(id)n;
- (MHSchemaMHAcousticFalseTriggerMitigationFailed)failed;
- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)scoreGenerated;
- (MHSchemaMHAcousticFalseTriggerMitigationStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailed;
- (void)deleteScoreGenerated;
- (void)deleteStartedOrChanged;
- (void)setFailed:(id)failed;
- (void)setScoreGenerated:(id)generated;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext

- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext;
  v5 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MHSchemaMHAcousticFalseTriggerMitigationStarted alloc] initWithDictionary:v6];
      [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)v5 setStartedOrChanged:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"scoreGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated alloc] initWithDictionary:v8];
      [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)v5 setScoreGenerated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MHSchemaMHAcousticFalseTriggerMitigationFailed alloc] initWithDictionary:v10];
      [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)v5 setFailed:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self dictionaryRepresentation];
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
  if (self->_failed)
  {
    failed = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
    dictionaryRepresentation = [failed dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"failed"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"failed"];
    }
  }

  if (self->_scoreGenerated)
  {
    scoreGenerated = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
    dictionaryRepresentation2 = [scoreGenerated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"scoreGenerated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"scoreGenerated"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
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
  v3 = [(MHSchemaMHAcousticFalseTriggerMitigationStarted *)self->_startedOrChanged hash];
  v4 = [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self->_scoreGenerated hash]^ v3;
  return v4 ^ [(MHSchemaMHAcousticFalseTriggerMitigationFailed *)self->_failed hash];
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

  startedOrChanged = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  startedOrChanged2 = [equalCopy startedOrChanged];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged3 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  if (startedOrChanged3)
  {
    v9 = startedOrChanged3;
    startedOrChanged4 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
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

  startedOrChanged = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
  startedOrChanged2 = [equalCopy scoreGenerated];
  if ((startedOrChanged != 0) == (startedOrChanged2 == 0))
  {
    goto LABEL_17;
  }

  scoreGenerated = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
  if (scoreGenerated)
  {
    v14 = scoreGenerated;
    scoreGenerated2 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
    scoreGenerated3 = [equalCopy scoreGenerated];
    v17 = [scoreGenerated2 isEqual:scoreGenerated3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  startedOrChanged = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
  startedOrChanged2 = [equalCopy failed];
  if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
  {
    failed = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
    if (!failed)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = failed;
    failed2 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
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
  startedOrChanged = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  scoreGenerated = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];

  if (scoreGenerated)
  {
    scoreGenerated2 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
    PBDataWriterWriteSubmessage();
  }

  failed = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];

  v9 = toCopy;
  if (failed)
  {
    failed2 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
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

- (MHSchemaMHAcousticFalseTriggerMitigationFailed)failed
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

  scoreGenerated = self->_scoreGenerated;
  self->_scoreGenerated = 0;

  v7 = 3;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteScoreGenerated
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_scoreGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated)scoreGenerated
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_scoreGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setScoreGenerated:(id)generated
{
  generatedCopy = generated;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (generatedCopy != 0);
  scoreGenerated = self->_scoreGenerated;
  self->_scoreGenerated = generatedCopy;
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

- (MHSchemaMHAcousticFalseTriggerMitigationStarted)startedOrChanged
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
  scoreGenerated = self->_scoreGenerated;
  self->_scoreGenerated = 0;

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
  v16.super_class = MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  startedOrChanged = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self startedOrChanged];
  v7 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self deleteStartedOrChanged];
  }

  scoreGenerated = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self scoreGenerated];
  v10 = [scoreGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self deleteScoreGenerated];
  }

  failed = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self deleteFailed];
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