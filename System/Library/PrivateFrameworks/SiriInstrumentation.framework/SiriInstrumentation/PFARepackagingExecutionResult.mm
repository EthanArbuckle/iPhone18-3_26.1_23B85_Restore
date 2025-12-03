@interface PFARepackagingExecutionResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFARepackagingExecutionFailure)failure;
- (PFARepackagingExecutionResult)initWithDictionary:(id)dictionary;
- (PFARepackagingExecutionResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteFailure;
- (void)deleteSuccess;
- (void)setFailure:(id)failure;
- (void)setSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation PFARepackagingExecutionResult

- (PFARepackagingExecutionResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PFARepackagingExecutionResult;
  v5 = [(PFARepackagingExecutionResult *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"samplingResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFARepackagingExecutionResult setSamplingResult:](v5, "setSamplingResult:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"success"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PFARepackagingExecutionResult setSuccess:](v5, "setSuccess:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"failure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PFARepackagingExecutionFailure alloc] initWithDictionary:v8];
      [(PFARepackagingExecutionResult *)v5 setFailure:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PFARepackagingExecutionResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFARepackagingExecutionResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFARepackagingExecutionResult *)self dictionaryRepresentation];
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
  if (self->_failure)
  {
    failure = [(PFARepackagingExecutionResult *)self failure];
    dictionaryRepresentation = [failure dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"failure"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"failure"];
    }
  }

  if (*&self->_has)
  {
    samplingResult = [(PFARepackagingExecutionResult *)self samplingResult];
    v8 = @"UNKNOWN";
    if (samplingResult == 1)
    {
      v8 = @"Sampled";
    }

    if (samplingResult == 2)
    {
      v9 = @"NotSampled";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"samplingResult"];
  }

  if (self->_whichSuccessorfail == 101)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFARepackagingExecutionResult success](self, "success")}];
    [dictionary setObject:v10 forKeyedSubscript:@"success"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_samplingResult;
  }

  else
  {
    v6 = 0;
  }

  if (self->_whichSuccessorfail == 101)
  {
    v7 = 2654435761 * self->_success;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ v6 ^ [(PFARepackagingExecutionFailure *)self->_failure hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichSuccessorfail = self->_whichSuccessorfail;
    if (whichSuccessorfail == [equalCopy whichSuccessorfail] && (*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (samplingResult = self->_samplingResult, samplingResult == [equalCopy samplingResult]))
      {
        success = self->_success;
        if (success == [equalCopy success])
        {
          failure = [(PFARepackagingExecutionResult *)self failure];
          failure2 = [equalCopy failure];
          v10 = failure2;
          if ((failure != 0) != (failure2 == 0))
          {
            failure3 = [(PFARepackagingExecutionResult *)self failure];
            if (!failure3)
            {

LABEL_15:
              v16 = 1;
              goto LABEL_13;
            }

            v12 = failure3;
            failure4 = [(PFARepackagingExecutionResult *)self failure];
            failure5 = [equalCopy failure];
            v15 = [failure4 isEqual:failure5];

            if (v15)
            {
              goto LABEL_15;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_whichSuccessorfail == 101)
  {
    PBDataWriterWriteBOOLField();
  }

  failure = [(PFARepackagingExecutionResult *)self failure];

  v5 = toCopy;
  if (failure)
  {
    failure2 = [(PFARepackagingExecutionResult *)self failure];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (void)deleteFailure
{
  if (self->_whichSuccessorfail == 102)
  {
    self->_whichSuccessorfail = 0;
    self->_failure = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFARepackagingExecutionFailure)failure
{
  if (self->_whichSuccessorfail == 102)
  {
    v3 = self->_failure;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailure:(id)failure
{
  self->_success = 0;
  v3 = 102;
  if (!failure)
  {
    v3 = 0;
  }

  self->_whichSuccessorfail = v3;
  objc_storeStrong(&self->_failure, failure);
}

- (void)deleteSuccess
{
  if (self->_whichSuccessorfail == 101)
  {
    self->_whichSuccessorfail = 0;
    self->_success = 0;
  }
}

- (void)setSuccess:(BOOL)success
{
  failure = self->_failure;
  self->_failure = 0;

  self->_whichSuccessorfail = 101;
  self->_success = success;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PFARepackagingExecutionResult;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PFARepackagingExecutionResult *)self failure:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PFARepackagingExecutionResult *)self deleteFailure];
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