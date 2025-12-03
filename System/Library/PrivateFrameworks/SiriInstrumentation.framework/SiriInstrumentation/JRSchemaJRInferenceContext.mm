@interface JRSchemaJRInferenceContext
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRInferenceContext)initWithDictionary:(id)dictionary;
- (JRSchemaJRInferenceContext)initWithJSON:(id)n;
- (JRSchemaJRInferenceEnded)ended;
- (JRSchemaJRInferenceFailed)failed;
- (JRSchemaJRInferenceStarted)started;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStarted;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStarted:(id)started;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRInferenceContext

- (JRSchemaJRInferenceContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = JRSchemaJRInferenceContext;
  v5 = [(JRSchemaJRInferenceContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRInferenceStarted alloc] initWithDictionary:v6];
      [(JRSchemaJRInferenceContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRInferenceFailed alloc] initWithDictionary:v8];
      [(JRSchemaJRInferenceContext *)v5 setFailed:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[JRSchemaJRInferenceEnded alloc] initWithDictionary:v10];
      [(JRSchemaJRInferenceContext *)v5 setEnded:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (JRSchemaJRInferenceContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRInferenceContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRInferenceContext *)self dictionaryRepresentation];
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
    ended = [(JRSchemaJRInferenceContext *)self ended];
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
    failed = [(JRSchemaJRInferenceContext *)self failed];
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

  if (self->_started)
  {
    started = [(JRSchemaJRInferenceContext *)self started];
    dictionaryRepresentation3 = [started dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"started"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"started"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(JRSchemaJRInferenceStarted *)self->_started hash];
  v4 = [(JRSchemaJRInferenceFailed *)self->_failed hash]^ v3;
  return v4 ^ [(JRSchemaJRInferenceEnded *)self->_ended hash];
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

  started = [(JRSchemaJRInferenceContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  started3 = [(JRSchemaJRInferenceContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(JRSchemaJRInferenceContext *)self started];
    started5 = [equalCopy started];
    v12 = [started4 isEqual:started5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  started = [(JRSchemaJRInferenceContext *)self failed];
  started2 = [equalCopy failed];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  failed = [(JRSchemaJRInferenceContext *)self failed];
  if (failed)
  {
    v14 = failed;
    failed2 = [(JRSchemaJRInferenceContext *)self failed];
    failed3 = [equalCopy failed];
    v17 = [failed2 isEqual:failed3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  started = [(JRSchemaJRInferenceContext *)self ended];
  started2 = [equalCopy ended];
  if ((started != 0) != (started2 == 0))
  {
    ended = [(JRSchemaJRInferenceContext *)self ended];
    if (!ended)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = ended;
    ended2 = [(JRSchemaJRInferenceContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

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
  started = [(JRSchemaJRInferenceContext *)self started];

  if (started)
  {
    started2 = [(JRSchemaJRInferenceContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  failed = [(JRSchemaJRInferenceContext *)self failed];

  if (failed)
  {
    failed2 = [(JRSchemaJRInferenceContext *)self failed];
    PBDataWriterWriteSubmessage();
  }

  ended = [(JRSchemaJRInferenceContext *)self ended];

  v9 = toCopy;
  if (ended)
  {
    ended2 = [(JRSchemaJRInferenceContext *)self ended];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 103)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceEnded)ended
{
  if (self->_whichContextevent == 103)
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

  failed = self->_failed;
  self->_failed = 0;

  v7 = 103;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceFailed)failed
{
  if (self->_whichContextevent == 102)
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

  ended = self->_ended;
  self->_ended = 0;

  v7 = 102;
  if (!failedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_started = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (JRSchemaJRInferenceStarted)started
{
  if (self->_whichContextevent == 101)
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
  failed = self->_failed;
  self->_failed = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 101;
  if (!startedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  started = self->_started;
  self->_started = startedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = JRSchemaJRInferenceContext;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  started = [(JRSchemaJRInferenceContext *)self started];
  v7 = [started applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaJRInferenceContext *)self deleteStarted];
  }

  failed = [(JRSchemaJRInferenceContext *)self failed];
  v10 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(JRSchemaJRInferenceContext *)self deleteFailed];
  }

  ended = [(JRSchemaJRInferenceContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(JRSchemaJRInferenceContext *)self deleteEnded];
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