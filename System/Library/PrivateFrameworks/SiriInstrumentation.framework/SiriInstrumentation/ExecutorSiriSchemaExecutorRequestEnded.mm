@interface ExecutorSiriSchemaExecutorRequestEnded
- (BOOL)isEqual:(id)equal;
- (ExecutorSiriSchemaExecutorRequestEnded)initWithDictionary:(id)dictionary;
- (ExecutorSiriSchemaExecutorRequestEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaIFOutcomeSuccess)success;
- (SISchemaIFOutcomeToolDisambiguation)toolDisambiguation;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSuccess;
- (void)deleteToolDisambiguation;
- (void)setSuccess:(id)success;
- (void)setToolDisambiguation:(id)disambiguation;
- (void)writeTo:(id)to;
@end

@implementation ExecutorSiriSchemaExecutorRequestEnded

- (ExecutorSiriSchemaExecutorRequestEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorRequestEnded;
  v5 = [(ExecutorSiriSchemaExecutorRequestEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ExecutorSiriSchemaExecutorRequestEnded setOutcome:](v5, "setOutcome:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"success"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaIFOutcomeSuccess alloc] initWithDictionary:v7];
      [(ExecutorSiriSchemaExecutorRequestEnded *)v5 setSuccess:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"toolDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaIFOutcomeToolDisambiguation alloc] initWithDictionary:v9];
      [(ExecutorSiriSchemaExecutorRequestEnded *)v5 setToolDisambiguation:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ExecutorSiriSchemaExecutorRequestEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ExecutorSiriSchemaExecutorRequestEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ExecutorSiriSchemaExecutorRequestEnded *)self dictionaryRepresentation];
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
    v4 = [(ExecutorSiriSchemaExecutorRequestEnded *)self outcome]- 1;
    if (v4 > 0xB)
    {
      v5 = @"IFOUTCOME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D4860[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"outcome"];
  }

  if (self->_success)
  {
    success = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
    dictionaryRepresentation = [success dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"success"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"success"];
    }
  }

  if (self->_toolDisambiguation)
  {
    toolDisambiguation = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    dictionaryRepresentation2 = [toolDisambiguation dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"toolDisambiguation"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"toolDisambiguation"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_outcome;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaIFOutcomeSuccess *)self->_success hash]^ v3;
  return v4 ^ [(SISchemaIFOutcomeToolDisambiguation *)self->_toolDisambiguation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichOutcomedetails = self->_whichOutcomedetails;
  if (whichOutcomedetails != [equalCopy whichOutcomedetails])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    outcome = self->_outcome;
    if (outcome != [equalCopy outcome])
    {
      goto LABEL_16;
    }
  }

  success = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
  success2 = [equalCopy success];
  if ((success != 0) == (success2 == 0))
  {
    goto LABEL_15;
  }

  success3 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
  if (success3)
  {
    v10 = success3;
    success4 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
    success5 = [equalCopy success];
    v13 = [success4 isEqual:success5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  success = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
  success2 = [equalCopy toolDisambiguation];
  if ((success != 0) != (success2 == 0))
  {
    toolDisambiguation = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    if (!toolDisambiguation)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = toolDisambiguation;
    toolDisambiguation2 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    toolDisambiguation3 = [equalCopy toolDisambiguation];
    v18 = [toolDisambiguation2 isEqual:toolDisambiguation3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  success = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];

  if (success)
  {
    success2 = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
    PBDataWriterWriteSubmessage();
  }

  toolDisambiguation = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];

  v7 = toCopy;
  if (toolDisambiguation)
  {
    toolDisambiguation2 = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)deleteToolDisambiguation
{
  if (self->_whichOutcomedetails == 3)
  {
    self->_whichOutcomedetails = 0;
    self->_toolDisambiguation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaIFOutcomeToolDisambiguation)toolDisambiguation
{
  if (self->_whichOutcomedetails == 3)
  {
    v3 = self->_toolDisambiguation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToolDisambiguation:(id)disambiguation
{
  disambiguationCopy = disambiguation;
  success = self->_success;
  self->_success = 0;

  v6 = 3;
  if (!disambiguationCopy)
  {
    v6 = 0;
  }

  self->_whichOutcomedetails = v6;
  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = disambiguationCopy;
}

- (void)deleteSuccess
{
  if (self->_whichOutcomedetails == 2)
  {
    self->_whichOutcomedetails = 0;
    self->_success = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaIFOutcomeSuccess)success
{
  if (self->_whichOutcomedetails == 2)
  {
    v3 = self->_success;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuccess:(id)success
{
  successCopy = success;
  toolDisambiguation = self->_toolDisambiguation;
  self->_toolDisambiguation = 0;

  self->_whichOutcomedetails = 2 * (successCopy != 0);
  success = self->_success;
  self->_success = successCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ExecutorSiriSchemaExecutorRequestEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  success = [(ExecutorSiriSchemaExecutorRequestEnded *)self success];
  v7 = [success applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ExecutorSiriSchemaExecutorRequestEnded *)self deleteSuccess];
  }

  toolDisambiguation = [(ExecutorSiriSchemaExecutorRequestEnded *)self toolDisambiguation];
  v10 = [toolDisambiguation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ExecutorSiriSchemaExecutorRequestEnded *)self deleteToolDisambiguation];
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