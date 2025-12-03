@interface PFAPreprocessorExecutionFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFAPreprocessorExecutionFailed)initWithDictionary:(id)dictionary;
- (PFAPreprocessorExecutionFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PFAPreprocessorExecutionFailed

- (PFAPreprocessorExecutionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PFAPreprocessorExecutionFailed;
  v5 = [(PFAPreprocessorExecutionFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"preprocessorExecutionMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PFAPreprocessorExecutionMetrics alloc] initWithDictionary:v6];
      [(PFAPreprocessorExecutionFailed *)v5 setPreprocessorExecutionMetrics:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failedAtStep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFAPreprocessorExecutionFailed setFailedAtStep:](v5, "setFailedAtStep:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PFAPreprocessorExecutionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFAPreprocessorExecutionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFAPreprocessorExecutionFailed *)self dictionaryRepresentation];
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
    v4 = [(PFAPreprocessorExecutionFailed *)self failedAtStep]- 1;
    if (v4 > 3)
    {
      v5 = @"PREPROCESSOREXECUTIONSTEP_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E02A8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"failedAtStep"];
  }

  if (self->_preprocessorExecutionMetrics)
  {
    preprocessorExecutionMetrics = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics];
    dictionaryRepresentation = [preprocessorExecutionMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"preprocessorExecutionMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"preprocessorExecutionMetrics"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PFAPreprocessorExecutionMetrics *)self->_preprocessorExecutionMetrics hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_failedAtStep;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  preprocessorExecutionMetrics = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics];
  preprocessorExecutionMetrics2 = [equalCopy preprocessorExecutionMetrics];
  v7 = preprocessorExecutionMetrics2;
  if ((preprocessorExecutionMetrics != 0) == (preprocessorExecutionMetrics2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  preprocessorExecutionMetrics3 = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics];
  if (preprocessorExecutionMetrics3)
  {
    v9 = preprocessorExecutionMetrics3;
    preprocessorExecutionMetrics4 = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics];
    preprocessorExecutionMetrics5 = [equalCopy preprocessorExecutionMetrics];
    v12 = [preprocessorExecutionMetrics4 isEqual:preprocessorExecutionMetrics5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    failedAtStep = self->_failedAtStep;
    if (failedAtStep != [equalCopy failedAtStep])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  preprocessorExecutionMetrics = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics];

  if (preprocessorExecutionMetrics)
  {
    preprocessorExecutionMetrics2 = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFAPreprocessorExecutionFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFAPreprocessorExecutionFailed *)self preprocessorExecutionMetrics:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PFAPreprocessorExecutionFailed *)self deletePreprocessorExecutionMetrics];
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