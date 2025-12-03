@interface PFARepackagingExecutionFailure
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFARepackagingExecutionFBFFailure)fbfFailure;
- (PFARepackagingExecutionFailure)initWithDictionary:(id)dictionary;
- (PFARepackagingExecutionFailure)initWithJSON:(id)n;
- (PFARepackagingExecutionSandboxError)sandboxError;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteFbfFailure;
- (void)deleteSandboxError;
- (void)setFbfFailure:(id)failure;
- (void)setSandboxError:(id)error;
- (void)writeTo:(id)to;
@end

@implementation PFARepackagingExecutionFailure

- (PFARepackagingExecutionFailure)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PFARepackagingExecutionFailure;
  v5 = [(PFARepackagingExecutionFailure *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fbfFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PFARepackagingExecutionFBFFailure alloc] initWithDictionary:v6];
      [(PFARepackagingExecutionFailure *)v5 setFbfFailure:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sandboxError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PFARepackagingExecutionSandboxError alloc] initWithDictionary:v8];
      [(PFARepackagingExecutionFailure *)v5 setSandboxError:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PFARepackagingExecutionFailure)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFARepackagingExecutionFailure *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFARepackagingExecutionFailure *)self dictionaryRepresentation];
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
  if (self->_fbfFailure)
  {
    fbfFailure = [(PFARepackagingExecutionFailure *)self fbfFailure];
    dictionaryRepresentation = [fbfFailure dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"fbfFailure"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"fbfFailure"];
    }
  }

  if (self->_sandboxError)
  {
    sandboxError = [(PFARepackagingExecutionFailure *)self sandboxError];
    dictionaryRepresentation2 = [sandboxError dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"sandboxError"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"sandboxError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichKind = self->_whichKind;
  if (whichKind != [equalCopy whichKind])
  {
    goto LABEL_13;
  }

  fbfFailure = [(PFARepackagingExecutionFailure *)self fbfFailure];
  fbfFailure2 = [equalCopy fbfFailure];
  if ((fbfFailure != 0) == (fbfFailure2 == 0))
  {
    goto LABEL_12;
  }

  fbfFailure3 = [(PFARepackagingExecutionFailure *)self fbfFailure];
  if (fbfFailure3)
  {
    v9 = fbfFailure3;
    fbfFailure4 = [(PFARepackagingExecutionFailure *)self fbfFailure];
    fbfFailure5 = [equalCopy fbfFailure];
    v12 = [fbfFailure4 isEqual:fbfFailure5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  fbfFailure = [(PFARepackagingExecutionFailure *)self sandboxError];
  fbfFailure2 = [equalCopy sandboxError];
  if ((fbfFailure != 0) != (fbfFailure2 == 0))
  {
    sandboxError = [(PFARepackagingExecutionFailure *)self sandboxError];
    if (!sandboxError)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = sandboxError;
    sandboxError2 = [(PFARepackagingExecutionFailure *)self sandboxError];
    sandboxError3 = [equalCopy sandboxError];
    v17 = [sandboxError2 isEqual:sandboxError3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fbfFailure = [(PFARepackagingExecutionFailure *)self fbfFailure];

  if (fbfFailure)
  {
    fbfFailure2 = [(PFARepackagingExecutionFailure *)self fbfFailure];
    PBDataWriterWriteSubmessage();
  }

  sandboxError = [(PFARepackagingExecutionFailure *)self sandboxError];

  if (sandboxError)
  {
    sandboxError2 = [(PFARepackagingExecutionFailure *)self sandboxError];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteSandboxError
{
  if (self->_whichKind == 2)
  {
    self->_whichKind = 0;
    self->_sandboxError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFARepackagingExecutionSandboxError)sandboxError
{
  if (self->_whichKind == 2)
  {
    v3 = self->_sandboxError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSandboxError:(id)error
{
  errorCopy = error;
  fbfFailure = self->_fbfFailure;
  self->_fbfFailure = 0;

  self->_whichKind = 2 * (errorCopy != 0);
  sandboxError = self->_sandboxError;
  self->_sandboxError = errorCopy;
}

- (void)deleteFbfFailure
{
  if (self->_whichKind == 1)
  {
    self->_whichKind = 0;
    self->_fbfFailure = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PFARepackagingExecutionFBFFailure)fbfFailure
{
  if (self->_whichKind == 1)
  {
    v3 = self->_fbfFailure;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFbfFailure:(id)failure
{
  failureCopy = failure;
  sandboxError = self->_sandboxError;
  self->_sandboxError = 0;

  self->_whichKind = failureCopy != 0;
  fbfFailure = self->_fbfFailure;
  self->_fbfFailure = failureCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PFARepackagingExecutionFailure;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  fbfFailure = [(PFARepackagingExecutionFailure *)self fbfFailure];
  v7 = [fbfFailure applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PFARepackagingExecutionFailure *)self deleteFbfFailure];
  }

  sandboxError = [(PFARepackagingExecutionFailure *)self sandboxError];
  v10 = [sandboxError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PFARepackagingExecutionFailure *)self deleteSandboxError];
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