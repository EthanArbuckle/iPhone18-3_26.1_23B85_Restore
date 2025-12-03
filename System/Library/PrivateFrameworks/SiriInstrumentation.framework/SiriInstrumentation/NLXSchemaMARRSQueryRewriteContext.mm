@interface NLXSchemaMARRSQueryRewriteContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaMARRSQueryRewriteContext)initWithDictionary:(id)dictionary;
- (NLXSchemaMARRSQueryRewriteContext)initWithJSON:(id)n;
- (NLXSchemaMARRSQueryRewriteEvaluated)ended;
- (NLXSchemaMARRSQueryRewriteEvaluated)evaluated;
- (NLXSchemaMARRSQueryRewriteFailed)failed;
- (NLXSchemaMARRSQueryRewriteStarted)started;
- (NLXSchemaMARRSQueryRewriteStarted)startedOrChanged;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteEvaluated;
- (void)deleteFailed;
- (void)deleteStarted;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setEvaluated:(id)evaluated;
- (void)setFailed:(id)failed;
- (void)setStarted:(id)started;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaMARRSQueryRewriteContext

- (NLXSchemaMARRSQueryRewriteContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = NLXSchemaMARRSQueryRewriteContext;
  v5 = [(NLXSchemaMARRSQueryRewriteContext *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaMARRSQueryRewriteStarted alloc] initWithDictionary:v6];
      [(NLXSchemaMARRSQueryRewriteContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"evaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaMARRSQueryRewriteEvaluated alloc] initWithDictionary:v8];
      [(NLXSchemaMARRSQueryRewriteContext *)v5 setEvaluated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaMARRSQueryRewriteFailed alloc] initWithDictionary:v10];
      [(NLXSchemaMARRSQueryRewriteContext *)v5 setFailed:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaMARRSQueryRewriteStarted alloc] initWithDictionary:v12];
      [(NLXSchemaMARRSQueryRewriteContext *)v5 setStartedOrChanged:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaMARRSQueryRewriteEvaluated alloc] initWithDictionary:v14];
      [(NLXSchemaMARRSQueryRewriteContext *)v5 setEnded:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSQueryRewriteContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSQueryRewriteContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaMARRSQueryRewriteContext *)self dictionaryRepresentation];
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
    ended = [(NLXSchemaMARRSQueryRewriteContext *)self ended];
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

  if (self->_evaluated)
  {
    evaluated = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];
    dictionaryRepresentation2 = [evaluated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"evaluated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"evaluated"];
    }
  }

  if (self->_failed)
  {
    failed = [(NLXSchemaMARRSQueryRewriteContext *)self failed];
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

  if (self->_started)
  {
    started = [(NLXSchemaMARRSQueryRewriteContext *)self started];
    dictionaryRepresentation4 = [started dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"started"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"started"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];
    dictionaryRepresentation5 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NLXSchemaMARRSQueryRewriteStarted *)self->_started hash];
  v4 = [(NLXSchemaMARRSQueryRewriteEvaluated *)self->_evaluated hash]^ v3;
  v5 = [(NLXSchemaMARRSQueryRewriteFailed *)self->_failed hash];
  v6 = v4 ^ v5 ^ [(NLXSchemaMARRSQueryRewriteStarted *)self->_startedOrChanged hash];
  return v6 ^ [(NLXSchemaMARRSQueryRewriteEvaluated *)self->_ended hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_28;
  }

  started = [(NLXSchemaMARRSQueryRewriteContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_27;
  }

  started3 = [(NLXSchemaMARRSQueryRewriteContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(NLXSchemaMARRSQueryRewriteContext *)self started];
    started5 = [equalCopy started];
    v12 = [started4 isEqual:started5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  started = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];
  started2 = [equalCopy evaluated];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_27;
  }

  evaluated = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];
  if (evaluated)
  {
    v14 = evaluated;
    evaluated2 = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];
    evaluated3 = [equalCopy evaluated];
    v17 = [evaluated2 isEqual:evaluated3];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  started = [(NLXSchemaMARRSQueryRewriteContext *)self failed];
  started2 = [equalCopy failed];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_27;
  }

  failed = [(NLXSchemaMARRSQueryRewriteContext *)self failed];
  if (failed)
  {
    v19 = failed;
    failed2 = [(NLXSchemaMARRSQueryRewriteContext *)self failed];
    failed3 = [equalCopy failed];
    v22 = [failed2 isEqual:failed3];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  started = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];
  started2 = [equalCopy startedOrChanged];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_27;
  }

  startedOrChanged = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v24 = startedOrChanged;
    startedOrChanged2 = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v27 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  started = [(NLXSchemaMARRSQueryRewriteContext *)self ended];
  started2 = [equalCopy ended];
  if ((started != 0) != (started2 == 0))
  {
    ended = [(NLXSchemaMARRSQueryRewriteContext *)self ended];
    if (!ended)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = ended;
    ended2 = [(NLXSchemaMARRSQueryRewriteContext *)self ended];
    ended3 = [equalCopy ended];
    v32 = [ended2 isEqual:ended3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  started = [(NLXSchemaMARRSQueryRewriteContext *)self started];

  if (started)
  {
    started2 = [(NLXSchemaMARRSQueryRewriteContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  evaluated = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];

  if (evaluated)
  {
    evaluated2 = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];
    PBDataWriterWriteSubmessage();
  }

  failed = [(NLXSchemaMARRSQueryRewriteContext *)self failed];

  if (failed)
  {
    failed2 = [(NLXSchemaMARRSQueryRewriteContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(NLXSchemaMARRSQueryRewriteContext *)self ended];

  v13 = toCopy;
  if (ended)
  {
    ended2 = [(NLXSchemaMARRSQueryRewriteContext *)self ended];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 5)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaMARRSQueryRewriteEvaluated)ended
{
  if (self->_whichContextevent == 5)
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
  started = self->_started;
  self->_started = 0;

  evaluated = self->_evaluated;
  self->_evaluated = 0;

  failed = self->_failed;
  self->_failed = 0;

  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  v9 = 5;
  if (!endedCopy)
  {
    v9 = 0;
  }

  self->_whichContextevent = v9;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaMARRSQueryRewriteStarted)startedOrChanged
{
  if (self->_whichContextevent == 4)
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
  started = self->_started;
  self->_started = 0;

  evaluated = self->_evaluated;
  self->_evaluated = 0;

  failed = self->_failed;
  self->_failed = 0;

  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 4 * (changedCopy != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
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

- (NLXSchemaMARRSQueryRewriteFailed)failed
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
  started = self->_started;
  self->_started = 0;

  evaluated = self->_evaluated;
  self->_evaluated = 0;

  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  v9 = 3;
  if (!failedCopy)
  {
    v9 = 0;
  }

  self->_whichContextevent = v9;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEvaluated
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_evaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaMARRSQueryRewriteEvaluated)evaluated
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_evaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
  started = self->_started;
  self->_started = 0;

  failed = self->_failed;
  self->_failed = 0;

  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 2 * (evaluatedCopy != 0);
  evaluated = self->_evaluated;
  self->_evaluated = evaluatedCopy;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_started = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLXSchemaMARRSQueryRewriteStarted)started
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_started;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStarted:(id)started
{
  startedCopy = started;
  evaluated = self->_evaluated;
  self->_evaluated = 0;

  failed = self->_failed;
  self->_failed = 0;

  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = startedCopy != 0;
  started = self->_started;
  self->_started = startedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = NLXSchemaMARRSQueryRewriteContext;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  started = [(NLXSchemaMARRSQueryRewriteContext *)self started];
  v7 = [started applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaMARRSQueryRewriteContext *)self deleteStarted];
  }

  evaluated = [(NLXSchemaMARRSQueryRewriteContext *)self evaluated];
  v10 = [evaluated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaMARRSQueryRewriteContext *)self deleteEvaluated];
  }

  failed = [(NLXSchemaMARRSQueryRewriteContext *)self failed];
  v13 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaMARRSQueryRewriteContext *)self deleteFailed];
  }

  startedOrChanged = [(NLXSchemaMARRSQueryRewriteContext *)self startedOrChanged];
  v16 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLXSchemaMARRSQueryRewriteContext *)self deleteStartedOrChanged];
  }

  ended = [(NLXSchemaMARRSQueryRewriteContext *)self ended];
  v19 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLXSchemaMARRSQueryRewriteContext *)self deleteEnded];
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