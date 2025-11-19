@interface PFARepackagingExecutionFailure
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PFARepackagingExecutionFBFFailure)fbfFailure;
- (PFARepackagingExecutionFailure)initWithDictionary:(id)a3;
- (PFARepackagingExecutionFailure)initWithJSON:(id)a3;
- (PFARepackagingExecutionSandboxError)sandboxError;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteFbfFailure;
- (void)deleteSandboxError;
- (void)setFbfFailure:(id)a3;
- (void)setSandboxError:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PFARepackagingExecutionFailure

- (PFARepackagingExecutionFailure)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFARepackagingExecutionFailure;
  v5 = [(PFARepackagingExecutionFailure *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fbfFailure"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PFARepackagingExecutionFBFFailure alloc] initWithDictionary:v6];
      [(PFARepackagingExecutionFailure *)v5 setFbfFailure:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sandboxError"];
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

- (PFARepackagingExecutionFailure)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PFARepackagingExecutionFailure *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PFARepackagingExecutionFailure *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_fbfFailure)
  {
    v4 = [(PFARepackagingExecutionFailure *)self fbfFailure];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"fbfFailure"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"fbfFailure"];
    }
  }

  if (self->_sandboxError)
  {
    v7 = [(PFARepackagingExecutionFailure *)self sandboxError];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"sandboxError"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"sandboxError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichKind = self->_whichKind;
  if (whichKind != [v4 whichKind])
  {
    goto LABEL_13;
  }

  v6 = [(PFARepackagingExecutionFailure *)self fbfFailure];
  v7 = [v4 fbfFailure];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_12;
  }

  v8 = [(PFARepackagingExecutionFailure *)self fbfFailure];
  if (v8)
  {
    v9 = v8;
    v10 = [(PFARepackagingExecutionFailure *)self fbfFailure];
    v11 = [v4 fbfFailure];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v6 = [(PFARepackagingExecutionFailure *)self sandboxError];
  v7 = [v4 sandboxError];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(PFARepackagingExecutionFailure *)self sandboxError];
    if (!v13)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [(PFARepackagingExecutionFailure *)self sandboxError];
    v16 = [v4 sandboxError];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PFARepackagingExecutionFailure *)self fbfFailure];

  if (v4)
  {
    v5 = [(PFARepackagingExecutionFailure *)self fbfFailure];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PFARepackagingExecutionFailure *)self sandboxError];

  if (v6)
  {
    v7 = [(PFARepackagingExecutionFailure *)self sandboxError];
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

- (void)setSandboxError:(id)a3
{
  v4 = a3;
  fbfFailure = self->_fbfFailure;
  self->_fbfFailure = 0;

  self->_whichKind = 2 * (v4 != 0);
  sandboxError = self->_sandboxError;
  self->_sandboxError = v4;
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

- (void)setFbfFailure:(id)a3
{
  v4 = a3;
  sandboxError = self->_sandboxError;
  self->_sandboxError = 0;

  self->_whichKind = v4 != 0;
  fbfFailure = self->_fbfFailure;
  self->_fbfFailure = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PFARepackagingExecutionFailure;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(PFARepackagingExecutionFailure *)self fbfFailure];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PFARepackagingExecutionFailure *)self deleteFbfFailure];
  }

  v9 = [(PFARepackagingExecutionFailure *)self sandboxError];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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